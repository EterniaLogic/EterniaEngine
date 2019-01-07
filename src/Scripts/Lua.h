#ifndef SCRIPT_LUA_H_
#define SCRIPT_LUA_H_


//#include <lua5.2/lua.hpp>
extern "C"{
    #include <lualib.h>
    #include <lauxlib.h>
    #include <lua.h>
}


#include <Eternia/include.h>
#include "../Helper/ResourceLocation.h"
#include <Eternia/API/APIMod.h>
// This enables the engine to run Lua scripts.
//  If there are too many scripts, the engine may also pre-load them and run in multi-threaded mode.

// Multi-threaded mode is not handled here. It is handled by the Scripts thread.

class Lua : public APIMod{
    lua_State *L;
public:
    Lua(CharString loc, CharString name, CharString language, CharString version); // location of main.lua
    virtual ~Lua();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        // API language implementation functions.
    void onLoad();
    void onEnable();
    void onDisable();
    void onUnload(); // C/C++/Go modules cannot be directly unloaded.
    void onReload(); // reload configs
    
    
    
    // Client-Side
    void onGuiDraw(); // [SYNC] specific function that enables openGL contexts
    void onRenderDraw(); // [SYNC] Draw 3D things
    void onShader(); // [SYNC] draw a specific shader
    
    // Node-Side (Nodes are sub-servers)
    void onNodeTick(); // Node processing
    
    // Shared
    void onNetworkTick();
    
    // Server-side (or cross tracking)
    void onTick(double time); // time between ticks given to script engines
    Event onEvent(Event event); // send an event to the scripts
    
    
    // internal systems (Compiled languages still need an API)
	void addClass(int size); // add a class for use by scripts
	void addFunction(void* func, char* funcname, int params); // add a function for use by scripts
	void compile(); // compileable languages can be dynamically compiled, others will just run a check
    
    // any type of script
    void stop(); // stop the script engine (Unloads script, attempts to unload DLL)
    void start(); // start the script engine (Loads the script, preps modules)
    void restart(); // runs Stop() then Start()
    void gc();    // clear garbage (For specific languages, such as java and C#)
};

#endif
