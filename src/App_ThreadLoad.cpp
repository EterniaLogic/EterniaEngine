#include "App.h"
#include <time.h>

using namespace std;

// this thread is used to load information from the filesystem.
//  this thread also theoretically should support the encrypted data cache
void App::loadThread() {
    long ticks_per_sec, time, last;
    //HashMap* fileTable = new HashMap(20000);
    LoadItem* loadItem = 0x0;
    pthread_setname_np(pthread_self(), "LoadThread");

    //initTestModels();

    while(!mDone) {
        last = clock();
        // load files, such as .obj, .fbx, .png, ect. and buffer them for the engine


        try{
        if(!loaders.empty()) {
            // Loading loop
            while(((loadItem = (LoadItem*)loaders.pop()) != 0x0)) {
                // load the item if it needs loading
                loadItem->doLoad();
            }
        }
        }catch(int e){
            cout << "[Load] Error: "<< e << endl;
        }

        // Timing set (Self-adjusting for any lag)
        loadFps_++;
        ticks_per_sec = 20.0;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}
