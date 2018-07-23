#include "GObject.h"

bool GObject::cursorReq = false;
int GObject::cursorSet = GLUT_CURSOR_INHERIT;

using namespace std;
namespace GHandlers {
    // use int, because these listeners are only holding a pointer value
    LinkedList<GObject> mouseListenerOwners;
    LinkedList<GObject> keyListenerOwners;
    LinkedList<GObject> drawListenerOwners;
    LinkedList<GObject> updateListenerOwners;

    void mouseHandler(MouseHandleEvent* event) {
        mouseListenerOwners.freeze();
        for(int i=0; i<mouseListenerOwners.frozenlen; i++) {
            mouseListenerOwners.frozen[i]->_handleMouse(event);
        }
    }

    void keyHandler(KeyHandleEvent* event) {
        keyListenerOwners.freeze();
        for(int i=0; i<keyListenerOwners.frozenlen; i++) {
            keyListenerOwners.frozen[i]->_handleKeyboard(event);
        }
    }

    void drawHandler() {
        //cout << "Draw Handler " << drawListenerOwners.size() << " " << drawListenerOwners.frozenlen << endl; cout.flush();
        drawListenerOwners.freeze();
        for(int i=0; i<drawListenerOwners.frozenlen; i++) {
            //cout << "Draw Listener " << i << endl; cout.flush();
            drawListenerOwners.frozen[i]->_draw();
        }
    }

    void updateHandler() {
        updateListenerOwners.freeze();
        for(int i=0; i<updateListenerOwners.frozenlen; i++) {
            updateListenerOwners.frozen[i]->_update();
        }
    }
};

// set up variables
GObject::GObject() {
    globalx = globaly = width = height = 0;
    localx = localy = -1;
    dragoffsetx = dragoffsety = 0;
    canDrag = false;
    visible = true;
    selected = false;
    mouseOver = false;
    allowMouseEvents=true;
    dragging=false;
    parent = 0x0;
    opacity = 1.0f;
    enabled = true;

    needsDraw = true;
    needsUpdate = true;
    needsMouse = true;
    needsKeyboard = true;
    //children = new LinkedList<GObject>();

    // add event listeners to GObject listener lists
    GHandlers::mouseListenerOwners.add(this);
    GHandlers::keyListenerOwners.add(this);
    GHandlers::drawListenerOwners.add(this);
    GHandlers::updateListenerOwners.add(this);

    foreColor = new vertex(255,255,255);
    backColor = new vertex(0,0,0);
}

GObject::~GObject() {}

void GObject::draw() {}
void GObject::update() {}
void GObject::handleMouse(MouseHandleEvent*) {}
void GObject::handleKeyboard(KeyHandleEvent*) {}


// handle first-level drawing, then send draw to children. Order matters.
void GObject::_draw() {
    if(!visible) return;
    //glutSetCursor(GLUT_CURSOR_INHERIT);
    if(cursorSet != GLUT_CURSOR_INHERIT && !cursorReq){
        cursorSet = GLUT_CURSOR_INHERIT;
        glutSetCursor(GLUT_CURSOR_INHERIT);
    }else if(cursorReq && needCursorChange){
        glutSetCursor(cursorSet);
        needCursorChange = false;
    }

    if(needsDraw) draw(); // <-- draw MUST be implemented!
    children.freeze();
    for(int i; i<children.size(); i++) {
        children.frozen[i]->_draw();
    }
}

void GObject::_update() {
    if(needsUpdate) update(); // <-- draw MUST be implemented!
    children.freeze();
    for(int i=0; i<children.size(); i++) {
        // if the localx/y are not set, only use global policy of the object
        if(children.frozen[i]->localx != -1 && children.frozen[i]->localy != -1) {
            // enforce local-based x/y policy
            children.frozen[i]->setPosition(globalx+children.frozen[i]->localx, globaly+children.frozen[i]->localy);
        }
        children.frozen[i]->_update();
    }
}

