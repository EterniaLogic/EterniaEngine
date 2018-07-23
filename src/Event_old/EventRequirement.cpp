#include "EventRequirement.h"

// Initialize this requrement
EventRequirement::EventRequirement(EVENT_REQUIREMENT req, void* dat) {
    this->requirement = req;
    this->data = data;
}
