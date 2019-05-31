#include "App.h"
#include <time.h>
#include <math.h>

using namespace std;


void backendRendering(){

}


// Render items using ANY available graphics card, if it is not the main graphics card, the better.
void App::backendRenderThread() {
    long ticks_per_sec, time, last;
    // create another OpenGL backend for this thread.
    pthread_setname_np(pthread_self(), "BackrenderThread");


    while (!mDone) {
        last = clock();
        // Content
        backendRendering();

        ticks_per_sec = 60.0;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}
