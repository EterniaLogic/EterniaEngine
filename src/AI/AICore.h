#ifndef AICORE_H_
#define AICORE_H_

//back-end
//#include <boost/msm/back/state_machine.hpp>
//front-end
//#include <boost/msm/front/state_machine_def.hpp>

// Personality definitions:
enum AIPERS_ENUM {AIPERSONALITY_EXTRAVERSION, AIPERSONALITY_THOUGHTFULNESS,
                  AIPERSONALITY_AGGREEABLE, AIPERSONALITY_STABILITY, AIPERSONALITY_OPENNESS
                 };


// This class manages generic AI systems.
class AICore {
        void decide();


        // list of functions that are executed
        void (* AI_move)(); // move the AI
        void (* AI_talk)(); // move the AI
        void (* AI_attack)(); // move the AI
        void (* AI_follow)(void*); // AI follow entity (Entity*)
        void (* AI_sound)(int EsoundID); // AI make a sound (E_SOUND_ID)

        /*struct transition_table : mpl::vector11<
            row <Wander, decide, Decide, 0x0>,
            row <Wander, near_enemy, Aggro, 0x0>,
            row <Aggro, close_enemy, Attack, &::AI_attack>,
            row <Decide, commanded, Commanded, 0x0>,
            row <Commanded, not_refuse, Do_Command, 0x0>,
            row <Do_Command, in_squad, strategize, 0x0>,
            row <Do_Command, not_in_squad, Aggro, 0x0>,
        >{};*/
};

#endif
