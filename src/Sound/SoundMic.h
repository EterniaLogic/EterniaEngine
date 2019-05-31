#ifndef SOUNDMIC_H_
#define SOUNDMIC_H_

#include <AL/al.h>
#include <AL/alc.h>

class SoundMic {
    public:
        SoundMic();

        ALCdevice *device;

        const int SRATE = 44100;
        const int SSIZE = 1024;

        ALbyte buffer[22050];
        ALint sample;
};

#endif
