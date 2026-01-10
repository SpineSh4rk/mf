#ifndef IN_GAME_TIMER_STRUCT_H
#define IN_GAME_TIMER_STRUCT_H

#include "types.h"

struct InGameTime {
    u8 hours;
    u8 minutes;
    u8 seconds;
    u8 frames;
};

extern struct InGameTime gInGameTimer;
extern u8 gMaxInGameTimeFlag;

#endif /* IN_GAME_TIMER_STRUCT_H */