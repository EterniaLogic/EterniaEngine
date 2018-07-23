#include "EventTrigger.h"


// Constructor
EventTrigger::EventTrigger() {}

void EventTrigger::trigger() {
    triggered = true;
}

bool EventTrigger::isTriggered() {
    return triggered;
}
