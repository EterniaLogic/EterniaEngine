#include "DevEnv.h"

DevEnv* DevEnv::instance;

DevEnv::DevEnv(){
    DevEnv::instance = this;
    //this->app = appInstance;
    // initialize base variables, inclucing GUIS, ect.
    
    this->needsDraw = false;
    //needsKeyboard = false;
    //needsMouse = false;
    x=0;
    y=0;
}

DevEnv::~DevEnv(){
    
}

void testPrint(){
    cout << "TEST MENU CLICK!" << endl;
}

void DevEnv::init(){
    // Add specific children
    this->addChild(&menubar);
    
    // Docking areas to dock specific GUIs and/or views.
    this->addChild(&leftDockingArea);
    this->addChild(&rightDockingArea);
    this->addChild(&centerDockingArea);
    this->addChild(&bottomDockingArea);
    
    leftDockingArea.setDockType(DEVDOCK_LEFT);
    rightDockingArea.setDockType(DEVDOCK_RIGHT);
    centerDockingArea.setDockType(DEVDOCK_CENTER);
    bottomDockingArea.setDockType(DEVDOCK_BOTTOM);
    
    leftDockingArea.width = DEVCONF::LeftGUI_width;
    rightDockingArea.width = DEVCONF::RightGUI_width;
    bottomDockingArea.height = DEVCONF::BottomGUI_height;
    menubar.height=25;
    
    DevMenuItem *fileitem = new DevMenuItem(CharString("File",4), testPrint);
    DevMenuItem *edititem = new DevMenuItem(CharString("Edit",4), testPrint);
    DevMenuItem *viewitem = new DevMenuItem(CharString("View",4), testPrint);
    DevMenuItem *projectitem = new DevMenuItem(CharString("Project",7), testPrint);
    menubar.addMenu(fileitem);
    menubar.addMenu(edititem);
    menubar.addMenu(viewitem);
    menubar.addMenu(projectitem);
    
    fileitem->setLocalPosition(10,5);
    edititem->setLocalPosition(50,5);
    viewitem->setLocalPosition(90,5);
    projectitem->setLocalPosition(130,5);
    
    
    DevProjectEditor *editor = new DevProjectEditor();
    editor->setPosition(0,50);
    leftDockingArea.dockWindow(editor);
    
    DevModelEditor *modeledit = new DevModelEditor();
    centerDockingArea.dockWindow(modeledit);
    
    //updateWindowSize(app->width, app->height);
}

DevEnv* DevEnv::getInstance(){
    return DevEnv::instance;
}


