#ifndef NET_HANDLER_H_
#define NET_HANDLER_H_

#include "NetClient.h"

// handles clients
class NetHandler
{
public:
    NetHandler();


private:
    void clientHandlerThread();
};

#endif