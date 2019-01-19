#include "Encryptor.h"

#include <Eternia/Data/FileSystem.h>
#include <Eternia/Data/LinkedList.hpp>
#include <Eternia/Algorithm/Cryptography/Aes256.h>
#include <Eternia/Algorithm/Cryptography/md5.h>
#include <Eternia/Parsing/LoadFile.h>


// Advanced Encryptor that stores a large amount of data into a
//      single large file that holds all of the scripts, models, ect.
//      that is distributed with an EterniaEngine Executable.

// NOTE: This will probably be the only area where I will break
// global variable rules; dont want people knowing what the variables
// are.

// The [GameProject].dat file will always start out with a random data
// injection so there are no easy-to-detect "Zero" areas

// File structure:
// [BLOCK] -> ID ----
// [0] -> index offset location
// [4] -> public key
// [321-???] -> data
// [???] -> global index (points to the private key and the file and folder index)
// [???] -> file index
// [???] -> folder index
// [???] -> semi-private key (1-9 different ones)
// [???] -> Encrypted Checksum
// [???] -> License key for the EterniaEngine
// [???] -> Thread Configurations
// [???] -> Game configurations

// Supported filetypes for the EterniaEngine:
//  These are just speculation right now.
// Image:       jpg png gif avi
// Model:       fbx obj x
// Sound:       ogg mp3 mp4
// Gui:         glade
// Script:      cs js lua python

// Index table structure
// [0..3]  ->      number of blocks in bytes (4-byte)
// file system structure
//      "d" -> new folder
//      "D" -> end folder
//      "f" -> new file
//      "F" -> end file
//
// arbitrary block (assumed one exists for this table)
// [4..7]  ->      Block location (4-byte)
// [8..11]  ->      Block size (4-byte)
// [12] ->      Block type (1-byte)
// [13] ->      File string len                 << length of filesystem string
// [14....]     file string


//int block_size=467; // <-- size of encrypted regions
// block size is determined automatically


namespace AasdlasegpoSKDFH {
// initial private block key; Used everywhere.
    const char initialKey[65] = "a441aeAe8Eb0f0b621d12c41d4994C8102cd9c0f8b3440df5012b3b24707c12c";
    long lastRandom = 41290863590278;

// gets a pseudorandom number based off of ESD, ect.
    long randomGen(long val) {
        register int *eax asm ("eax");
        register int *ebx asm ("ebx");
        register int *ecx asm ("ecx");
        register int *edx asm ("edx");
        register int *rax asm ("rax");
        register int *rbx asm ("rbx");
        register int *rcx asm ("rcx");
        register int *rdx asm ("rdx");

        lastRandom ^= *rbx ^ *rax;

        // mix up instructions by checking last bit
        if(lastRandom & 1) {
            lastRandom ^= *rax ^ *rbx;
            lastRandom ^= *rbx ^ *rcx;
            lastRandom ^= *rbx ^ *rdx;
            lastRandom ^= 111111;
        } else {
            lastRandom ^= *rbx ^ *rdx;
            lastRandom ^= *rbx ^ *rdx;
            lastRandom ^= *rbx ^ *rcx;
        }

        return lastRandom;
    }

    long char4ToLong(char* set) {
        long added=0;
        for(int i=0; i<4; i++) {
            added = (long)set[i]<<(i*8);
        }

        return added;
    }

// a block that will be written to the file.
// this is used as an interface between the file layer and the software layer.
    class EncryptedBlock {
        public:
            EncryptedBlock() {}
            char* blockdata;
            char* encrypteddata; // data that has been encrypted and compressed
            char* encrypted_chksum;
            long len; // len changes based on the key and the final compressed length
            long id; // block id

            void doEncryptedCheckSum() { // perform Md5 checksum on encrypted data
                encrypted_chksum = (char*)md5(encrypteddata).c_str();
            }
    };


    enum EObjectType {EOKey, EOFile, EOFuzzy, EOFolder, EOFragment, EOFinalChecksum};
// Encrypted objects have a "pointer" and a location for their data.
    class EObject : public FileStructureNode {
        public:
            EObject() {
                block = new EncryptedBlock();
            }
            long pointer; // this pointer is assigned, the data is placed at this location
            long dataLen; // length of the data
            CharString data, key; // data is placed here only on up-load, never for reference
            EObjectType type;
            EncryptedBlock* block;

            void genRandom() {
                // tell block to change up
                block->encrypteddata;
                // generate random set into block, move by 8 to be more efficient with
                //              64-bit random generator.
                for(int i = 0; i<block->len; i+=(sizeof(long)/8)) {
                    long r = randomGen(lastRandom);
                    // loop through the size of 32 or 64-bit long
                    for(int j = 0; j<sizeof(long)/8; j++) {
                        // test to make sure that this bit is in the block
                        if((i+j) < block->len) {
                            // set this character
                            block->encrypteddata[i+j] = r << (sizeof(long) - j*8);
                        }
                    }
                }

                // get checksum of random block
                block->doEncryptedCheckSum();
            }

