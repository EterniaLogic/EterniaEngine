#ifndef EVENTREQUIREMENT_H_
#define EVENTREQUIREMENT_H_

enum EVENT_REQUIREMENT {REQ_TRUE, REQ_TIME, REQ_TICKS, REQ_DELAY, REQ_TRIGGER};


// REQ_TRUE = (null) a null requirement, forces the isReady status to true
// REQ_TIME = Wait for a certain Time of Day
// REQ_DELAY= (long) Wait for a specified delay
// REQ_TICKS= (long) Wait for a set # of ticks
// REQ_TRIGGER = (EventTrigger) Wait until a trigger is set to true

class EventRequirement {
    public:
        EventRequirement(EVENT_REQUIREMENT req, void* dat);
        EVENT_REQUIREMENT requirement;
        void* data;

        long lastMS; // stores the last millisecond time for delay
};


#endif
