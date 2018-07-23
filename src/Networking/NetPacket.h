#ifndef NET_PACKET_H
#define NET_PACKET_H

// packet types are defined in the Data.dat file
// Generic packet types are located here

enum PACKET_STATES {PSTATE_RECEIVE, PSTATE_RESPONSE};
// The packet may be Requested by the server, or there may be a response back

enum GENERIC_PACKET {PACKET_PING, PACKET_INFO, PACKET_LOGIN, PACKET_LOGOUT, PACKET_DATA};
// PACKET_INFO: retrieve information about a server or client
// PACKET_DATA: Dynamic packet that can receive either a slice of data, a command, or an event

enum PACKET_DATA_TYPES {
    PDATA_RAW, PDATA_INVENTORY, PDATA_CHARACTER, PDATA_SCRIPT,
    PDATA_SIM, PDATA_ENTITY, PDATA_REGION, PDATA_VEHICLE
};


class NetPacket {
    public:
        NetPacket();

        int packet_id;
        PACKET_DATA_TYPES data_type;
        PACKET_STATES packet_state;
};

#endif
