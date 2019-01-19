#include "GWindow.h"
#include <iostream>
using namespace std;

// initialize
GWindow::GWindow(vertex location_, vertex size_) {
    drawHeader=true;    // includes buttons
    drawButtons=true;   // all buttons here, but header exists
    drawMinimize=true;  // only minimize
    drawMaximize=true;  // only maximize
    drawExit=true;      // only exit

    canDrag=true;

    titleLabel = new GLabel();
    this->addChild(titleLabel);
    titleLabel->text = "test title!";
    titleLabel->setPosition(7,13);
    titleLabel->foreColor = vertex(255.f,255.f,255.f);
    titleLabel->allowMouseEvents = false;
}

// Destroy
GWindow::~GWindow() {}

// Header Draw Function; Calls all other drawing functions and
// NOTE: GObject handles visibility and selection
void GWindow::draw() {
    // update location
    int globalx = getGlobalX();
    int globaly = getGlobalY();
    
    /*    if(drawWindowBorder) windowBorder->draw(location,size);
        windowBack->draw(location,size);
        windowHeader->draw(location,size);*/

    // Draw background
    glColor4f(0.3f,0.3f,0.3f, opacity);
    gDrawCorneredRectangle(globalx, globaly, width, height, 15);

    // Draw Header
    // the header has a title and a set of buttons
    if(drawHeader) {
        if(mouseOver && mouseLocY < 15){
            glColor4f(0.6f,0.6f,0.6f, 0.8f);
        }else{
            glColor4f(0.4f,0.4f,0.4f, 0.4f);
        }
        gDrawCorneredRectangle(globalx+1, globaly+1, width-2, 15, 5);

        // gDrawCircle(globalx+10, globaly+30, 5);
    }
}

// handles Mouse input;
void GWindow::handleMouse(MouseHandleEvent* event) {
    // cout << "[Window] mouse handled ebutton:" << event->event_button << " type:" << event->event_type << "(" << event->x << ", " << event->y << ") selected:" << selected << " mover:"<<mouseOver << "drag:" << dragging << endl;
    int globalx = getGlobalX();
    int globaly = getGlobalY();
    // handle mouse thingie
    debugLoggobject("GWindow Handle Mouse");

    // Dragging this window?
    if(dragging && event->y < globaly+22) {
        // move the window along with the location, as long as the x,y are in a specific height
        this->setPosition(event->x-this->dragoffsetx,
                            event->y-this->dragoffsety);
    }
}

// Handles any keyboard function
void GWindow::handleKeyboard(KeyHandleEvent* event) {
    //cout << "[Window] key handled" << endl;
}

void GWindow::update() {
    //cout << "[Window] update!" << endl;
    //debugLoggobject("GWindow update");
    /*windowHeader->setSize(globalx, globaly, 10, 10);
    windowBack->setSize(globalx, globaly, width, height);
    windowBorder->setSize(globalx+borderSize, globaly+borderSize, width-2*borderSize, height-2*borderSize);*/
}
