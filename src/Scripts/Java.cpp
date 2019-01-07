#include "Java.h"

#ifdef USE_JAVA

JavaS::JavaS(CharString file, CharString name, CharString language, CharString version){
    this->file = file;
    this->name = name;
    this->language = language;
    this->version = version;
    permscope = P_MOD;
    modcwdloc = "./data/mods/";
}

    
// stop the JVM
void JavaS::stop(){
    jvm->DestroyJavaVM();
}

// start the JVM
void JavaS::start(){
    JNI_GetDefaultJavaVMInitArgs(&vm_args);
    //vm_args.classpath = "./data/scripts/"; // path for classes
    
    JavaVMOption* options = new JavaVMOption[1];
    options[0].optionString = "-Djava.class.path=./data/scripts/";
    
    
    
    vm_args.version = JNI_VERSION_1_8;
    vm_args.nOptions = 1;
    vm_args.options = options;
    vm_args.ignoreUnrecognized = false;
    
    /* load and initialize a Java VM, return a JNI interface 
    * pointer in env */
    JNI_CreateJavaVM(&jvm, (void**)&env, &vm_args);
    
    delete options;
    
    /* invoke the Main.test method using the JNI */
    jclass cls = env->FindClass("Main");
    jmethodID mid = env->GetStaticMethodID(cls, "main", "I(V)");
    env->CallStaticVoidMethod(cls, mid, 100);
}



// API language implementation functions.
void JavaS::onLoad(){

}

void JavaS::onEnable(){

}

void JavaS::onDisable(){

}

// C/C++/Go modules cannot be directly unloaded.
void JavaS::onUnload(){

}

// reload configs
void JavaS::onReload(){

}



// Synchronized functions run in the render thread
// [Client-Side SYNC] specific function that enables openGL contexts
void JavaS::onGuiDraw(){

}

// [Client-Side SYNC] Draw 3D things
void JavaS::onRenderDraw(){

}

// [Client-Side SYNC] draw a specific shader
void JavaS::onShader(){

}

// Node-Side (Nodes are sub-servers)
// Node processing
void JavaS::onNodeTick(){

}

// Shared
void JavaS::onNetworkTick(){

}

// Server-side (or cross tracking)
// time between ticks given to script engines
void JavaS::onTick(double time){

}

// send an event to the scripts
Event JavaS::onEvent(Event event){

}


// internal systems (Compiled languages still need an API)
// add a class for use by scripts
void JavaS::addClass(int size){

}

// add a function for use by scripts
void JavaS::addFunction(void* func, char* funcname, int params){

}

// compileable languages can be dynamically compiled, others will just run a check
void JavaS::compile(){

}


// runs Stop() then Start()
void JavaS::restart(){
    stop();
    start();
}

// clear garbage (For specific languages, such as java and C#)
void JavaS::gc(){

}
#endif
