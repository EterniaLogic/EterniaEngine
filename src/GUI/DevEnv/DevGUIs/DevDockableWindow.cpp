#include "DevDockableWindow.h"

DevDockableWindow::DevDockableWindow(){

}
DevDockableWindow::~DevDockableWindow(){

}

void DevDockableWindow::setDockPos(DEVGUI_DOCKLOC dock){
    dockMode = dock;
}

void DevDockableWindow::setName(CharString name){
    this->name = name;
}

CharString DevDockableWindow::getName(){
    return name;
}
