#include "DrawArea.h"

// Initializer
DrawArea::DrawArea() {
    //this->location = location;
    //this->size = size;
    this->alpha = 0;
    this->loadSolidColor(Color::Grey);
    this->type=DA_SOLID;
}

// Draw the region
void DrawArea::draw(vertex* location, vertex* size) {
    if(type == DA_IMAGE) {
        // draw an image to the selected location
    } else if(type == DA_GRADIENT) {
        // draw a gradient to the selected location
    } else if(type == DA_SOLID) {
        // draw a solid to the location
        cout << "D_x (" << location->x <<", " << location->y << ") ["<<size->x<<", "<<size->y<<"]" << endl;
        /*glColor3f(toDraw->map[0][0].r,
        toDraw->map[0][0].g,
        toDraw->map[0][0].b,
        toDraw->map[0][0].a
        );*/
        glColor3f(0.f,1.f,1.f);
        glBegin(GL_QUADS);
        glVertex2i( location->x     , location->y);
        glVertex2i( location->x     , location->y+size->y );
        glVertex2i( location->x+size->x, location->y+size->y );
        glVertex2i( location->x+size->x, location->y);
        glEnd();
    }
}

// load an image into the draw area
void DrawArea::loadImage(BitMap* image) {
    toDraw = image;
    type = DA_IMAGE;
}

// load values into the gradient
void DrawArea::loadGradient(DA_GDTYPE gradient_type, LinkedList<vertex>* list) {
    gradient = gradient_type;
    type = DA_GRADIENT;

    toDraw = new BitMap(list->size(),1);
    list->freeze();
    for(int i=0; i<list->size(); i++) {
        this->toDraw->map[i][0].r = list->frozen[i]->x;
        this->toDraw->map[i][0].g = list->frozen[i]->y;
        this->toDraw->map[i][0].b = list->frozen[i]->z;
        this->toDraw->map[i][0].a = alpha;
    }
}

// draw a single solid color
void DrawArea::loadSolidColor(vertex color) {
    toDraw = new BitMap(1,1);
    type = DA_SOLID;
    this->toDraw->map[0][0].r = color.x;
    this->toDraw->map[0][0].g = color.y;
    this->toDraw->map[0][0].b = color.z;
    this->toDraw->map[0][0].a = alpha;
}

/*void DrawArea::setSize(int x, int y, int width, int height){
  location->x = x;
  location->y = y;
  size->x = width;
  size->y = height;
}*/
