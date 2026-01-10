#include "data/samus/arm_cannon_graphics.h"
#include "macros.h"
#include "oam.h"

const u8 sArmCannonGfx_Elevator_Top[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/elevator_top.gfx"); // 2de9b0
const u8 sArmCannonGfx_Elevator_Bottom[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/elevator_bottom.gfx"); // 2dea70

const u8 sArmCannonGfx_Dying_Top_0[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_top_0.gfx"); // 2deb30
const u8 sArmCannonGfx_Dying_Top_1[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_top_1.gfx"); // 2dec30
const u8 sArmCannonGfx_Dying_Top_2[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_top_2.gfx"); // 2ded30
const u8 sArmCannonGfx_Dying_Top_3[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_top_3.gfx"); // 2dee30
const u8 sArmCannonGfx_Dying_Top_4[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_top_4.gfx"); // 2def30
const u8 sArmCannonGfx_Dying_Top_5[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_top_5.gfx"); // 2df030
const u8 sArmCannonGfx_Dying_Bottom_0[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_bottom_0.gfx"); // 2df130
const u8 sArmCannonGfx_Dying_Bottom_1[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_bottom_1.gfx"); // 2df230
const u8 sArmCannonGfx_Dying_Bottom_2[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_bottom_2.gfx"); // 2df330
const u8 sArmCannonGfx_Dying_Bottom_3[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_bottom_3.gfx"); // 2df430
const u8 sArmCannonGfx_Dying_Bottom_4[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_bottom_4.gfx"); // 2df530
const u8 sArmCannonGfx_Dying_Bottom_5[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_bottom_5.gfx"); // 2df630

const u8 sArmCannonGfx_Dying_HairTop0[3 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_hair_top_0.gfx"); // 2df730
const u8 sArmCannonGfx_Dying_HairTop1[2 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/dying_hair_top_1.gfx"); // 2df790

const u8 sArmCannonGfx_ScrewAttacking_Top_0[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/screw_attacking_top_0.gfx"); // 2df7d0
const u8 sArmCannonGfx_ScrewAttacking_Top_1[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/screw_attacking_top_1.gfx"); // 2df8d0
const u8 sArmCannonGfx_ScrewAttacking_Top_2[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/screw_attacking_top_2.gfx"); // 2df9d0
const u8 sArmCannonGfx_ScrewAttacking_Top_3[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/screw_attacking_top_3.gfx"); // 2dfad0
const u8 sArmCannonGfx_ScrewAttacking_Bottom_0[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/screw_attacking_bottom_0.gfx"); // 2dfbd0
const u8 sArmCannonGfx_ScrewAttacking_Bottom_1[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/screw_attacking_bottom_1.gfx"); // 2dfcd0
const u8 sArmCannonGfx_ScrewAttacking_Bottom_2[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/screw_attacking_bottom_2.gfx"); // 2dfdd0
const u8 sArmCannonGfx_ScrewAttacking_Bottom_3[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/screw_attacking_bottom_3.gfx"); // 2dfed0

const u8 sArmCannonGfx_Default_Right_Top_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_right_top_diagonal_down.gfx"); // 2dffd0
const u8 sArmCannonGfx_Default_Right_Top_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_right_top_none.gfx"); // 2e0090
const u8 sArmCannonGfx_Default_Right_Top_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_right_top_diagonal_up.gfx"); // 2e0150
const u8 sArmCannonGfx_Default_Right_Top_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_right_top_up.gfx"); // 2e0210
const u8 sArmCannonGfx_Default_Right_Top_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_right_top_down.gfx"); // 2e02d0
const u8 sArmCannonGfx_Default_Right_Bottom_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_right_bottom_diagonal_down.gfx"); // 2e0390
const u8 sArmCannonGfx_Default_Right_Bottom_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_right_bottom_none.gfx"); // 2e0450
const u8 sArmCannonGfx_Default_Right_Bottom_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_right_bottom_diagonal_up.gfx"); // 2e0510
const u8 sArmCannonGfx_Default_Right_Bottom_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_right_bottom_up.gfx"); // 2e05d0
const u8 sArmCannonGfx_Default_Right_Bottom_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_right_bottom_down.gfx"); // 2e0690
const u8 sArmCannonGfx_Default_Left_Top_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_left_top_diagonal_down.gfx"); // 2e0750
const u8 sArmCannonGfx_Default_Left_Top_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_left_top_none.gfx"); // 2e0810
const u8 sArmCannonGfx_Default_Left_Top_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_left_top_diagonal_up.gfx"); // 2e08d0
const u8 sArmCannonGfx_Default_Left_Top_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_left_top_up.gfx"); // 2e0990
const u8 sArmCannonGfx_Default_Left_Top_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_left_top_down.gfx"); // 2e0a50
const u8 sArmCannonGfx_Default_Left_Bottom_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_left_bottom_diagonal_down.gfx"); // 2e0b10
const u8 sArmCannonGfx_Default_Left_Bottom_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_left_bottom_none.gfx"); // 2e0bd0
const u8 sArmCannonGfx_Default_Left_Bottom_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_left_bottom_diagonal_up.gfx"); // 2e0c90
const u8 sArmCannonGfx_Default_Left_Bottom_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_left_bottom_up.gfx"); // 2e0d50
const u8 sArmCannonGfx_Default_Left_Bottom_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_left_bottom_down.gfx"); // 2e0e10
const u8 sArmCannonGfx_Default_Armed_Right_Top_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_right_top_diagonal_down.gfx"); // 2e0ed0
const u8 sArmCannonGfx_Default_Armed_Right_Top_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_right_top_none.gfx"); // 2e0f90
const u8 sArmCannonGfx_Default_Armed_Right_Top_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_right_top_diagonal_up.gfx"); // 2e1050
const u8 sArmCannonGfx_Default_Armed_Right_Top_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_right_top_up.gfx"); // 2e1110
const u8 sArmCannonGfx_Default_Armed_Right_Top_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_right_top_down.gfx"); // 2e11d0
const u8 sArmCannonGfx_Default_Armed_Right_Bottom_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_right_bottom_diagonal_down.gfx"); // 2e1290
const u8 sArmCannonGfx_Default_Armed_Right_Bottom_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_right_bottom_none.gfx"); // 2e1350
const u8 sArmCannonGfx_Default_Armed_Right_Bottom_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_right_bottom_diagonal_up.gfx"); // 2e1410
const u8 sArmCannonGfx_Default_Armed_Right_Bottom_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_right_bottom_up.gfx"); // 2e14d0
const u8 sArmCannonGfx_Default_Armed_Right_Bottom_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_right_bottom_down.gfx"); // 2e1590
const u8 sArmCannonGfx_Default_Armed_Left_Top_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_left_top_diagonal_down.gfx"); // 2e1650
const u8 sArmCannonGfx_Default_Armed_Left_Top_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_left_top_none.gfx"); // 2e1710
const u8 sArmCannonGfx_Default_Armed_Left_Top_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_left_top_diagonal_up.gfx"); // 2e17d0
const u8 sArmCannonGfx_Default_Armed_Left_Top_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_left_top_up.gfx"); // 2e1890
const u8 sArmCannonGfx_Default_Armed_Left_Top_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_left_top_down.gfx"); // 2e1950
const u8 sArmCannonGfx_Default_Armed_Left_Bottom_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_left_bottom_diagonal_down.gfx"); // 2e1a10
const u8 sArmCannonGfx_Default_Armed_Left_Bottom_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_left_bottom_none.gfx"); // 2e1ad0
const u8 sArmCannonGfx_Default_Armed_Left_Bottom_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_left_bottom_diagonal_up.gfx"); // 2e1b90
const u8 sArmCannonGfx_Default_Armed_Left_Bottom_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_left_bottom_up.gfx"); // 2e1c50
const u8 sArmCannonGfx_Default_Armed_Left_Bottom_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/default_armed_left_bottom_down.gfx"); // 2e1d10

const u8 sArmCannonGfx_OnHorizontalLadder_Right_Top_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_right_top_diagonal_down.gfx"); // 2e1dd0
const u8 sArmCannonGfx_OnHorizontalLadder_Right_Top_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_right_top_none.gfx"); // 2e1e90
const u8 sArmCannonGfx_OnHorizontalLadder_Right_Top_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_right_top_down.gfx"); // 2e1f50
const u8 sArmCannonGfx_OnHorizontalLadder_Right_Bottom_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_right_bottom_diagonal_down.gfx"); // 2e2010
const u8 sArmCannonGfx_OnHorizontalLadder_Right_Bottom_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_right_bottom_none.gfx"); // 2e20d0
const u8 sArmCannonGfx_OnHorizontalLadder_Right_Bottom_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_right_bottom_down.gfx"); // 2e2190
const u8 sArmCannonGfx_OnHorizontalLadder_Left_Top_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_left_top_diagonal_down.gfx"); // 2e2250
const u8 sArmCannonGfx_OnHorizontalLadder_Left_Top_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_left_top_none.gfx"); // 2e2310
const u8 sArmCannonGfx_OnHorizontalLadder_Left_Top_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_left_top_down.gfx"); // 2e23d0
const u8 sArmCannonGfx_OnHorizontalLadder_Left_Bottom_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_left_bottom_diagonal_down.gfx"); // 2e2490
const u8 sArmCannonGfx_OnHorizontalLadder_Left_Bottom_None[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_left_bottom_none.gfx"); // 2e2550
const u8 sArmCannonGfx_OnHorizontalLadder_Left_Bottom_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_horizontal_ladder_left_bottom_down.gfx"); // 2e2610

const u8 sArmCannonGfx_OnVerticalLadder_Right_Top_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_right_top_diagonal_down.gfx"); // 2e26d0
const u8 sArmCannonGfx_OnVerticalLadder_Right_Top_Forward[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_right_top_forward.gfx"); // 2e2790
const u8 sArmCannonGfx_OnVerticalLadder_Right_Top_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_right_top_diagonal_up.gfx"); // 2e2850
const u8 sArmCannonGfx_OnVerticalLadder_Right_Top_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_right_top_up.gfx"); // 2e2910
const u8 sArmCannonGfx_OnVerticalLadder_Right_Top_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_right_top_down.gfx"); // 2e29d0
const u8 sArmCannonGfx_OnVerticalLadder_Right_Bottom_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_right_bottom_diagonal_down.gfx"); // 2e2a90
const u8 sArmCannonGfx_OnVerticalLadder_Right_Bottom_Forward[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_right_bottom_forward.gfx"); // 2e2b50
const u8 sArmCannonGfx_OnVerticalLadder_Right_Bottom_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_right_bottom_diagonal_up.gfx"); // 2e2c10
const u8 sArmCannonGfx_OnVerticalLadder_Right_Bottom_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_right_bottom_up.gfx"); // 2e2cd0
const u8 sArmCannonGfx_OnVerticalLadder_Right_Bottom_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_right_bottom_down.gfx"); // 2e2d90
const u8 sArmCannonGfx_OnVerticalLadder_Left_Top_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_left_top_diagonal_down.gfx"); // 2e2e50
const u8 sArmCannonGfx_OnVerticalLadder_Left_Top_Forward[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_left_top_forward.gfx"); // 2e2f10
const u8 sArmCannonGfx_OnVerticalLadder_Left_Top_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_left_top_diagonal_up.gfx"); // 2e2fd0
const u8 sArmCannonGfx_OnVerticalLadder_Left_Top_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_left_top_up.gfx"); // 2e3090
const u8 sArmCannonGfx_OnVerticalLadder_Left_Top_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_left_top_down.gfx"); // 2e3150
const u8 sArmCannonGfx_OnVerticalLadder_Left_Bottom_DiagonalDown[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_left_bottom_diagonal_down.gfx"); // 2e3210
const u8 sArmCannonGfx_OnVerticalLadder_Left_Bottom_Forward[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_left_bottom_forward.gfx"); // 2e32d0
const u8 sArmCannonGfx_OnVerticalLadder_Left_Bottom_DiagonalUp[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_left_bottom_diagonal_up.gfx"); // 2e3390
const u8 sArmCannonGfx_OnVerticalLadder_Left_Bottom_Up[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_left_bottom_up.gfx"); // 2e3450
const u8 sArmCannonGfx_OnVerticalLadder_Left_Bottom_Down[6 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/on_vertical_ladder_left_bottom_down.gfx"); // 2e3510

const u8 sArmCannonGfx_LoadingSave_Top_0[12 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/loading_save_top_0.gfx"); // 2e35d0
const u8 sArmCannonGfx_LoadingSave_Bottom_0[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/loading_save_bottom_0.gfx"); // 2e3750
const u8 sArmCannonGfx_LoadingSave_Top_10[12 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/loading_save_top_10.gfx"); // 2e3850
const u8 sArmCannonGfx_LoadingSave_Bottom_10[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/loading_save_bottom_10.gfx"); // 2e39d0
const u8 sArmCannonGfx_LoadingSave_Top_12[12 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/loading_save_top_12.gfx"); // 2e3ad0
const u8 sArmCannonGfx_LoadingSave_Bottom_12[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/loading_save_bottom_12.gfx"); // 2e3c50
const u8 sArmCannonGfx_LoadingSave_Top_14[12 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/loading_save_top_14.gfx"); // 2e3d50
const u8 sArmCannonGfx_LoadingSave_Bottom_14[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/loading_save_bottom_14.gfx"); // 2e3ed0
const u8 sArmCannonGfx_LoadingSave_Top_1[12 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/loading_save_top_1.gfx"); // 2e3fd0
const u8 sArmCannonGfx_LoadingSave_Bottom_1[8 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/loading_save_bottom_1.gfx"); // 2e4150

const u8 sArmCannonGfx_UnlockingSecurity_Top[16 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/unlocking_security_top.gfx"); // 2e4250
const u8 sArmCannonGfx_UnlockingSecurity_Bottom[16 * 32] = INCBIN_U8("data/samus/graphics/arm_cannon/unlocking_security_bottom.gfx"); // 2e4450


// 2e4650
static const u16 sArmCannonOam_UnlockingSecurity_Right_Frame0[OAM_DATA_SIZE(3)] = {
    3,
    OAM_ENTRY(7, -33, OAM_DIMS_8x8, OAM_NO_FLIP, 0x40, 1, 0),
    OAM_ENTRY(-11, -8, OAM_DIMS_8x8, OAM_NO_FLIP, 0x41, 1, 0),
    OAM_ENTRY(2, -8, OAM_DIMS_8x8, OAM_NO_FLIP, 0x42, 1, 0),
};

// 2e4664
static const u16 sArmCannonOam_UnlockingSecurity_Right_Frame1[OAM_DATA_SIZE(5)] = {
    5,
    OAM_ENTRY(5, -35, OAM_DIMS_8x8, OAM_NO_FLIP, 0x44, 1, 0),
    OAM_ENTRY(-10, -16, OAM_DIMS_8x8, OAM_NO_FLIP, 0x43, 1, 0),
    OAM_ENTRY(-10, -8, OAM_DIMS_8x8, OAM_NO_FLIP, 0x63, 1, 0),
    OAM_ENTRY(2, -8, OAM_DIMS_8x8, OAM_NO_FLIP, 0x64, 1, 0),
    OAM_ENTRY(3, -10, OAM_DIMS_8x8, OAM_NO_FLIP, 0x40, 1, 0),
};

// 2e4684
static const u16 sArmCannonOam_UnlockingSecurity_Right_Frame10[OAM_DATA_SIZE(4)] = {
    4,
    OAM_ENTRY(-7, -24, OAM_DIMS_16x16, OAM_NO_FLIP, 0x45, 1, 0),
    OAM_ENTRY(1, -35, OAM_DIMS_8x8, OAM_NO_FLIP, 0x60, 1, 0),
    OAM_ENTRY(-10, -8, OAM_DIMS_8x8, OAM_NO_FLIP, 0x63, 1, 0),
    OAM_ENTRY(2, -8, OAM_DIMS_8x8, OAM_NO_FLIP, 0x64, 1, 0),
};

// 2e469e
static const u16 sArmCannonOam_UnlockingSecurity_Right_Frame11[OAM_DATA_SIZE(3)] = {
    3,
    OAM_ENTRY(-2, -35, OAM_DIMS_8x8, OAM_NO_FLIP, 0x61, 1, 0),
    OAM_ENTRY(-4, -27, OAM_DIMS_8x8, OAM_NO_FLIP, 0x62, 1, 0),
    OAM_ENTRY(-7, -19, OAM_DIMS_16x16, OAM_NO_FLIP, 0x47, 1, 0),
};

// 2e46b2
static const u16 sArmCannonOam_UnlockingSecurity_Right_Frame12[OAM_DATA_SIZE(1)] = {
    1,
    OAM_ENTRY(-3, -35, OAM_DIMS_8x16, OAM_NO_FLIP, 0x49, 1, 0),
};

// 2e46ba
static const u16 sArmCannonOam_UnlockingSecurity_Right_Frame13[OAM_DATA_SIZE(1)] = {
    1,
    OAM_ENTRY(-1, -34, OAM_DIMS_8x16, OAM_NO_FLIP, 0x4a, 1, 0),
};

// 2e46c2
static const u16 sArmCannonOam_UnlockingSecurity_Right_Frame14[OAM_DATA_SIZE(1)] = {
    1,
    OAM_ENTRY(-3, -32, OAM_DIMS_16x16, OAM_NO_FLIP, 0x4b, 1, 0),
};

// 2e46ca
static const u16 sArmCannonOam_UnlockingSecurity_Right_Frame15[OAM_DATA_SIZE(1)] = {
    1,
    OAM_ENTRY(3, -25, OAM_DIMS_8x8, OAM_NO_FLIP, 0x4d, 1, 0),
};

// 2e46d2
static const u16 sArmCannonOam_UnlockingSecurity_Left_Frame0[OAM_DATA_SIZE(3)] = {
    3,
    OAM_ENTRY(-15, -33, OAM_DIMS_8x8, OAM_X_FLIP, 0x40, 1, 0),
    OAM_ENTRY(3, -8, OAM_DIMS_8x8, OAM_X_FLIP, 0x41, 1, 0),
    OAM_ENTRY(-10, -8, OAM_DIMS_8x8, OAM_X_FLIP, 0x42, 1, 0),
};

// 2e46e6
static const u16 sArmCannonOam_UnlockingSecurity_Left_Frame1[OAM_DATA_SIZE(5)] = {
    5,
    OAM_ENTRY(-13, -35, OAM_DIMS_8x8, OAM_X_FLIP, 0x44, 1, 0),
    OAM_ENTRY(2, -16, OAM_DIMS_8x8, OAM_X_FLIP, 0x43, 1, 0),
    OAM_ENTRY(2, -8, OAM_DIMS_8x8, OAM_X_FLIP, 0x63, 1, 0),
    OAM_ENTRY(-10, -8, OAM_DIMS_8x8, OAM_X_FLIP, 0x64, 1, 0),
    OAM_ENTRY(-11, -10, OAM_DIMS_8x8, OAM_X_FLIP, 0x40, 1, 0),
};

// 2e4706
static const u16 sArmCannonOam_UnlockingSecurity_Left_Frame10[OAM_DATA_SIZE(4)] = {
    4,
    OAM_ENTRY(-9, -24, OAM_DIMS_16x16, OAM_X_FLIP, 0x45, 1, 0),
    OAM_ENTRY(-9, -35, OAM_DIMS_8x8, OAM_X_FLIP, 0x60, 1, 0),
    OAM_ENTRY(2, -8, OAM_DIMS_8x8, OAM_X_FLIP, 0x63, 1, 0),
    OAM_ENTRY(-10, -8, OAM_DIMS_8x8, OAM_X_FLIP, 0x64, 1, 0),
};

// 2e4720
static const u16 sArmCannonOam_UnlockingSecurity_Left_Frame11[OAM_DATA_SIZE(3)] = {
    3,
    OAM_ENTRY(-6, -35, OAM_DIMS_8x8, OAM_X_FLIP, 0x61, 1, 0),
    OAM_ENTRY(-4, -27, OAM_DIMS_8x8, OAM_X_FLIP, 0x62, 1, 0),
    OAM_ENTRY(-9, -19, OAM_DIMS_16x16, OAM_X_FLIP, 0x47, 1, 0),
};

// 2e4734
static const u16 sArmCannonOam_UnlockingSecurity_Left_Frame12[OAM_DATA_SIZE(1)] = {
    1,
    OAM_ENTRY(-5, -35, OAM_DIMS_8x16, OAM_X_FLIP, 0x49, 1, 0),
};

// 2e473c
static const u16 sArmCannonOam_UnlockingSecurity_Left_Frame13[OAM_DATA_SIZE(1)] = {
    1,
    OAM_ENTRY(-6, -33, OAM_DIMS_8x16, OAM_NO_FLIP, 0x4f, 1, 0),
};

// 2e4744
static const u16 sArmCannonOam_UnlockingSecurity_Left_Frame14[OAM_DATA_SIZE(1)] = {
    1,
    OAM_ENTRY(-13, -25, OAM_DIMS_16x8, OAM_NO_FLIP, 0x6d, 1, 0),
};

// 2e474c
static const u16 sArmCannonOam_UnlockingSecurity_Left_Frame15[OAM_DATA_SIZE(1)] = {
    1,
    OAM_ENTRY(-11, -24, OAM_DIMS_8x8, OAM_NO_FLIP, 0x4e, 1, 0),
};

// 2e4754
const struct FrameData sArmCannonOam_UnlockingSecurity_Left[25] = {
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame0,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame1,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame10,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame11,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame12,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame13,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame14,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame15,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame0,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame1,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame10,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame11,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame12,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame13,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame14,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame15,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame0,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame1,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame10,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame11,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame12,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame13,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame14,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Left_Frame15,
        .timer = 2
    },
    FRAME_DATA_TERMINATOR
};

// 2e481c
const struct FrameData sArmCannonOam_UnlockingSecurity_Right[25] = {
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame0,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame1,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame10,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame11,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame12,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame13,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame14,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame15,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame0,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame1,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame10,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame11,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame12,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame13,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame14,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame15,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame0,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame1,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame10,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame11,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame12,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame13,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame14,
        .timer = 2
    },
    {
        .pFrame = sArmCannonOam_UnlockingSecurity_Right_Frame15,
        .timer = 2
    },
    FRAME_DATA_TERMINATOR
};


static const u8 sArmCannon_Padding[32] = {0};
