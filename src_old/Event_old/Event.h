#ifndef EVENT_H_
#define EVENT_H_

#include <Eternia/Data/LinkedList.hpp>
#include "EventRequirement.h"
#include "EventTrigger.h"



// The event class is used to help manage timed or scheduled events
// This class is used for everything from Sounds to Game elements
// Managers that currently use this:
//      SoundManager
class Event {
    public:
        Event();
        ~Event();

        void setTrueRequirement(); // allows this event to be executed
        void setDelayRequirement(long milliseconds); // delays this event for a specific amount of milliseconds
        void setTickDelayRequirement(long ticks); // delay for a certain # of ticks
        void setTriggerRequirement(EventTrigger* trigger); // allow a user to execute an event ondemand via a trigger
        void setFunc(void (*func)()); // set the function to be executed upon requirement met

        void tick(); // increments any tick requirements

        bool isReady(); // returns true if the requirements are satisfied
        void exec(); // executes function upon ready

    private:
        bool reqSet = false; // prevents the event from going off before a requirement is set.
        LinkedList<EventRequirement>* reqList;
        void (*function)(); // variable
};
#endif
