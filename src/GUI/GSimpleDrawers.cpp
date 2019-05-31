#include "GSimpleDrawers.h"

// Set a static color
void gDrawSolidColor(vertex color, float alpha) {
    glColor4f(color.x,color.y, color.z,alpha);
}

// Set a custom color
void gDrawSolidColor_c(vertex *color, float alpha) {
    glColor4f(color->x,color->y,color->z,alpha);
}

void gDrawSolidColor_d(float r, float g, float b, float alpha) {
    glColor4f(r,g,b,alpha);
}

// Draw a simple rectangle (2D only)
void gDrawRectangle(float x, float y, float width, float height) {
    glBegin(GL_QUADS);
    glVertex2i( x, y);
    glVertex2i( x, y+height);
    glVertex2i( x+width, y+height);
    glVertex2i( x+width, y);
    glEnd();
}


void gDrawGradientRectangle(float x, float y, float width, float height, vertex acolor, vertex bcolor, float opacity, GRAD_DIR gradientdir){
    glBegin(GL_QUADS);
    if(gradientdir == GD_LEFT){
        gDrawSolidColor(acolor,1.0f);
        glVertex2i( x, y);
        glVertex2i( x, y+height);
        gDrawSolidColor(bcolor,1.0f);
        glVertex2i( x+width, y+height);
        glVertex2i( x+width, y);
    }else if(gradientdir == GD_UP){
        gDrawSolidColor(bcolor,1.0f);
        glVertex2i( x, y);
        gDrawSolidColor(acolor,1.0f);
        glVertex2i( x, y+height);
        glVertex2i( x+width, y+height);
        gDrawSolidColor(bcolor,1.0f);
        glVertex2i( x+width, y);
    }else if(gradientdir == GD_DOWN){
        gDrawSolidColor(acolor,1.0f);
        glVertex2i( x, y);
        gDrawSolidColor(bcolor,1.0f);
        glVertex2i( x, y+height);
        glVertex2i( x+width, y+height);
        gDrawSolidColor(acolor,1.0f);
        glVertex2i( x+width, y);
    }else if(gradientdir == GD_RIGHT){
        gDrawSolidColor(bcolor,1.0f);
        glVertex2i( x, y);
        glVertex2i( x, y+height);
        gDrawSolidColor(acolor,1.0f);
        glVertex2i( x+width, y+height);
        glVertex2i( x+width, y);
    }else if(gradientdir == GD_NONE){
        gDrawSolidColor(acolor,0.0f);
        glVertex2i( x, y);
        glVertex2i( x, y+height);
        glVertex2i( x+width, y+height);
        glVertex2i( x+width, y);
    }
    glEnd();
}

// Draw a Cornered rectangle (2D only)
void gDrawCorneredRectangle(float x, float y, float width, float height, int radii) {
    // x^2 + y^2 = r^2
    // in this case, r is known with 2 unknowns along this semicircle.
    // use trig to find x,y but restrict to only the -x, +y region
    // physical::unit::pi


    // pi is the celestial number here.
    // Also get the circumfrence/4 (pi*r/2)
    float xoff=radii;
    float yoff=0;
    float o;

    glBegin(GL_POLYGON);
    // loop through for the left top corner
    for(o=(3*physical::unit::pi/2); o>=physical::unit::pi; o-=((2*physical::unit::pi)/(2*radii))) { // top left
        // keep x,y through persistence
        xoff = radii*cos(o);
        yoff = radii*sin(o);
        glVertex2f(x+xoff+radii, y+yoff+radii);
    }

    // loop through for the left bottom corner
    for(o=physical::unit::pi; o>=physical::unit::pi/2; o-=((2*physical::unit::pi)/(2*radii))) { // bottom left
        // keep x,y through persistence
        xoff = radii*cos(o);
        yoff = radii*sin(o);
        glVertex2f(xoff+x+radii, yoff+height+y-radii);
    }

    // loop through for the right bottom corner
    for(o=(physical::unit::pi/2); o>=0; o-=((2*physical::unit::pi)/(2*radii))) { // bottom right
        // keep x,y through persistence
        xoff = radii*cos(o);
        yoff = radii*sin(o);
        glVertex2f(xoff+x+width-radii, yoff+height+y-radii);
    }

    // loop through for the right top corner
    for(o=(2*physical::unit::pi); o>=3*physical::unit::pi/2; o-=((2*physical::unit::pi)/(2*radii))) { // top right
        // keep x,y through persistence
        xoff = radii*cos(o);
        yoff = radii*sin(o);
        glVertex2f(xoff+x+width-radii, yoff+y+radii);
    }

    glEnd();
}

// Draw a cirlce!
void gDrawCircle(float x, float y, int radii, bool hollow) {
    float xoff=radii;
    float yoff=0;
    float o;
    
    if(hollow){
        glLineWidth(3);
        glBegin(GL_LINES);
    }else 
        glBegin(GL_POLYGON);

    // loop through for the right top corner
    for(o=(2*physical::unit::pi); o>=0; o-=((2*physical::unit::pi)/(2*radii))) { // top right
        // keep x,y through persistence
        xoff = radii*cos(o);
        yoff = radii*sin(o);
        glVertex2f(xoff+x-radii, yoff+y+radii);
    }

    glEnd();
}


void gDrawLine(float x, float y, float x2, float y2, float linewidth){
    glLineWidth(linewidth);
    glBegin(GL_LINES);
    glVertex2f(x,y);
    glVertex2f(x2,y2);
    glEnd();
}

void gDrawText(float x, float y, CharString text){
    glLineWidth(3);
    
    // Set the XY Position of the text
    glRasterPos2f(x,y+12);

    // Draw each letter in the text
    for(int i=0; i<text.getSize(); i++) {
        int charx = text.get()[i];
        if(charx < 32) continue;
        glutBitmapCharacter(GLUT_BITMAP_HELVETICA_12, charx);
    }
}

void gDrawSineWave(float amplitude, float depth, float step){
    
    for(float i=0.f; i<6*3.14156; i+=step){
        glBegin(GL_POLYGON);
        glVertex3f(i, sin(i)*amplitude, 0.f);
        glVertex3f(i+step, sin(i+step)*amplitude, 0.f);//depth);
        glVertex3f(i+step, sin(i+step)*amplitude, depth);
        glVertex3f(i, sin(i)*amplitude, depth);
        glEnd();
    }
    
}
