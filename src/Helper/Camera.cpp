#include "Camera.h"

Camera::Camera() {
    width = height = 0;
    fov = 45;
    ratio = 4.0/3;
    clipNear = 0.000001;
    clipFar = 1000000000.f;

    eyePos = new vertex(0,0,5);
    refPos = new vertex(0,0,0);
    upVector = new vertex(0,1,0);
    camera_angle = new vertex(2,0,0);
    rotationalCamera = true;
    camera_range = 5;
    isSoundListener = true;
}

// used when rendering models
void Camera::perspectiveView() {
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glEnable(GL_BLEND);
    gluPerspective(fov, ratio, clipNear, clipFar);

    // the Rotational Camera allows for players to change their camera direction
    if(rotationalCamera) {
        eyePos->x = camera_range*cos(camera_angle->x);
        eyePos->y = camera_range*sin(camera_angle->y);
        eyePos->z = camera_range*sin(camera_angle->x);
    }

    // look at the ref Position
    gluLookAt(eyePos->x, eyePos->y, eyePos->z, // << eye position
              refPos->x, refPos->y, refPos->z, // << reference point (to look at)
              upVector->x, upVector->y, upVector->z); // << up vector (which direction is the top of the camera at?)


    // Update a sound listener if this camera is an active listener
    if(isSoundListener) {
        listener.setPos(eyePos);
        listener.setOrientation(camera_angle, upVector); // cam angle, upward vector
        // listener.setVel(velocity); // Velocity is useful for doppler effects

    }


    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
}

void Camera::orthoView() {
    // set up the projection matrix
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glEnable(GL_BLEND);
    // just use a orthographic projection
    glOrtho(0,*width,*height,0,-100,100);

    // go back to modelview matrix so we can move the objects about
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
}
