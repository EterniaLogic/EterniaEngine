#include "App.h"
#include <time.h>

using namespace std;

// This thread runs through every animation and "ticks" them based
//      on their specific offset times.
void App::animationThread() {
    long ticks_per_sec, time, last;
    int i;
    pthread_setname_np(pthread_self(), "AnimationThread");

    ticks_per_sec = 120.0;
    while(!mDone) {
        last = clock();
        // content



        appInstance->animationList.freeze();
        for(i=0; i<appInstance->animationList.frozenlen; i++) {
            AnimatedObject *obj = appInstance->animationList.frozen[i];
            if(obj != 0x0) {
                debugLog("[Animation] Tick Object");
                time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
                obj->animateTick(time/1000); // simulate based on last time to animate.
            }
        }

        // Timing set (Self-adjusting for any lag)
        animFps_++;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}
