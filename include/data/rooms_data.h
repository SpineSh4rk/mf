#ifndef ROOMS_DATA_H
#define ROOMS_DATA_H

#include "types.h"
#include "structs/room.h"

extern const u16 sDestroyedDockingBayAnimatedPal[6 * 16];

extern const u8 sBackground_Empty[52];

extern const u8 sEnemyRoomData_Empty[3];

extern const struct TilesetEntry sTilesetEntries[98];

extern const struct RoomEntryRom sMainDeckRoomEntries[87];
extern const struct RoomEntryRom sSector1RoomEntries[54];
extern const struct RoomEntryRom sSector2RoomEntries[61];
extern const struct RoomEntryRom sSector3RoomEntries[39];
// extern const struct RoomEntryRom sSector5RoomEntries[];
extern const struct RoomEntryRom sSector4RoomEntries[48];
// extern const struct RoomEntryRom sSector6RoomEntries[];
// extern const struct RoomEntryRom sTest1RoomEntries[];
// extern const struct RoomEntryRom sTest2RoomEntries[];
// extern const struct RoomEntryRom sTest3RoomEntries[];

#endif /* ROOMS_DATA_H */
