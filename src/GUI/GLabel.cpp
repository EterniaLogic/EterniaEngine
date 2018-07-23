#include "GLabel.h"

using namespace std;

GLabel::GLabel() {
    // constructor
    height = 25; // normal labels are 25 pixels high
    text = "";
    needsKeyboard = false;
    needsMouse = false;
    needsUpdate = false;
}

//
GLabel::~GLabel() {}

const float l2pos[4] = {1,0.5,1,0};

// draw text on label
void GLabel::draw() {
    //cout << "Label X: " << globalx << " Y: " << globaly << " '" << text << "'" << endl;
    //glScalef(2, 2, 2);
    glLineWidth(3);
    glColor4f(foreColor->x/255.0f,foreColor->y/255.0f,foreColor->z/255.0f, 1.0f);

    // Set the XY Position of the text
    glRasterPos2i(globalx,globaly);

    // Draw each letter in the text
    for(unsigned int i; i<text.size(); i++) {
        if((int)text[i] < 32) continue;
        glutBitmapCharacter(GLUT_BITMAP_HELVETICA_12, (int)text[i]);
    }
    // add some lighting
    glLightfv(GL_LIGHT1, GL_POSITION, l2pos);



    /*glTranslatef(-3, 2.5, 0);
    glRotatef(-20, 1.0, 0.0, 0.0);
    glScalef(0.0015, 0.0015, 0.0015);
    glLineWidth(2);

    glPushMatrix();
    //glTranslatef(0, 0, 0.0);
    for(int i; i<text->getSize(); i++){
        glColor3f(1.0,1.0,1.0);
        glutStrokeCharacter(GLUT_STROKE_ROMAN, (int)text->get()[i]);
    }
    glPopMatrix();*/
}

void GLabel::update() {}
