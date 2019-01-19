#ifndef GLABEL_H
#define GLABEL_H

#include <Eternia/Data/CharString.h>
#include <Eternia/Design/GUI/LayoutObject.h>
#include <cstring>

#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/freeglut.h>
#include <GL/glut.h>

#include "GLCommon.h"

// A label just draws
class GLabel : public LayoutObject {
    public:
        GLabel();
        virtual ~GLabel();

        void draw();
        void update();

        // automatically updated
        std::string text;
};

#endif
