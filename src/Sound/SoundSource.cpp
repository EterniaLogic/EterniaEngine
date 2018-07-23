#include "SoundSource.h"

SoundSource::SoundSource(int sourceid_, ALuint sourceloc_, ALuint bufferloc_) {
    sourceid = sourceid_;
    sourceloc = sourceloc_;
    bufferloc = bufferloc_;

    alSourcef(sourceloc,AL_PITCH,1.0f);
    alSourcef(sourceloc,AL_GAIN,1.0f);
    alSourcefv(sourceloc,AL_POSITION,sourcePos);
    alSourcefv(sourceloc,AL_VELOCITY,sourceVel);
    alSourcei(sourceloc,AL_BUFFER,bufferloc);
    alSourcei(sourceloc,AL_LOOPING, AL_FALSE); // no looping

    enabled = true;
}

// Position vector
void SoundSource::setPos(vertex* pos) {
    sourcePos[0] = pos->x;
    sourcePos[1] = pos->y;
    sourcePos[2] = pos->z;

    if(enabled)
        alSourcefv(sourceloc,AL_POSITION,sourcePos);
}

// Velocity
void SoundSource::setVel(vertex* vel) {
    sourceVel[0] = vel->x;
    sourceVel[1] = vel->y;
    sourceVel[2] = vel->z;

    if(enabled)
        alSourcefv(sourceloc,AL_VELOCITY,sourceVel);
}


void SoundSource::disable() {
    enabled = false;
}
