#ifndef GSLIDER_H_
#define GSLIDER_H_

#include "GObject.h"
#include "GLabel.h"
#include "DrawArea.h"



// this defines a generic window
class GSlider : public GObject {
    public:
        GSlider();
        virtual ~GSlider();

        void draw(); // draws this window and all of it's decorations.
        void update();

        void handleMouse(MouseHandleEvent*);
        void handleKeyboard(KeyHandleEvent*);
        
        std::string title;
        bool vertical;
        int val, max, min;
    private:
        //void handleDrawHeader(); // Draws the toolbar and the buttons
        //void handleDrawWindow(); // Draws the window box, along with the edges

        void glutKeyPressed(); // initial key press handler
        GLabel* titleLabel;
};

#endif
