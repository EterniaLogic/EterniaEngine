#include "DevMenuItem.h"

DevMenuItem::DevMenuItem(){
    action = 0x0;
}

DevMenuItem::DevMenuItem(CharString label, void (*action)()){
    this->action = action;
    itemName = label;
}

DevMenuItem::~DevMenuItem(){
    action = 0x0;
}

void DevMenuItem::draw(){

    if(mouseOver){
        gDrawSolidColor_d(0.2f,0.2f,0.4f,1.f);
        gDrawRectangle(globalx,globaly,100,20);
    }

    // draw text
    gDrawSolidColor_d(0.f,0.f,0.f,1.f);
    gDrawText(globalx, globaly, itemName);
}

void DevMenuItem::update(){

}


// Add sub-menu
void DevMenuItem::addMenu(DevMenuItem *item){
    this->addChild(item);
    item->visible = false;// do not show the item until clicked.

}

// set the text for this item
void DevMenuItem::setText(CharString text){
    itemName = text;
}

void DevMenuItem::setAction(void (*action)()){
    this->action = action;

    // Set item positions, then make them visible.
}


void DevMenuItem::handleMouse(MouseHandleEvent* event){
    // mouse click of either type.
    // If there are sub-items and this is hovered on, make them visible.
    cout << "mouseOver" << endl;
}

void DevMenuItem::handleKeyboard(KeyHandleEvent* event){
    // no real keyboard events besides "Enter", but eh.
}
