#ifndef SAMUS_DATA_H
#define SAMUS_DATA_H

#include "types.h"
#include "oam.h"
#include "constants/samus.h"
#include "structs/samus.h"

#define SAMUS_UPDATE() (sSamusUpdateFunctionPointer[gSamusData.unk_0]())
#define SAMUS_SET_POSE(pose) (sSamusSetPoseFunctionPointer[gSamusData.unk_0](pose))
#define SAMUS_UPDATE_VELOCITY_POSITION() (sSamusUpdateVelocityPositionFunctionPointer[gSamusData.unk_0]())
#define SAMUS_CHECK_COLLISION() (sSamusCheckCollisionFunctionPointer[gSamusData.unk_0]())
#define SAMUS_UPDATE_GRAPHICS(direction) (sSamusUpdateGraphicsFunctionPointer[gSamusData.unk_0](direction))
#define SAMUS_PLAY_LOW_HEALTH_SOUND() (sSamusPlayLowHealthSoundFunctionPointer[gSamusData.unk_0]())
#define SAMUS_UPDATE_DRAW_DISTAND_AND_STANDING_STATUS() (sSamusUpdateDrawDistanceAndStandingStatusFunctionPointer[gSamusData.unk_0]())
#define SAMUS_UPDATE_ARM_CANNON_OFFSET(direction) (sSamusUpdateArmCannonOffsetFunctionPointer[gSamusData.unk_0](direction))

typedef u32 (*SamusUpdate_T)(void);
typedef void (*SamusSetPose_T)(u8);
typedef void (*SamusUpdateVelocityPosition_T)(void);
typedef void (*SamusCheckCollision_T)(void);
typedef void (*SamusUpdateGraphics_T)(u8);
typedef void (*SamusPlayLowHealthSound_T)(void);
typedef void (*SamusUpdateDrawDistanceAndStandingStatus_T)(void);
typedef void (*SamusUpdateArmCannonOffset_T)(u8);

typedef u8 (*SamusFunc_T)(void);

extern const s16 sSamusDrawDistanceOffsets[8][4]; // 28fc8c
extern const s16 sSamusCollisionOffsets[7][SAMUS_HITBOX_END]; // 28fccc
extern const s16 sSamusCollisionOffsetsAbove[1][4]; // 28fcf6

extern const SamusUpdate_T sSamusUpdateFunctionPointer[1]; // 28fd00
extern const SamusSetPose_T sSamusSetPoseFunctionPointer[1]; // 28fd04
extern const SamusUpdateVelocityPosition_T sSamusUpdateVelocityPositionFunctionPointer[1]; // 28fd08
extern const SamusCheckCollision_T sSamusCheckCollisionFunctionPointer[1]; // 28fd0c
extern const SamusUpdateGraphics_T sSamusUpdateGraphicsFunctionPointer[1]; // 28fd10
extern const SamusPlayLowHealthSound_T sSamusPlayLowHealthSoundFunctionPointer[1]; // 28fd14
extern const SamusUpdateDrawDistanceAndStandingStatus_T sSamusUpdateDrawDistanceAndStandingStatusFunctionPointer[1]; // 28fd18
extern const SamusUpdateArmCannonOffset_T sSamusUpdateArmCannonOffsetFunctionPointer[1]; // 28fd1c

extern const struct FrameData* const sEnvEffectOamPointers[ENV_EFFECT_END - 1]; // 28fd20

extern const SamusFunc_T sSamusPoseFunctionsPointers[SPOSE_END]; // 28fd58
extern const SamusFunc_T sSamusPoseGfxFunctionsPointers[SPOSE_END]; // 28fe5c

#endif /* SAMUS_DATA_H */
