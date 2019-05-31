#include "DevMenuBar.h"

DevMenuBar::DevMenuBar(){

}

DevMenuBar::~DevMenuBar(){

}


void DevMenuBar::draw(){
    gDrawSolidColor(DEVCONF::Menu_BackColor,1.0f);
    gDrawRectangle(x,y,width,height);
}

void DevMenuBar::update(){
    
}


// Add sub-menu
void DevMenuBar::addMenu(DevMenuItem *item){
    this->addChild(item);
    item->visible = true; // do not show the item until clicked.
    
    item->docked = true; // dock item, always visible.
    
    // Set item position
}


void DevMenuBar::handleMouse(MouseHandleEvent* event){
    // nothing.
}

void DevMenuBar::handleKeyboard(KeyHandleEvent* event){
    // nothing.
}
