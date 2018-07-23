#ifndef NET_CLIENT_H
#define NET_CLIENT_H

/*#include <boost/array.hpp>
#include <boost/asio.hpp>
#include <boost/thread.hpp>

#include "NetPacket.h"

using namespace boost;
using asio::ip::tcp;

// The net client works for the Server to
// specify who is who
class NetClient {
    public:
        NetClient();

        boost::asio::ip::tcp::socket* clientSocket;
        thread clientThread; // thread started upon acceptance
        bool connected;

        void handlePacket(NetPacket* packet); // handle an incoming packet
        void handleClient(); // client thread function
};*/

#endif
