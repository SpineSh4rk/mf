#include "globals.h"
#include "sprite.h"

#include "data/sprite_data.h"

#include "constants/sprite.h"
#include "constants/event.h"

#include "structs/sprite.h"



void ElectricWaterDamageBox2Init(void)
{

}

void ElectricWaterDamageBox2Idle(void)
{

}

void ElectricWaterDamageBox2DamagingSamus(void)
{

}

void ElectricWaterDamageBox2Stopping(void)
{

}

void ElectricWaterDamageBox2(void) {
    switch (gCurrentSprite.pose) {
    case SPRITE_POSE_UNINITIALIZED:
        ElectricWaterDamageBox2Init();
        break;

    case SPRITE_POSE_IDLE:
        ElectricWaterDamageBox2Idle();
        break;

    case 24:
        ElectricWaterDamageBox2DamagingSamus();
        break;

    case 26:
        ElectricWaterDamageBox2Stopping();
        break;
    }

    if (EVENT_EFFECT_80 & gCurrentEventBasedEffect) {
        gCurrentSprite.status = 0;
    }
}
