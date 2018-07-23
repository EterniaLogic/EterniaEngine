#ifndef SOUND_SOURCE_H_
#define SOUND_SOURCE_H_

#include <AL/al.h>
#include <AL/alut.h>
#include <Eternia/Math/struct/vertex.h>

#include "SoundBufferData.h"

// The sound listener attaches to a camera object in OpenGL.

class SoundSource {
    private:
        ALuint sourceloc, bufferloc; // location in the OpenAL buffer
        bool enabled; // private so it cannot be changed
    public:
        SoundSource(int sourceid_, ALuint sourceloc_, ALuint bufferloc_);

        int sourceid; // location in the OpenAL list

        ALfloat sourcePos[3]= { 0.0, 0.0, 0.0};
        ALfloat sourceVel[3]= { 0.0, 0.0, 0.0};

        void setPos(vertex* pos); // Position vector
        void setVel(vertex* vel); // Velocity vector

        // audio options
        void play(CharString* loc); // play a sound from file (use loader)
        void play(SoundBufferData* data); // play this sound
        void stop(); // stop sounds
        void loop(bool loop); // loop sound?


        void disable(); // disable this sound source, stop audio, ect.
};

#endif
