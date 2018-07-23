#include "App.h"
#include <time.h>

using namespace std;

// manages game "entities", which ties AI logic and entity movement
//      in the background.
// Entities are anything that "move", this thread makes sure that
//      entites are following the rules of the game.


// Entities also include vehicles, ect. This is part of the physics movement system.


// E.G.; the update thread tell this thread that a player has moved from point A to point B
void App::entityThread() {
    long ticks_per_sec, time, last;
    pthread_setname_np(pthread_self(), "EntityThread");

    while(!mDone) {
        last = clock();
        // content

        // Timing set (Self-adjusting for any lag)
        entityFps_++;
        ticks_per_sec = 60.0;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}
