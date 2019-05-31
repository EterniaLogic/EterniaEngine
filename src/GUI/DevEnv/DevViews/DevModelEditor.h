#ifndef DEVMODELVIEW_H_
#define DEVMODELVIEW_H_

// Base initializer for the model viewer. Uses base OpenGL components sized at region area.
#include <Eternia/Design/GUI/LayoutObject.h>
#include "../../GSimpleDrawers.h"
#include "../DevConfig.h"
#include "../DevGUIs/DevDockableWindow.h"
#include "../../../Model/Model.h"
#include "../../../Helper/Camera.h"
#include "../../GLCommon.h"


class DevModelEditor : public DevDockableWindow{
private:
    void handleMouse(MouseHandleEvent*);
    void handleKeyboard(KeyHandleEvent*);
    
    Camera camera;
public:
    DevModelEditor();
    virtual ~DevModelEditor();
    
    void draw();
    void update();
    
    // 3D models to draw
    LinkedList<Model*> models;
};

#endif
