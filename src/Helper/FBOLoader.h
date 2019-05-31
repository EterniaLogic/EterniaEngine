#ifndef FBOLOADER_H_
#define FBOLOADER_H_

#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/freeglut.h>
#include <GL/glut.h>


class FBOLoader{

public:
    GLuint fbo;
    
    void initFBO();
};

#endif
