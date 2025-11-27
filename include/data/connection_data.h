#ifndef CONNECTION_DATA_H
#define CONNECTION_DATA_H

#include "types.h"

#include "constants/clipdata.h"
#include "constants/connection.h"

#include "structs/connection.h"
#include "structs/clipdata.h"

extern const u8 sAreaConnections[36][AREA_CONNECTION_FIELD_COUNT];
extern const struct ElevatorRoomPair sElevatorRoomPairs[ELEVATOR_END];
extern const struct ElevatorDisabledEvent sElevatorDisabledEvents[4];
extern const u8 sEventBasedConnections[60][EVENT_BASED_CONNECTION_FIELD_COUNT];

#endif /* CONNECTION_DATA_H */
