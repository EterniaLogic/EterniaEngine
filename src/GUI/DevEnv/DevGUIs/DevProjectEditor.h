#ifndef DEV_PROJ_EDIT_H_
#define DEV_PROJ_EDIT_H_

#include "../../GObject.h"
#include "../../GTreeView.h"
#include "../DevConfig.h"
#include "DevDockableWindow.h"
#include <Eternia/Data/LinkedList.hpp>

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
