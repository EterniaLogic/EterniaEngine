#ifndef DRAW_AREA_H
#define DRAW_AREA_H

#include <Eternia/Data/BitMap.h>
#include <Eternia/Math/struct/vertex.h>
#include <Eternia/Design/Colors.h>
#include <Eternia/Data/LinkedList.hpp>

#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/freeglut.h>
#include <GL/glut.h>

#include "GLCommon.h"
#include "GSimpleDrawers.h"

// Draw array type
// DA_IMAGE Image that is drawn to the screen
// DA_GRADIENT  Linear gradient, colors based off of bitmap (first row only)
enum DA_TYPE {DA_SOLID,DA_IMAGE,
              DA_GRADIENT
             };

enum DA_GDTYPE {DA_LINEAR_GRADIENT,
                DA_CIRCULAR_GRADIENT
               };

class DrawArea {
        DA_TYPE type; // use bitmap?
        DA_GDTYPE gradient; // gradient type
        BitMap* toDraw; // Image or gradient loaded
    public:
        DrawArea(); // known draw system
        void draw(vertex* location, vertex* size); // Draws the bitmap or plain type (OpenGL)

        void loadImage(BitMap* image);
        void loadGradient(DA_GDTYPE, LinkedList<vertex>* list); // load values into the gradient
        void loadSolidColor(vertex color);

//    void setSize(int x, int y, int width, int height);

        char alpha;
};

#endif
