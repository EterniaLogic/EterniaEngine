#include "App.h"
#include <time.h>

using namespace std;

// buffers the display
void App::compressionThread() {
    long ticks_per_sec, time, last;
    Compressable* compress;
    pthread_setname_np(pthread_self(), "CompressionThread");

    while(!mDone) {
        last = clock();

        if(!compression.empty()) {
            // this thread is used to compress information for later use
            while((compress = (Compressable*)compression.pop()) != 0x0) {
                compress->doCompress();
            }
        }

        // Timing set (Self-adjusting for any lag)
        compressFps_++;
        ticks_per_sec = 20.0;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}
