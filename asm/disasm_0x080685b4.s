    .include "asm/macros.inc"

    .syntax unified

	thumb_func_start UpdateGadoraHatch
UpdateGadoraHatch: @ 0x080685B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	rsbs r3, r2, #0
	orrs r3, r2
	lsrs r3, r3, #0x1f
	str r3, [sp]
	movs r6, #0
	movs r7, #0
	movs r4, #0
	lsrs r0, r0, #0x16
	lsls r0, r0, #0x10
	mov r8, r0
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x10
	mov ip, r1
	mov sb, r3
	ldr r3, _08068638 @ =gHatchData
	movs r0, #2
	rsbs r0, r0, #0
	mov sl, r0
_080685EC:
	ldrb r0, [r3, #1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _0806863C
	ldrb r1, [r3, #2]
	adds r0, r1, r6
	mov r5, r8
	lsrs r2, r5, #0x10
	cmp r0, r2
	blt _0806861C
	subs r0, r1, r6
	cmp r0, r2
	bgt _0806861C
	ldrb r1, [r3, #3]
	adds r0, r1, #3
	mov r5, ip
	lsrs r2, r5, #0x10
	cmp r0, r2
	blt _0806861C
	movs r5, #0
	subs r0, r1, r5
	cmp r0, r2
	bgt _0806861C
	movs r7, #1
_0806861C:
	cmp r7, #0
	beq _0806863C
	ldrb r1, [r3]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	ldr r2, [sp]
	cmp r0, r2
	beq _0806864A
	mov r0, sl
	ands r0, r1
	mov r5, sb
	orrs r0, r5
	strb r0, [r3]
	b _08068644
	.align 2, 0
_08068638: .4byte gHatchData
_0806863C:
	adds r3, #4
	adds r4, #1
	cmp r4, #5
	ble _080685EC
_08068644:
	adds r4, #1
	cmp r7, #0
	bne _0806864C
_0806864A:
	movs r4, #0
_0806864C:
	adds r0, r4, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start UpdateInGameTimer
UpdateInGameTimer: @ 0x08068660
	push {r4, lr}
	ldr r0, _080686D8 @ =gMaxInGameTimeFlag
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _080686D0
	ldr r1, _080686DC @ =gInGameTimer
	ldrb r0, [r1, #3]
	adds r0, #1
	strb r0, [r1, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _080686BA
	adds r2, r1, #0
	movs r3, #0
_08068680:
	strb r3, [r2, #3]
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _080686BA
	strb r3, [r1, #2]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _080686BA
	strb r3, [r2, #1]
	ldrb r0, [r2]
	cmp r0, #0x63
	bhi _080686AC
	adds r0, #1
	strb r0, [r2]
_080686AC:
	ldrb r0, [r2, #3]
	adds r0, #1
	strb r0, [r2, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bhi _08068680
_080686BA:
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _080686D0
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x63
	strb r0, [r1]
	movs r0, #0x3b
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
_080686D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080686D8: .4byte gMaxInGameTimeFlag
_080686DC: .4byte gInGameTimer

	thumb_func_start IoWriteRegisters
IoWriteRegisters: @ 0x080686E0
	push {r4, lr}
	ldr r2, _08068760 @ =gWrittenToDispcnt
	ldrh r1, [r2]
	cmp r1, #0
	beq _080686F4
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
	movs r0, #0
	strh r0, [r2]
_080686F4:
	ldr r2, _08068764 @ =gWrittenToBldalpha
	ldrh r1, [r2]
	cmp r1, #0
	beq _08068704
	ldr r0, _08068768 @ =0x04000052
	strh r1, [r0]
	movs r0, #0
	strh r0, [r2]
_08068704:
	ldr r2, _0806876C @ =gWrittenToWinin_L
	ldrb r1, [r2]
	cmp r1, #0
	beq _08068714
	ldr r0, _08068770 @ =0x04000049
	strb r1, [r0]
	movs r0, #0
	strb r0, [r2]
_08068714:
	ldr r2, _08068774 @ =gWrittenToWinout_R
	ldrb r1, [r2]
	cmp r1, #0
	beq _08068724
	ldr r0, _08068778 @ =0x0400004A
	strb r1, [r0]
	movs r0, #0
	strb r0, [r2]
_08068724:
	ldr r3, _0806877C @ =gWrittenToWin1H
	ldr r4, _08068780 @ =gWrittenToWin1V
	ldrh r1, [r3]
	ldrh r2, [r4]
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _08068742
	ldr r0, _08068784 @ =0x04000042
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	movs r0, #0
	strh r0, [r3]
	strh r0, [r4]
_08068742:
	ldr r2, _08068788 @ =gWrittenToBldcnt_Special
	ldrh r1, [r2]
	cmp r1, #0
	beq _08068752
	ldr r0, _0806878C @ =0x04000050
	strh r1, [r0]
	movs r0, #0
	strh r0, [r2]
_08068752:
	bl CheckTransferFadedPalette
	bl TransferAnimatedGraphics
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068760: .4byte gWrittenToDispcnt
_08068764: .4byte gWrittenToBldalpha
_08068768: .4byte 0x04000052
_0806876C: .4byte gWrittenToWinin_L
_08068770: .4byte 0x04000049
_08068774: .4byte gWrittenToWinout_R
_08068778: .4byte 0x0400004A
_0806877C: .4byte gWrittenToWin1H
_08068780: .4byte gWrittenToWin1V
_08068784: .4byte 0x04000042
_08068788: .4byte gWrittenToBldcnt_Special
_0806878C: .4byte 0x04000050

	thumb_func_start IoWriteRegistersDuringTransition
IoWriteRegistersDuringTransition: @ 0x08068790
	push {r4, lr}
	ldr r2, _08068830 @ =gWrittenToDispcnt
	ldrh r1, [r2]
	cmp r1, #0
	beq _080687A4
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
	movs r0, #0
	strh r0, [r2]
_080687A4:
	ldr r2, _08068834 @ =gWrittenToBldalpha
	ldrh r1, [r2]
	cmp r1, #0
	beq _080687B4
	ldr r0, _08068838 @ =0x04000052
	strh r1, [r0]
	movs r0, #0
	strh r0, [r2]
_080687B4:
	ldr r2, _0806883C @ =gWrittenToWinin_L
	ldrb r1, [r2]
	cmp r1, #0
	beq _080687C4
	ldr r0, _08068840 @ =0x04000049
	strb r1, [r0]
	movs r0, #0
	strb r0, [r2]
_080687C4:
	ldr r2, _08068844 @ =gWrittenToWinout_R
	ldrb r1, [r2]
	cmp r1, #0
	beq _080687D4
	ldr r0, _08068848 @ =0x0400004A
	strb r1, [r0]
	movs r0, #0
	strb r0, [r2]
_080687D4:
	ldr r3, _0806884C @ =gWrittenToWin1H
	ldr r4, _08068850 @ =gWrittenToWin1V
	ldrh r1, [r3]
	ldrh r2, [r4]
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _080687F2
	ldr r0, _08068854 @ =0x04000042
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	movs r0, #0
	strh r0, [r3]
	strh r0, [r4]
_080687F2:
	ldr r2, _08068858 @ =gWrittenToBldcnt_Special
	ldrh r1, [r2]
	cmp r1, #0
	beq _08068802
	ldr r0, _0806885C @ =0x04000050
	strh r1, [r0]
	movs r0, #0
	strh r0, [r2]
_08068802:
	ldr r2, _08068860 @ =0x03004E40
	ldrh r1, [r2]
	cmp r1, #0
	beq _08068812
	ldr r0, _08068864 @ =0x0400000A
	strh r1, [r0]
	movs r0, #0
	strh r0, [r2]
_08068812:
	ldr r2, _08068868 @ =0x03004E3E
	ldrh r1, [r2]
	cmp r1, #0
	beq _08068822
	ldr r0, _0806886C @ =0x0400000E
	strh r1, [r0]
	movs r0, #0
	strh r0, [r2]
_08068822:
	bl CheckTransferFadedPalette
	bl TransferAnimatedGraphics
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068830: .4byte gWrittenToDispcnt
_08068834: .4byte gWrittenToBldalpha
_08068838: .4byte 0x04000052
_0806883C: .4byte gWrittenToWinin_L
_08068840: .4byte 0x04000049
_08068844: .4byte gWrittenToWinout_R
_08068848: .4byte 0x0400004A
_0806884C: .4byte gWrittenToWin1H
_08068850: .4byte gWrittenToWin1V
_08068854: .4byte 0x04000042
_08068858: .4byte gWrittenToBldcnt_Special
_0806885C: .4byte 0x04000050
_08068860: .4byte 0x03004E40
_08068864: .4byte 0x0400000A
_08068868: .4byte 0x03004E3E
_0806886C: .4byte 0x0400000E

	thumb_func_start ProcessPauseButtonPress
ProcessPauseButtonPress: @ 0x08068870
	push {r4, lr}
	movs r4, #1
	ldr r0, _080688AC @ =gPreventMovementTimer
	ldrh r0, [r0]
	cmp r0, #0
	bne _08068894
	ldr r0, _080688B0 @ =gCurrentPowerBomb
	ldrb r1, [r0]
	ldrb r0, [r0, #0x10]
	orrs r0, r1
	cmp r0, #0
	bne _08068894
	ldr r0, _080688B4 @ =0x0300002B
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08068896
_08068894:
	movs r4, #0
_08068896:
	ldr r0, _080688B8 @ =gSamusData
	ldrb r0, [r0, #1]
	subs r0, #0x20
	cmp r0, #0x1e
	bhi _0806893E
	lsls r0, r0, #2
	ldr r1, _080688BC @ =_080688C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080688AC: .4byte gPreventMovementTimer
_080688B0: .4byte gCurrentPowerBomb
_080688B4: .4byte 0x0300002B
_080688B8: .4byte gSamusData
_080688BC: .4byte _080688C0
_080688C0: @ jump table
	.4byte _0806893C @ case 0
	.4byte _0806893C @ case 1
	.4byte _0806893C @ case 2
	.4byte _0806893E @ case 3
	.4byte _0806893E @ case 4
	.4byte _0806893E @ case 5
	.4byte _0806893E @ case 6
	.4byte _0806893E @ case 7
	.4byte _0806893E @ case 8
	.4byte _0806893E @ case 9
	.4byte _0806893E @ case 10
	.4byte _0806893E @ case 11
	.4byte _0806893E @ case 12
	.4byte _0806893E @ case 13
	.4byte _0806893E @ case 14
	.4byte _0806893E @ case 15
	.4byte _0806893E @ case 16
	.4byte _0806893E @ case 17
	.4byte _0806893E @ case 18
	.4byte _0806893E @ case 19
	.4byte _0806893C @ case 20
	.4byte _0806893C @ case 21
	.4byte _0806893C @ case 22
	.4byte _0806893C @ case 23
	.4byte _0806893E @ case 24
	.4byte _0806893E @ case 25
	.4byte _0806893E @ case 26
	.4byte _0806893C @ case 27
	.4byte _0806893E @ case 28
	.4byte _0806893C @ case 29
	.4byte _0806893C @ case 30
_0806893C:
	movs r4, #0
_0806893E:
	cmp r4, #1
	bne _0806896C
	ldr r0, _08068958 @ =gDemoState
	ldrb r0, [r0]
	cmp r0, #0
	beq _08068960
	ldr r0, _0806895C @ =gButtonInput
	ldrh r0, [r0]
	movs r1, #0x10
	cmp r0, #0
	beq _08068966
	movs r1, #0xe
	b _08068966
	.align 2, 0
_08068958: .4byte gDemoState
_0806895C: .4byte gButtonInput
_08068960:
	bl LowerMusicVolume
	movs r1, #2
_08068966:
	adds r0, r1, #0
	bl StartColorFading
_0806896C:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
