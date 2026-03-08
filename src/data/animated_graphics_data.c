#include "data/animated_graphics_data.h"

#include "macros.h"

static const u8 sAnimatedGraphicsEntries[] = INCBIN_U8("data/Blob_3c8d58_3c8f90.bin");

static const u8 sAnimatedTilesetEntries[] = INCBIN_U8("data/Blob_3c8f90_3c9230.bin");

const u8 sScroll_Empty[11] = {
    UCHAR_MAX,
    UCHAR_MAX,
    UCHAR_MAX,
    UCHAR_MAX,
    UCHAR_MAX,
    UCHAR_MAX,
    UCHAR_MAX,
    UCHAR_MAX,
    UCHAR_MAX,
    UCHAR_MAX,
    UCHAR_MAX
};

static const u8 sBlob_3c923b_3e392c[] = INCBIN_U8("data/Blob_3c923b_3e392c.bin");
