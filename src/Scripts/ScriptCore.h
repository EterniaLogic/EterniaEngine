#ifndef SCRIPTPROVIDER_H_
#define SCRIPTPROVIDER_H_

#include <Eternia/include.h>
#include "../EncryptedData/Encryptor.h"
#include "../Helper/ResourceLocation.h"
#include <Eternia/API/APICore.h>

// Interfaces with external files and uses them to perform simple-to-complex high-end operations.
class ScriptCore : public APICore {
public:
    ScriptCore(CharString modfolder, CharString logfile);

    // Module management
    void preloadMods(); // pre-loads mod files and dependencies chains
    void loadMods(); // begins the process to load all of the mods
    
    
    APIMod* preloadModule(CharString file); // preloads the module, reads "mod.properties" file.
    
    bool loadModule(CharString file); // load a module from a file or folder. false if not loaded.
    bool unloadModule(APIMod* mod); // unload a module. false if kept loaded.
    
    // Master module functions (Sent to actual implementation via APIMod)
    void onInit(); // runs after a module is loaded.
    void onEnable(); // runs to tell the module to turn "on" and start processing.
    void onDisable(); // runs to tell the module to turn "off". (Does not actually stop, mod dev has to do it)
    void onUnload(); // runs when module is stopping.
    
    // Getters
    APIEventRegistry* getEvents();
    APIPermissionsRegistry* getPermissions();
    Logger* getLogger(); // General logger used by this API




    static void writeEncryptedScript(CharString loc, CharString data); // Write an encrypted script
    static CharString readEncryptedScript(CharString loc);
    
    static CharString readScriptFile(ResourceLocation scriptloc); // opens file
    static void readScriptString(CharString script); // 
};


#endif
