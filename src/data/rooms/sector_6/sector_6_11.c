#include "data/rooms/sector_6_rooms_data.h"
#include "macros.h"

const u8 sSector6_11_Clipdata[60] = INCBIN_U8("data/rooms/sector_6/sector_6_11_clipdata.gfx");

const u8 sSector6_11_Bg2[164] = INCBIN_U8("data/rooms/sector_6/sector_6_11_bg2.gfx");

const u8 sSector6_11_Bg1[150] = INCBIN_U8("data/rooms/sector_6/sector_6_11_bg1.gfx");

const u8 sSector6_11_Spriteset0[ENEMY_ROOM_DATA_ARRAY_SIZE(2)] = {
	10, 8, SSP_UNINFECTED_OR_BOSS | SPRITESET_IDX(0),
	ROOM_SPRITE_DATA_TERMINATOR
};

