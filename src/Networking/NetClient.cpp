#include "NetClient.h"


/*using namespace boost;
using asio::ip::tcp;

// initializer
NetClient::NetClient() {}

// handles a packet
void NetClient::handlePacket(NetPacket* packet) {

}

// thread for handling this client
void NetClient::handleClient() {
    // clientSocket
    while(connected) {
        /*boost::array<char, 65535> buf;
        boost::system::error_code error;

        size_t len = socket.read_some(asio::buffer(buf), error); // read packet.
        if (error == asio::error::eof)
            break; // Connection closed cleanly by peer.
        else if (error)
            throw boost::system::system_error(error); // Some other error.

        // determine the packet type
        char* data = buf.data();

        //std::cout.write(buf.data(), len); // write packet data to console.
        * /
    }
    connected = false;
}
*/
