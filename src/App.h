#ifndef App_h_
#define App_h_


//#define DEV // Developer science/editor enviroment, otherwise normal Engine direct-startup.






//#define COUT_RENDER_DEBUG
//#define COUT_EVENT_DEBUG




#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <signal.h>
#include <vector>
#include <memory>

#include <string.h>

// 3D Rendering and GUI
#define GLEW_STATIC
#include <GL/glew.h>
#include <GL/gl.h>
#include <GL/freeglut.h>
#include <GL/glut.h>
#include <thread>
#include <chrono>

/*#define CL_HPP_ENABLE_EXCEPTIONS
#define CL_HPP_TARGET_OPENCL_VERSION 200
#include <CL/cl2.hpp>*/


// Threading and extra utilities
/*#include <boost/date_time.hpp>
#include <boost/date_time/time_clock.hpp>
//#include <thread>
//#include <chrono>
#include <boost/chrono.hpp>
#include <boost/thread.hpp>
#include <boost/smart_ptr.hpp>
#include <boost/shared_ptr.hpp>*/


#include <Eternia/Data/includes.h>
#include <Eternia/API/APICore.h>
#include <Eternia/constants.h>
#include <Eternia/Parsing/Config.h>
#include <Eternia/Design/Events/KeyHandleEvent.h>
#include <Eternia/Design/Events/MouseHandleEvent.h>

// 3D Modeling system Autodesk FBX
//#include <fbxsdk.h>

#include "Model/Model.h"
#include "Sound/SoundManager.h"
//#include "Events/Event.h"




#include "GUI/gui.h"
#include "Helper/Camera.h"
#include "Helper/Compressable.h"
#include "Helper/LoadItem.h"
#include "Sprite2D/Sprite2D.h"


#ifdef DEV
    #ifndef DEVENV_
        #include "GUI/DevEnv/DevEnv.h"
    #else
        class DevEnv;
    #endif
#endif

#if __linux__ || __unix__
	#define _LINUX_
#endif

// linux
#if defined(_LINUX_)
	#include <X11/Xlib.h>
#endif


#ifdef COUT_RENDER_DEBUG
#define debugLog(s) cout << s << endl; cout.flush()
#else
#define debugLog(s)  //nothing
#endif


#ifdef COUT_EVENT_DEBUG
#define debugLoge(s) cout << s << endl; cout.flush()
#else
#define debugLoge(s)  //nothing
#endif



class App : public APICore {
    public:
        App();
        virtual ~App();
        void close(); // close app points

        bool Initialize(int argc, char** argv);

        void Stop() {
            // Save info

            // Free allocated data
            sound.close();

            // Close.
            mDone = true;
        }

        virtual void initUser(); // OVERRIDE: user functions initial
        virtual void initGUI(); // overrideable GUI initializer (if not overriden, a generic GUI window will open)
        void renderRun();
        //GEN_Shaders shadergen; // only inits shaders
        
        
        
        
        
        
        
        

        int width, height;
        int Antialiasing, depthBits, stencilBits;
        bool mDone, showMouse, pauseRender, drawGUI, drawParticles, drawPIP, drawSprites;

        // listener functions are stored here "void FUNC(MouseHandleEvent*)"
        //LinkedList<void (*)(MouseHandleEvent*)>* mouseListeners;
        LinkedList<void*> aiListeners;        // sounds to be played are thrown in here
        LinkedList<void*> mouseListeners;     // Mouse movement is captured and updates are sent here
        LinkedList<void*> keyListeners;       // keyboard changes are captured and sent here
        LinkedList<void*> drawListeners;      // object (models, pixel, ect) to be drawn are thrown in here
        LinkedList<void*> updateListeners;
        LinkedList<void*> soundListeners;     // sounds to be played are thrown in here

        // Physics collision, gravity, ect.
        LinkedList<Model*> physicsList; // global models that have physics
        LinkedList<Sprite2D*> spriteList; // 2D Sprites list
        LinkedList<IAnimated*> animationList; // 2D Sprites list
        LinkedList<Model*> currentModelList; // list of models to draw (And animate if using an animation engine)
        LinkedList<Model*> invisibleModelList; // models that are not currently visible


        // LinkedList<> PIPList, 2DList;

        Queue loaders, compression, modelbuffer; // push items to load and buffer here
        EventHandler events; // events management system

        Config *config;


//        std::vector<cl::Platform> platforms; // OpenCL platforms


        GLabel fpsLabel, mPosLabel;
        GWindow* testWindow;
        Camera* camera; // Active camera
        GLuint shader1;

        // Editor Environment
#ifdef DEV
        DevEnv _devEnv;
#endif

    private:
        void initGL();
        void initGLUT();
        void initThreads(); // starts threads
        void testGUI(); // gui which contains FPS, ect.
        void initTestModels();
        
        // inherited overrides from APICore
        void onInit(); // initial start of the system, called by (start())  ->  _onInit();
        void onEnable(); // resumes ticks, Core, mods, etc.
        void onLoadMods(); // load other mods manually?
        void onDisable(); // disabling / pausing ticks, Core, mods, etc.
        void onUnload(); // closing down
        void onTick(double seconds); // Global tick timer, useful for game timing or w/e. (Mods already get ticked in _onTick(double seconds);

        void checkModUpdates(); // tell all mods to check for updates
        void updateMods(); // download and test mods along with required dependencies.


        // GLUT event handlers (Implemented in "App_ThreadEvents.cpp")
        /*void h_glutMOVE(int x, int y); // move moved
        void h_glutMouse(int button, int state, int x, int y);
        void h_glutKeyPressed(unsigned char key, int x, int y); // key pressed
        */

        void aiThread();
        void animationThread();
        void compressionThread(); // compresses data
        void entityThread(); // manages game "entities", which ties AI logic and
        void eventThread();
        void fpsThread(); // manages Fps for all threads
        void guiThread(); // manages all GUI-related tasks (including chat)
        void loadThread(); // loads data on the back-end
        void networkingThread(); // spawns more threads if overloaded
        void physicsThread(); // spawns more threads if overloaded
        void renderThread();
        void backendRenderThread(); // render on the backend. PIPs, ect.
        void scriptsThread(); // manages game scripting
        void soundThread();
        void updateThread();


        bool fullscreen; // loops detect changes to this variable
        double aiFps, aiFps_;
        double animFps, animFps_;
        double compressFps, compressFps_;
        double entityFps, entityFps_;
        double eventsFps, eventsFps_;
        double loadFps, loadFps_;
        double netFps, netFps_;
        double physFps, physFps_;
        double renderFps, renderFps_;
        double scriptFps, scriptFps_;
        double soundFps, soundFps_;
        double updateFps, updateFps_;
        char* title;
        SoundManager sound;
        bool renderfinished, closed;

        Logger *AILog, *AnimLog;

        // Error handlers
        static void InitErrorSignals(); // Handle SIGV, SIGABRT, ect.
        //FbxManager* lSdkManager;

        TimeProfiler renderProfiler;

};


extern App* appInstance;

#else
    class App;
    extern App* appInstance;
#endif

