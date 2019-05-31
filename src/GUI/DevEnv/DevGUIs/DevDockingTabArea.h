#ifndef DEVDOCKINGTABAREA_H_
#define DEVDOCKINGTABAREA_H_

#include <Eternia/Design/GUI/LayoutObject.h>
#include "../DevConfig.h"
#include "../../GLabel.h"
#include "../../GSimpleDrawers.h"
#include "../../GLCommon.h"
#include "DevDockableWindow.h"
#include <Eternia/Data/LinkedList.hpp>
// Standalone drawing parent. If not visible (AKA: no children), then don't draw.

//#define debugLoggobject(msg) cout << msg;
#define debugLoggobject(msg) //

class DevDockingTabArea : public LayoutObject{
private:
    DEVGUI_DOCKLOC area;
    
    CharString title;
    int tabid;
    bool tabchanged, mosueOverDrag;
    
    void handleMouse(MouseHandleEvent*);
    void handleKeyboard(KeyHandleEvent*);
    
    // Store docked GUI Elements that have draggable windows
    LinkedList<DevDockableWindow*> dockedWindows;
public:
    DevDockingTabArea();
    virtual ~DevDockingTabArea();
    
    bool poswidthChanged;
    
    void draw();
    void update();
    
    void calculateVisibility(); // determine if this is visible?
    void dockWindow(DevDockableWindow *); // dock window here
    void setDockType(DEVGUI_DOCKLOC);
};

#else
    class DevDockingTabArea;
#endif
