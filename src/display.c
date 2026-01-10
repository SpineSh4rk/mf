#include "display.h"
#include "gba.h"
#include "globals.h"

#include "structs/display.h"

void IoWriteRegisters(void)
{
    if (gWrittenToDispcnt)
    {
        write16(REG_DISPCNT, gWrittenToDispcnt);
        gWrittenToDispcnt = 0;
    }

    if (gWrittenToBldalpha)
    {
        write16(REG_BLDALPHA, gWrittenToBldalpha);
        gWrittenToBldalpha = 0;
    }

    if (gWrittenToWinin_L)
    {
        write8(REG_WININ + 1, gWrittenToWinin_L);
        gWrittenToWinin_L = 0;
    }

    if (gWrittenToWinout_R)
    {
        write8(REG_WINOUT, gWrittenToWinout_R);
        gWrittenToWinout_R = 0;
    }

    if (gWrittenToWin1H | gWrittenToWin1V)
    {
        write16(REG_WIN1H, gWrittenToWin1H);
        write16(REG_WIN1V, gWrittenToWin1V);
        gWrittenToWin1H = 0;
        gWrittenToWin1V = 0;
    }

    if (gWrittenToBldcnt_Special)
    {
        write16(REG_BLDCNT, gWrittenToBldcnt_Special);
        gWrittenToBldcnt_Special = 0;
    }

    CheckTransferFadedPalette();
    TransferAnimatedGraphics();
}

void IoWriteRegistersDuringTransition(void)
{
    if (gWrittenToDispcnt)
    {
        write16(REG_DISPCNT, gWrittenToDispcnt);
        gWrittenToDispcnt = 0;
    }

    if (gWrittenToBldalpha)
    {
        write16(REG_BLDALPHA, gWrittenToBldalpha);
        gWrittenToBldalpha = 0;
    }

    if (gWrittenToWinin_L)
    {
        write8(REG_WININ + 1, gWrittenToWinin_L);
        gWrittenToWinin_L = 0;
    }

    if (gWrittenToWinout_R)
    {
        write8(REG_WINOUT, gWrittenToWinout_R);
        gWrittenToWinout_R = 0;
    }

    if (gWrittenToWin1H | gWrittenToWin1V)
    {
        write16(REG_WIN1H, gWrittenToWin1H);
        write16(REG_WIN1V, gWrittenToWin1V);
        gWrittenToWin1H = 0;
        gWrittenToWin1V = 0;
    }

    if (gWrittenToBldcnt_Special)
    {
        write16(REG_BLDCNT, gWrittenToBldcnt_Special);
        gWrittenToBldcnt_Special = 0;
    }

    if (gUnk_03004E40)
    {
        write16(REG_BG1CNT, gUnk_03004E40);
        gUnk_03004E40 = 0;
    }

    if (gUnk_03004E3E)
    {
        write16(REG_BG3CNT, gUnk_03004E3E);
        gUnk_03004E3E = 0;
    }
    
    CheckTransferFadedPalette();
    TransferAnimatedGraphics();
}