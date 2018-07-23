#include "App.h"

using namespace std;

App* appInstance;

// Constructor
App::App() {
    InitErrorSignals();

    config = new Config();

    config->Load(new CharString("Settings.cfg",12));
    renderfinished=false;
    appInstance = this;
    showMouse = true;
    mDone = false;
    pauseRender = false;
    aiFps = aiFps_ = 0;
    animFps = animFps_ = 0;
    compressFps = compressFps_ = 0;
    entityFps = entityFps_ = 0;
    eventsFps = eventsFps_ = 0;
    loadFps = loadFps_ = 0;
    netFps = netFps_ = 0;
    physFps = physFps_ = 0;
    renderFps = renderFps_ = 0;
    soundFps = soundFps_ = 0;

    width = config->items["Width"].getInt();
    height = config->items["Height"].getInt();

    drawGUI = true; // GUI drawn last
    drawParticles = true; // Particles drawn only if visible
    drawPIP = true; // Picture in Picture, drawn only if visible (??)
    drawSprites = true;

    depthBits = stencilBits = 8;
    Antialiasing = 4;

    // Camera location
    camera = new Camera();
    camera->width = &width;
    camera->height = &height;
    camera->eyePos = new vertex(1,1,60);

    mouseListeners.add((int*)(&GHandlers::mouseHandler));
    keyListeners.add((int*)(&GHandlers::keyHandler));
    drawListeners.add((int*)(&GHandlers::drawHandler));
    updateListeners.add((int*)(&GHandlers::updateHandler));
    
    // Start up the deveoper GUI if not a developer build, or end-user. Same EXE for everything.
    // Systems may include actual science to Game design. (Compare i.e: Mathcad to this)

// Editor Environment
#ifdef DEV
    _devEnv.updateWindowSize(width,height);
#endif
}

// Deconstructor
App::~App() {
    close();
}

// primary initializer
bool App::Initialize(int argc, char** argv) {
    title = (char*)"Eternia Engine";

#ifdef _LINUX_
    XInitThreads();
#endif

    Magick::InitializeMagick(*argv); // 2D image modification/editing
    Magick::EnableOpenCL(); // enable OpenCL whether it fails or doesn't.

    initGUI(); // initializes GUI and sets up first windows
    //initBaseGUI();
    initUser();
    initThreads(); // continuous function
    return true;
}

void App::initUser() {}

void App::initGUI() {
#ifdef DEV
    _devEnv.init();
#else
    testGUI();
    initTestModels();
#endif
}



