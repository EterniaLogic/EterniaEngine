#ifndef SOUND_LISTEINER_H_
#define SOUND_LISTEINER_H_

#include <AL/al.h>
#include <AL/alut.h>
#include <Eternia/Math/struct/vertex.h>

// The sound listener attaches to a camera object in OpenGL.

class SoundListener {
    public:
        SoundListener();

        ALfloat listenerPos[3]= {0.0,0.0,4.0};
        ALfloat listenerVel[3]= {0.0,0.0,0.0}; // Doppler effect velocity
        ALfloat listenerOri[6]= {0.0,0.0,1.0, 0.0,1.0,0.0}; // Orientation (angle, upward vector)

        void setPos(vertex* pos); // Position vector
        void setVel(vertex* vel); // Velocity vector
        void setOrientation(vertex* orient1, vertex* orient2); // Orientation vectors
};

#endif
