#ifndef DEV_DOCK_WINDOW_H_
#define DEV_DOCK_WINDOW_H_

enum DEVGUI_DOCKLOC {DEVDOCK_NONE, DEVDOCK_CENTER, DEVDOCK_LEFT, DEVDOCK_BOTTOM, DEVDOCK_RIGHT};

#include <Eternia/Design/GUI/LayoutObject.h>
#include "DevDockingTabArea.h"
#include "../../GSimpleDrawers.h"
#include "../../GLCommon.h"


class DevDockableWindow : public LayoutObject{
protected:
    DEVGUI_DOCKLOC dockMode;
    DevDockingTabArea *dockwindow;
    CharString name;
public:
    DevDockableWindow();
    virtual ~DevDockableWindow();
    
    void setDockPos(DEVGUI_DOCKLOC);
    void setName(CharString);
    CharString getName();
};

#else
class DevDockableWindow;
enum DEVGUI_DOCKLOC;// {DEVDOCK_NONE, DEVDOCK_CENTER, DEVDOCK_LEFT, DEVDOCK_BOTTOM, DEVDOCK_RIGHT};
#endif
