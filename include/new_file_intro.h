#ifndef NEW_FILE_INTRO_H
#define NEW_FILE_INTRO_H

#include "types.h"

boolu32 IntroHandler(void);
boolu32 NewFileIntroHandler(void);
boolu32 unk_87920(void);
void NewFileIntroSamusShipFlyingVblank(void);
static void NewFileIntroSamusShipFlyingInit(void);
static boolu32 NewFileIntroSamusShipFlyingProcess(void);
static boolu32 NewFileIntroSamusShipFlying(void);

static u16* sMonologueTextPointersJapanese[19];
static u16* sMonologueTextPointersEnglish[19];
static u16* sMonologueTextPointersGerman[19];
static u16* sMonologueTextPointersFrench[19];
static u16* sMonologueTextPointersItalian[19];
static u16* sMonologueTextPointersSpanish[19];

extern void unk_99940(void); // For V-blank callback

#endif /* NEW_FILE_INTRO_H */
