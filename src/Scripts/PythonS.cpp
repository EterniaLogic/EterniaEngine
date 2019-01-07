#include "PythonS.h"


PythonS::PythonS(CharString _loc){
    loc = _loc;
    start();
    
}

PythonS::~PythonS(){
    stop();
}



// API language implementation functions.
void PythonS::onLoad(){

}

void PythonS::onEnable(){

}

void PythonS::onDisable(){

}

// C/C++/Go modules cannot be directly unloaded.
void PythonS::onUnload(){

}

// reload configs
void PythonS::onReload(){

}



// Synchronized functions run in the render thread
// [Client-Side SYNC] specific function that enables openGL contexts
void PythonS::onGuiDraw(){

}

// [Client-Side SYNC] Draw 3D things
void PythonS::onRenderDraw(){

}

// [Client-Side SYNC] draw a specific shader
void PythonS::onShader(){

}

// Node-Side (Nodes are sub-servers)
// Node processing
void PythonS::onNodeTick(){

}

// Shared
void PythonS::onNetworkTick(){

}

// Server-side (or cross tracking)
// time between ticks given to script engines
void PythonS::onTick(double time){

}

// send an event to the scripts
Event PythonS::onEvent(Event event){

}


// internal systems (Compiled languages still need an API)
// add a class for use by scripts
void PythonS::addClass(int size){

}

// add a function for use by scripts
void PythonS::addFunction(void* func, char* funcname, int params){

}

// compileable languages can be dynamically compiled, others will just run a check
void PythonS::compile(){}

// any type of script
// stop the script engine (Unloads script, attempts to unload DLL)
void PythonS::stop(){
    //Py_Finalize();
}

// start the script engine (Loads the script, preps modules)
void PythonS::start(){
    //Py_Initialize();
}

// runs Stop() then Start()
void PythonS::restart(){
    stop();
    start();
}

// clear garbage (For specific languages, such as java and C#)
void PythonS::gc(){
    
}
