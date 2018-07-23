#include "App.h"
#include <time.h>
#include <pthread.h>

using namespace std;

// This thread manages the AI, which only includes the thought,
//      Anything such as character movement, ect. is handled by the
//      entity thread.
// If the AI is handled by the server, this thread is not as useful.
void App::aiThread() {\
    long ticks_per_sec, time, last;
    pthread_setname_np(pthread_self(), "AIThread");


    while(!mDone) {
        last = clock();
        // content

        // loops through!
        appInstance->aiListeners.freeze();
        for(int i=0; i<appInstance->aiListeners.frozenlen; i++) {
            void (*func)() = (void (*)())appInstance->aiListeners.frozen[i];
            if(func != 0x0) {
                func(); // send to pure function
            }
        }

        // Timing set (Self-adjusting for any lag)
        aiFps_++;
        ticks_per_sec = 60.0;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}
