#ifndef DEV_PROJ_EDIT_H_
#define DEV_PROJ_EDIT_H_

#include <Eternia/Design/GUI/LayoutObject.h>
#include "../../GTreeView.h"
#include "../DevConfig.h"
#include "../../GLCommon.h"
#include "DevDockableWindow.h"
#include <Eternia/Data/LinkedList.hpp>

//#define debugLoggobject(msg) cout << msg;
#define debugLoggobject(msg) //


// GUI main for the project editor
class DevProjectEditor : public DevDockableWindow {
private:
    void handleMouse(MouseHandleEvent*);
    void handleKeyboard(KeyHandleEvent*);
    GTreeView view;
    
public:
    DevProjectEditor();
    virtual ~DevProjectEditor();
    
    
    void draw();
    void update();
};


#endif
