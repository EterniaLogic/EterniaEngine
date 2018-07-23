#ifndef GOBJECT_H
#define GOBJECT_H

#include <Eternia/Data/LinkedList.hpp>
#include "../Events/MouseHandleEvent.h"
#include "../Events/KeyHandleEvent.h"
#include <iostream>


//#define COUTDEBG
#ifdef COUTDEBG
#define debugLoggobject(s) cout << s << endl; cout.flush()
#else
#define debugLoggobject(s)  //nothing
#endif

//#include "GLCommon.h" // in GSimpleDrawers
#include "GSimpleDrawers.h" // Basic shape drawing (Static functions)




// Polymorphism container class for any "GUI Object"
class GObject {
    public:
        GObject();
        virtual ~GObject();

        // NOTE:
        //  - functions that start with "_" send the event to this object's children.
        //  - visibility and selected are both handled by GObject

        void _draw(); // sends draw handler to children
        virtual void draw(); // this is called for all GObjects to draw

        // update performs logical operations and updates information
        // different thread from draw
        void _update(); // sends update handler to children
        virtual void update(); // updates information!

        // different thread from draw and update
        void _handleMouse(MouseHandleEvent*); // handles mouse operations; BEFORE handleMouse
        void _handleKeyboard(KeyHandleEvent*); // handles mouse operations; BEFORE handleMouse
        virtual void handleMouse(MouseHandleEvent*); // Handles a mouse operation for ordinary windows (click, mousedown, mouseup, mousemove)
        virtual void handleKeyboard(KeyHandleEvent*); // Handles a keyboard operation for ordinary windows (Window must be selected)

        void addChild(GObject*);
        void setParent(GObject*);
        void childClaimSelected(); // tells parent that this child owns (child calls this onto the parent)

        // this will set drawing locations and such. USE THIS!
        void setPosition(int x, int y);
        void setLocalPosition(int x, int y);

        // generic fields
        // globalx and y are automatically set when this is a child
        int x, y, globalx, globaly, localx, localy, dragoffsetx, dragoffsety; // globalx/y are overwritten by localx/y if they are not defaulted to -1
        int mouseLocX,mouseLocY; // mouse position relative to this object.
        int width, height;
        float opacity; // reverse transparency
        bool selected, visible,mouseOver, allowMouseEvents, dragging;
        bool canDrag; // Can this object be dragged? NOTE: GObject handles basic dragging, not advanced
        bool enabled; // if false, no writing interactions can occur.
        GObject* parent;
        LinkedList<GObject> children;
        vertex* foreColor, *backColor; // colors from 0 to 255

        static bool cursorReq; // request a cursor?
        static int cursorSet;
        bool needsUpdate, needsDraw, needsMouse,  needsKeyboard,
            needCursorChange;

    private:
        bool childSelectedMouseOver(GObject*);
};




namespace GHandlers {
    void mouseHandler(MouseHandleEvent*);
    void keyHandler(KeyHandleEvent*);
    void drawHandler();
    void updateHandler();
    extern LinkedList<GObject> mouseListenerOwners;
    extern LinkedList<GObject> keyListenerOwners;
    extern LinkedList<GObject> drawListenerOwners;
    extern LinkedList<GObject> updateListenerOwners;

//appInstance->mouseListeners->add(mouseHandler);
//appInstance->keyListeners->add(keyHandler);
};

#endif
