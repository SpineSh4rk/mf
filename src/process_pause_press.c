#include "types.h"
#include "globals.h"

#include "constants/samus.h"

#include "structs/power_bomb.h"
#include "structs/samus.h"
#include "structs/demo.h"

u8 ProcessPauseButtonPress(void)
{
    u8 doingSomething;
    u8 type;

    doingSomething = TRUE;
    
    if (gPreventMovementTimer || (gCurrentPowerBomb.animationState | gCurrentPowerBomb.powerBombPlaced) || gDisablePauseFlag)
        doingSomething = FALSE;
    
    switch (gSamusData.pose)
    {
        case SPOSE_ON_SAVE_PAD:
        case SPOSE_ON_RECHARGE_OR_SECURITY_PAD:
        case SPOSE_TURNING_AROUND_TO_RECHARGE_OR_UNLOCK_DOORS:
        case SPOSE_UNLOCKING_SECURITY:
        case SPOSE_SAVING:
        case SPOSE_ON_NAVIGATION_PAD:
        case SPOSE_DOWNLOADING_ABILITY:
        case SPOSE_UNLOCKING_HABITATIONS_DECK:
        case SPOSE_LOADING_SAVE:
        case SPOSE_DYING:
            doingSomething = FALSE;
    }

    if (doingSomething == TRUE) // == TRUE is necessary for match
    {
        if (gDemoState)
        {
            if (gButtonInput)
                type = 14;
            else 
                type = 16; 
        }
        else
        {
            LowerMusicVolume();
            type = 2;
        }

        StartColorFading(type);
    }

    return doingSomething;
}