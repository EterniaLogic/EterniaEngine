#ifndef DEVENV_
#define DEVENV_

#include <Eternia/Design/GUI/LayoutObject.h>
//#include "../../App.h"
#include "DevConfig.h"
#include "DevGUIs/DevMenuBar.h"
#include "DevGUIs/DevDockingTabArea.h"
#include "DevGUIs/DevProjectEditor.h"
#include "DevViews/DevModelEditor.h"

#define debugLoggobject(msg) cout << msg;
//#define debugLoggobject(msg) //

using namespace Math;

// After 10 years, finally working on the developer environment for the engine...
// 2007->2017!


// The Developer environment allows for manual 3D processing, file editing, ect.
//  Parts of the dev environment include working on the multi-lingual API, Model shaders, ect.

class DevEnv : public LayoutObject{
private:
    void handleMouse(MouseHandleEvent*); // handle carrot positioning and selection of text.
    void handleKeyboard(KeyHandleEvent*); // handle normal keyboard events
    
    static DevEnv *instance;
    
    //App* app;
    
    DevMenuBar menubar;
    DevDockingTabArea leftDockingArea, rightDockingArea, centerDockingArea, bottomDockingArea;
public:
    DevEnv();
    virtual ~DevEnv();
    
    void init();
    
    void update(); // update dev items
    
    
    void updateWindowSize(int width, int height); // window has been resized. Update all elements for the environment.
    
    static DevEnv* getInstance();
};

#else
    class DevEnv;
#endif
