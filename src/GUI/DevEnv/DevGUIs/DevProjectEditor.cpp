#include "DevProjectEditor.h"

DevProjectEditor::DevProjectEditor(){
    setName(CharString("Project Editor",14));

    // Add Items
    GTreeNode *node1 = new GTreeNode();
    node1->name = CharString("Project",7);
    node1->expanded=true;
    node1->icon.openImage(CharString("test_sprite.gif"),false);
    node1->icon.setScale(0.1f);
    node1->icon.animateTick(1001);
    node1->selected=true;

    GTreeNode *node2 = new GTreeNode();
    node2->name = CharString("Scripts",7);

    GTreeNode *node3 = new GTreeNode();
    node2->name = CharString("Models",6);



    node1->Child = node2;
    node2->Sibling = node3;

    view.tree = node1;
    addChild(&view);
    view.setPosition(0,0);
}

DevProjectEditor::~DevProjectEditor(){

}



void DevProjectEditor::draw(){
    if(dockMode == DEVDOCK_NONE){
        // draw a header and background.
    }


}

void DevProjectEditor::update(){

}

void DevProjectEditor::handleMouse(MouseHandleEvent*){
    debugLoggobject("DevProjectEditor Handle Mouse");
    //cout << "DevProjectEditor mouseOver" << endl;
}

void DevProjectEditor::handleKeyboard(KeyHandleEvent*){

}
