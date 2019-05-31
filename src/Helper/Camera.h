#ifndef CAMERA_H
#define CAMERA_H

#include "GL/glew.h"
#include <GL/gl.h>
#include <GL/freeglut.h>
#include <GL/glut.h>

#include "../Sound/SoundListener.h"

#include <math.h>

#include <Eternia/Math/struct/vertex.h>

// defines the camera object and allows it to be manipulated.
class Camera {
    public:
        Camera();

        void perspectiveView(); // sets the current camera view for drawing Models and textures
        void orthoView(); // sets the camera view for drawing GUI objects

        int *width, *height;
        float fov;
        float ratio; // width/height ratio (4/3)
        float clipNear, clipFar;
        float camera_range; // range from camera for use with cameraAngle
        bool rotationalCamera, isSoundListener;

        SoundListener listener;

        // perspective options
        vertex* eyePos;
        vertex* refPos;
        vertex* upVector;
        vertex* camera_angle; // angle of camera
};

#endif
