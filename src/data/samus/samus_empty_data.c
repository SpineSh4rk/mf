#include "data/samus/samus_empty_data.h"

const u8 sSamusGfx_Empty[SAMUS_GFX_SIZE(0, 0)] = {
    0, 0
};

const u16 sSamusOam_Empty[OAM_DATA_SIZE(0)] = {
    0
};

const struct ArmCannonOffset sArmCannonOffset_Empty = {
    .y = C_S8_2_S16(0),
    .x = C_S9_2_S16(0)
};
