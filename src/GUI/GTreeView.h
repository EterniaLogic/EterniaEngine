#ifndef GTREEVIEW_H_
#define GTREEVIEW_H_

#include <Eternia/Design/GUI/LayoutObject.h>
#include "GLabel.h"
#include "DrawArea.h"
#include "../Sprite2D/Sprite2D.h"
#include "GLCommon.h"
#include "GSimpleDrawers.h"

class GTreeNode {
    public:
        CharString name;
        Sprite2D icon;
        void (*doubleClick)();
        void (*rightClick)(int,int); // x,y
        
        bool expanded;
        bool selected;
        GTreeNode *Child;
        GTreeNode *Sibling, *PrevSibling;
};

// this defines a generic window
class GTreeView : public LayoutObject {
    public:
        GTreeView();
        virtual ~GTreeView();

        void draw(); // draws this window and all of it's decorations.
        void update();

        GTreeNode* tree; // tree is public so others can edit it.
    private:
        void handleMouse(MouseHandleEvent*);
        void handleKeyboard(KeyHandleEvent*);
        void _drawTree(GTreeNode*, int offset);
        int treelevel;
};

#endif
