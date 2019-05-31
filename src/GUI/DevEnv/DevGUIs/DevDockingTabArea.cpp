#include "DevDockingTabArea.h"



DevDockingTabArea::DevDockingTabArea(){
    poswidthChanged = false;
    canDrag = true;

    title = CharString("test title!",11);
}

DevDockingTabArea::~DevDockingTabArea(){

}

// Draw top bars
void DevDockingTabArea::draw(){
    // draw a full background, then add specific GUI elements
    int globalx = getGlobalX();
    int globaly = getGlobalY();
    int x = globalx;
    int y = globaly;
    int dragx = 0, dragy=0;

    GRAD_DIR dir;
    switch(area){
        case DEVDOCK_LEFT:
                dir = GD_LEFT;
                dragx = x+width-5;
            break;
        case DEVDOCK_RIGHT:
                dir = GD_RIGHT;
                dragx = x;
            break;
        case DEVDOCK_CENTER:
                dir = GD_NONE;
            break;
        case DEVDOCK_BOTTOM:
                dir = GD_UP;
                dragy = y;
            break;
    }

    //if(area != DEVDOCK_CENTER){
        gDrawGradientRectangle(x,y,width,height,DEVCONF::GUI_Gradient_BackColor,
                    DEVCONF::GUI_GradientTo_BackColor, opacity, dir);
        // drag bar location
        gDrawSolidColor_d(0.5f,0.5f,0.5f,opacity);
        if(dragy == 0){
            gDrawRectangle(dragx,y,5,height);
            gDrawSolidColor_d(0.5f,0.5f,0.5f,opacity);
            gDrawRectangle(dragx,y,2,height);
        }else{
            gDrawRectangle(x,y,width,5);
            gDrawSolidColor_d(0.5f,0.5f,0.5f,opacity);
            gDrawRectangle(x,y,width,2);
        }

        // header
        gDrawGradientRectangle(x,y,width,25,DEVCONF::GUI_Menu_Gradient_BackColor,
                    DEVCONF::GUI_Menu_GradientTo_BackColor, opacity, GD_DOWN);

        gDrawSolidColor_d(0.f,0.f,0.f,opacity);
        gDrawText(globalx+10, globaly+5, title);
    //}
}

// Update docked windows data
void DevDockingTabArea::update(){
    if(tabchanged){
        tabchanged=false;
        dockedWindows.freeze();// do not show the item until clicked.
        if(tabid < dockedWindows.frozenlen){
            children.clear();
            for(int i=0;i<dockedWindows.frozenlen;i++){
                dockedWindows.frozen[i]->setParent(0x0);
                dockedWindows.frozen[i]->visible = false;
            }

            dockedWindows.frozen[tabid]->visible = true;
            addChild(dockedWindows.frozen[tabid]);
            title = dockedWindows.frozen[tabid]->getName();
        }
    }
}

void DevDockingTabArea::setDockType(DEVGUI_DOCKLOC loc){
    this->area = loc;
}

void DevDockingTabArea::dockWindow(DevDockableWindow *window){
    window->setDockPos(area);
    window->setPosition(0,25);
    window->width = width;
    window->height = height-25;
//    window->setPosition(globalx+10,globaly+50);
    this->dockedWindows.add(window);
    tabid = dockedWindows.size()-1;
    tabchanged=true;
}


void DevDockingTabArea::calculateVisibility(){
    visible = dockedWindows.size() > 0;
    //this->visible = true;
}

// handles Mouse input;
void DevDockingTabArea::handleMouse(MouseHandleEvent* event) {
    // Handle tab selection, buttons, ect.
    // DEVGUI_DOCKLOC {DEVDOCK_NONE, DEVDOCK_CENTER, DEVDOCK_LEFT, DEVDOCK_BOTTOM, DEVDOCK_RIGHT};
    bool indragarea = false;
    int globalx = getGlobalX();
    int globaly = getGlobalY();
    debugLoggobject("DevDockingTabArea Handle Mouse");

    // increase width based on direction.
    if(event->event_type != MOUSE_CLICK){
        switch(this->area){
            case DEVDOCK_LEFT:
                    //
                    if((event->x > (globalx+width-10) && event->x < globalx+width) || dragging){
                        if(dragging){
                             width = event->x - globalx;
                            poswidthChanged = true;
                        }
                        indragarea = true;
                    }
                break;
            case DEVDOCK_RIGHT:
                    if((event->x > globalx && event->x < globalx+10) || dragging){
                        if(dragging){
                            this->setPosition(event->x-this->dragoffsetx,globaly);
                            width = parent->width - event->x;
                            poswidthChanged = true;
                        }
                        indragarea = true;
                    }
                break;
            case DEVDOCK_BOTTOM:
                    if((event->y > globaly && event->y < globaly+10) || dragging){
                        if(dragging){
                            this->setPosition(globalx, event->y-this->dragoffsety);
                            height = parent->height - event->y;
                            poswidthChanged = true;
                        }
                        indragarea = true;
                    }
                break;
        }

        if(indragarea || dragging){
            if(!cursorReq){
                needCursorChange = true;
                cursorReq = true;
                cursorSet = area==DEVDOCK_BOTTOM ? GLUT_CURSOR_UP_DOWN :GLUT_CURSOR_LEFT_RIGHT;
            }
        }else{
            cursorReq = false;
        }
    }

    // Expidited dragging fixes
    if(event->event_type == MOUSE_DOWN && indragarea){
        dragging = true;
    }else if(event->event_type == MOUSE_UP && dragging){
        dragging = false;
    }
    debugLoggobject("DevDockingTabArea Handle Mouse end" << endl);
}

// Handles any keyboard function
void DevDockingTabArea::handleKeyboard(KeyHandleEvent* event) {

}
