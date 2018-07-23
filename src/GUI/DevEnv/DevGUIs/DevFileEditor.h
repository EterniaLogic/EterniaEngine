#ifndef DEVFILEEDITOR_H_
#define DEVFILEEDITOR_H_

#include "../../GObject.h"
#include "../../GTextBox.h"
#include "DevDockableWindow.h"
#include <Eternia/Data/LinkedList.hpp>

// GUI main for the project editor

class DevFileEditor : public DevDockableWindow {
private:
    void handleMouse(MouseHandleEvent*);
    void handleKeyboard(KeyHandleEvent*);
    GTextBox textbox;
    
public:
    DevProjectEditor();
    virtual ~DevProjectEditor();
    
    
    void draw();
    void update();
};

#endif
