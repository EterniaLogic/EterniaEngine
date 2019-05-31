#include "App.h"
#include <time.h>

using namespace std;


// loop to determine fps
void App::fpsThread() {
    pthread_setname_np(pthread_self(), "FPSThread");
    while(!mDone) {
        std::this_thread::sleep_for(std::chrono::seconds(1));

        // every second, get value and reset to 0.
        aiFps = aiFps_;
        aiFps_=0;
        animFps = animFps_;
        animFps_=0;
        compressFps = compressFps_;
        compressFps_=0;
        entityFps = entityFps_;
        entityFps_=0;
        eventsFps = eventsFps_;
        eventsFps_=0;
        loadFps = loadFps_;
        loadFps_=0;
        netFps = netFps_;
        netFps_=0;
        physFps = physFps_;
        physFps_=0;
        renderFps = renderFps_;
        renderFps_=0;
        scriptFps = scriptFps_;
        scriptFps_=0;
        soundFps = soundFps_;
        soundFps_=0;
        updateFps = updateFps_;
        updateFps_=0;
        /*cout << "[FPS] Render: " << renderFps << "/60 AI: " <<
             aiFps << "/60 Anim: " <<
             animFps << "/20 Compress: " <<
             compressFps << "/20 Entity: " <<
             entityFps << "/60 Event: " <<
             eventsFps << "/120 Load:" <<
             loadFps << "/20 Net: " <<
             netFps << "/20 Phys: " <<
             physFps << "/20 Script: " <<
             scriptFps << "/60 Sound: " <<
             soundFps << "/60 update: " <<
             updateFps << "/250" << endl;*/
        fpsLabel.text = CharString::ConvertFromInt(renderFps).get();

        //renderProfiler.printProfiles();
    }
}
