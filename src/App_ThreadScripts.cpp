#include "App.h"
#include <time.h>

//#include <boost/python.hpp>

using namespace std;
using namespace physical;
// The Scripts thread runs all game-releated scripts
// [[[[[[[[[[[[[Lua, Python, ]]]]]]]]]]]]]
void App::scriptsThread() {
    long ticks_per_sec, time, last;
    pthread_setname_np(pthread_self(), "ScriptsThread");

    //Py_Initialize();
    while(!mDone) {
        last = clock();
        //
        camera->camera_angle->x += ((double)((1.0/180.0)*3.14156));

        // execute a string of python code
        //object exec(str code, object globals = object(), object locals = object());
        //
        //object exec_file(str filename, object globals = object(), object locals = object());


        // Common script runner:
        //  Java/JS/Python/C#


        // Timing set (Self-adjusting for any lag)
        scriptFps_++;
        ticks_per_sec = 60.0;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}
