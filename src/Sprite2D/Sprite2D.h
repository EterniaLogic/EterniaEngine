#ifndef SPRITE2D_H_
#define SPRITE2D_H_


#include <Eternia/Math/struct/vertex.h>
#include <Eternia/Data/CharString.h>
#include <Eternia/Design/IAnimated.h>

#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/freeglut.h>
#include <GL/glut.h>

#include <Magick++.h>
#include <MagickCore/MagickCore.h>
//#include <Magick++/include.h>
//#include <ImageMagick-6/Magick++.h>
#include <list>

#include <malloc.h>

using namespace Math;

// Sprites are pictures that can be animated.
// Animations are progressed with the animation thread.

// Sprites can be changed on-the-fly.


// Anchor location for the image.
enum S2D_IMGANCHOR {
S2D_LEFTTOP, S2D_CENTERTOP, S2D_RIGHTTOP,
S2D_LEFTCENTER, S2D_CENTER, S2D_RIGHTCENTER,
S2D_LEFTBOTTOM, S2D_CENTERBOTTOM, S2D_RIGHTBOTTOM};

class Sprite2D : public IAnimated{
private:
    bool loaded; // is this loaded? If not, will not be drawn.
    bool bound; // is current image bound? (Enforces bindImage)
    bool draw; // should this be drawn?

//    vertex location; // Z is used for layering.
    GLsizei width,height;
    float scale;
    long timeset;

    S2D_IMGANCHOR anchor;

    GLvoid *imagedata;
    Magick::Image image;
    GLuint planeVAO; // VAO for a 3D plane to draw the image to.
//    Magick::Image *image; // ImageMagick image to use
    GLuint readFboId, texid, depthbufid;
    std::list<Magick::Image> imageList;


public:
    Sprite2D();

    void openImage(CharString img, bool fromMemory); // open up image from file or raw data

    vertex location; // Z is used for layering.

    // From IAnimated
    void animateTick(long timeMillis); // used with images that have multiple frames

    // Dimensions
    void setLocation(vertex);
    vertex getLocation();
    void setScale(float); // set the scale of the image
    float getScale();

    void calculateScale(int width, int height);

    void setAnchorLocation(S2D_IMGANCHOR); // set the anchoring location for images.


    void bindImage(); // called during draw, If image already bound, do not redo. glTexImage2D.
    void drawImage(); // draw image at location.
    void draw3D(int textype); // ONLY use bound image.

    bool isLoaded();
};

#endif
