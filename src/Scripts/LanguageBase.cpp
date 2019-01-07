#include "LanguageBase.h"

#include "Lua.h"

LanguageBase::LanguageBase(){

}

LanguageBase::~LanguageBase(){

}



// API language implementation functions.
void LanguageBase::onLoad(){

}

void LanguageBase::onEnable(){

}

void LanguageBase::onDisable(){

}

// C/C++/Go modules cannot be directly unloaded.
void LanguageBase::onUnload(){

}

// reload configs
void LanguageBase::onReload(){

}



// Synchronized functions run in the render thread
// [Client-Side SYNC] specific function that enables openGL contexts
void LanguageBase::onGuiDraw(){

}

// [Client-Side SYNC] Draw 3D things
void LanguageBase::onRenderDraw(){

}

// [Client-Side SYNC] draw a specific shader
void LanguageBase::onShader(){

}

// Node-Side (Nodes are sub-servers)
// Node processing
void LanguageBase::onNodeTick(){

}

// Shared
void LanguageBase::onNetworkTick(){

}

// Server-side (or cross tracking)
// time between ticks given to script engines
void LanguageBase::onTick(double time){

}

// send an event to the scripts
Event LanguageBase::onEvent(Event event){

}


// internal systems (Compiled languages still need an API)
// add a class for use by scripts
void LanguageBase::addClass(int size){

}

// add a function for use by scripts
void LanguageBase::addFunction(void* func, char* funcname, int params){

}

// compileable languages can be dynamically compiled, others will just run a check
void LanguageBase::compile(){}

// any type of script
// stop the script engine (Unloads script, attempts to unload DLL)
void LanguageBase::stop(){}

// start the script engine (Loads the script, preps modules)
void LanguageBase::start(){}

// runs Stop() then Start()
void LanguageBase::restart(){
    stop();
    start();
}

// clear garbage (For specific languages, such as java and C#)
void LanguageBase::gc(){}
