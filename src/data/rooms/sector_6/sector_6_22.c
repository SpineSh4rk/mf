#include "data/rooms/sector_6_rooms_data.h"
#include "macros.h"

const u8 sSector6_22_Clipdata[82] = INCBIN_U8("data/rooms/sector_6/sector_6_22_clipdata.gfx");

const u8 sSector6_22_Bg2[299] = INCBIN_U8("data/rooms/sector_6/sector_6_22_bg2.gfx");

const u8 sSector6_22_Bg1[379] = INCBIN_U8("data/rooms/sector_6/sector_6_22_bg1.gfx");

const u8 sSector6_22_Spriteset0[ENEMY_ROOM_DATA_ARRAY_SIZE(2)] = {
	9, 12, SSP_UNINFECTED_OR_BOSS | SPRITESET_IDX(2),
	ROOM_SPRITE_DATA_TERMINATOR
};

