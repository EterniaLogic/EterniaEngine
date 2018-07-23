#include "App.h"
#include <time.h>

#include <stdio.h>
#include <cstdlib>

using namespace std;

// This thread is used for when anything "Substantial" happens.
// This includes mouse clicks, button presses, Sound,
//      game-specific events, ect.
void App::eventThread() {
    long ticks_per_sec, time, last;
    pthread_setname_np(pthread_self(), "EventsThread");
    // Base level events handler

    while(!mDone) {
        last = clock();
        // content
        // empty queue until it is empty.

        events.handleEvents();

        // Timing set (Self-adjusting for any lag)
        eventsFps_++;
        ticks_per_sec = 120.0;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}

