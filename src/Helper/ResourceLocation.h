#ifndef RES_LOC_H_
#define RES_LOC_H_


// Resource Locations may be either in the raw filesystem OR
//  in an embedded/encrypted filesystem.


// Direct means the system filesystem. (Insecure)
// Encrypted is the EterniaEngine's encrypted filesystem. (Somewhat secure)
// Compiled is directly compiled into the EE C++ source code. (Insecure)
// Net is transmitted through ethernet or the internet. (Insecure)
// NetEncrypted is the same as Net, but encrypted. (Secure)



// P2P resources are bounced between all known P2P connections.



///// For the following script: "scripts/cs/test.cs"
// Direct:
//  "scripts/cs/test.cs"

// Encrypted:
//  "enc://scripts/cs/test.cs"

// Compiled:
//  "cmp://scripts/cs/test.cs"

// Net:
//  "ee://127.0.0.1:123/scripts/cs/test.cs     -normal server resource
//  "eep://scripts/cs/test.cs"                  -p2p resource

// NetEncrypted:
//  "ees://127.0.0.1:123/scripts/cs/test.cs"     -normal server resource
//  "eesp://scripts/cs/test.cs"                  -p2p resource



class ResourceLocation{
private:
    bool preloaded;
    CharString location;
    CharString data; // preloaded data

public:
    ResourceLocation(CharString loc);
    
    CharString getData(); // if preloaded, then just access, else load

    // preload this resource into memory. (Otherwise, it will be directly loaded)
    void preload(); 
    
    // opposite of preload. Removes from memory if it is preloaded.
    void unload();
};

#endif
