#ifndef SOUND_BUFF_DATA_h_
#define SOUND_BUFF_DATA_h_

#include <AL/al.h>
#include <AL/alut.h>
#include <Eternia/Data/CharString.h>

// Very basic variable container
class SoundBufferData {
    public:
        SoundBufferData(CharString file);

        ALsizei size;
        ALfloat freq;
        ALenum  format;
        ALvoid  *data;
};

#endif
