#include "LoadItem.h"

// just put variables into class

LoadItem::LoadItem() {
    this->buffer = false;
    this->filetoload = "";
    this->data = "";
    this->loaded = false;
    this->used = false;
    this->type = LT_NONE;

    this->robj = 0x0;
    this->onLoadedRaw = 0x0;
    this->onLoadedAudio = 0x0;
    this->onLoadedModel = 0x0;
    //this->onLoadedTexture = 0x0;
}

LoadItem::LoadItem(CharString filetoload_, LTYPE type_, bool doBuffer) {
    this->buffer = doBuffer;
    this->filetoload = filetoload_;
    this->data = "";
    this->loaded = false;
    this->used = false;
    this->type = type_;

    this->robj = 0x0;
    this->onLoadedRaw = 0x0;
    this->onLoadedAudio = 0x0;
    this->onLoadedModel = 0x0;
    //this->onLoadedTexture = 0x0;
}

void LoadItem::loadRaw() {
    std::ifstream t(filetoload.get());
    std::string str((std::istreambuf_iterator<char>(t)),
                    std::istreambuf_iterator<char>());

    data = CharString(str.c_str(), str.length());

    if(onLoadedRaw != 0x0) onLoadedRaw(robj, data);
}


void LoadItem::loadAudio() {
    adata = new SoundBufferData(filetoload);

    if(onLoadedAudio != 0x0) onLoadedAudio(robj, adata);
}



void LoadItem::loadModel() {
    mdata = new Model();
    mdata->loadFromFile(filetoload);

    if(onLoadedModel != 0x0) onLoadedModel(robj, mdata);
}

void LoadItem::loadTexture() {
    //if(onLoadedTexture != 0x0) onLoadedTexture(robj, tdata);
}


// loads this file
void LoadItem::doLoad() {
    ifstream f(filetoload.get());
    if(!f.good()) {
        cout << "[File Loader] file '" << filetoload.get() << "' does not exist!" << endl;
        return;
    }

    // has this file been loaded yet?
    if(!loaded) {
        // load this file
        switch(type) {
            case LT_RAW: // load a raw file
                loadRaw();
                break;
            case LT_AUDIO: // load an audio file
                loadAudio();
                break;
            case LT_MODEL: // load model file
                loadModel();
                break;
            case LT_TEXTURE: // load a texture file
                loadTexture();
                break;
        }
        loaded = true;
    }
}

// unhook the data so it can be GCed.
void LoadItem::expire() {
    // expire this if not buffered and used
    if(!buffer && used) {
        data = 0x0; // unhook data
    }
}

// returns 0x0 if it is not loaded
CharString LoadItem::getRAW() {
    // retrieve loaded data
    CharString dataR;
    if(loaded) {
        // return data
        dataR = data;
        used = true;
    }

    return dataR;
}

bool LoadItem::isLoaded() {
    return loaded;
}


