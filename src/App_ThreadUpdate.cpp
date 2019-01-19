#include "App.h"
#include <time.h>

using namespace std;

// Manages basic updates
// This may include GUI, ect.
void App::updateThread() {
    long ticks_per_sec, time, last;
    int i;
    pthread_setname_np(pthread_self(), "UpdatesThread");

    while(!mDone) {
        last = clock();
        // content

        // loops through!
        appInstance->updateListeners.freeze();
        for(i=0; i<appInstance->updateListeners.frozenlen; i++) {
            void (*func)() = (void (*)())appInstance->updateListeners.frozen[i];
            if(func != 0x0) {
                debugLoge("[Update] function");
                func(); // send to pure function
            }
        }

        // Timing set (Self-adjusting for any lag)
        updateFps_++;
        ticks_per_sec = 250.0;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}
