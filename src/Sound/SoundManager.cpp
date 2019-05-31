#include "SoundManager.h"

using namespace std;

// Generate a new source
SoundSource* SoundManager::getNewSource() {
    // loop through the used sources list
    for(int i=0; i<NUM_SOURCES; i++) {

        // determine if this source is not used
        if(usedSources[i] == 0x0) {
            usedSources[i] = new SoundSource(i, source[i], buffer[i]);;

            // Not used, generate a sound source
            return usedSources[i];
        }
    }

    // no availabe source
    return 0x0;
}

// Clear up this sound source
void SoundManager::retireSource(SoundSource* src) {
    if(usedSources[src->sourceid] == src) {
        usedSources[src->sourceid] = 0x0;
        src->disable();
    }
}


void SoundManager::init() {
    alutInit(0, 0x0);

    /*alListenerfv(AL_POSITION,listenerPos);
    alListenerfv(AL_VELOCITY,listenerVel);
    alListenerfv(AL_ORIENTATION,listenerOri);*/

    // Generate buffers, or else no sound will happen!
    alGenBuffers(NUM_BUFFERS, buffer);

    if(alGetError() != AL_NO_ERROR) {
        cout << "AL init - Error creating audio buffers" << endl; cout.flush();
        exit(2);
    } else cout << "AL init - no errors after alGenBuffers" << endl;

    alGetError(); /* clear error */
    alGenSources(NUM_SOURCES, source);

    if(alGetError() != AL_NO_ERROR) {
        cout << "AL init - Error creating audio sources" << endl; cout.flush();
        exit(2);
    } else cout << "AL init - no errors after alGenSources" << endl;


    /*alutLoadWAVFile((ALbyte*)"c.wav",&format,&data,&size,&freq);
    alBufferData(buffer[0],format,data,size,freq);
    alutUnloadWAV(format,data,size,freq);*/
}

void SoundManager::close(){
    alutExit();
}
