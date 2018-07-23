#include "App.h"

void changeSize(int width, int height) {
    /*glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glViewport(0, 0, width, height);
    glOrtho(-3, 3, -3, 3, .01, 50);
    glMatrixMode(GL_MODELVIEW);*/
    debugLoge("newsize: " << width << ", "<<height);

    if(height == 0) height = 1;
    float ratio = 1.00f * (float)width / (float)height;

    appInstance->width = width;
    appInstance->height = height;

    glViewport(0, 0, width, height);

    appInstance->camera->perspectiveView();

    // set Dev Environment
#ifdef DEV
    appInstance->_devEnv.updateWindowSize(width, height);
#endif
    /*gluLookAt(0.0f,0.0f,4.0f,
                0.0,0.0,-1.0,
                0.0f,1.0f,0.0f);*/
    glutPostRedisplay();
}

void setVisibility(int state) {
    if(state == GLUT_NOT_VISIBLE) {
        appInstance->pauseRender = true;
    } else {
        appInstance->pauseRender = false;
    }
}

// handle mouse clicks
void h_glutMouse(int button_, int state, int x, int y) {
    //GLUT_LEFT_BUTTON, GLUT_MIDDLE_BUTTON, or GLUT_RIGHT_BUTTON
    // GLUT_UP, GLUT_DOWN
    MOUSEBUTTON button;
    MBEVENT etype;
    // map mouse button
    switch(button_) {
        case GLUT_LEFT_BUTTON:
            button = LEFT_BUTTON;
            break;
        case GLUT_MIDDLE_BUTTON:
            button = MIDDLE_BUTTON;
            break;
        case GLUT_RIGHT_BUTTON:
            button = RIGHT_BUTTON;
            break;
        case 3:
            button = MIDDLE_BUTTON_UP;
            break;
        case 4:
            button = MIDDLE_BUTTON_DOWN;
            break;
    }
    switch(state) {
        case GLUT_DOWN:
            etype = MOUSE_DOWN;
            break;
        case GLUT_UP:
            etype = MOUSE_UP;
            break;
    }

    debugLoge("mouse click: (" << etype << ", " << x << ", " << y << ")");
    //cout << "mouse event: (" << state << "," << button_ << ", " << x << ", " << y << ")" << endl;

    // map mouse event
    MouseHandleEvent* event = new MouseHandleEvent(button, etype, x, y);
    MouseHandleEvent* event2 = 0x0; // for mouse down -> mouse click

    // map mouse click if mouse down
    if(etype == MOUSE_DOWN) {
        event2 = new MouseHandleEvent(button, MOUSE_CLICK, x, y);
    }

    // send event(s) to listeners...
    if(appInstance->mouseListeners.size() > 0) {
        appInstance->mouseListeners.freeze(); // freezes the mouseListeners list into an array
        for(int i=0; i<appInstance->mouseListeners.frozenlen; i++) {
            void (*func)(MouseHandleEvent*) = (void (*)(MouseHandleEvent*))appInstance->mouseListeners.frozen[i];
            if(func != 0x0) {
                func(event); // send to pure function
                if(event2 != 0x0)
                    func(event2); // send mouse click event if mouse down
                //delete &func;
            }
        }
    }

    //delete event;
    //if(event2 != 0x0) delete event2;
}

// mouse moved
void h_glutMOVE(int x, int y) {
    debugLoge("mouse move: " << x << ", "<<y);
    // map mouse event
    MouseHandleEvent* event = new MouseHandleEvent(MIDDLE_BUTTON, MOUSE_MOVE, x, y);
    /*cout << x << " '" << CharString::ConvertFromInt(x).get() << "'" << endl;
    CharString c = CharString::ConvertFromLong(x);
    std::string a = c.get();
    a += ", ";
    a += (string)CharString::ConvertFromLong(y).get();
    appInstance->mPosLabel.text = a;*/



//cout << "mouse move: (" << x << ", " << y << ")" << endl;
    // send event(s) to listeners...
    if(appInstance->mouseListeners.size() > 0) {
        appInstance->mouseListeners.freeze(); // freezes the mouseListeners list into an array
        for(int i=0; i<appInstance->mouseListeners.frozenlen; i++) {
            void (* func)(MouseHandleEvent*) = (void (*)(MouseHandleEvent*))appInstance->mouseListeners.frozen[i];

            if(func != 0x0) {
                (*func)(event); // send to pure function
                //delete func;
            }
        }
    }
    delete event;
    debugLoge("mouse move end");
}

// key pressed
void h_glutKeyPressed(unsigned char key, int x, int y) {
    // Create Event Item, send to the Event thread to be processed
    // KeyHandleEvent
    KeyHandleEvent* event = new KeyHandleEvent(KEY_DOWN, key, glutGetModifiers(), x, y);
    debugLoge("key press: " << key);
    cout << "key press: " << (int)key << endl;

    if(key == 27){
        appInstance->Stop();
    }

    // send event to all registered listeners
    if(appInstance->keyListeners.size() > 0) {
        appInstance->keyListeners.freeze(); // freezes the keyListeners list into an array
        for(int i=0; i<appInstance->keyListeners.frozenlen; i++) {
            void (*func)(KeyHandleEvent*) = (void (*)(KeyHandleEvent*))appInstance->keyListeners.frozen[i];
            if(func != 0x0) {
                (func)(event); // send to pure function
                //delete func;
            }

        }
    }
    //delete event;
}

// Special function key...?
void h_glutSpecialKeyPressed(int key, int x, int y){
    cout << "Special func key: " << key << endl;

    KeyHandleEvent* event = new KeyHandleEvent(KEY_DOWN, key, glutGetModifiers(), x, y);
    event->special = true;

    // send event to all registered listeners
    if(appInstance->keyListeners.size() > 0) {
        appInstance->keyListeners.freeze(); // freezes the keyListeners list into an array
        for(int i=0; i<appInstance->keyListeners.frozenlen; i++) {
            void (*func)(KeyHandleEvent*) = (void (*)(KeyHandleEvent*))appInstance->keyListeners.frozen[i];
            if(func != 0x0) {
                (func)(event); // send to pure function
                //delete func;
            }

        }
    }
    //delete event;
}

void h_glutWindowClose(){
    appInstance->close();
}

// runs the render thread...

void App::initGLUT() {
    debugLoge("initialize Glut" );

    int argc = 1;
    char *argv[1] = {(char*)title};
    glutInit(&argc, argv);

    debugLoge("[Glut Init]initialize Glut[2]");
    glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA);

    debugLog("[Glut Init] init window");
    glutInitWindowSize(width, height);
    glutInitWindowPosition(0,0);
    glutCreateWindow(title);
    glutReshapeFunc(changeSize);
    glutCloseFunc(h_glutWindowClose);
    glutVisibilityFunc(setVisibility);

    CharString mode = config->items[string("Fullscreen")];

    debugLoge("[Glut Init] Fullscreen? " << mode.get());
    if(mode.Compare("true",4)) {
        glutFullScreen();
    }

    glutPassiveMotionFunc(h_glutMOVE);
    glutMotionFunc(h_glutMOVE);
    glutKeyboardFunc(h_glutKeyPressed);
    glutSpecialFunc(h_glutSpecialKeyPressed);
    glutMouseFunc(h_glutMouse);

    debugLoge("[Glut Init] end");
}
