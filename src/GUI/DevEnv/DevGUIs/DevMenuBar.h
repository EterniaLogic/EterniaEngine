#ifndef DEVENVMENUBAR_H_
#define DEVENVMENUBAR_H_

#include "../../GObject.h"
#include "../DevConfig.h"
#include "DevMenuItem.h"
#include <Eternia/Data/LinkedList.hpp>


// Controls the top bar.
class DevMenuBar : public GObject{
private:
    LinkedList<DevMenuItem> menuItems;
public:
    DevMenuBar();
    virtual ~DevMenuBar();
    
    void draw(); // draws this window and all of it's decorations.
    void update();

    void handleMouse(MouseHandleEvent*);
    void handleKeyboard(KeyHandleEvent*);
    
    void addMenu(DevMenuItem *item);
};

#else
    class DevMenuBar;
#endif
