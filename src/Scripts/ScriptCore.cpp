#include "ScriptCore.h"

ScriptCore::ScriScriptCoreptProvider(CharString modfolder, CharString logfile){

}

// Module management
// pre-loads mod files and dependencies chains
void ScriptCore::preloadMods(){

}

// begins the process to load all of the mods
void ScriptCore::loadMods(){

}


 // preloads the module, reads "mod.properties" file.
APIMod* ScriptCore::preloadModule(CharString file){

}

// load a module from a file or folder. false if not loaded.
bool ScriptCore::loadModule(CharString file){

}

// unload a module. false if kept loaded.
bool ScriptCore::unloadModule(APIMod* mod){

}


// Master module functions (Sent to actual implementation via APIMod)
void ScriptCore::onInit(); // runs after a module is loaded.

// runs to tell the module to turn "on" and start processing.
void ScriptCore::onEnable(){

}

// runs to tell the module to turn "off". (Does not actually stop, mod dev has to do it)
void ScriptCore::onDisable(){

}

// runs when module is stopping.
void ScriptCore::onUnload(){

}
 


// Getters
APIEventRegistry* ScriptCore::getEvents(){

}

APIPermissionsRegistry* ScriptCore::getPermissions(){

}

// General logger used by this API
Logger* ScriptCore::getLogger(){

}





// Write an encrypted script
void ScriptCore::writeEncryptedScript(CharString loc, CharString data){

}

CharString ScriptCore::readEncryptedScript(CharString loc){

}

// opens file
CharString ScriptCore::readScriptFile(ResourceLocation scriptloc){
}

void ScriptCore::readScriptString(CharString script){
}
