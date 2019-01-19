#include "GTreeView.h"
#include <iostream>
using namespace std;

GTreeView::GTreeView(){
    canDrag = false;
    treelevel=0;
    
}

// Destroy
GTreeView::~GTreeView() {}


void GTreeView::_drawTree(GTreeNode* node, int xoffset){
    if(node == 0x0) return;
    int globalx = getGlobalX();
    int globaly = getGlobalY();
    int xoffset2 = xoffset;

    if(node->selected){
        glColor3f(0.f,0.f,1.f);
        gDrawRectangle(globalx+xoffset, globaly+15*treelevel,200,15);
        glColor3f(0.8f,0.8f,1.f);
        gDrawRectangle(globalx+xoffset+1, globaly+15*treelevel+1,198,13);
    }

    if(node->Child != 0x0){
        glColor3f(0.0f, 0.0f, 0.0f);
        gDrawCircle(globalx+xoffset+10, globaly+15*treelevel+4,3,node->expanded);
    }

    if(node->icon.isLoaded()){
        xoffset2 += 12;

        // draw it!
        node->icon.setLocation(vertex(globalx+xoffset+15, globaly+15*treelevel+2,0.f));

        glEnable(GL_TEXTURE_2D);
        glDisable(GL_LIGHTING);
        glColor3f(1.0f, 1.0f, 1.0f);
        node->icon.drawImage();
        glDisable(GL_TEXTURE_2D);
    }

    glColor3f(0.0f, 0.0f, 0.0f);
    gDrawText(globalx+xoffset2+15, globaly+15*treelevel, node->name);
    treelevel++;

    if(node->expanded)
        _drawTree(node->Child, xoffset+15);
    _drawTree(node->Sibling, xoffset+15);
}

void GTreeView::draw() {
    //cout << globalx << " " << globaly << endl;
    // Draw Tree items
    treelevel=1;
    _drawTree(tree,5);
}

// handles Mouse input;
void GTreeView::handleMouse(MouseHandleEvent* event) {
    debugLoggobject("GTreeView Handle Mouse" << endl);
}

// Handles any keyboard function
void GTreeView::handleKeyboard(KeyHandleEvent* event) {
}

void GTreeView::update() {

}
