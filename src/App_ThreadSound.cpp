#include "App.h"
#include <time.h>

using namespace std;

// Manages sound playback and systems
void App::soundThread() {
    long ticks_per_sec, time, last;
    pthread_setname_np(pthread_self(), "SoundThread");

    // initialize OpenAL sound system
    this->sound.init();

    while(!mDone) {
        last = clock();

        // play sounds

        // Timing set (Self-adjusting for any lag)
        soundFps_++;
        ticks_per_sec = 60.0;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}
