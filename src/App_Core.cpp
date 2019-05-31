#include "App.h"


// Functions from APICore specifically for this application


void App::onInit(){} // initial start of the system, called by (start())  ->  _onInit();
void App::onEnable(){} // resumes ticks, Core, mods, etc.
void App::onLoadMods(){} // load other mods manually?
void App::onDisable(){} // disabling / pausing ticks, Core, mods, etc.
void App::onUnload(){} // closing down
void App::onTick(double seconds){} // Global tick timer, useful for game timing or w/e. (Mods already get ticked in _onTick(double seconds);

void App::checkModUpdates(){} // tell all mods to check for updates
void App::updateMods(){} // download and test mods along with required dependencies.
