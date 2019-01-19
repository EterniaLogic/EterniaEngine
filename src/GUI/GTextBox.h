#ifndef GTEXTBOX_H_
#define GTEXTBOX_H_

#include <Eternia/Design/GUI/LayoutObject.h>
#include "DrawArea.h"
#include "GSlider.h"
#include <Eternia/Data/CharString.h>
#include "GLCommon.h"

enum GUI_SCROLLBAR {GUISCROLL_AUTO, GUISCROLL_NONE, GUISCROLL_BOTTOM, GUISCROLL_RIGHT};

// this defines a generic window
class GTextBox : public LayoutObject {
private:
    LinkedList<CharString> lines;
    CharString currentRow; // pre-cached row from the list
    
    int carrot_col, carrot_row; // tracks the current position of the carrot, if this object is focussed.
    bool carrot; // carrot currently visible?
    long carrottimelast, carrottime;
    float xscrolloffset, yscrolloffset;
    
    GUI_SCROLLBAR scrollbars;
    GSlider *bottomscroll, *rightscroll;
    bool lineXover, lineYover; // lineX is calculated during draw, lineY is easily calculatable
    
    void handleNewline();
    void handleBackspace();
    void handleBasicKey(unsigned char);
public:
    GTextBox();
    virtual ~GTextBox();

    void draw(); // draws this window and all of it's decorations.
    void update(); // update objects

    void handleMouse(MouseHandleEvent*); // handle carrot positioning and selection of text.
    void handleKeyboard(KeyHandleEvent*);
    
    void setScrollbars(GUI_SCROLLBAR);
    
    vertex highlightColor; // currenty selected row highlight color
};

#endif