// handle mouse operations
void GObject::_handleMouse(MouseHandleEvent* event) {
    // is the mouse in this region?
    this->mouseOver = false; // mouseover is guilty until proven innocent
    debugLoggobject("GObject PRE Handle Mouse");

    mouseLocX = event->x-globalx;
    mouseLocY = event->y-globaly;


    if(visible) {
        if((event->x >= this->globalx && event->y >= this->globaly && event->x-this->globalx <= this->width && event->y-this->globaly <= this->height) || dragging) {
            // is the mouse over a child object? -> handle for child, not this
            // subtract position on the mouse position (Relative positioning)
            this->mouseOver = true;
            if(needsMouse) this->handleMouse(event);



            if(event->event_type == MOUSE_CLICK) {
                this->selected = true; // enforce top window
            } else if(event->event_type == MOUSE_DOWN) {
                if(event->event_button == LEFT_BUTTON) {
                    // must not be dragging the mouse to perform a drag operation
                    if(!this->dragging && selected && canDrag) {
                        this->dragging=true;
                        // set mouse offsets!
                        this->dragoffsetx = event->x-this->globalx;
                        this->dragoffsety = event->y-this->globaly;
                    }
                }
            } else if(event->event_type == MOUSE_UP) {
                if(event->event_button == LEFT_BUTTON) {
                    this->dragging=false;
                }
            }
        } else {
            //this->dragging = false;
        }
    }

    // Check to make sure that no children are selected and dragging
    children.freeze();
    for(int i=0; i<children.frozenlen; i++) {
        if(childSelectedMouseOver(children.frozen[i])){
            selected=false;
            dragging=false;
            return;
        }
    }

    /*if(event->event_type == MOUSE_CLICK && (!visible || !mouseOver)) {
        selected=false;
        dragging=false;
    }else if(event->event_type != MOUSE_CLICK && dragging && visible){
        selected=true;
        mouseOver=true;
        if(needsMouse) this->handleMouse(event);
    }*/
}

// Are any children dragging/selected?
bool GObject::childSelectedMouseOver(GObject* child){
    if(child == 0x0) return false;
    //cout << "childSelectedMouseOver A" << endl;
    if(child->dragging || child->mouseOver){
        return true;
    }else{
        //cout << "childSelectedMouseOver B" << endl;
        child->children.freeze();
        for(int i=0; i<child->children.frozenlen; i++) {
            //cout << "childSelectedMouseOver B1" << endl;
            if(child->children.frozen[i] == 0x0) continue;
            if(childSelectedMouseOver(child->children.frozen[i]))
                return true;
        }
    }

    return false;
}

//
void GObject::_handleKeyboard(KeyHandleEvent* event) {
    if(selected) {
        if(needsKeyboard) handleKeyboard(event);
    }
}

void GObject::addChild(GObject* child) {
    children.add(child);
    child->setParent(this);
    //child->setPosition(child->x, child->y);
}

void GObject::setParent(GObject* parent_) {
    this->parent = parent_;
    this->setPosition(globalx,globaly);
}

//
void GObject::setPosition(int x_, int y_) {
    // determine if this is a child; if so, add to globalx and globaly
    this->globalx = x_;
    this->globaly = y_;

    for(int i; i<children.frozenlen; i++) {
        if(children.frozen[i] == 0x0) continue;

        GObject *child = children.frozen[i];
        child->setPosition(globalx+child->localx, globaly+child->localy);
    }
}

void GObject::setLocalPosition(int x_, int y_) {
    // determine if this is a child; if so, add to globalx and globaly
    this->localx = x_;
    this->localy = y_;

    // do the same for children?
    children.freeze();
    for(int i; i<children.frozenlen; i++) {
        if(children.frozen[i] == 0x0) continue;

        GObject *child = children.frozen[i];
        child->setPosition(globalx+child->localx, globaly+child->localy);
    }
}
