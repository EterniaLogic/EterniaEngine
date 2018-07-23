#include "DevProjectEditor.h"

DevProjectEditor::DevProjectEditor(){
    setName(CharString("Project Editor",14));

    // Add Items
    TreeNode *node1 = new TreeNode();
    node1->name = CharString("Project",7);
    node1->expanded=true;
    node1->icon.openImage(CharString("test_sprite.gif"),false);
    node1->icon.setScale(0.1f);
    node1->icon.animateTick(1001);
    node1->selected=true;

    TreeNode *node2 = new TreeNode();
    node2->name = CharString("Scripts",7);

    TreeNode *node3 = new TreeNode();
    node2->name = CharString("Models",6);



    node1->Child = node2;
    node2->Sibling = node3;

    view.tree = node1;
    addChild(&view);
    view.setLocalPosition(0,0);
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
}

void DevProjectEditor::handleKeyboard(KeyHandleEvent*){

}
