#include "Lua.h"

// https://www.lua.org/pil/24.1.html
Lua::Lua(){
    start();
    
//    luaL_openlibs(L);
}

Lua::~Lua(){
    lua_close(L);
}



// API language implementation functions.
void Lua::onLoad(){

}

void Lua::onEnable(){

}

void Lua::onDisable(){

}

// C/C++/Go modules cannot be directly unloaded.
void Lua::onUnload(){

}

// reload configs
void Lua::onReload(){

}



// Synchronized functions run in the render thread
// [Client-Side SYNC] specific function that enables openGL contexts
void Lua::onGuiDraw(){

}

// [Client-Side SYNC] Draw 3D things
void Lua::onRenderDraw(){

}

// [Client-Side SYNC] draw a specific shader
void Lua::onShader(){

}

// Node-Side (Nodes are sub-servers)
// Node processing
void Lua::onNodeTick(){

}

// Shared
void Lua::onNetworkTick(){

}

// Server-side (or cross tracking)
// time between ticks given to script engines
void Lua::onTick(double time){

}

// send an event to the scripts
Event Lua::onEvent(Event event){

}


// internal systems (Compiled languages still need an API)
// add a class for use by scripts
void Lua::addClass(int size){

}

// add a function for use by scripts
void Lua::addFunction(void* func, int params){

}

// compileable languages can be dynamically compiled, others will just run a check
void Lua::compile(){

}

// any type of script
// stop the script engine (Unloads script, attempts to unload DLL)
void Lua::stop(){
    lua_close(L);
}

// start the script engine (Loads the script, preps modules)
void Lua::start(){
#if LUA_VERSION_NUM < 502
    L = lua_open(); 
    
#elif LUA_VERSION_NUM == 502
	L=luaL_newstate();
#endif
	luaopen_base(L);
    luaopen_table(L);
    luaopen_io(L);      
    luaopen_string(L);
    luaopen_math(L);
}

// runs Stop() then Start()
void Lua::restart(){
    stop();
    start();
}

// clear garbage (For specific languages, such as java and C#)
void Lua::gc(){
    //lua_gc(L, LUA_GCCOLLECT, 0);
}
