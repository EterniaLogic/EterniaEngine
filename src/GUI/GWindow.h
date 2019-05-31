#ifndef GWINDOW_H_
#define GWINDOW_H_

//#include "GObject.h"
#include <Eternia/Design/GUI/LayoutObject.h>
#include "GLabel.h"
#include "DrawArea.h"
#include "GLCommon.h"
#include "GSimpleDrawers.h"


// this defines a generic window
class GWindow : public LayoutObject {
    public:
        GWindow(vertex location, vertex size);
        virtual ~GWindow();

        void draw(); // draws this window and all of it's decorations.
        void update();

        void handleMouse(MouseHandleEvent*);
        void handleKeyboard(KeyHandleEvent*);

    private:
        //void handleDrawHeader(); // Draws the toolbar and the buttons
        //void handleDrawWindow(); // Draws the window box, along with the edges

        void glutKeyPressed(); // initial key press handler

        // Header
        bool drawHeader, drawButtons, drawMinimize, drawMaximize, drawExit;

        std::string title;

        GLabel* titleLabel;

        // border
        bool drawWindowBorder;

        // content

};

#endif
