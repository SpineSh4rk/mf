    .include "asm/macros.inc"

    .syntax unified

	thumb_func_start HazeSetBackgroundEffect
HazeSetBackgroundEffect: @ 0x0806ED84
	push {r4, r5, lr}
	bl HazeResetLoops
	ldr r5, _0806EDC4 @ =0x03000043
	ldr r4, _0806EDC8 @ =0x0879BB98
	ldr r3, _0806EDCC @ =gCurrentRoomEntry
	ldrb r0, [r3, #0x10]
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r1, r4
	ldrb r0, [r1]
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806EDD4
	ldrb r1, [r3, #0x10]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r1, r4, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3, #0x14]
	ldr r2, _0806EDD0 @ =0x03004E4C
	ldrb r1, [r3, #0x10]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r1, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	b _0806EDE0
	.align 2, 0
_0806EDC4: .4byte 0x03000043
_0806EDC8: .4byte 0x0879BB98
_0806EDCC: .4byte gCurrentRoomEntry
_0806EDD0: .4byte 0x03004E4C
_0806EDD4:
	ldrb r0, [r3, #1]
	cmp r0, #0x47
	bne _0806EDE0
	bl GetAtmosphericStabilizerHazeValue
	strb r0, [r5]
_0806EDE0:
	ldr r0, _0806EDF0 @ =0x03000043
	ldrb r0, [r0]
	bl HazeSetupCode
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806EDF0: .4byte 0x03000043

	thumb_func_start GetAtmosphericStabilizerHazeValue
GetAtmosphericStabilizerHazeValue: @ 0x0806EDF4
	push {r4, r5, lr}
	movs r3, #0
	ldr r1, _0806EE00 @ =0x083E3758
	ldrb r2, [r1, #1]
	ldr r4, _0806EE04 @ =gEventCounter
	b _0806EE12
	.align 2, 0
_0806EE00: .4byte 0x083E3758
_0806EE04: .4byte gEventCounter
_0806EE08:
	adds r1, #2
	adds r3, #1
	cmp r3, #1
	bgt _0806EE1A
	ldrb r2, [r1, #1]
_0806EE12:
	ldrb r0, [r4]
	ldrb r5, [r1]
	cmp r0, r5
	bhi _0806EE08
_0806EE1A:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start HazeTransferAndDeactivate
HazeTransferAndDeactivate: @ 0x0806EE24
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _0806EE78 @ =gHazeInfo
	ldrb r7, [r6, #7]
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _0806EE6E
	ldr r2, _0806EE7C @ =0x040000B0
	ldr r5, _0806EE80 @ =0x02024000
	str r5, [r2]
	ldr r4, [r6]
	str r4, [r2, #4]
	ldrb r0, [r6, #6]
	lsrs r0, r0, #1
	ldr r1, _0806EE84 @ =0x80600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r3, sp
	ldr r0, _0806EE88 @ =0x083C94CC
	ldrb r1, [r0]
	strb r1, [r3]
	mov r0, sp
	strb r1, [r0]
	str r5, [r2]
	str r4, [r2, #4]
	ldrb r0, [r6, #6]
	lsrs r0, r0, #1
	movs r1, #0xc0
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #0x7f
	ands r0, r7
	strb r0, [r6, #7]
_0806EE6E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806EE78: .4byte gHazeInfo
_0806EE7C: .4byte 0x040000B0
_0806EE80: .4byte 0x02024000
_0806EE84: .4byte 0x80600000
_0806EE88: .4byte 0x083C94CC

	thumb_func_start unk_6ee8c
unk_6ee8c: @ 0x0806EE8C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _0806EEEC @ =gHazeInfo
	ldrb r7, [r6, #7]
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _0806EEE4
	ldr r2, _0806EEF0 @ =0x040000B0
	ldr r5, _0806EEF4 @ =0x02024000
	str r5, [r2]
	ldr r4, [r6]
	str r4, [r2, #4]
	ldrb r0, [r6, #6]
	lsrs r0, r0, #1
	ldr r1, _0806EEF8 @ =0x80600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r3, sp
	ldr r0, _0806EEFC @ =0x083C94CC
	ldrb r1, [r0]
	strb r1, [r3]
	mov r0, sp
	strb r1, [r0]
	str r5, [r2]
	str r4, [r2, #4]
	ldrb r0, [r6, #6]
	lsrs r0, r0, #1
	movs r1, #0xc0
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #0x7f
	ands r0, r7
	strb r0, [r6, #7]
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #6]
	ldr r0, _0806EF00 @ =0x02024A00
	str r0, [r6]
	ldr r0, _0806EF04 @ =0x03000043
	strb r1, [r0]
_0806EEE4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806EEEC: .4byte gHazeInfo
_0806EEF0: .4byte 0x040000B0
_0806EEF4: .4byte 0x02024000
_0806EEF8: .4byte 0x80600000
_0806EEFC: .4byte 0x083C94CC
_0806EF00: .4byte 0x02024A00
_0806EF04: .4byte 0x03000043

	thumb_func_start HazeSetupCode
HazeSetupCode: @ 0x0806EF08
	push {r4, lr}
	sub sp, #4
	ldr r4, _0806EF34 @ =0x03000043
	strb r0, [r4]
	ldr r2, _0806EF38 @ =gHazeInfo
	ldrb r1, [r2, #7]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #7]
	bl HazeTransferAndDeactivate
	ldrb r0, [r4]
	subs r0, #1
	cmp r0, #0xa
	bls _0806EF2A
	b _0806F20E
_0806EF2A:
	lsls r0, r0, #2
	ldr r1, _0806EF3C @ =_0806EF40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806EF34: .4byte 0x03000043
_0806EF38: .4byte gHazeInfo
_0806EF3C: .4byte _0806EF40
_0806EF40: @ jump table
	.4byte _0806EF6C @ case 0
	.4byte _0806EF98 @ case 1
	.4byte _0806EFA0 @ case 2
	.4byte _0806EFA8 @ case 3
	.4byte _0806EFF8 @ case 4
	.4byte _0806F048 @ case 5
	.4byte _0806F098 @ case 6
	.4byte _0806F0E8 @ case 7
	.4byte _0806F1BC @ case 8
	.4byte _0806F208 @ case 9
	.4byte _0806F208 @ case 10
_0806EF6C:
	bl HazeCalculateGradient
	ldr r2, _0806EF94 @ =gHazeInfo
	ldrb r1, [r2, #7]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #7]
	movs r0, #2
	strb r0, [r2, #6]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #4]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r2]
	b _0806F20E
	.align 2, 0
_0806EF94: .4byte gHazeInfo
_0806EF98:
	ldr r1, _0806EF9C @ =Haze_Bg3
	b _0806EFFA
	.align 2, 0
_0806EF9C: .4byte Haze_Bg3
_0806EFA0:
	ldr r1, _0806EFA4 @ =Haze_Bg3StrongWeak
	b _0806EFFA
	.align 2, 0
_0806EFA4: .4byte Haze_Bg3StrongWeak
_0806EFA8:
	ldr r1, _0806EFE4 @ =Haze_Bg0
	ldr r4, _0806EFE8 @ =0x03001704
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0x10
	str r0, [sp]
	movs r0, #3
	adds r2, r4, #0
	bl DmaTransfer
	ldr r0, _0806EFEC @ =0x030053FC
	adds r4, #1
	str r4, [r0]
	ldr r2, _0806EFF0 @ =gHazeInfo
	ldrb r1, [r2, #7]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #7]
	movs r0, #2
	strb r0, [r2, #6]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #4]
	ldr r0, _0806EFF4 @ =0x04000010
	str r0, [r2]
	b _0806F20E
	.align 2, 0
_0806EFE4: .4byte Haze_Bg0
_0806EFE8: .4byte 0x03001704
_0806EFEC: .4byte 0x030053FC
_0806EFF0: .4byte gHazeInfo
_0806EFF4: .4byte 0x04000010
_0806EFF8:
	ldr r1, _0806F034 @ =Haze_Bg3NoneWeak
_0806EFFA:
	ldr r4, _0806F038 @ =0x03001704
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0x10
	str r0, [sp]
	movs r0, #3
	adds r2, r4, #0
	bl DmaTransfer
	ldr r0, _0806F03C @ =0x030053FC
	adds r4, #1
	str r4, [r0]
	ldr r2, _0806F040 @ =gHazeInfo
	ldrb r1, [r2, #7]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #7]
	movs r0, #2
	strb r0, [r2, #6]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #4]
	ldr r0, _0806F044 @ =0x0400001C
	str r0, [r2]
	b _0806F20E
	.align 2, 0
_0806F034: .4byte Haze_Bg3NoneWeak
_0806F038: .4byte 0x03001704
_0806F03C: .4byte 0x030053FC
_0806F040: .4byte gHazeInfo
_0806F044: .4byte 0x0400001C
_0806F048:
	ldr r1, _0806F084 @ =Haze_Bg3Bg2StrongWeakMedium
	ldr r4, _0806F088 @ =0x03001704
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0x10
	str r0, [sp]
	movs r0, #3
	adds r2, r4, #0
	bl DmaTransfer
	ldr r0, _0806F08C @ =0x030053FC
	adds r4, #1
	str r4, [r0]
	ldr r2, _0806F090 @ =gHazeInfo
	ldrb r1, [r2, #7]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #7]
	movs r0, #8
	strb r0, [r2, #6]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2, #4]
	ldr r0, _0806F094 @ =0x04000018
	str r0, [r2]
	b _0806F20E
	.align 2, 0
_0806F084: .4byte Haze_Bg3Bg2StrongWeakMedium
_0806F088: .4byte 0x03001704
_0806F08C: .4byte 0x030053FC
_0806F090: .4byte gHazeInfo
_0806F094: .4byte 0x04000018
_0806F098:
	ldr r1, _0806F0D4 @ =Haze_Bg3Bg2Bg1
	ldr r4, _0806F0D8 @ =0x03001704
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0x10
	str r0, [sp]
	movs r0, #3
	adds r2, r4, #0
	bl DmaTransfer
	ldr r0, _0806F0DC @ =0x030053FC
	adds r4, #1
	str r4, [r0]
	ldr r2, _0806F0E0 @ =gHazeInfo
	ldrb r1, [r2, #7]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #7]
	movs r0, #0xc
	strb r0, [r2, #6]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r2, #4]
	ldr r0, _0806F0E4 @ =0x04000014
	str r0, [r2]
	b _0806F20E
	.align 2, 0
_0806F0D4: .4byte Haze_Bg3Bg2Bg1
_0806F0D8: .4byte 0x03001704
_0806F0DC: .4byte 0x030053FC
_0806F0E0: .4byte gHazeInfo
_0806F0E4: .4byte 0x04000014
_0806F0E8:
	ldr r1, _0806F17C @ =gWrittenToWinin_H
	movs r0, #0x1f
	strb r0, [r1]
	ldr r1, _0806F180 @ =gWrittenToWinout_L
	movs r0, #0x37
	strb r0, [r1]
	ldr r1, _0806F184 @ =gWrittenToBldcnt_Special
	movs r0, #0xcf
	strh r0, [r1]
	ldr r1, _0806F188 @ =0x04000054
	movs r0, #0xc
	strh r0, [r1]
	ldr r1, _0806F18C @ =gWrittenToWin1V
	movs r0, #0xa0
	strh r0, [r1]
	ldr r1, _0806F190 @ =gWrittenToWin1H
	movs r0, #0
	strh r0, [r1]
	movs r0, #0
	bl ColorEffectPowerBombYellowTint
	ldr r0, _0806F194 @ =gIoRegisters
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0806F138
	ldr r0, _0806F198 @ =gCurrentRoomEntry
	ldrb r0, [r0, #1]
	cmp r0, #0x14
	beq _0806F138
	ldr r2, _0806F19C @ =gWrittenToDispcnt
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r0]
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r2]
_0806F138:
	ldr r1, _0806F1A0 @ =gBackdropColor
	ldr r2, _0806F1A4 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0806F1A8 @ =Haze_PowerBombExpanding
	ldr r4, _0806F1AC @ =0x03001704
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0x10
	str r0, [sp]
	movs r0, #3
	adds r2, r4, #0
	bl DmaTransfer
	ldr r0, _0806F1B0 @ =0x030053FC
	adds r4, #1
	str r4, [r0]
	ldr r2, _0806F1B4 @ =gHazeInfo
	ldrb r0, [r2, #7]
	movs r1, #0x80
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #7]
	movs r0, #2
	strb r0, [r2, #6]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #4]
	ldr r0, _0806F1B8 @ =0x04000042
	str r0, [r2]
	b _0806F1E6
	.align 2, 0
_0806F17C: .4byte gWrittenToWinin_H
_0806F180: .4byte gWrittenToWinout_L
_0806F184: .4byte gWrittenToBldcnt_Special
_0806F188: .4byte 0x04000054
_0806F18C: .4byte gWrittenToWin1V
_0806F190: .4byte gWrittenToWin1H
_0806F194: .4byte gIoRegisters
_0806F198: .4byte gCurrentRoomEntry
_0806F19C: .4byte gWrittenToDispcnt
_0806F1A0: .4byte gBackdropColor
_0806F1A4: .4byte 0x00007FFF
_0806F1A8: .4byte Haze_PowerBombExpanding
_0806F1AC: .4byte 0x03001704
_0806F1B0: .4byte 0x030053FC
_0806F1B4: .4byte gHazeInfo
_0806F1B8: .4byte 0x04000042
_0806F1BC:
	ldr r1, _0806F1F8 @ =Haze_PowerBombRetracting
	ldr r4, _0806F1FC @ =0x03001704
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0x10
	str r0, [sp]
	movs r0, #3
	adds r2, r4, #0
	bl DmaTransfer
	ldr r0, _0806F200 @ =0x030053FC
	adds r4, #1
	str r4, [r0]
	ldr r2, _0806F204 @ =gHazeInfo
	ldrb r0, [r2, #7]
	movs r1, #0x80
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #7]
_0806F1E6:
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0806F20E
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #7]
	b _0806F20E
	.align 2, 0
_0806F1F8: .4byte Haze_PowerBombRetracting
_0806F1FC: .4byte 0x03001704
_0806F200: .4byte 0x030053FC
_0806F204: .4byte gHazeInfo
_0806F208:
	ldr r1, _0806F218 @ =0x03000043
	movs r0, #0
	strb r0, [r1]
_0806F20E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806F218: .4byte 0x03000043

	thumb_func_start HazeResetLoops
HazeResetLoops: @ 0x0806F21C
	push {lr}
	ldr r0, _0806F244 @ =gPauseScreenFlag
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0806F236
	ldr r1, _0806F248 @ =0x030053EC
	ldr r0, _0806F24C @ =0x083E375C
	ldr r0, [r0]
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
_0806F236:
	ldr r0, _0806F250 @ =0x030053F8
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0806F254 @ =0x030053F9
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0806F244: .4byte gPauseScreenFlag
_0806F248: .4byte 0x030053EC
_0806F24C: .4byte 0x083E375C
_0806F250: .4byte 0x030053F8
_0806F254: .4byte 0x030053F9

	thumb_func_start HazeCalculateGradient
HazeCalculateGradient: @ 0x0806F258
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _0806F278 @ =0x02024A00
	str r0, [sp]
	movs r3, #0
_0806F26A:
	movs r7, #0
	cmp r3, #4
	bgt _0806F280
	ldr r1, _0806F27C @ =0x050001C0
	ldrh r7, [r1]
	b _0806F288
	.align 2, 0
_0806F278: .4byte 0x02024A00
_0806F27C: .4byte 0x050001C0
_0806F280:
	cmp r3, #0x9a
	ble _0806F288
	ldr r1, _0806F3FC @ =0x050001C0
	ldrh r7, [r1, #0x1e]
_0806F288:
	strh r7, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0x9f
	ble _0806F26A
	ldr r0, [sp]
	adds r0, #0xa
	str r0, [sp]
	movs r3, #0
_0806F29A:
	lsls r2, r3, #1
	ldr r1, _0806F3FC @ =0x050001C0
	adds r2, r2, r1
	ldrh r1, [r2]
	movs r6, #0x1f
	ands r6, r1
	movs r5, #0xf8
	lsls r5, r5, #2
	ands r5, r1
	lsrs r5, r5, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r0, r1
	lsrs r0, r0, #0xa
	str r0, [sp, #4]
	ldrh r1, [r2, #2]
	movs r4, #0x1f
	ands r4, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #5
	mov sl, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r0, r1
	lsrs r0, r0, #0xa
	mov r8, r0
	subs r4, r4, r6
	mov r0, sl
	subs r0, r0, r5
	mov sl, r0
	mov r1, r8
	ldr r0, [sp, #4]
	subs r1, r1, r0
	mov r8, r1
	movs r7, #0
	adds r3, #1
	str r3, [sp, #0x18]
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x1c]
	lsls r6, r6, #0x18
	str r6, [sp, #0x20]
	adds r0, r4, #0
	movs r1, #0x64
	bl __modsi3
	str r0, [sp, #0x10]
	mov r0, sl
	movs r1, #0xa
	bl __divsi3
	str r0, [sp, #0x14]
	lsls r5, r5, #0x18
	mov sb, r5
	movs r0, #0
	str r0, [sp, #0x24]
_0806F320:
	ldr r1, [sp, #0x20]
	lsrs r6, r1, #0x18
	ldr r0, [sp, #0x1c]
	movs r1, #0xa
	bl __divsi3
	adds r6, r6, r0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, [sp, #0x24]
	movs r1, #0x64
	bl __divsi3
	adds r6, r6, r0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r0, sb
	lsrs r5, r0, #0x18
	mov r0, sl
	movs r1, #0xa
	bl __modsi3
	muls r0, r7, r0
	movs r1, #0xa
	bl __divsi3
	adds r5, r5, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r0, sl
	movs r1, #0x64
	bl __modsi3
	muls r0, r7, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r5, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r0, r8
	movs r1, #0xa
	bl __divsi3
	adds r4, r7, #0
	muls r4, r0, r4
	ldr r1, [sp, #4]
	adds r4, r1, r4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	movs r1, #0xa
	bl __modsi3
	muls r0, r7, r0
	movs r1, #0xa
	bl __divsi3
	adds r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	movs r1, #0x64
	bl __modsi3
	muls r0, r7, r0
	movs r1, #0x64
	bl __divsi3
	adds r4, r4, r0
	lsls r4, r4, #0x18
	lsls r5, r5, #5
	orrs r6, r5
	lsrs r4, r4, #0xe
	orrs r6, r4
	ldr r0, [sp]
	strh r6, [r0]
	adds r0, #2
	str r0, [sp]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	ldr r1, [sp, #8]
	lsls r0, r1, #0x18
	ldr r1, [sp, #0x20]
	adds r1, r1, r0
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x18
	add sb, r0
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x24]
	adds r7, #1
	cmp r7, #9
	ble _0806F320
	ldr r3, [sp, #0x18]
	cmp r3, #0xe
	bgt _0806F3EC
	b _0806F29A
_0806F3EC:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F3FC: .4byte 0x050001C0

	thumb_func_start HazeProcess
HazeProcess: @ 0x0806F400
	push {r4, lr}
	movs r4, #0
	ldr r0, _0806F418 @ =0x03000043
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0806F40E
	b _0806F5AA
_0806F40E:
	lsls r0, r0, #2
	ldr r1, _0806F41C @ =_0806F420
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806F418: .4byte 0x03000043
_0806F41C: .4byte _0806F420
_0806F420: @ jump table
	.4byte _0806F5AA @ case 0
	.4byte _0806F5AA @ case 1
	.4byte _0806F45C @ case 2
	.4byte _0806F45C @ case 3
	.4byte _0806F45C @ case 4
	.4byte _0806F45C @ case 5
	.4byte _0806F45C @ case 6
	.4byte _0806F5A0 @ case 7
	.4byte _0806F46C @ case 8
	.4byte _0806F514 @ case 9
	.4byte _0806F5AA @ case 10
	.4byte _0806F5AA @ case 11
	.4byte _0806F5AA @ case 12
	.4byte _0806F5A6 @ case 13
	.4byte _0806F5A6 @ case 14
_0806F45C:
	ldr r0, _0806F468 @ =0x030053FC
	ldr r0, [r0]
	bl _call_via_r0
	b _0806F5AA
	.align 2, 0
_0806F468: .4byte 0x030053FC
_0806F46C:
	ldr r0, _0806F4A4 @ =0x030053FC
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	bne _0806F47A
	b _0806F5AA
_0806F47A:
	ldr r1, _0806F4A8 @ =0x03000043
	movs r0, #9
	strb r0, [r1]
	movs r0, #9
	bl HazeSetupCode
	ldr r1, _0806F4AC @ =gCurrentPowerBomb
	movs r0, #4
	strb r0, [r1]
	ldr r0, _0806F4B0 @ =0x03004FC8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806F4C4
	ldr r1, _0806F4B4 @ =0x040000D4
	ldr r0, _0806F4B8 @ =0x02035400
	str r0, [r1]
	ldr r0, _0806F4BC @ =0x02035000
	str r0, [r1, #4]
	ldr r0, _0806F4C0 @ =0x80000100
	b _0806F4D0
	.align 2, 0
_0806F4A4: .4byte 0x030053FC
_0806F4A8: .4byte 0x03000043
_0806F4AC: .4byte gCurrentPowerBomb
_0806F4B0: .4byte 0x03004FC8
_0806F4B4: .4byte 0x040000D4
_0806F4B8: .4byte 0x02035400
_0806F4BC: .4byte 0x02035000
_0806F4C0: .4byte 0x80000100
_0806F4C4:
	ldr r1, _0806F4F4 @ =0x040000D4
	ldr r0, _0806F4F8 @ =0x02035400
	str r0, [r1]
	ldr r0, _0806F4FC @ =0x02035000
	str r0, [r1, #4]
	ldr r0, _0806F500 @ =0x800000F0
_0806F4D0:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0806F504 @ =gColorFading
	ldrb r1, [r2, #4]
	movs r0, #1
	movs r3, #0
	orrs r0, r1
	strb r0, [r2, #4]
	ldr r1, _0806F508 @ =gWrittenToWinin_H
	movs r0, #0x37
	strb r0, [r1]
	ldr r1, _0806F50C @ =gWrittenToWinout_L
	movs r0, #0x1f
	strb r0, [r1]
	ldr r0, _0806F510 @ =gBackdropColor
	strh r3, [r0]
	b _0806F5AA
	.align 2, 0
_0806F4F4: .4byte 0x040000D4
_0806F4F8: .4byte 0x02035400
_0806F4FC: .4byte 0x02035000
_0806F500: .4byte 0x800000F0
_0806F504: .4byte gColorFading
_0806F508: .4byte gWrittenToWinin_H
_0806F50C: .4byte gWrittenToWinout_L
_0806F510: .4byte gBackdropColor
_0806F514:
	ldr r0, _0806F54C @ =0x030053FC
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	beq _0806F5AA
	ldr r0, _0806F550 @ =gIoRegisters
	ldrh r1, [r0, #8]
	movs r2, #0
	strh r1, [r0, #0x10]
	ldr r1, _0806F554 @ =gCurrentPowerBomb
	movs r0, #5
	strb r0, [r1]
	strb r2, [r1, #1]
	movs r0, #0xa
	bl HazeSetupCode
	ldr r0, _0806F558 @ =0x03004FC8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806F56C
	ldr r1, _0806F55C @ =0x040000D4
	ldr r0, _0806F560 @ =0x02035400
	str r0, [r1]
	ldr r0, _0806F564 @ =0x02035000
	str r0, [r1, #4]
	ldr r0, _0806F568 @ =0x80000100
	b _0806F578
	.align 2, 0
_0806F54C: .4byte 0x030053FC
_0806F550: .4byte gIoRegisters
_0806F554: .4byte gCurrentPowerBomb
_0806F558: .4byte 0x03004FC8
_0806F55C: .4byte 0x040000D4
_0806F560: .4byte 0x02035400
_0806F564: .4byte 0x02035000
_0806F568: .4byte 0x80000100
_0806F56C:
	ldr r1, _0806F58C @ =0x040000D4
	ldr r0, _0806F590 @ =0x02035400
	str r0, [r1]
	ldr r0, _0806F594 @ =0x02035000
	str r0, [r1, #4]
	ldr r0, _0806F598 @ =0x800000F0
_0806F578:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0806F59C @ =gColorFading
	ldrb r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #4]
	movs r4, #1
	b _0806F5AE
	.align 2, 0
_0806F58C: .4byte 0x040000D4
_0806F590: .4byte 0x02035400
_0806F594: .4byte 0x02035000
_0806F598: .4byte 0x800000F0
_0806F59C: .4byte gColorFading
_0806F5A0:
	bl Haze_Bg3Bg2Bg1
	b _0806F5AA
_0806F5A6:
	bl unk_6fdd0
_0806F5AA:
	cmp r4, #0
	beq _0806F5BC
_0806F5AE:
	bl HazeSetBackgroundEffect
	ldr r0, _0806F5C4 @ =0x03000043
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806F5BC
	movs r4, #0
_0806F5BC:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806F5C4: .4byte 0x03000043

	thumb_func_start Haze_Bg3
Haze_Bg3: @ 0x0806F5C8
	push {r4, r5, r6, r7, lr}
	ldr r6, _0806F614 @ =0x02024A00
	movs r3, #0
	ldr r2, _0806F618 @ =0x030053EC
	strb r3, [r2, #0xb]
	strb r3, [r2, #7]
	ldr r0, _0806F61C @ =0x083C9550
	mov ip, r0
	movs r7, #0xf
	strb r3, [r2, #3]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0806F5F0
	movs r0, #1
	strb r0, [r2, #3]
	strh r3, [r2]
_0806F5F0:
	ldr r1, _0806F620 @ =0x030053F8
	ldrb r0, [r2, #3]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	ldr r0, _0806F624 @ =gEffectYPosition
	ldrh r1, [r0]
	lsrs r1, r1, #2
	ldr r0, _0806F628 @ =gBg1YPosition
	ldrh r0, [r0]
	lsrs r0, r0, #2
	subs r1, r1, r0
	subs r1, #1
	cmp r1, #0xa0
	ble _0806F62C
	movs r1, #0xa0
	b _0806F632
	.align 2, 0
_0806F614: .4byte 0x02024A00
_0806F618: .4byte 0x030053EC
_0806F61C: .4byte 0x083C9550
_0806F620: .4byte 0x030053F8
_0806F624: .4byte gEffectYPosition
_0806F628: .4byte gBg1YPosition
_0806F62C:
	cmp r1, #0
	bge _0806F632
	movs r1, #0
_0806F632:
	movs r3, #0
	cmp r3, r1
	bge _0806F64C
	ldr r4, _0806F680 @ =gBackgroundPositions
	adds r2, r6, #0
	adds r3, r1, #0
_0806F63E:
	ldrh r0, [r4, #0xc]
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bne _0806F63E
	adds r3, r1, #0
_0806F64C:
	cmp r3, #0x9f
	bgt _0806F67A
	ldr r5, _0806F684 @ =0x030053F8
	ldr r4, _0806F680 @ =gBackgroundPositions
	lsls r0, r3, #1
	adds r2, r0, r6
_0806F658:
	ldrh r0, [r4, #0xe]
	adds r0, r0, r3
	ldrb r6, [r5]
	adds r1, r0, r6
	ands r1, r7
	mov r6, ip
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, #0x9f
	ble _0806F658
_0806F67A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F680: .4byte gBackgroundPositions
_0806F684: .4byte 0x030053F8

	thumb_func_start Haze_Bg3StrongWeak
Haze_Bg3StrongWeak: @ 0x0806F688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0806F704 @ =0x02024A00
	mov ip, r0
	movs r3, #0
	ldr r2, _0806F708 @ =0x030053EC
	strb r3, [r2, #0xb]
	ldr r5, _0806F70C @ =0x083C9550
	mov sb, r5
	movs r7, #0xf
	mov r8, r7
	strb r3, [r2, #3]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0806F6BA
	movs r0, #1
	strb r0, [r2, #3]
	strh r3, [r2]
_0806F6BA:
	ldr r0, _0806F710 @ =0x083E3728
	mov sl, r0
	movs r6, #0xf
	movs r0, #0
	strb r0, [r2, #7]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb
	ble _0806F6D8
	movs r0, #1
	strb r0, [r2, #7]
	strh r3, [r2, #4]
_0806F6D8:
	ldr r1, _0806F714 @ =0x030053F8
	ldrb r0, [r2, #3]
	ldrb r3, [r1]
	adds r0, r0, r3
	strb r0, [r1]
	ldr r1, _0806F718 @ =0x030053F9
	ldrb r0, [r2, #7]
	ldrb r5, [r1]
	adds r0, r0, r5
	strb r0, [r1]
	ldr r0, _0806F71C @ =gEffectYPosition
	ldrh r1, [r0]
	lsrs r1, r1, #2
	ldr r0, _0806F720 @ =gBg1YPosition
	ldrh r0, [r0]
	lsrs r0, r0, #2
	subs r1, r1, r0
	subs r1, #1
	cmp r1, #0xa0
	ble _0806F724
	movs r1, #0xa0
	b _0806F72A
	.align 2, 0
_0806F704: .4byte 0x02024A00
_0806F708: .4byte 0x030053EC
_0806F70C: .4byte 0x083C9550
_0806F710: .4byte 0x083E3728
_0806F714: .4byte 0x030053F8
_0806F718: .4byte 0x030053F9
_0806F71C: .4byte gEffectYPosition
_0806F720: .4byte gBg1YPosition
_0806F724:
	cmp r1, #0
	bge _0806F72A
	movs r1, #0
_0806F72A:
	movs r3, #0
	cmp r3, r1
	bge _0806F756
	ldr r5, _0806F794 @ =0x030053F9
	ldr r4, _0806F798 @ =gBackgroundPositions
	mov r2, ip
_0806F736:
	ldrh r0, [r4, #0xe]
	adds r0, r0, r3
	ldrb r7, [r5]
	adds r0, r0, r7
	ands r0, r6
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r7, [r4, #0xc]
	adds r0, r0, r7
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, r1
	blt _0806F736
_0806F756:
	cmp r3, #0x9f
	bgt _0806F786
	ldr r4, _0806F79C @ =0x030053F8
	ldr r2, _0806F798 @ =gBackgroundPositions
	lsls r0, r3, #1
	mov r5, ip
	adds r1, r0, r5
_0806F764:
	ldrh r0, [r2, #0xe]
	adds r0, r0, r3
	ldrb r7, [r4]
	adds r0, r0, r7
	mov r5, r8
	ands r0, r5
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r7, [r2, #0xc]
	adds r0, r0, r7
	strh r0, [r1]
	adds r1, #2
	adds r3, #1
	cmp r3, #0x9f
	ble _0806F764
_0806F786:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F794: .4byte 0x030053F9
_0806F798: .4byte gBackgroundPositions
_0806F79C: .4byte 0x030053F8

	thumb_func_start Haze_Bg3NoneWeak
Haze_Bg3NoneWeak: @ 0x0806F7A0
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r2, _0806F7FC @ =0x030053EC
	strb r3, [r2, #0xb]
	strb r3, [r2, #7]
	ldr r6, _0806F800 @ =0x083E3738
	movs r5, #0x1f
	strb r3, [r2, #3]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0806F7C4
	movs r0, #1
	strb r0, [r2, #3]
	strh r3, [r2]
_0806F7C4:
	ldr r1, _0806F804 @ =0x030053F8
	ldrb r0, [r2, #3]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	adds r4, r1, #0
	ldr r1, _0806F808 @ =gBackgroundPositions
	ldr r2, _0806F80C @ =0x02024A00
_0806F7D4:
	ldrh r0, [r1, #0xe]
	adds r0, r0, r3
	ldrb r7, [r4]
	adds r0, r0, r7
	ands r0, r5
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r7, [r1, #0xc]
	adds r0, r0, r7
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, #0x9f
	ble _0806F7D4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F7FC: .4byte 0x030053EC
_0806F800: .4byte 0x083E3738
_0806F804: .4byte 0x030053F8
_0806F808: .4byte gBackgroundPositions
_0806F80C: .4byte 0x02024A00

	thumb_func_start Haze_Bg3Bg2StrongWeakMedium
Haze_Bg3Bg2StrongWeakMedium: @ 0x0806F810
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r2, _0806F88C @ =0x030053EC
	strb r4, [r2, #7]
	ldr r6, _0806F890 @ =0x083E3738
	movs r5, #0x1f
	strb r4, [r2, #3]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0806F832
	movs r0, #1
	strb r0, [r2, #3]
	strh r4, [r2]
_0806F832:
	ldr r1, _0806F894 @ =0x030053F8
	ldrb r0, [r2, #3]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	ldr r2, _0806F898 @ =0x02024A00
	ldr r3, _0806F89C @ =gBackgroundPositions
_0806F840:
	ldrh r0, [r3, #0xa]
	adds r0, r0, r4
	ldrb r7, [r1]
	adds r0, r0, r7
	ands r0, r5
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r7, [r3, #8]
	adds r0, r0, r7
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r3, #0xa]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r3, #0xe]
	adds r0, r0, r4
	ldrb r7, [r1]
	adds r0, r0, r7
	ands r0, r5
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r7, [r3, #0xc]
	adds r0, r0, r7
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r3, #0xe]
	strh r0, [r2]
	adds r2, #2
	adds r4, #1
	cmp r4, #0x9f
	ble _0806F840
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F88C: .4byte 0x030053EC
_0806F890: .4byte 0x083E3738
_0806F894: .4byte 0x030053F8
_0806F898: .4byte 0x02024A00
_0806F89C: .4byte gBackgroundPositions

	thumb_func_start Haze_Bg0
Haze_Bg0: @ 0x0806F8A0
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r0, _0806F8CC @ =0x030053EC
	strb r4, [r0, #7]
	ldr r1, _0806F8D0 @ =0x03004FA0
	ldrh r1, [r1]
	adds r3, r0, #0
	cmp r1, #1
	bls _0806F8D4
	ldrh r0, [r3, #8]
	adds r0, #1
	strh r0, [r3, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0806F8DA
	strh r4, [r3, #8]
	ldrb r0, [r3, #0xb]
	adds r0, #1
	cmp r0, #0xd
	bhi _0806F8DA
	b _0806F8D8
	.align 2, 0
_0806F8CC: .4byte 0x030053EC
_0806F8D0: .4byte 0x03004FA0
_0806F8D4:
	movs r0, #0
	strh r4, [r3, #8]
_0806F8D8:
	strb r0, [r3, #0xb]
_0806F8DA:
	adds r2, r3, #0
	ldrb r0, [r2, #0xb]
	lsls r0, r0, #4
	ldr r1, _0806F93C @ =0x083E3518
	adds r5, r0, r1
	movs r6, #0xf
	movs r4, #0
	strb r4, [r2, #3]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldrb r0, [r2, #0xb]
	adds r0, #6
	asrs r0, r0, #1
	cmp r1, r0
	blt _0806F904
	movs r0, #1
	strb r0, [r2, #3]
	strh r4, [r2]
_0806F904:
	ldr r1, _0806F940 @ =0x030053F8
	ldrb r0, [r3, #3]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	ldr r2, _0806F944 @ =0x02024A00
	movs r4, #0
	ldr r3, _0806F948 @ =gBackgroundPositions
_0806F914:
	ldrh r0, [r3, #2]
	adds r0, r0, r4
	ldrb r7, [r1]
	adds r0, r0, r7
	ands r0, r6
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r7, [r3]
	adds r0, r0, r7
	strh r0, [r2]
	adds r2, #2
	adds r4, #1
	cmp r4, #0x9f
	ble _0806F914
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F93C: .4byte 0x083E3518
_0806F940: .4byte 0x030053F8
_0806F944: .4byte 0x02024A00
_0806F948: .4byte gBackgroundPositions

	thumb_func_start Haze_Bg3Bg2Bg1
Haze_Bg3Bg2Bg1: @ 0x0806F94C
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r1, _0806F978 @ =0x030053EC
	ldrh r0, [r1, #8]
	adds r2, r0, #1
	strh r2, [r1, #8]
	ldr r0, _0806F97C @ =0x03004E42
	ldrb r0, [r0]
	adds r3, r1, #0
	cmp r0, #1
	bne _0806F980
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _0806F994
	strh r5, [r3, #8]
	ldrb r0, [r3, #0xb]
	cmp r0, #3
	bhi _0806F994
	adds r0, #1
	b _0806F992
	.align 2, 0
_0806F978: .4byte 0x030053EC
_0806F97C: .4byte 0x03004E42
_0806F980:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _0806F994
	strh r5, [r3, #8]
	ldrb r0, [r3, #0xb]
	cmp r0, #0
	beq _0806F994
	subs r0, #1
_0806F992:
	strb r0, [r3, #0xb]
_0806F994:
	adds r2, r3, #0
	ldrb r0, [r2, #0xb]
	lsls r0, r0, #5
	ldr r1, _0806FA28 @ =0x083E3608
	adds r4, r0, r1
	movs r0, #0x1f
	mov ip, r0
	movs r1, #0
	strb r1, [r2, #3]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _0806F9BA
	movs r0, #1
	strb r0, [r2, #3]
	strh r1, [r2]
_0806F9BA:
	ldr r0, _0806FA2C @ =0x030053F8
	ldrb r1, [r0]
	ldrb r2, [r3, #3]
	subs r1, r1, r2
	strb r1, [r0]
	ldr r2, _0806FA30 @ =0x02024A00
	movs r5, #0
	adds r6, r0, #0
	ldr r3, _0806FA34 @ =gBackgroundPositions
_0806F9CC:
	ldrh r0, [r3, #6]
	adds r0, r0, r5
	ldrb r7, [r6]
	adds r1, r0, r7
	mov r0, ip
	ands r1, r0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r7, [r3, #4]
	adds r1, r0, r7
	strh r1, [r2]
	adds r2, #2
	ldrh r0, [r3, #6]
	strh r0, [r2]
	adds r2, #2
	strh r1, [r2]
	adds r2, #2
	ldrh r0, [r3, #0xa]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r3, #0xe]
	adds r0, r0, r5
	ldrb r7, [r6]
	adds r1, r0, r7
	mov r0, ip
	ands r1, r0
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0xc]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r3, #0xe]
	strh r0, [r2]
	adds r2, #2
	adds r5, #1
	cmp r5, #0x9f
	ble _0806F9CC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FA28: .4byte 0x083E3608
_0806FA2C: .4byte 0x030053F8
_0806FA30: .4byte 0x02024A00
_0806FA34: .4byte gBackgroundPositions

	thumb_func_start Haze_PowerBombExpanding
Haze_PowerBombExpanding: @ 0x0806FA38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0806FA98 @ =gCurrentPowerBomb
	ldrb r1, [r0, #0x12]
	mov ip, r0
	cmp r1, #0
	beq _0806FA4A
	b _0806FB62
_0806FA4A:
	ldr r2, _0806FA9C @ =0x083E3294
	mov r0, ip
	ldrb r1, [r0, #2]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r8, r0
	adds r3, r1, #0
	mov r1, ip
	ldrh r0, [r1, #4]
	ldr r1, _0806FAA0 @ =gBg1XPosition
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0xe
	lsrs r5, r0, #0x10
	mov r2, ip
	ldrh r0, [r2, #6]
	ldr r1, _0806FAA4 @ =gBg1YPosition
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	ldr r6, _0806FAA8 @ =0x02024A00
	movs r2, #0
	movs r4, #0x9f
_0806FA7C:
	strh r2, [r6]
	subs r4, #1
	adds r6, #2
	cmp r4, #0
	bge _0806FA7C
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r0, r3, r0
	adds r2, r0, #1
	lsls r0, r3, #0x10
	cmp r2, #0x9f
	ble _0806FAAC
	movs r2, #0x9f
	b _0806FAB2
	.align 2, 0
_0806FA98: .4byte gCurrentPowerBomb
_0806FA9C: .4byte 0x083E3294
_0806FAA0: .4byte gBg1XPosition
_0806FAA4: .4byte gBg1YPosition
_0806FAA8: .4byte 0x02024A00
_0806FAAC:
	cmp r2, #0
	bge _0806FAB2
	movs r2, #0
_0806FAB2:
	movs r3, #0
	asrs r1, r1, #0x10
	asrs r0, r0, #0x10
	subs r4, r1, r0
	cmp r4, #0
	bge _0806FAC4
	rsbs r3, r4, #0
	movs r4, #0
	b _0806FACA
_0806FAC4:
	cmp r4, #0x9f
	ble _0806FACA
	movs r4, #0x9f
_0806FACA:
	lsls r0, r4, #1
	ldr r1, _0806FB04 @ =0x02024A00
	adds r6, r0, r1
	cmp r4, r2
	bge _0806FB36
	lsls r0, r5, #0x10
	asrs r7, r0, #0x10
	subs r4, r2, r4
	lsls r0, r3, #2
	mov r2, r8
	adds r5, r0, r2
_0806FAE0:
	movs r0, #2
	ldrsh r1, [r5, r0]
	lsls r1, r1, #1
	adds r1, r7, r1
	lsls r1, r1, #0x10
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #1
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0806FB08
	movs r3, #0
	b _0806FB0E
	.align 2, 0
_0806FB04: .4byte 0x02024A00
_0806FB08:
	cmp r1, #0xf0
	ble _0806FB0E
	movs r3, #0xf0
_0806FB0E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0806FB1A
	movs r2, #0xf0
	b _0806FB20
_0806FB1A:
	cmp r0, #0
	bge _0806FB20
	movs r2, #0
_0806FB20:
	lsls r1, r3, #0x10
	asrs r1, r1, #8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r6]
	subs r4, #1
	adds r5, #4
	adds r6, #2
	cmp r4, #0
	bne _0806FAE0
_0806FB36:
	mov r1, ip
	ldrb r0, [r1, #2]
	cmp r0, #0x9e
	bls _0806FB50
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0806FB62
	movs r0, #1
	b _0806FB64
_0806FB50:
	adds r0, #3
	mov r1, ip
	strb r0, [r1, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9f
	bls _0806FB62
	movs r0, #0x9f
	strb r0, [r1, #2]
_0806FB62:
	movs r0, #0
_0806FB64:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Haze_PowerBombRetracting
Haze_PowerBombRetracting: @ 0x0806FB70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0806FBD0 @ =gCurrentPowerBomb
	ldrb r1, [r0, #0x12]
	mov ip, r0
	cmp r1, #0
	beq _0806FB82
	b _0806FC9A
_0806FB82:
	ldr r2, _0806FBD4 @ =0x083E3294
	mov r0, ip
	ldrb r1, [r0, #2]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r8, r0
	adds r3, r1, #0
	mov r1, ip
	ldrh r0, [r1, #4]
	ldr r1, _0806FBD8 @ =gBg1XPosition
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0xe
	lsrs r5, r0, #0x10
	mov r2, ip
	ldrh r0, [r2, #6]
	ldr r1, _0806FBDC @ =gBg1YPosition
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	ldr r6, _0806FBE0 @ =0x02024A00
	movs r2, #0
	movs r4, #0x9f
_0806FBB4:
	strh r2, [r6]
	subs r4, #1
	adds r6, #2
	cmp r4, #0
	bge _0806FBB4
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r0, r3, r0
	adds r2, r0, #1
	lsls r0, r3, #0x10
	cmp r2, #0x9f
	ble _0806FBE4
	movs r2, #0x9f
	b _0806FBEA
	.align 2, 0
_0806FBD0: .4byte gCurrentPowerBomb
_0806FBD4: .4byte 0x083E3294
_0806FBD8: .4byte gBg1XPosition
_0806FBDC: .4byte gBg1YPosition
_0806FBE0: .4byte 0x02024A00
_0806FBE4:
	cmp r2, #0
	bge _0806FBEA
	movs r2, #0
_0806FBEA:
	movs r3, #0
	asrs r1, r1, #0x10
	asrs r0, r0, #0x10
	subs r4, r1, r0
	cmp r4, #0
	bge _0806FBFC
	rsbs r3, r4, #0
	movs r4, #0
	b _0806FC02
_0806FBFC:
	cmp r4, #0x9f
	ble _0806FC02
	movs r4, #0x9f
_0806FC02:
	lsls r0, r4, #1
	ldr r1, _0806FC3C @ =0x02024A00
	adds r6, r0, r1
	cmp r4, r2
	bge _0806FC6E
	lsls r0, r5, #0x10
	asrs r7, r0, #0x10
	subs r4, r2, r4
	lsls r0, r3, #2
	mov r2, r8
	adds r5, r0, r2
_0806FC18:
	movs r0, #2
	ldrsh r1, [r5, r0]
	lsls r1, r1, #1
	adds r1, r7, r1
	lsls r1, r1, #0x10
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #1
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _0806FC40
	movs r3, #0
	b _0806FC46
	.align 2, 0
_0806FC3C: .4byte 0x02024A00
_0806FC40:
	cmp r1, #0xf0
	ble _0806FC46
	movs r3, #0xf0
_0806FC46:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0806FC52
	movs r2, #0xf0
	b _0806FC58
_0806FC52:
	cmp r0, #0
	bge _0806FC58
	movs r2, #0
_0806FC58:
	lsls r1, r3, #0x10
	asrs r1, r1, #8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r6]
	subs r4, #1
	adds r5, #4
	adds r6, #2
	cmp r4, #0
	bne _0806FC18
_0806FC6E:
	mov r1, ip
	ldrb r0, [r1, #2]
	cmp r0, #4
	bhi _0806FC88
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0806FC9A
	movs r0, #1
	b _0806FC9C
_0806FC88:
	subs r0, #3
	mov r1, ip
	strb r0, [r1, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0806FC9A
	movs r0, #4
	strb r0, [r1, #2]
_0806FC9A:
	movs r0, #0
_0806FC9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start unk_6fca8
unk_6fca8: @ 0x0806FCA8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _0806FD34 @ =0x03004E28
	ldrh r2, [r1]
	strh r2, [r1, #4]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov ip, r1
	ldrh r1, [r1, #2]
	cmp r0, r1
	beq _0806FD26
	mov r3, ip
	strh r2, [r3, #2]
	movs r6, #0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov r8, r1
	ldr r7, _0806FD38 @ =0x02024A00
_0806FCD6:
	lsls r1, r6, #0xe
	mov r2, ip
	ldrh r4, [r2, #2]
	movs r0, #0x1f
	ands r0, r4
	asrs r3, r1, #0x10
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bge _0806FCEE
	movs r5, #0
_0806FCEE:
	lsls r0, r3, #5
	mov r1, sb
	ands r1, r4
	subs r1, r1, r0
	ldr r2, _0806FD3C @ =0xFFFF83E0
	adds r0, r2, #0
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	cmp r1, #0
	bge _0806FD06
	movs r2, #0
_0806FD06:
	lsls r1, r3, #0xa
	mov r0, r8
	ands r0, r4
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _0806FD18
	movs r1, #0
_0806FD18:
	orrs r2, r1
	orrs r5, r2
	strh r5, [r7]
	adds r7, #2
	adds r6, #1
	cmp r6, #0x9f
	ble _0806FCD6
_0806FD26:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FD34: .4byte 0x03004E28
_0806FD38: .4byte 0x02024A00
_0806FD3C: .4byte 0xFFFF83E0

	thumb_func_start Haze_Bg3Y
Haze_Bg3Y: @ 0x0806FD40
	push {r4, r5, r6, r7, lr}
	ldr r1, _0806FDBC @ =0x030053EC
	movs r2, #0
	strb r2, [r1, #7]
	ldrh r0, [r1, #8]
	adds r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #3
	ble _0806FD64
	ldrb r0, [r3, #0xb]
	cmp r0, #0x3f
	bhi _0806FD64
	adds r0, #1
	strb r0, [r3, #0xb]
	strh r2, [r3, #8]
_0806FD64:
	adds r2, r3, #0
	ldrb r0, [r2, #0xb]
	lsls r0, r0, #5
	ldr r1, _0806FDC0 @ =0x083C9580
	adds r6, r0, r1
	movs r1, #0
	strb r1, [r2, #3]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0806FD86
	movs r0, #1
	strb r0, [r2, #3]
	strh r1, [r2]
_0806FD86:
	ldr r1, _0806FDC4 @ =0x030053F8
	ldrb r0, [r3, #3]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	movs r2, #0
	adds r5, r1, #0
	ldr r4, _0806FDC8 @ =gBackgroundPositions
	movs r1, #0x1f
	ldr r3, _0806FDCC @ =0x02024A00
_0806FD9A:
	ldrh r0, [r4, #0xe]
	adds r0, r0, r2
	ldrb r7, [r5]
	adds r0, r0, r7
	ands r0, r1
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	cmp r2, #0x9f
	ble _0806FD9A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FDBC: .4byte 0x030053EC
_0806FDC0: .4byte 0x083C9580
_0806FDC4: .4byte 0x030053F8
_0806FDC8: .4byte gBackgroundPositions
_0806FDCC: .4byte 0x02024A00

	thumb_func_start unk_6fdd0
unk_6fdd0: @ 0x0806FDD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r3, #0
	ldr r1, _0806FE58 @ =0x030053EC
	strb r3, [r1, #0xb]
	strb r3, [r1, #7]
	ldr r4, _0806FE5C @ =0x02024A00
	ldr r0, _0806FE60 @ =0x083C9DA0
	mov ip, r0
	ldr r7, _0806FE64 @ =0x083C9DC0
	strb r3, [r1, #3]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0806FE00
	movs r0, #1
	strb r0, [r1, #3]
	strh r3, [r1]
_0806FE00:
	ldr r2, _0806FE68 @ =0x030053F8
	ldrb r0, [r1, #3]
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	ldr r0, _0806FE6C @ =gCurrentRoomEntry
	ldrb r0, [r0, #0x10]
	cmp r0, #0xd
	beq _0806FE16
	cmp r0, #0xf
	bne _0806FE74
_0806FE16:
	mov r8, r2
	ldr r5, _0806FE70 @ =gBackgroundPositions
	mov sb, r5
	adds r2, r4, #0
	movs r6, #0xf
	mov sl, r6
	movs r4, #0x1f
_0806FE24:
	mov r1, sb
	ldrh r0, [r1, #0xe]
	adds r0, r0, r3
	mov r5, r8
	ldrb r5, [r5]
	adds r1, r0, r5
	adds r0, r1, #0
	mov r6, sl
	ands r0, r6
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r2]
	ands r1, r4
	mov r5, ip
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r2, #2]
	adds r2, #4
	adds r3, #1
	cmp r3, #0x9f
	ble _0806FE24
	b _0806FEB4
	.align 2, 0
_0806FE58: .4byte 0x030053EC
_0806FE5C: .4byte 0x02024A00
_0806FE60: .4byte 0x083C9DA0
_0806FE64: .4byte 0x083C9DC0
_0806FE68: .4byte 0x030053F8
_0806FE6C: .4byte gCurrentRoomEntry
_0806FE70: .4byte gBackgroundPositions
_0806FE74:
	mov r8, r2
	ldr r6, _0806FEC4 @ =gBackgroundPositions
	mov sb, r6
	adds r2, r4, #0
	movs r0, #0xf
	mov sl, r0
	movs r4, #0x1f
_0806FE82:
	mov r1, sb
	ldrh r0, [r1, #0xe]
	adds r0, r0, r3
	mov r5, r8
	ldrb r5, [r5]
	adds r1, r0, r5
	adds r0, r1, #0
	mov r6, sl
	ands r0, r6
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r2]
	ands r1, r4
	mov r5, ip
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r2, #2]
	adds r2, #4
	adds r3, #1
	cmp r3, #0x9f
	ble _0806FE82
_0806FEB4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FEC4: .4byte gBackgroundPositions
