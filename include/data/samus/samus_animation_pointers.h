#include "types.h"
#include "structs/samus.h"
#include "oam.h"
#include "constants/samus.h"

extern const u8 sSamusGenericData_Empty[40];
extern const struct SamusData sSamusData_Empty;
extern const struct Equipment sEquipment_Empty;

extern const struct SamusAnimData* const sSamusAnimPointers_Default[SPOSE_END][2];
extern const struct SamusAnimData* const sSamusAnimPointers_Standing[5][2];
extern const struct SamusAnimData* const sSamusAnimPointers_Turning[5][2];
extern const struct SamusAnimData* const sSamusAnimPointers_Shooting[5][2];
extern const struct SamusAnimData* const sSamusAnimPointers_Running[4][2];
extern const struct SamusAnimData* const sSamusAnimPointers_MidAir[6][2];
extern const struct SamusAnimData* const sSamusAnimPointers_TurningMidAir[6][2];
extern const struct SamusAnimData* const sSamusAnimPointers_Landing[10][2];
extern const struct SamusAnimData* const sSamusAnimPointers_TurningAndCrouching[5][2];
extern const struct SamusAnimData* const sSamusAnimPointers_Crouching[5][2];
extern const struct SamusAnimData* const sSamusAnimPointers_HangingOnLedge[2][2];

extern const struct FrameData* const sArmCannonOamPointers_ScrewAttacking[2];

extern const struct SamusAnimData* const sSamusAnimPointers_Skidding[2][2];
extern const struct SamusAnimData* const sSamusAnimPointers_Shinesparking[3][2];
extern const struct SamusAnimData* const sSamusAnimPointers_DelayAfterShinesparking[3][2];
extern const struct SamusAnimData* const sSamusAnimPointers_ArmOutOnVerticalLadder[6][2];
extern const struct SamusAnimData* const sSamusAnimPointers_ShootingOnVerticalLadder[6][2];
extern const struct SamusAnimData* const sSamusAnimPointers_AfterShootingOnHorizontalLadder[6][2];
extern const struct SamusAnimData* const sSamusAnimPointers_ShootingOnHorizontalLadder[6][2];

extern const struct FrameData* const sArmCannonOamPointers_UnlockingSecurity[2];
extern const struct FrameData* const sArmCannonOamPointers_Dying[2];

extern const struct SamusAnimData* const sSamusAnimPointers_HitByOmegaMetroid[2][2];

extern const u8 sSamusCollisionData[SPOSE_END][SCDF_COUNT];

extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_Default[SPOSE_END][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_Standing[5][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_Turning[5][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_Shooting[5][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_Running[4][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_MidAir[6][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_TurningMidAir[6][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_Landing[10][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_TurningAndCrouching[5][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_Crouching[5][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_HangingOnLedge[2][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_Shinesparking[3][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_DelayAfterShinesparking[3][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_OnVerticalLadder[6][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_ShootingOnVerticalLadder[6][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_AfterShootingOnHorizontalLadder[6][2];
extern const struct ArmCannonAnimData* const sArmCannonAnimPointers_ShootingOnHorizontalLadder[6][2];
