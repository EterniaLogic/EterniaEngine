#include "App.h"
#include <time.h>

using namespace std;


void networkClientThread(){

}


// manages networks, allows connections with servers;
//      or allows the game to host a server.
void App::networkingThread() {
    long ticks_per_sec, time, last;
    pthread_setname_np(pthread_self(), "NetThread");
    // Open ports for TCP, P2P(UDP/UDPNP)
    // Server ports open TCP


    // Client/Microserver ports open P2P


    while(!mDone) {
        last = clock();

        // Each eonnection has their own thread
        // TCP Accept new clients (if server type)


        // P2P Accept connection ()




        // Timing set (Self-adjusting for any lag)
        netFps_++;
        ticks_per_sec = 20.0;
        time = (1000000.0/ticks_per_sec) - (((clock()-last)*1000000.0)/CLOCKS_PER_SEC);
        if(time > 0) std::this_thread::sleep_for(std::chrono::microseconds(time));
    }
}
