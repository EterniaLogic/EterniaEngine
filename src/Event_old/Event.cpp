#include "Event.h"

// Base Constructor and Destructor
Event::Event() {
    reqList = new LinkedList<EventRequirement>();
}
Event::~Event() {}

// Sets a Required status for the "isReady"

// allows this event to be executed right when it is scheduled
void Event::setTrueRequirement() {
    reqList->add(new EventRequirement(REQ_TRUE,0x0));
}

// delays this event for a specific amount of milliseconds
void Event::setDelayRequirement(long milliseconds) {
    reqList->add(new EventRequirement(REQ_TRIGGER, &milliseconds));
}

// delay for a certain # of ticks
void Event::setTickDelayRequirement(long ticks) {
    reqList->add(new EventRequirement(REQ_TICKS, &ticks));
}

// allow a user to execute an event ondemand via a trigger
void Event::setTriggerRequirement(EventTrigger* trigger) {
    reqList->add(new EventRequirement(REQ_TRIGGER, trigger));
}

// set the function that is executed when the requirements are met.
void Event::setFunc(void (*func)()) {
    function = func;
}

// is used to determine if all requirements are satisfied
bool Event::isReady() {
    if(!reqSet) return false; // a requirement was not set

    bool set = true;
    reqList->freeze(); // freeze (buffer) the reqList so we can loop through it.

    // loop through requirements
    for(int i=0; i<reqList->frozenlen; i++) {
        EventRequirement* req = reqList->frozen[i];

        switch(req->requirement) {
            case REQ_TRUE: // REQ_TRUE
                return true; // Highest priority

            case REQ_TIME: // REQ_TIME
                break;

            case REQ_TICKS: //
                break;

            case REQ_DELAY: // Millisecond delay
                break;

            case REQ_TRIGGER: // User Trigger
                if(req->data != 0x0) { // prevents "Derps"
                    EventTrigger* trig = (EventTrigger*)req->data;
                    if(!trig->isTriggered()) {
                        set = false;
                    }
                }
                break;
        }
    }


    return set;
}

// executes the function
void Event::exec() {
    if(function != 0x0) {
        (this->function)(); // execute
    }
}
