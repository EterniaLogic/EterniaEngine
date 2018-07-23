#include "App.h"
#include <time.h>


using namespace std;

void App::physicsThread() {
    long ticks_per_sec, time, last;
    pthread_setname_np(pthread_self(), "PhysicsThread");

    // Detect if there is a secondary Graphics card to use for physics with OpenCL.
    /*cl::Platform plat;

    for(auto &p :platforms){
        std::string platver = p.getInfo<CL_PLATFORM_VERSION>();
        if(platver.find("OpenCL 2.") != std::string::npos){
            plat = p;
        }
    }

    if(plat() == 0){
        cout << "No OpenCL 2.0 Platform Found." << endl;
    }*/

    while(!mDone) {
        last = clock();
        // Loop through the registered physics objects

        // list of models that have some form of physics effecting them.
        physicsList.freeze(); // convert linked list to static array
        for(int i=0; i<physicsList.frozenlen; i++) {
            // determine what needs to be done for this model
            // -> Real-Time collisions
            // -> angular gravitation
            // -> Rotational Velocity
            // -> Ragdoll physics
        }




        // Timing set (Self-adjusting for any lag)
        physFps_++;
        ticks_per_sec = 20.0;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}
