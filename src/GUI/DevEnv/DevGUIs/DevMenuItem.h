#ifndef DEVENVMENUITEM_
#define DEVENVMENUITEM_

#include <Eternia/Design/GUI/LayoutObject.h>
#include "../../GLabel.h"
#include "../../GSimpleDrawers.h"
#include "../../GLCommon.h"
#include <Eternia/Data/LinkedList.hpp>


// Controls the top bar.
class DevMenuItem : public LayoutObject{
private:
    LinkedList<DevMenuItem*> menuItems;
    CharString itemName; // docked-up item name
    void (*action)(); // action that occurs when this is clicked or "Enter" button used.
public:
    DevMenuItem();
    DevMenuItem(CharString label, void (*action)());
    virtual ~DevMenuItem();
    
    bool docked; // top-level menu item?
    
    void draw(); // draws this window and all of it's decorations.
    void update();
    
    void addMenu(DevMenuItem *item); // sub item
    void setText(CharString text); // set the text for this item
    void setAction(void (*action)()); // set the text for this item
    //void setPosition(int x, int y, int width); // set item position...
    
    void handleMouse(MouseHandleEvent*);
    void handleKeyboard(KeyHandleEvent*);
};

#else
    class DevMenuItem;
#endif