void App::initGL() {
    debugLog("Initialize GL");
    glStencilMask(stencilBits);
    glDepthMask(depthBits);
    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);
    //glEnable(GL_LIGHT1);
    glEnable(GL_COLOR_MATERIAL);
    glEnable(GL_MULTISAMPLE);
    glEnable(GL_TEXTURE_2D);
    glEnable( GL_COLOR_MATERIAL );
    glEnable(GL_NORMALIZE);
    glShadeModel( GL_SMOOTH );
    glLightModeli( GL_LIGHT_MODEL_TWO_SIDE, GL_FALSE );
    glDepthFunc( GL_LEQUAL );
    glEnable( GL_DEPTH_TEST );
    //glEnable(GL_CULL_FACE);
    //glEnable(GL_FOG);
    //glEnable(GL_BLEND);
    glClearColor(0.,0.,0.,0.);

    glViewport(0, 0, width, height);


    debugLog("Initialize GL3");


    // glew shader extensions
    glewInit();
    glewGetExtension("GL_fragment_shader");
    glewGetExtension("GL_vertex_shader");
    glewGetExtension("GL_shader_objects");
    glewGetExtension("GL_shading_language_330");
    glewGetExtension("GL_EXT_geometry_shader4");




    GLfloat lmKa[] = {0.0, 0.0, 0.0, 0.0 };
    glLightModelfv(GL_LIGHT_MODEL_AMBIENT, lmKa);

    glLightModelf(GL_LIGHT_MODEL_LOCAL_VIEWER, 1.0);
    glLightModelf(GL_LIGHT_MODEL_TWO_SIDE, 0.0);

    // -------------------------------------------
    // Spotlight Attenuation

    GLfloat spot_direction[] = {1.0, -1.0, -1.0 };
    GLint spot_exponent = 30;
    GLint spot_cutoff = 180;

    glLightfv(GL_LIGHT0, GL_SPOT_DIRECTION, spot_direction);
    glLighti(GL_LIGHT0, GL_SPOT_EXPONENT, spot_exponent);
    glLighti(GL_LIGHT0, GL_SPOT_CUTOFF, spot_cutoff);

    GLfloat Kc = 1.0;
    GLfloat Kl = 0.0;
    GLfloat Kq = 0.0;

    glLightf(GL_LIGHT0, GL_CONSTANT_ATTENUATION,Kc);
    glLightf(GL_LIGHT0, GL_LINEAR_ATTENUATION, Kl);
    glLightf(GL_LIGHT0, GL_QUADRATIC_ATTENUATION, Kq);


    // -------------------------------------------
    // Lighting parameters:

    GLfloat light_pos[] = {0.0f, 5.0f, 5.0f, 1.0f};
    GLfloat light_Ka[]  = {1.0f, 0.5f, 0.5f, 1.0f};
    GLfloat light_Kd[]  = {1.0f, 0.1f, 0.1f, 1.0f};
    GLfloat light_Ks[]  = {1.0f, 1.0f, 1.0f, 1.0f};

    glLightfv(GL_LIGHT0, GL_POSITION, light_pos);
    glLightfv(GL_LIGHT0, GL_AMBIENT, light_Ka);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, light_Kd);
    glLightfv(GL_LIGHT0, GL_SPECULAR, light_Ks);



    // glutSetCursor(GLUT_CURSOR_NONE);



    /* if (GLEW_vertex_shader && GLEW_fragment_shader)
         printf("Ready for GLSL\n");
     else
     {
         printf("No GLSL support\n");
     }*/

}





void App::close(){
    if(!closed){
        closed=true;
        sound.close();
    }
}



// initializes the threads which helps separate any
//      "lag-causing" functions from each other.
// This also makes OpenGL drawing a separate process from
//      any game events.
void App::initThreads() {
    cout << "Start Events Thread" << endl;
    std::thread event(&App::eventThread, this);
    cout << "Start Networking Thread" << endl;
    std::thread network(&App::networkingThread, this);
    cout << "Start AI Thread" << endl;
    std::thread ai(&App::aiThread, this);
    cout << "Start Physics Thread" << endl;
    std::thread phys(&App::physicsThread, this);
    cout << "Start Animations Thread" << endl;
    std::thread animations(&App::animationThread, this);
    cout << "Start Sound Thread" << endl;
    std::thread sound(&App::soundThread, this);

    cout << "Start Entity Thread" << endl;
    std::thread entity(&App::entityThread, this);

    cout << "Start Scripts Thread" << endl;
    std::thread scripts(&App::scriptsThread, this);

    // misc. Threads
    cout << "Start Compression Thread" << endl;
    std::thread compress(&App::compressionThread, this);
    cout << "Start Loading Thread" << endl;
    std::thread load(&App::loadThread, this);
    cout << "Start Update Thread" << endl;
    std::thread updt(&App::updateThread, this);

    cout << "Start Fps Thread" << endl;
    cout.flush();
    std::thread fps(&App::fpsThread, this);

    cout << "Rendering Mode: ";
    cout.flush();

    if(config->items[string("ServerOnly")].Compare("false",5)) {
        cout << "<Client>" << endl;
        cout.flush();
        
        cout << "Start Backend Render Thread" << endl;
        std::thread fps(&App::backendRenderThread, this);
        renderThread(); // Main Rendering
    } else {
        cout << "<Server Mode>" << endl;
        while(true) {
            // do stuff?

            // Temporary value, may be changed later...
            std::this_thread::sleep_for(std::chrono::seconds(10000));
        }
    }
}
