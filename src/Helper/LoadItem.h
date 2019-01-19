#ifndef Loader_H_
#define Loader_H_

#include <Eternia/Data/CharString.h>
#include <AL/al.h>
#include <AL/alut.h>
#include "../Model/Model.h"
#include "../Sound/SoundBufferData.h"

// Loader type
enum LTYPE {LT_NONE, LT_AUDIO, LT_RAW, LT_MODEL, LT_TEXTURE};

class LoadItem {
    private:
        CharString data, filetoload;
        bool buffer, loaded, used;

        void loadRaw();
        void loadAudio();
        void loadModel();
        void loadTexture();

    public:
        LoadItem(CharString filetoload, LTYPE type, bool doBuffer);
        LoadItem();
        //virtual ~LoadItem();
        void doLoad(); // loads this file
        void expire(); // Expire the file if it is not to be buffered
        bool isLoaded();
        CharString getRAW(); // RAW data

        // onLoaded functions (First value is an accessible object to save data to, or NULL)
        void* robj; // < class to assign data to
        void (*onLoadedRaw)(void*, CharString fileloc);
        void (*onLoadedModel)(void*, Model*);
        void (*onLoadedAudio)(void*, SoundBufferData*);
        //void (*onLoadedTexture)(CharString loc);

        LTYPE type;

        // Audio, Model, Texture load data
        SoundBufferData* adata;
        Model* mdata;
};

#endif
