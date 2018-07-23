#include "DevEnv.h"


// handles Mouse input;
void DevEnv::handleMouse(MouseHandleEvent* event) {
    this->selected=false;
    debugLoggobject("DevEnv Handle Mouse default");
}

// Handles any keyboard function
void DevEnv::handleKeyboard(KeyHandleEvent* event) {

}

void DevEnv::update() {
    debugLoggobject("DevEnv Handle update default");
    if(leftDockingArea.poswidthChanged || rightDockingArea.poswidthChanged || bottomDockingArea.poswidthChanged){
        // re-update positioning
        updateWindowSize(width, height);

        // reset changed status.
        leftDockingArea.poswidthChanged = rightDockingArea.poswidthChanged = bottomDockingArea.poswidthChanged = false;
    }
    debugLoggobject("DevEnv Handle update default END");
}

// window has been resized. Update all elements for the environment.
void DevEnv::updateWindowSize(int width, int height){
    this->width = width;
    this->height = height;

    leftDockingArea.calculateVisibility();
    rightDockingArea.calculateVisibility();
    //centerDockingArea.calculateVisibility();
    bottomDockingArea.calculateVisibility();


    // resize all objects
    menubar.width = width;
    leftDockingArea.height = height-25;
    rightDockingArea.height = height-25;

    int centerWidth = width;
    centerWidth -= leftDockingArea.visible ? leftDockingArea.width : 0;
    centerWidth -= rightDockingArea.visible ? rightDockingArea.width : 0;

    int centerHeight = height-25;
    centerHeight -= bottomDockingArea.visible ? bottomDockingArea.height : 0;

    centerDockingArea.width = centerWidth;
    centerDockingArea.height = centerHeight;
    bottomDockingArea.width = centerWidth;

    // Calculate the positions for objects
    leftDockingArea.setLocalPosition(0,25);
    rightDockingArea.setLocalPosition(leftDockingArea.width+centerDockingArea.width,25);
    centerDockingArea.setLocalPosition(leftDockingArea.width,25);
    bottomDockingArea.setLocalPosition(leftDockingArea.width,25+centerDockingArea.height);

    /*cout << "LEFT: "<< leftDockingArea.globalx << "," << leftDockingArea.globaly << " " << leftDockingArea.width << " x " << leftDockingArea.height << " =" << leftDockingArea.visible << endl;
    cout << "RIGHT: "<< rightDockingArea.globalx << "," << rightDockingArea.globaly << " " << rightDockingArea.width << " x " << rightDockingArea.height << " =" << rightDockingArea.visible << endl;
    cout << "CENTER: "<< centerDockingArea.globalx << "," << centerDockingArea.globaly << " " << centerDockingArea.width << " x " << centerDockingArea.height << " =" << centerDockingArea.visible << endl;
    cout << "BOTTOM: "<< bottomDockingArea.globalx << "," << bottomDockingArea.globaly << " " << bottomDockingArea.width << " x " << bottomDockingArea.height << " =" << bottomDockingArea.visible << endl;*/
}