            // writes the block to the file.
            void writeBlock() {

            }
    };

// An encrypted structure helps manage the output file's data
    class EncryptedStructure {
        public:
            EncryptedStructure(CharString loc) {
                fs = new FileSystem();
                location = loc;
                dFile.open(loc.get(), ios::out | ios::in | ios::trunc);
                blockTableLoc = 5;
            }
            FileSystem* fs; // generates a managed unix-like filesystem structure
            CharString location;
            fstream dFile;
            long blockTableLoc;

            // do initial read of first 4 bytes
            void initialReadFile(char* file) {
                char* tdata = (char*)malloc(8*4);
                dFile.read(tdata,4);
                const long cc = 1509587085724L;
                // initial integer shows the location of the main table
                initialReadIndex(char4ToLong(tdata)^cc);
            }

            // read the index!
            void initialReadIndex(long location) {
                blockTableLoc = location;
                // move cursor to this location
                dFile.seekg(location, ios::beg);
                char* tdata = (char*)malloc(8*4);
                dFile.read(tdata,4);
                // this is the index! Read first 4 bytes for # of blocks
                long blockLen = char4ToLong(tdata);

                for(long i=0; i<blockLen; i++) {
                    //
                    char* tdata = (char*)malloc(8*4);
                    dFile.read(tdata,4);
                    long BlockLoc = char4ToLong(tdata);

                    // size of characters
                    char* tdata1 = (char*)malloc(8*4);
                    dFile.read(tdata1,4);
                    long BlockSize = char4ToLong(tdata1);

                    // object type
                    char* tdata2 = (char*)malloc(8);
                    dFile.read(tdata2,1);
                    EObjectType tpe = (EObjectType)(*tdata2);

                    // string size
                    char* tdata3 = (char*)malloc(8);
                    dFile.read(tdata3,1);

                    // filesystem name
                    char* tdata4 = (char*)malloc(8*(*tdata3));
                    dFile.read(tdata4,(*tdata3));

                    // key size
                    char* tdata5 = (char*)malloc(8);
                    dFile.read(tdata5,1);

                    // key
                    char* tdata6 = (char*)malloc(8*(*tdata5));
                    dFile.read(tdata6,(*tdata5));

                    EObject* block = new EObject();
                    block->pointer = BlockLoc;
                    block->dataLen = BlockSize;
                    block->type = tpe;
                    block->name = CharString(tdata4);
                    block->key = CharString(tdata6);
                    if(tpe == EOFuzzy)
                        fuzzyBlocks->add(block);
                    else blocks->add(block);
                }
            }

            void addFuzzy() { // used upon addition. some fuzzies removed on removal.
                EObject* fuzzy = new EObject();
                fuzzy->genRandom();
                fuzzyBlocks->add(fuzzy);
            }

            void addBlock(EObject* object) {
                // adds a block; changes the actual file to keep sync
                // Agitate the fuzzies ... prevents detection through modification
                agitateTheFuzzy();

                addFuzzy(); // add a fuzzy block (decoy block)

                // assign random location ID
                blocks->add(object);
            }

            void readBlock() {
                //dFile.seekg((id * sizeof(T)), ios::beg);
            }

            // randomly picks N number of fuzzy blocks and changes them. Prevents
            //  detection of actually changed blocks.
            void agitateTheFuzzy() {
                long g = randomGen(lastRandom); // randomly generated number
                int g_upper = g >> sizeof(long)/2; // upper bits are on LSB
                long g_lower_larger = g << sizeof(long)/2; // lower bits are on MSB
                long g_lower = g_lower_larger >> sizeof(long)/2; // lower bits are now on LSB

                // percent out of fuzzyblocks (statistics says approximately 50 average)
                long percent = (g_lower*(fuzzyBlocks->size()))/sizeof(int);

                // number of fuzzy blocks modified
                fuzzyBlocks->freeze(); // get frozen list
                for(long i=0; i<percent; i++) {
                    // use double to not disclose a large number
                    long blockSelect = (long)((double)(randomGen(lastRandom)*fuzzyBlocks->size()))/((double)sizeof(long));

                    fuzzyBlocks->frozen[blockSelect]->genRandom();
                }
            }

            // fuzzy blocks will change randomly every time an operation is
            //  performed. This helps prevent people from discovering data.
            LinkedList<EObject*>* fuzzyBlocks = new LinkedList<EObject*>();


            // list of all of the known blocks
            LinkedList<EObject*>* blocks = new LinkedList<EObject*>();

            long totalBlocks = 0;
    };
};

using namespace AasdlasegpoSKDFH;

// Encryptor init
Encryptor::Encryptor(CharString location) {
    key = (void*)new EncryptedStructure(location);
}

// add a file to the structure
void Encryptor::addFile(CharString loc, EFile* file) {
    // a file is just a block of data that can be modified
    EncryptedStructure* structure = (EncryptedStructure*)key;
}

// gets a file from the encrypted region
EFile* Encryptor::getFile(CharString loc) {
    EncryptedStructure* structure = (EncryptedStructure*)key;

    return 0x0; // temp
}

void Encryptor::addFolder(CharString, EFolder*) {

}

void Encryptor::deleteFile(CharString file, CharString deletekey) {

}

void Encryptor::deleteFolder(CharString,CharString deletekey) {

}
