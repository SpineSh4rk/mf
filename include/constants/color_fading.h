#ifndef COLOR_FADING_CONSTANTS_H
#define COLOR_FADING_CONSTANTS_H

#include "types.h"
#include "macros.h"

// TODO: Fill in remaining values and fix names
MAKE_ENUM(u8, ColorFadingEffect) {
   COLOR_FADING_WHITE = 1,
   COLOR_FADING_2,
   COLOR_FADING_3,
   COLOR_FADING_4,
   COLOR_FADING_6 = 6,
   COLOR_FADING_10 = 10,
   COLOR_FADING_13 = 13,
   COLOR_FADING_16 = 16,

   COLOR_FADING_COUNT
};

MAKE_ENUM(u8, ColorFadingStatus) ENUM_FLAG {
   COLOR_FADING_STATUS_ON_BG =  1 << 0,
   COLOR_FADING_STATUS_ON_OBJ = 1 << 1
};

#endif /* COLOR_FADING_CONSTANTS_H */
