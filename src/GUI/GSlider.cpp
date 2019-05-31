#include "GSlider.h"
#include <iostream>
using namespace std;

// initialize
GSlider::GSlider() {
    val=0;
    max=1000;
    min=0;
    width=10;
    height=10;
    dragging = false;
    vertical = false;
    canDrag = true;
}

// Destroy
GSlider::~GSlider() {}

// Header Draw Function; Calls all other drawing functions and
// NOTE: GObject handles visibility and selection
void GSlider::draw() {
    // draw the primary circle, active element
    int globalx = getGlobalX();
    int globaly = getGlobalY();
    gDrawSolidColor_d(0.5f,0.5f,0.5f, opacity);
    if(vertical){
        gDrawRectangle(globalx+(mouseOver ? 0 : 4), globaly, mouseOver ? 10 : 2, height);
    }else{
        gDrawRectangle(globalx, globaly+(mouseOver ? 0 : 4), width, mouseOver ? 10 : 2);
    }

    // draw a slider!
    if(mouseOver){
        gDrawSolidColor_d(0.5f,0.9f,0.9f, opacity);
    }else{
        gDrawSolidColor_d(0.5f,0.5f,0.5f, opacity);
    }
    
    
    
    
    if(vertical){
        gDrawCircle(globalx+10, globaly-5+((val*height)/max), 5, false);
        if(selected){ // draw hollow circle here
            gDrawSolidColor_d(0.5f,0.9f,0.5f, opacity);
            gDrawCircle(globalx+10, globaly-5+((val*height)/max), 5, true);
        }
    }else{
        gDrawCircle(globalx+7+((val*width)/max), globaly, 5, false);
        if(selected){ // draw hollow circle here
            gDrawSolidColor_d(0.5f,0.9f,0.5f, opacity);
            gDrawCircle(globalx+7+((val*width)/max), globaly, 5, true);
        }
    }
}

// handles Mouse input;
void GSlider::handleMouse(MouseHandleEvent* event) {
    int globalx = getGlobalX();
    int globaly = getGlobalY();
    
    if(event->event_button == LEFT_BUTTON && event->event_type == MOUSE_DOWN) {
        dragging = true;
    } else if(event->event_button == LEFT_BUTTON && event->event_type == MOUSE_UP) {
        dragging = false;
    } else if(dragging) {
        // x*max/80
        if(vertical){
            val = ((event->y - globaly) * max)/height;
        }else{
            val = ((event->x - globalx) * max)/width;
        }
        
        // enforce boundaries
        if(val > max) val=max;
        if(val < min) val=min;
    }
}

// Handles any keyboard function
void GSlider::handleKeyboard(KeyHandleEvent* event) {

}

void GSlider::update() {
    //
}
