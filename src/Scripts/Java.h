#ifndef Java_H_
#define Java_H_

//#define USE_JAVA
#ifdef USE_JAVA

// Run Java classes.
//  No direct limitations besides API limits.
#include <jni.h>
#include "LanguageBase.h"
#include <Eternia/API/APIMod.h>

class JavaS : public APIMod{
    JavaVM *jvm;
    JNIEnv *env;
    JavaVMInitArgs vm_args; /* JDK/JRE 6 VM initialization arguments */

public:
    JavaS(CharString file, CharString name, CharString language, CharString version);
    
    
    
    
    
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
#endif
