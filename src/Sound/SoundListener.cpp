#include "SoundListener.h"

SoundListener::SoundListener() {

}

// Position vector
void SoundListener::setPos(vertex* pos) {
    alListener3f(AL_POSITION, pos->x, pos->y, pos->z);
}

// Velocity
void SoundListener::setVel(vertex* vel) {
    alListener3f(AL_VELOCITY, vel->x, vel->y, vel->z);
}

// Velocity vector
void SoundListener::setOrientation(vertex* orient1, vertex* orient2) {
    listenerOri[0] = orient1->x;
    listenerOri[1] = orient1->y;
    listenerOri[2] = orient1->z;


    // not sure what the second orientation is for...
    listenerOri[3] = orient2->x;
    listenerOri[4] = orient2->y;
    listenerOri[5] = orient2->z;

    alListenerfv(AL_ORIENTATION, listenerOri);
}
