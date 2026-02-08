	.include "asm/macros.inc"

	.syntax unified

	thumb_func_start DMA2InterruptCode
DMA2InterruptCode: @ 0x080030B8
	push {r4, lr}
	ldr r3, _08003100 @ =gMusicInfo
	ldrb r0, [r3, #0x10]
	adds r0, #1
	strb r0, [r3, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r3, #0xe]
	cmp r0, r1
	bne _080030F8
	ldr r0, _08003104 @ =0x040000C4
	ldr r1, _08003108 @ =0x84400004
	str r1, [r0]
	adds r0, #0xc
	str r1, [r0]
	ldr r2, _0800310C @ =0x040000C6
	movs r4, #0xa0
	lsls r4, r4, #3
	adds r0, r4, #0
	strh r0, [r2]
	ldr r1, _08003110 @ =0x040000D2
	strh r0, [r1]
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r0, r4, #0
	strh r0, [r2]
	movs r2, #0xf6
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	strb r0, [r3, #0x10]
_080030F8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003100: .4byte gMusicInfo
_08003104: .4byte 0x040000C4
_08003108: .4byte 0x84400004
_0800310C: .4byte 0x040000C6
_08003110: .4byte 0x040000D2

	thumb_func_start unk_3114
unk_3114: @ 0x08003114
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08003178 @ =gMusicInfo
	ldrb r4, [r5, #1]
	cmp r4, #0
	bne _08003170
	movs r0, #1
	strb r0, [r5, #1]
	ldr r0, _0800317C @ =0x04000064
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #5
	movs r2, #8
	strb r2, [r0]
	adds r0, #3
	strh r1, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r0, #9
	strb r2, [r0]
	adds r0, #3
	strh r1, [r0]
	adds r0, #0x48
	ldr r1, _08003180 @ =0x84400004
	str r1, [r0]
	adds r0, #0xc
	str r1, [r0]
	subs r0, #0xa
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	str r4, [sp]
	ldr r0, _08003184 @ =0x00000C24
	adds r1, r5, r0
	ldr r2, _08003188 @ =0x05000300
	mov r0, sp
	bl CpuSet
	ldr r0, _0800318C @ =0x04000084
	strb r4, [r0]
	strb r4, [r5, #1]
_08003170:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003178: .4byte gMusicInfo
_0800317C: .4byte 0x04000064
_08003180: .4byte 0x84400004
_08003184: .4byte 0x00000C24
_08003188: .4byte 0x05000300
_0800318C: .4byte 0x04000084

	thumb_func_start unk_3190
unk_3190: @ 0x08003190
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	mov r1, sp
	adds r1, #3
	movs r0, #0
	strb r0, [r1]
	cmp r2, #0
	bne _080031B2
	add r0, sp, #4
	strb r2, [r0]
	b _080031BA
_080031B2:
	add r1, sp, #4
	movs r0, #2
	strb r0, [r1]
	adds r0, r1, #0
_080031BA:
	mov r3, sp
	adds r3, #1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r2, [r3]
	ldr r1, _080031F8 @ =0x00000008
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	adds r4, r1, #0
	cmp r2, r0
	bls _080031D2
	b _0800331C
_080031D2:
	ldrb r0, [r3]
	movs r1, #0x4d
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080031E2
	b _08003304
_080031E2:
	ldrb r0, [r3]
	cmp r0, #0
	bne _08003210
	ldr r0, _080031FC @ =gMusicInfo
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08003204
	ldr r0, _08003200 @ =0x080A8CDC
	ldr r6, [r0, #0xc]
	b _0800321E
	.align 2, 0
_080031F8: .4byte 0x00000008
_080031FC: .4byte gMusicInfo
_08003200: .4byte 0x080A8CDC
_08003204:
	ldr r1, _0800320C @ =0x080A8CDC
	ldr r6, [r1]
	b _0800321E
	.align 2, 0
_0800320C: .4byte 0x080A8CDC
_08003210:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0800332C @ =0x080A8CDC
	adds r0, r0, r2
	ldr r6, [r0]
_0800321E:
	ldrb r0, [r6, #0x1c]
	cmp r0, #0
	bne _08003304
	ldrb r0, [r6, #0x1c]
	movs r4, #1
	strb r4, [r6, #0x1c]
	ldrb r0, [r6, #0x1e]
	adds r2, r4, #0
	ands r2, r0
	cmp r2, #0
	bne _080032FC
	ldrb r1, [r6]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080032FC
	mov r1, sp
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _08003252
	ldrb r1, [r6, #0x1e]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080032FC
_08003252:
	ldrb r0, [r6, #0x1e]
	strb r4, [r6, #0x1e]
	mov r0, sp
	strb r2, [r0]
	ldr r4, [r6, #0x18]
	ldrb r1, [r0]
	ldrb r0, [r6, #1]
	cmp r1, r0
	bhs _080032FC
	movs r2, #2
	add r2, sp
	mov sb, r2
	mov r8, sp
_0800326C:
	adds r2, r4, #0
	adds r2, #0x34
	ldrb r1, [r2]
	movs r0, #0xc0
	ands r0, r1
	movs r1, #0x50
	adds r1, r1, r4
	mov sl, r1
	cmp r0, #0
	bne _080032EA
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0800329A
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	subs r0, #1
	mov r2, sb
	strb r0, [r2]
	ldr r0, [r4, #0x4c]
	ldrb r1, [r2]
	bl ClearRegistersForPsg
_0800329A:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _080032EA
	ldr r4, [r4, #0x48]
	cmp r4, #0
	beq _080032EA
	ldr r3, _08003330 @ =0x03003504
	mov r5, sp
	adds r5, #3
	movs r7, #0
_080032AE:
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	str r4, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #4
	adds r1, r4, #0
	movs r2, #0x34
	str r3, [sp, #8]
	bl memcpy
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrb r0, [r4]
	strb r7, [r4]
	str r7, [r4, #0x28]
	ldr r0, [r4, #0x30]
	str r7, [r4, #0x30]
	str r7, [r4, #0x2c]
	adds r4, r0, #0
	ldr r3, [sp, #8]
	cmp r4, #0
	bne _080032AE
_080032EA:
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r4, sl
	ldrb r1, [r1]
	ldrb r0, [r6, #1]
	cmp r1, r0
	blo _0800326C
_080032FC:
	ldrb r0, [r6, #0x1c]
	movs r0, #0
	strb r0, [r6, #0x1c]
	ldr r4, _08003334 @ =0x00000008
_08003304:
	mov r2, sp
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r2, #1]
	mov r3, sp
	adds r3, #1
	ldrb r1, [r3]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhi _0800331C
	b _080031D2
_0800331C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800332C: .4byte 0x080A8CDC
_08003330: .4byte 0x03003504
_08003334: .4byte 0x00000008

	thumb_func_start unk_3338
unk_3338: @ 0x08003338
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	mov r1, sp
	adds r1, #3
	movs r0, #0
	strb r0, [r1]
	cmp r2, #0
	bne _0800335A
	add r0, sp, #4
	strb r2, [r0]
	b _08003362
_0800335A:
	add r1, sp, #4
	movs r0, #2
	strb r0, [r1]
	adds r0, r1, #0
_08003362:
	mov r3, sp
	adds r3, #1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r2, [r3]
	ldr r1, _080033A4 @ =0x00000008
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	adds r4, r1, #0
	cmp r2, r0
	bls _0800337A
	b _0800347A
_0800337A:
	ldr r0, _080033A8 @ =0x080A8CDC
	mov sl, r0
_0800337E:
	ldrb r0, [r3]
	movs r1, #0x4d
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08003464
	ldrb r0, [r3]
	cmp r0, #0
	bne _080033B4
	ldr r0, _080033AC @ =gMusicInfo
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _080033B0
	mov r1, sl
	ldr r6, [r1, #0xc]
	b _080033C0
	.align 2, 0
_080033A4: .4byte 0x00000008
_080033A8: .4byte 0x080A8CDC
_080033AC: .4byte gMusicInfo
_080033B0:
	mov r0, sl
	b _080033BE
_080033B4:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
_080033BE:
	ldr r6, [r0]
_080033C0:
	ldrb r0, [r6, #0x1c]
	adds r2, r0, #0
	cmp r2, #0
	bne _08003464
	ldrb r0, [r6, #0x1c]
	movs r3, #0
	movs r0, #1
	strb r0, [r6, #0x1c]
	ldrb r1, [r6, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _0800345C
	ldrb r1, [r6, #0x1e]
	movs r0, #0xfe
	ands r0, r1
	ldrb r1, [r6, #0x1e]
	strb r0, [r6, #0x1e]
	ldrb r1, [r6, #0x1e]
	movs r0, #2
	orrs r1, r0
	ldrb r0, [r6, #0x1e]
	orrs r1, r3
	strb r1, [r6, #0x1e]
	mov r0, sp
	strb r2, [r0]
	ldr r2, [r6, #0x18]
	ldrb r1, [r0]
	ldrb r0, [r6, #1]
	cmp r1, r0
	bhs _0800345C
	mov r7, sp
_080033FE:
	adds r0, r2, #0
	adds r0, #0x34
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	movs r1, #0x50
	adds r1, r1, r2
	mov r8, r1
	cmp r0, #0
	bne _0800344C
	ldr r0, [r2, #0x48]
	cmp r0, #0
	beq _0800344C
	ldr r4, [r2, #0x48]
	cmp r4, #0
	beq _0800344C
	ldr r0, _0800348C @ =0x03003504
	mov sb, r0
	mov r5, sp
	adds r5, #3
_08003426:
	adds r0, r4, #0
	bl unk_1e14
	ldrb r0, [r5]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	add r1, sb
	adds r1, #4
	adds r0, r4, #0
	movs r2, #0x34
	bl memcpy
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r4, [r4, #0x30]
	cmp r4, #0
	bne _08003426
_0800344C:
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	mov r2, r8
	ldrb r1, [r7]
	ldrb r0, [r6, #1]
	cmp r1, r0
	blo _080033FE
_0800345C:
	ldrb r0, [r6, #0x1c]
	movs r0, #0
	strb r0, [r6, #0x1c]
	ldr r4, _08003490 @ =0x00000008
_08003464:
	mov r1, sp
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	mov r3, sp
	adds r3, #1
	ldrb r1, [r3]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bls _0800337E
_0800347A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800348C: .4byte 0x03003504
_08003490: .4byte 0x00000008

	thumb_func_start Music_Empty2
Music_Empty2: @ 0x08003494
	bx lr
	.align 2, 0

	thumb_func_start CheckSetNewMusicTrack
CheckSetNewMusicTrack: @ 0x08003498
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r5, _080034E4 @ =gMusicInfo
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _080034DC
	cmp r4, #0xc
	beq _080034DC
	ldrb r6, [r5, #1]
	cmp r6, #0
	bne _080034DC
	movs r0, #1
	strb r0, [r5, #1]
	ldr r0, _080034E8 @ =0x080A8CDC
	ldr r2, [r0]
	cmp r4, #0
	bne _080034C2
	ldr r4, _080034EC @ =0x000001F7
_080034C2:
	ldr r1, _080034F0 @ =0x080A8D3C
	lsls r0, r4, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r2, #0x10]
	cmp r1, r0
	beq _080034DA
	adds r0, r2, #0
	movs r1, #0x1e
	bl ApplyMusicSoundFading
	strh r4, [r5, #0x22]
_080034DA:
	strb r6, [r5, #1]
_080034DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080034E4: .4byte gMusicInfo
_080034E8: .4byte 0x080A8CDC
_080034EC: .4byte 0x000001F7
_080034F0: .4byte 0x080A8D3C

	thumb_func_start CheckPlayNewMusicTrack
CheckPlayNewMusicTrack: @ 0x080034F4
	push {r4, r5, lr}
	ldr r4, _0800352C @ =gMusicInfo
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r5, [r0]
	cmp r5, #0
	bne _08003526
	ldrh r0, [r4, #0x22]
	cmp r0, #0
	beq _08003526
	ldr r0, _08003530 @ =0x080A8CDC
	ldr r0, [r0]
	ldr r2, _08003534 @ =0x080A8D3C
	ldrh r1, [r4, #0x22]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r1, [r1]
	bl InitTrack
	adds r0, r4, #0
	adds r0, #0x20
	strb r5, [r0]
	ldrh r0, [r4, #0x22]
	strh r0, [r4, #0x1c]
	strh r5, [r4, #0x22]
_08003526:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800352C: .4byte gMusicInfo
_08003530: .4byte 0x080A8CDC
_08003534: .4byte 0x080A8D3C

	thumb_func_start PlayMusic
PlayMusic: @ 0x08003538
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r2, _08003594 @ =gMusicInfo
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0800354C
	b _080036B0
_0800354C:
	movs r0, #1
	strb r0, [r2, #1]
	adds r0, r2, #0
	adds r0, #0x21
	strb r3, [r0]
	ldr r0, _08003598 @ =0x080A8D3C
	lsls r1, r5, #3
	adds r0, r1, r0
	ldr r6, [r0]
	adds r7, r1, #0
	cmp r3, #0
	beq _08003630
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _080035A0
	ldr r3, _0800359C @ =0x080A8CDC
	ldrh r2, [r2, #0x1c]
	cmp r5, r2
	bne _08003584
	ldr r0, [r3]
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08003584
	b _080036AA
_08003584:
	ldr r0, [r3, #0xc]
	ldrb r1, [r0, #0x1e]
	movs r0, #2
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _080035C4
	b _080035C8
	.align 2, 0
_08003594: .4byte gMusicInfo
_08003598: .4byte 0x080A8D3C
_0800359C: .4byte 0x080A8CDC
_080035A0:
	ldr r3, _080035EC @ =0x080A8CDC
	ldrh r2, [r2, #0x1e]
	cmp r5, r2
	bne _080035B4
	ldr r0, [r3, #0xc]
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080036AA
_080035B4:
	ldr r0, [r3]
	ldrb r1, [r0, #0x1e]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
_080035C4:
	cmp r1, #0
	bne _080035F4
_080035C8:
	ldr r4, [r3]
	ldr r3, [r3, #0xc]
	ldrb r1, [r4]
	movs r0, #0x1a
	ands r0, r1
	cmp r0, #2
	bne _080035DC
	ldr r0, [r4, #0x10]
	cmp r6, r0
	beq _080036AA
_080035DC:
	ldr r2, _080035F0 @ =gMusicInfo
	adds r1, r2, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	strh r5, [r2, #0x1c]
	b _08003614
	.align 2, 0
_080035EC: .4byte 0x080A8CDC
_080035F0: .4byte gMusicInfo
_080035F4:
	ldr r4, [r3, #0xc]
	ldr r3, [r3]
	ldrb r1, [r4]
	movs r0, #0x1a
	ands r0, r1
	cmp r0, #2
	bne _08003608
	ldr r0, [r4, #0x10]
	cmp r6, r0
	beq _080036AA
_08003608:
	ldr r2, _0800362C @ =gMusicInfo
	adds r1, r2, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	strh r5, [r2, #0x1e]
_08003614:
	ldrb r0, [r3]
	cmp r0, #1
	bls _0800369C
	ldrb r1, [r3, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800369C
	adds r0, r3, #0
	bl StopMusicOrSound
	b _0800369C
	.align 2, 0
_0800362C: .4byte gMusicInfo
_08003630:
	ldrh r2, [r2, #0x1c]
	cmp r5, r2
	bne _0800365E
	ldr r0, _08003650 @ =0x080A8CDC
	ldr r2, [r0]
	ldrb r1, [r2, #0x1e]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08003654
	adds r0, r2, #0
	bl StopMusicOrSound
	b _0800365E
	.align 2, 0
_08003650: .4byte 0x080A8CDC
_08003654:
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080036AA
_0800365E:
	ldr r0, _080036B8 @ =0x080A8CDC
	ldr r4, [r0]
	ldr r3, [r0, #0xc]
	ldrb r1, [r4]
	movs r0, #0x1a
	ands r0, r1
	cmp r0, #2
	bne _08003674
	ldr r0, [r4, #0x10]
	cmp r6, r0
	beq _080036AA
_08003674:
	ldrb r0, [r3]
	cmp r0, #1
	bls _0800368A
	ldrb r1, [r3, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800368A
	adds r0, r3, #0
	bl StopMusicOrSound
_0800368A:
	ldr r0, _080036BC @ =0x080A8D3C
	adds r0, r7, r0
	ldr r6, [r0]
	ldr r2, _080036C0 @ =gMusicInfo
	adds r1, r2, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	strh r5, [r2, #0x1c]
_0800369C:
	ldr r1, _080036C0 @ =gMusicInfo
	movs r0, #0
	strb r0, [r1, #1]
	adds r0, r4, #0
	adds r1, r6, #0
	bl InitTrack
_080036AA:
	ldr r1, _080036C0 @ =gMusicInfo
	movs r0, #0
	strb r0, [r1, #1]
_080036B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080036B8: .4byte 0x080A8CDC
_080036BC: .4byte 0x080A8D3C
_080036C0: .4byte gMusicInfo

	thumb_func_start unk_36c4
unk_36c4: @ 0x080036C4
	push {lr}
	ldr r0, _080036D8 @ =gMusicInfo
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _080036E0
	ldr r0, _080036DC @ =0x080A8CDC
	ldr r0, [r0]
	b _080036E4
	.align 2, 0
_080036D8: .4byte gMusicInfo
_080036DC: .4byte 0x080A8CDC
_080036E0:
	ldr r0, _080036EC @ =0x080A8CDC
	ldr r0, [r0, #0xc]
_080036E4:
	bl StopMusicOrSound
	pop {r0}
	bx r0
	.align 2, 0
_080036EC: .4byte 0x080A8CDC

	thumb_func_start FadeMusic
FadeMusic: @ 0x080036F0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003708 @ =gMusicInfo
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08003710
	ldr r0, _0800370C @ =0x080A8CDC
	ldr r0, [r0]
	b _08003714
	.align 2, 0
_08003708: .4byte gMusicInfo
_0800370C: .4byte 0x080A8CDC
_08003710:
	ldr r0, _08003720 @ =0x080A8CDC
	ldr r0, [r0, #0xc]
_08003714:
	cmp r1, #0
	beq _08003724
	bl ApplyMusicSoundFading
	b _08003728
	.align 2, 0
_08003720: .4byte 0x080A8CDC
_08003724:
	bl StopMusicOrSound
_08003728:
	pop {r0}
	bx r0

	thumb_func_start unk_372c
unk_372c: @ 0x0800372C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r3, #0
	bne _08003748
	adds r0, r1, #0
	adds r1, r2, #0
	bl PlayMusic
	b _0800376E
_08003748:
	ldr r0, _08003758 @ =gMusicInfo
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08003760
	ldr r0, _0800375C @ =0x080A8CDC
	ldr r0, [r0]
	b _08003764
	.align 2, 0
_08003758: .4byte gMusicInfo
_0800375C: .4byte 0x080A8CDC
_08003760:
	ldr r0, _08003774 @ =0x080A8CDC
	ldr r0, [r0, #0xc]
_08003764:
	strh r1, [r0, #0x20]
	strb r2, [r0, #0x1f]
	adds r1, r3, #0
	bl ApplyMusicSoundFading
_0800376E:
	pop {r0}
	bx r0
	.align 2, 0
_08003774: .4byte 0x080A8CDC

	thumb_func_start unk_3778
unk_3778: @ 0x08003778
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _080037D4 @ =gMusicInfo
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _08003790
	b _0800389C
_08003790:
	movs r0, #1
	strb r0, [r3, #1]
	adds r0, r3, #0
	adds r0, #0x21
	strb r2, [r0]
	ldr r1, _080037D8 @ =0x080A8D3C
	lsls r0, r5, #3
	adds r0, r0, r1
	ldr r6, [r0]
	cmp r2, #0
	beq _0800380C
	adds r0, r3, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _080037E0
	ldr r2, _080037DC @ =0x080A8CDC
	ldrh r3, [r3, #0x1c]
	cmp r5, r3
	bne _080037C4
	ldr r0, [r2]
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08003896
_080037C4:
	ldr r0, [r2, #0xc]
	ldrb r1, [r0, #0x1e]
	movs r0, #2
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _08003822
	b _08003826
	.align 2, 0
_080037D4: .4byte gMusicInfo
_080037D8: .4byte 0x080A8D3C
_080037DC: .4byte 0x080A8CDC
_080037E0:
	ldr r2, _08003808 @ =0x080A8CDC
	ldrh r3, [r3, #0x1e]
	cmp r5, r3
	bne _080037F4
	ldr r0, [r2, #0xc]
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08003896
_080037F4:
	ldr r0, [r2]
	ldrb r1, [r0, #0x1e]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	b _08003822
	.align 2, 0
_08003808: .4byte 0x080A8CDC
_0800380C:
	ldr r2, _08003848 @ =0x080A8CDC
	ldrh r3, [r3, #0x1c]
	cmp r5, r3
	bne _08003820
	ldr r0, [r2]
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08003896
_08003820:
	movs r1, #0
_08003822:
	cmp r1, #0
	bne _08003850
_08003826:
	ldr r4, [r2]
	ldr r3, [r2, #0xc]
	ldrb r1, [r4]
	movs r0, #0x1a
	ands r0, r1
	cmp r0, #2
	bne _0800383A
	ldr r0, [r4, #0x10]
	cmp r6, r0
	beq _08003896
_0800383A:
	ldr r2, _0800384C @ =gMusicInfo
	adds r1, r2, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	strh r5, [r2, #0x1c]
	b _08003870
	.align 2, 0
_08003848: .4byte 0x080A8CDC
_0800384C: .4byte gMusicInfo
_08003850:
	ldr r4, [r2, #0xc]
	ldr r3, [r2]
	ldrb r1, [r4]
	movs r0, #0x1a
	ands r0, r1
	cmp r0, #2
	bne _08003864
	ldr r0, [r4, #0x10]
	cmp r6, r0
	beq _08003896
_08003864:
	ldr r2, _080038A4 @ =gMusicInfo
	adds r1, r2, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	strh r5, [r2, #0x1e]
_08003870:
	ldrb r0, [r3]
	cmp r0, #1
	bls _08003886
	ldrb r1, [r3, #0x1e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08003886
	adds r0, r3, #0
	bl StopMusicOrSound
_08003886:
	ldr r1, _080038A4 @ =gMusicInfo
	movs r0, #0
	strb r0, [r1, #1]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl InitFadingMusic
_08003896:
	ldr r1, _080038A4 @ =gMusicInfo
	movs r0, #0
	strb r0, [r1, #1]
_0800389C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080038A4: .4byte gMusicInfo

	thumb_func_start unk_38a8
unk_38a8: @ 0x080038A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	str r6, [sp]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r5, _08003908 @ =gMusicInfo
	ldrb r7, [r5, #1]
	cmp r7, #0
	bne _080039B2
	movs r0, #1
	mov sb, r0
	mov r1, sb
	strb r1, [r5, #1]
	ldr r1, _0800390C @ =0x080A8D3C
	lsls r0, r6, #3
	adds r0, r0, r1
	ldr r0, [r0]
	mov sl, r0
	mov r0, r8
	cmp r0, #0
	bne _080038EA
	movs r0, #1
	bl unk_3190
	bl unk_27a8
_080038EA:
	mov r1, r8
	cmp r1, #2
	bne _08003928
	adds r1, r5, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0
	bne _08003914
	ldr r0, _08003910 @ =0x080A8CDC
	ldr r4, [r0]
	adds r3, r4, #0
	strb r7, [r1]
	strh r6, [r5, #0x1c]
	b _0800398C
	.align 2, 0
_08003908: .4byte gMusicInfo
_0800390C: .4byte 0x080A8D3C
_08003910: .4byte 0x080A8CDC
_08003914:
	ldr r0, _08003924 @ =0x080A8CDC
	ldr r4, [r0, #0xc]
	adds r3, r4, #0
	mov r0, sb
	strb r0, [r1]
	strh r6, [r5, #0x1e]
	b _0800398C
	.align 2, 0
_08003924: .4byte 0x080A8CDC
_08003928:
	adds r2, r5, #0
	adds r2, #0x20
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800395C
	ldr r0, _08003958 @ =0x080A8CDC
	ldr r4, [r0, #0xc]
	ldr r3, [r0]
	ldrb r1, [r4]
	movs r0, #0x1a
	ands r0, r1
	cmp r0, #2
	bne _08003948
	ldr r0, [r4, #0x10]
	cmp sl, r0
	beq _080039AC
_08003948:
	mov r1, sb
	strb r1, [r2]
	mov r0, r8
	cmp r0, #0
	beq _08003980
	strh r6, [r5, #0x1e]
	b _08003980
	.align 2, 0
_08003958: .4byte 0x080A8CDC
_0800395C:
	ldr r0, _080039C4 @ =0x080A8CDC
	ldr r4, [r0]
	ldr r3, [r0, #0xc]
	ldrb r1, [r4]
	movs r0, #0x1a
	ands r0, r1
	cmp r0, #2
	bne _08003972
	ldr r0, [r4, #0x10]
	cmp sl, r0
	beq _080039AC
_08003972:
	strb r7, [r2]
	mov r1, r8
	cmp r1, #0
	beq _08003980
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r5, #0x1c]
_08003980:
	adds r2, r4, #0
	adds r2, #0x28
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
_0800398C:
	mov r1, r8
	cmp r1, #0
	beq _0800399E
	ldrb r0, [r3]
	cmp r0, #1
	bls _0800399E
	adds r0, r3, #0
	bl StopMusicOrSound
_0800399E:
	ldr r1, _080039C8 @ =gMusicInfo
	movs r0, #0
	strb r0, [r1, #1]
	adds r0, r4, #0
	mov r1, sl
	bl InitTrack
_080039AC:
	ldr r1, _080039C8 @ =gMusicInfo
	movs r0, #0
	strb r0, [r1, #1]
_080039B2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080039C4: .4byte 0x080A8CDC
_080039C8: .4byte gMusicInfo

	thumb_func_start unk_39cc
unk_39cc: @ 0x080039CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _080039FC @ =gMusicInfo
	ldrb r5, [r4, #1]
	cmp r5, #0
	bne _08003A6C
	movs r6, #1
	strb r6, [r4, #1]
	movs r0, #1
	bl unk_3338
	adds r2, r4, #0
	adds r2, #0x20
	ldrb r0, [r2]
	cmp r0, #0
	bne _08003A04
	ldr r0, _08003A00 @ =0x080A8CDC
	ldr r7, [r0, #0xc]
	ldr r1, [r0]
	strb r6, [r2]
	ldrh r4, [r4, #0x1e]
	b _08003A0E
	.align 2, 0
_080039FC: .4byte gMusicInfo
_08003A00: .4byte 0x080A8CDC
_08003A04:
	ldr r0, _08003A78 @ =0x080A8CDC
	ldr r7, [r0]
	ldr r1, [r0, #0xc]
	strb r5, [r2]
	ldrh r4, [r4, #0x1c]
_08003A0E:
	ldrb r0, [r1]
	cmp r0, #1
	bls _08003A1A
	adds r0, r1, #0
	bl StopMusicOrSound
_08003A1A:
	ldr r1, _08003A7C @ =0x080A8D3C
	lsls r0, r4, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r6, _08003A80 @ =gMusicInfo
	movs r0, #0
	mov r8, r0
	mov r0, r8
	strb r0, [r6, #1]
	adds r0, r7, #0
	bl InitTrack
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _08003A3C
	bl SoundPlay
_08003A3C:
	ldrb r1, [r6, #0xb]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08003A68
	ldr r4, _08003A78 @ =0x080A8CDC
	ldr r0, [r4]
	ldr r5, _08003A84 @ =0x0000FFFF
	adds r1, r5, #0
	movs r2, #0x48
	bl unk_2d90
	ldr r0, [r4, #0xc]
	adds r1, r5, #0
	movs r2, #0x48
	bl unk_2d90
	ldr r0, [r4, #0x54]
	adds r1, r5, #0
	movs r2, #0x48
	bl unk_2d90
_08003A68:
	mov r0, r8
	strb r0, [r6, #1]
_08003A6C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003A78: .4byte 0x080A8CDC
_08003A7C: .4byte 0x080A8D3C
_08003A80: .4byte gMusicInfo
_08003A84: .4byte 0x0000FFFF

	thumb_func_start unk_3a88
unk_3a88: @ 0x08003A88
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08003AA0 @ =gMusicInfo
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08003AA8
	ldr r0, _08003AA4 @ =0x080A8CDC
	ldr r0, [r0]
	b _08003AAC
	.align 2, 0
_08003AA0: .4byte gMusicInfo
_08003AA4: .4byte 0x080A8CDC
_08003AA8:
	ldr r0, _08003AB8 @ =0x080A8CDC
	ldr r0, [r0, #0xc]
_08003AAC:
	cmp r1, #0
	beq _08003ABC
	bl ApplyMusicSoundFading
	b _08003AC0
	.align 2, 0
_08003AB8: .4byte 0x080A8CDC
_08003ABC:
	bl StopMusicOrSound
_08003AC0:
	pop {r0}
	bx r0

	thumb_func_start unk_3ac4
unk_3ac4: @ 0x08003AC4
	push {r4, r5, lr}
	ldr r0, _08003AE8 @ =gMusicInfo
	ldrb r1, [r0, #1]
	adds r5, r0, #0
	cmp r1, #0
	bne _08003B0C
	movs r4, #1
	strb r4, [r5, #1]
	adds r2, r5, #0
	adds r2, #0x20
	ldrb r1, [r2]
	cmp r1, #0
	bne _08003AF0
	ldr r0, _08003AEC @ =0x080A8CDC
	ldr r3, [r0]
	strb r1, [r2]
	ldrh r0, [r5, #0x1c]
	b _08003AF8
	.align 2, 0
_08003AE8: .4byte gMusicInfo
_08003AEC: .4byte 0x080A8CDC
_08003AF0:
	ldr r0, _08003B14 @ =0x080A8CDC
	ldr r3, [r0, #0xc]
	strb r4, [r2]
	ldrh r0, [r5, #0x1e]
_08003AF8:
	ldr r1, _08003B18 @ =0x080A8D3C
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r4, #0
	strb r4, [r5, #1]
	adds r0, r3, #0
	bl InitTrack
	strb r4, [r5, #1]
_08003B0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003B14: .4byte 0x080A8CDC
_08003B18: .4byte 0x080A8D3C

	thumb_func_start SoundPlay_3b1c
SoundPlay_3b1c: @ 0x08003B1C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08003B40 @ =gMusicInfo
	ldrb r1, [r0, #1]
	adds r6, r0, #0
	cmp r1, #0
	bne _08003B68
	movs r0, #1
	strb r0, [r6, #1]
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08003B48
	ldr r0, _08003B44 @ =0x080A8CDC
	ldr r5, [r0, #0xc]
	b _08003B4C
	.align 2, 0
_08003B40: .4byte gMusicInfo
_08003B44: .4byte 0x080A8CDC
_08003B48:
	ldr r0, _08003B70 @ =0x080A8CDC
	ldr r5, [r0]
_08003B4C:
	ldr r1, _08003B74 @ =0x080A8D3C
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r4, #0
	strb r4, [r6, #1]
	adds r0, r5, #0
	bl InitTrack
	ldrb r1, [r5, #0x1e]
	movs r0, #2
	orrs r0, r1
	strb r0, [r5, #0x1e]
	strb r4, [r6, #1]
_08003B68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003B70: .4byte 0x080A8CDC
_08003B74: .4byte 0x080A8D3C

	thumb_func_start unk_3b78
unk_3b78: @ 0x08003B78
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08003B9C @ =gMusicInfo
	ldrb r1, [r0, #1]
	adds r5, r0, #0
	cmp r1, #0
	bne _08003BC6
	movs r0, #1
	strb r0, [r5, #1]
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08003BA4
	ldr r0, _08003BA0 @ =0x080A8CDC
	ldr r2, [r0, #0xc]
	b _08003BA8
	.align 2, 0
_08003B9C: .4byte gMusicInfo
_08003BA0: .4byte 0x080A8CDC
_08003BA4:
	ldr r0, _08003BCC @ =0x080A8CDC
	ldr r2, [r0]
_08003BA8:
	adds r1, r0, #0
	ldrb r0, [r2]
	cmp r0, #2
	bne _08003BB2
	ldr r2, [r1, #0x3c]
_08003BB2:
	ldr r1, _08003BD0 @ =0x080A8D3C
	lsls r0, r3, #3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r4, #0
	strb r4, [r5, #1]
	adds r0, r2, #0
	bl InitTrack
	strb r4, [r5, #1]
_08003BC6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003BCC: .4byte 0x080A8CDC
_08003BD0: .4byte 0x080A8D3C

	thumb_func_start unk_3bd4
unk_3bd4: @ 0x08003BD4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r2, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r2, #0x63
	bhi _08003BF2
	cmp r1, #0
	bne _08003C10
	adds r0, r2, #0
	movs r1, #1
	bl PlayMusic
	b _08003C10
_08003BF2:
	cmp r1, #0
	bne _08003C10
	adds r0, r2, #0
	subs r0, #0xaa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _08003C0A
	adds r0, r2, #0
	bl SoundPlay_3b1c
	b _08003C10
_08003C0A:
	adds r0, r3, #0
	bl SoundPlay
_08003C10:
	pop {r0}
	bx r0

	thumb_func_start unk_3c14
unk_3c14: @ 0x08003C14
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0x63
	bhi _08003C2C
	cmp r1, #0
	bne _08003C30
	bl unk_36c4
	b _08003C30
_08003C2C:
	bl SoundStop
_08003C30:
	pop {r0}
	bx r0

	thumb_func_start DecreaseMusicVolume
DecreaseMusicVolume: @ 0x08003C34
	push {r4, r5, r6, lr}
	movs r0, #0
	bl unk_3190
	ldr r2, _08003C74 @ =gMusicInfo
	ldrb r1, [r2, #0xb]
	movs r0, #0x81
	orrs r0, r1
	strb r0, [r2, #0xb]
	ldr r5, _08003C78 @ =0x080A8CDC
	ldr r0, [r5]
	ldr r6, _08003C7C @ =0x0000FFFF
	ldr r4, _08003C80 @ =0x00000050
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r6, #0
	adds r2, r4, #0
	bl unk_2d90
	ldr r0, [r5, #0xc]
	adds r1, r6, #0
	adds r2, r4, #0
	bl unk_2d90
	ldr r0, [r5, #0x54]
	adds r1, r6, #0
	adds r2, r4, #0
	bl unk_2d90
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003C74: .4byte gMusicInfo
_08003C78: .4byte 0x080A8CDC
_08003C7C: .4byte 0x0000FFFF
_08003C80: .4byte 0x00000050

	thumb_func_start ResetMusicVolume
ResetMusicVolume: @ 0x08003C84
	push {r4, r5, r6, lr}
	ldr r4, _08003CC8 @ =0x080A8CDC
	ldr r0, [r4]
	ldr r5, _08003CCC @ =0x0000FFFF
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r5, #0
	adds r2, r6, #0
	bl unk_2d90
	ldr r0, [r4, #0xc]
	adds r1, r5, #0
	adds r2, r6, #0
	bl unk_2d90
	ldr r0, [r4, #0x54]
	adds r1, r5, #0
	adds r2, r6, #0
	bl unk_2d90
	ldr r2, _08003CD0 @ =gMusicInfo
	ldrb r1, [r2, #0xb]
	movs r0, #0x7f
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0xb]
	movs r0, #0
	bl unk_3338
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003CC8: .4byte 0x080A8CDC
_08003CCC: .4byte 0x0000FFFF
_08003CD0: .4byte gMusicInfo

	thumb_func_start unk_3cd4
unk_3cd4: @ 0x08003CD4
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r5, _08003CF8 @ =gMusicInfo
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _08003CF2
	movs r0, #1
	strb r0, [r5, #1]
	movs r4, #0
	strh r1, [r5, #2]
	adds r0, r1, #0
	bl SoundPlay
	strb r4, [r5, #1]
_08003CF2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003CF8: .4byte gMusicInfo

	thumb_func_start unk_3cfc
unk_3cfc: @ 0x08003CFC
	push {r4, r5, lr}
	ldr r5, _08003D20 @ =gMusicInfo
	ldrb r1, [r5, #1]
	cmp r1, #0
	bne _08003D1A
	movs r0, #1
	strb r0, [r5, #1]
	movs r4, #0
	strh r1, [r5, #2]
	ldr r0, _08003D24 @ =0x080A8CDC
	ldr r0, [r0, #0x54]
	movs r1, #0x1e
	bl ApplyMusicSoundFading
	strb r4, [r5, #1]
_08003D1A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003D20: .4byte gMusicInfo
_08003D24: .4byte 0x080A8CDC

	thumb_func_start PlayCharacterAppearingSound
PlayCharacterAppearingSound: @ 0x08003D28
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r1, #0
	cmp r1, #0x21
	beq _08003D50
	cmp r1, #0x21
	bgt _08003D3E
	cmp r1, #1
	beq _08003D44
	b _08003D60
_08003D3E:
	cmp r0, #0x41
	beq _08003D5A
	b _08003D60
_08003D44:
	ldr r0, _08003D4C @ =0x000001F5
	bl SoundPlayNotAlreadyPlaying
	b _08003D60
	.align 2, 0
_08003D4C: .4byte 0x000001F5
_08003D50:
	movs r0, #0xfb
	lsls r0, r0, #1
	bl SoundPlayNotAlreadyPlaying
	b _08003D60
_08003D5A:
	ldr r0, _08003D64 @ =0x000001F7
	bl SoundPlayNotAlreadyPlaying
_08003D60:
	pop {r0}
	bx r0
	.align 2, 0
_08003D64: .4byte 0x000001F7
