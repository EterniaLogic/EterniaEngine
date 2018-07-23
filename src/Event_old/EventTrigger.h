#ifndef EVENTTRIGGER_H_
#define EVENTTRIGGER_H_


// The EventTrigger is used for the user to specify a manual
// trigger which is directly referenced by this command.
class EventTrigger {
    private:
        bool triggered;

    public:
        EventTrigger();
        void trigger(); // causes the trigger to set true
        bool isTriggered(); // has this trigger been used?
};

#endif
