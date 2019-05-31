#ifndef SOUND_h_
#define SOUND_h_

#include <AL/al.h>
#include <AL/alc.h>
#include <AL/alut.h>
#include <iostream>
#include <string.h>

#include "SoundSource.h"

#define NUM_BUFFERS 256
#define NUM_SOURCES 256
#define NUM_ENVIRONMENTS 1



class SoundManager {
    public:
        void init();
        void play(); // play a sound
        void playLoop(); // play a sound and loop it forever (until stopped)
        void stop(); // stop a particular sound
        void stopAll(); // stop ALL sounds

        void close(); // close audio source

    private:
        void loop(); // Executed by a thread

        // New source
        SoundSource* getNewSource();
        void retireSource(SoundSource*); // Clear up this sound source

        // Mic recording


        ALuint  buffer[NUM_BUFFERS];
        ALuint  source[NUM_SOURCES];
        SoundSource*    usedSources[NUM_SOURCES]; // Used to find a new source in "getNewSource()"
        ALuint  environment[NUM_ENVIRONMENTS];
        //int     GLwin;


        int     ch;
};

#endif
