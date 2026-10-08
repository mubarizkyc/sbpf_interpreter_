.globl entrypoint

fn_0000:
  ldxdw r0, [r5-0xff8]
  jgt r2, r3, jmp_0048
  ldxdw r5, [r5-0x1000]
  jgt r3, r5, jmp_0068
  sub64 r3, r2
  stxdw [r1+0x8], r3
  add64 r4, r2
  stxdw [r1+0x0], r4
  exit

jmp_0048:
  mov64 r1, r2
  mov64 r2, r3
  mov64 r3, r0
  call fn_45350

jmp_0068:
  mov64 r1, r3
  mov64 r2, r5
  mov64 r3, r0
  call fn_45270

fn_0088:
  lddw r2, data_2a90
  stxdw [r10-0x58], r2
  lddw r2, data_2a80
  stxdw [r10-0x60], r2
  mov64 r2, 0x0
  stxdw [r10-0x30], r2
  lddw r2, data_29a8
  stxdw [r10-0x50], r2
  mov64 r2, 0x2
  stxdw [r10-0x48], r2
  stxdw [r10-0x38], r2
  mov64 r2, r10
  add64 r2, -0x20
  stxdw [r10-0x40], r2
  lddw r2, 0x30c
  stxdw [r10-0x8], r2
  mov64 r2, r10
  add64 r2, -0x60
  stxdw [r10-0x10], r2
  lddw r2, 0x6407
  stxdw [r10-0x18], r2
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x50
  call fn_7d80
  exit

fn_0180:
  stxdw [r10-0x58], r3
  stxdw [r10-0x60], r2
  stxdw [r10-0x68], r1
  mov64 r1, 0x0
  stxdw [r10-0x30], r1
  lddw r1, data_29c8
  stxdw [r10-0x50], r1
  mov64 r1, 0x2
  stxdw [r10-0x48], r1
  stxdw [r10-0x38], r1
  mov64 r1, r10
  add64 r1, -0x20
  stxdw [r10-0x40], r1
  lddw r1, 0x30c
  stxdw [r10-0x8], r1
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0x10], r1
  lddw r1, 0x8b03
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x68
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x50
  call fn_7d80
  exit

fn_0270:
  ldxdw r3, [r2+0x8]
  jne r3, 0x0, jmp_02a0
  lddw r2, -0x8000000000000000
  stxdw [r1+0x0], r2
  ja jmp_0700

jmp_02a0:
  add64 r3, -0x1
  stxdw [r2+0x8], r3
  ldxdw r6, [r2+0x0]
  ldxdw r7, [r6+0x28]
  jgt r7, 0x7, jmp_0378
  lddw r2, 0x300000000
  ldxdw r2, [r2+0x0]
  mov64 r4, r2
  add64 r4, -0x18
  mov64 r3, 0x0
  mov64 r5, 0x1
  jgt r4, r2, jmp_0310
  mov64 r5, 0x0

jmp_0310:
  jne r5, 0x0, jmp_0320
  mov64 r3, r4

jmp_0320:
  lddw r0, 0x300007fe8
  jeq r2, 0x0, jmp_0348
  and64 r3, -0x8
  mov64 r0, r3

jmp_0348:
  lddw r2, 0x300000007
  jgt r0, r2, jmp_04b8

jmp_0360:
  mov64 r1, 0x8
  mov64 r2, 0x18
  call fn_37a08

jmp_0378:
  mov64 r8, r1
  add64 r7, -0x8
  stxdw [r6+0x28], r7
  ldxdw r9, [r6+0x20]
  mov64 r1, 0x8
  jgt r1, r9, jmp_06c0
  ldxdw r1, [r6+0x18]
  ldxdw r2, [r1+0x0]
  add64 r1, 0x8
  stxdw [r6+0x18], r1
  add64 r9, -0x8
  stxdw [r6+0x20], r9
  mov64 r1, r10
  add64 r1, -0x28
  call fn_33908
  ldxdw r0, [r10-0x20]
  ldxdw r2, [r10-0x28]
  mov64 r1, r8
  jne r2, 0x0, jmp_06e0
  jge r7, r0, jmp_04f0
  lddw r2, 0x300000000
  ldxdw r2, [r2+0x0]
  mov64 r4, r2
  add64 r4, -0x18
  mov64 r3, 0x0
  mov64 r5, 0x1
  jgt r4, r2, jmp_0460
  mov64 r5, 0x0

jmp_0460:
  jne r5, 0x0, jmp_0470
  mov64 r3, r4

jmp_0470:
  lddw r0, 0x300007fe8
  jeq r2, 0x0, jmp_0498
  and64 r3, -0x8
  mov64 r0, r3

jmp_0498:
  lddw r2, 0x300000007
  jgt r0, r2, jmp_04b8
  ja jmp_0360

jmp_04b8:
  lddw r2, 0x300000000
  stxdw [r2+0x0], r0
  lddw r2, -0x7ffffffffffffffa

jmp_04e0:
  stxdw [r0+0x0], r2
  ja jmp_06e0

jmp_04f0:
  sub64 r7, r0
  stxdw [r6+0x28], r7
  ldxdw r7, [r6+0x10]
  jgt r0, r7, jmp_0528
  mov64 r7, r0
  ldxdw r0, [r6+0x8]
  ja jmp_0640

jmp_0528:
  sub64 r0, r7
  ldxdw r2, [r6+0x0]
  sub64 r2, r7
  jge r2, r0, jmp_0588
  mov64 r1, r6
  mov64 r2, r7
  mov64 r3, r0
  mov64 r7, r0
  call fn_31d0
  mov64 r0, r7
  mov64 r1, r8
  ldxdw r7, [r6+0x10]

jmp_0588:
  ldxdw r4, [r6+0x8]
  mov64 r2, r4
  add64 r2, r7
  mov64 r3, 0x2
  jgt r3, r0, jmp_0618
  add64 r0, -0x1
  stxdw [r10-0x30], r0
  mov64 r1, r2
  mov64 r2, 0x0
  mov64 r3, r0
  mov64 r9, r4
  call fn_493f8
  mov64 r4, r9
  mov64 r1, r8
  ldxdw r2, [r10-0x30]
  add64 r7, r2
  mov64 r2, r4
  add64 r2, r7

jmp_0618:
  mov64 r3, 0x0
  stxb [r2+0x0], r3
  add64 r7, 0x1
  ldxdw r9, [r6+0x20]
  mov64 r0, r4

jmp_0640:
  stxdw [r6+0x10], r7
  jgt r7, r9, jmp_06c0
  sub64 r9, r7
  ldxdw r2, [r6+0x18]
  mov64 r3, r2
  add64 r3, r7
  jeq r7, 0x1, jmp_0708
  mov64 r1, r0
  stxdw [r10-0x38], r3
  mov64 r3, r7
  stxdw [r10-0x30], r0
  call fn_490d0
  ldxdw r3, [r10-0x38]
  ldxdw r0, [r10-0x30]
  mov64 r1, r8
  ja jmp_0718

jmp_06c0:
  lddw r1, data_2af0
  call fn_33928
  mov64 r1, r8

jmp_06e0:
  lddw r2, -0x7fffffffffffffff
  stxdw [r1+0x0], r2
  stxdw [r1+0x8], r0

jmp_0700:
  exit

jmp_0708:
  ldxb r2, [r2+0x0]
  stxb [r0+0x0], r2

jmp_0718:
  stxdw [r6+0x20], r9
  stxdw [r6+0x18], r3
  mov64 r2, 0x1
  stxdw [r6+0x8], r2
  mov64 r2, 0x0
  stxdw [r6+0x10], r2
  ldxdw r9, [r6+0x0]
  stxdw [r6+0x0], r2
  lddw r2, -0x8000000000000000
  jeq r9, r2, jmp_06e0
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r6, r0
  mov64 r2, r0
  mov64 r3, r7
  call fn_45510
  ldxdw r1, [r10-0x18]
  jeq r1, 0x0, jmp_08a8
  lddw r1, 0x300000000
  ldxdw r2, [r1+0x0]
  mov64 r4, r2
  add64 r4, -0x18
  mov64 r3, 0x0
  mov64 r5, 0x1
  mov64 r1, r8
  jgt r4, r2, jmp_0800
  mov64 r5, 0x0

jmp_0800:
  jne r5, 0x0, jmp_0810
  mov64 r3, r4

jmp_0810:
  lddw r0, 0x300007fe8
  jeq r2, 0x0, jmp_0838
  and64 r3, -0x8
  mov64 r0, r3

jmp_0838:
  lddw r2, 0x300000007
  jgt r0, r2, jmp_0858
  ja jmp_0360

jmp_0858:
  ldxdw r2, [r10-0x8]
  ldxdw r3, [r10-0x10]
  lddw r4, 0x300000000
  stxdw [r4+0x0], r0
  stxdw [r0+0x10], r2
  stxdw [r0+0x8], r3
  lddw r2, -0x7fffffffffffffff
  ja jmp_04e0

jmp_08a8:
  stxdw [r8+0x10], r7
  stxdw [r8+0x8], r6
  stxdw [r8+0x0], r9
  ja jmp_0700

fn_08c8:
  ldxdw r3, [r2+0x8]
  jne r3, 0x0, jmp_08f0
  mov64 r2, 0x0
  stxb [r1+0x1], r2
  ja jmp_0ab0

jmp_08f0:
  add64 r3, -0x1
  stxdw [r2+0x8], r3
  ldxdw r2, [r2+0x0]
  ldxdw r3, [r2+0x28]
  jne r3, 0x0, jmp_09c8
  lddw r2, 0x300000000
  ldxdw r2, [r2+0x0]
  mov64 r4, r2
  add64 r4, -0x18
  mov64 r3, 0x0
  mov64 r5, 0x1
  jgt r4, r2, jmp_0960
  mov64 r5, 0x0

jmp_0960:
  jne r5, 0x0, jmp_0970
  mov64 r3, r4

jmp_0970:
  lddw r0, 0x300007fe8
  jeq r2, 0x0, jmp_0998
  and64 r3, -0x8
  mov64 r0, r3

jmp_0998:
  lddw r2, 0x300000007
  jgt r0, r2, jmp_0a40
  mov64 r1, 0x8
  mov64 r2, 0x18
  call fn_37a08

jmp_09c8:
  add64 r3, -0x1
  stxdw [r2+0x28], r3
  ldxdw r3, [r2+0x20]
  jeq r3, 0x0, jmp_0a78
  add64 r3, -0x1
  ldxdw r4, [r2+0x18]
  ldxb r5, [r4+0x0]
  stxdw [r2+0x20], r3
  add64 r4, 0x1
  stxdw [r2+0x18], r4
  stxb [r1+0x2], r5
  mov64 r2, 0x1
  stxb [r1+0x1], r2
  mov64 r2, 0x0
  ja jmp_0ab0

jmp_0a40:
  lddw r2, 0x300000000
  stxdw [r2+0x0], r0
  lddw r2, -0x7ffffffffffffffa
  stxdw [r0+0x0], r2
  ja jmp_0aa0

jmp_0a78:
  mov64 r6, r1
  lddw r1, data_2af0
  call fn_33928
  mov64 r1, r6

jmp_0aa0:
  stxdw [r1+0x8], r0
  mov64 r2, 0x1

jmp_0ab0:
  stxb [r1+0x0], r2
  exit

fn_0ac0:
  mov64 r7, r3
  mov64 r6, r1
  mov64 r1, 0x52
  jgt r1, r7, jmp_0ae8
  jne r7, 0x163, jmp_0b18

jmp_0ae8:
  mov64 r1, 0x2
  stxw [r6+0x0], r1
  lddw r1, -0x7ffffffffffffffd
  stxdw [r6+0x8], r1
  ja jmp_1040

jmp_0b18:
  mov64 r1, r10
  add64 r1, -0x58
  stxdw [r10-0x140], r2
  mov64 r3, 0x52
  call fn_2d2b8
  ldxw r1, [r10-0x58]
  jeq r1, 0x2, jmp_0c40
  stxdw [r10-0x158], r1
  ldxdw r1, [r10-0x48]
  stxdw [r10-0x68], r1
  ldxdw r1, [r10-0x40]
  stxdw [r10-0x60], r1
  ldxdw r1, [r10-0x38]
  stxdw [r10-0x90], r1
  ldxdw r1, [r10-0x30]
  stxdw [r10-0x88], r1
  ldxb r1, [r10-0x28]
  stxb [r10-0x80], r1
  ldxdw r1, [r10-0x50]
  stxdw [r10-0x148], r1
  ldxw r8, [r10-0x54]
  ldxb r9, [r10-0x27]
  mov64 r1, r10
  add64 r1, -0xb6
  mov64 r2, r10
  add64 r2, -0x26
  mov64 r3, 0x26
  call fn_490d0
  ldxdw r1, [r10-0x68]
  stxdw [r10-0x78], r1
  ldxdw r1, [r10-0x60]
  stxdw [r10-0x70], r1
  stxdw [r10-0x150], r9
  jne r9, 0x0, jmp_0ca0
  lddw r1, -0x7ffffffffffffff7
  ja jmp_0c68

jmp_0c40:
  ldxdw r1, [r10-0x48]
  stxdw [r10-0xd8], r1
  ldxdw r1, [r10-0x40]
  stxdw [r10-0xd0], r1
  ldxdw r1, [r10-0x50]

jmp_0c68:
  ldxdw r2, [r10-0xd0]
  stxdw [r10-0xe0], r2
  ldxdw r3, [r10-0xd8]
  stxdw [r10-0xe8], r3
  stxdw [r6+0x18], r2
  stxdw [r6+0x10], r3
  ja jmp_1028

jmp_0ca0:
  stxdw [r10-0x160], r8
  mov64 r8, r7
  add64 r8, -0x52
  ldxdw r1, [r10-0x70]
  stxdw [r10-0xd0], r1
  ldxdw r1, [r10-0x78]
  stxdw [r10-0xd8], r1
  ldxdw r1, [r10-0x90]
  stxdw [r10-0xc8], r1
  ldxdw r1, [r10-0x88]
  stxdw [r10-0xc0], r1
  ldxb r1, [r10-0x80]
  stxb [r10-0xb8], r1
  mov64 r1, r10
  add64 r1, -0x136
  mov64 r2, r10
  add64 r2, -0xb6
  mov64 r3, 0x26
  call fn_490d0
  ldxdw r1, [r10-0xc8]
  stxdw [r10-0x110], r1
  ldxdw r1, [r10-0xc0]
  stxdw [r10-0x108], r1
  ldxb r1, [r10-0xb8]
  stxb [r10-0x100], r1
  ldxdw r1, [r10-0xd8]
  stxdw [r10-0xe8], r1
  stxdw [r10-0xf8], r1
  ldxdw r1, [r10-0xd0]
  stxdw [r10-0xf0], r1
  mov64 r1, 0x0
  mov64 r9, 0x1
  jeq r8, 0x0, jmp_0f20
  mov64 r1, 0x55
  jgt r1, r8, jmp_0ff8
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r4, r1
  add64 r4, -0x53
  mov64 r2, 0x0
  mov64 r5, 0x1
  jgt r4, r1, jmp_0e00
  mov64 r5, 0x0

jmp_0e00:
  ldxdw r9, [r10-0x140]
  jne r5, 0x0, jmp_0e18
  mov64 r2, r4

jmp_0e18:
  lddw r8, 0x300007fad
  jeq r1, 0x0, jmp_0e38
  mov64 r8, r2

jmp_0e38:
  lddw r1, 0x300000007
  jgt r8, r1, jmp_0e68
  mov64 r1, 0x1
  mov64 r2, 0x53
  call fn_379f0

jmp_0e68:
  add64 r9, 0x52
  lddw r1, 0x300000000
  stxdw [r1+0x0], r8
  mov64 r1, r8
  mov64 r2, 0x0
  mov64 r3, 0x53
  call fn_493f8
  mov64 r1, r9
  mov64 r2, r8
  mov64 r3, 0x53
  call fn_49510
  lsh64 r0, 0x20
  rsh64 r0, 0x20
  jne r0, 0x0, jmp_0ff8
  ldxdw r1, [r10-0x140]
  ldxb r1, [r1+0xa5]
  jne r1, 0x1, jmp_0ff8
  ldxdw r1, [r10-0x140]
  add64 r1, 0xa6
  add64 r7, -0xa6
  mov64 r9, r1
  mov64 r1, r7

jmp_0f20:
  mov64 r7, r1
  ldxdw r1, [r10-0xf0]
  stxdw [r6+0x18], r1
  ldxdw r1, [r10-0xf8]
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0x110]
  stxdw [r6+0x20], r1
  ldxdw r1, [r10-0x108]
  stxdw [r6+0x28], r1
  ldxb r1, [r10-0x100]
  stxb [r6+0x30], r1
  mov64 r1, r6
  add64 r1, 0x32
  mov64 r2, r10
  add64 r2, -0x136
  mov64 r3, 0x26
  call fn_490d0
  stxdw [r6+0x60], r7
  stxdw [r6+0x58], r9
  ldxdw r1, [r10-0x150]
  stxb [r6+0x31], r1
  ldxdw r1, [r10-0x148]
  stxdw [r6+0x8], r1
  ldxdw r1, [r10-0x160]
  stxw [r6+0x4], r1
  ldxdw r1, [r10-0x158]
  ja jmp_1038

jmp_0ff8:
  mov64 r1, 0x54
  stxdw [r6+0x18], r1
  mov64 r1, 0x53
  stxdw [r6+0x10], r1
  lddw r1, -0x7ffffffffffffffd

jmp_1028:
  stxdw [r6+0x8], r1
  mov64 r1, 0x2

jmp_1038:
  stxw [r6+0x0], r1

jmp_1040:
  exit

fn_1048:
  mov64 r6, r1
  mov64 r1, 0xa5
  jgt r1, r3, jmp_1068
  jne r3, 0x163, jmp_1098

jmp_1068:
  mov64 r1, 0x2
  stxw [r6+0x98], r1

jmp_1078:
  lddw r1, -0x7ffffffffffffffd
  stxdw [r6+0x0], r1
  ja jmp_1250

jmp_1098:
  stxdw [r10-0x348], r3
  mov64 r1, r10
  add64 r1, -0xb0
  stxdw [r10-0x350], r2
  mov64 r3, 0xa5
  call fn_2d588
  mov64 r2, r10
  add64 r2, -0xa8
  ldxdw r8, [r10-0xb0]
  ldxw r1, [r10-0x28]
  jeq r1, 0x2, jmp_11e8
  stxdw [r10-0x360], r1
  mov64 r7, r10
  add64 r7, -0x118
  mov64 r1, r7
  mov64 r3, 0x64
  call fn_490d0
  ldxdw r1, [r10-0x43]
  stxdw [r10-0x1a0], r1
  ldxdw r1, [r10-0x3b]
  stxdw [r10-0x198], r1
  ldxdw r1, [r10-0x33]
  stxdw [r10-0x190], r1
  ldxw r1, [r10-0x2c]
  stxw [r10-0x189], r1
  ldxb r9, [r10-0x44]
  mov64 r1, r10
  add64 r1, -0x1c4
  mov64 r2, r10
  add64 r2, -0x24
  mov64 r3, 0x24
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x180
  mov64 r2, r7
  mov64 r3, 0x64
  call fn_490d0
  stxdw [r10-0x358], r9
  jne r9, 0x0, jmp_1258
  lddw r8, -0x7ffffffffffffff7
  ja jmp_1208

jmp_11e8:
  ldxdw r1, [r2+0x8]
  ldxdw r2, [r2+0x0]
  stxdw [r10-0x228], r2
  stxdw [r10-0x220], r1

jmp_1208:
  ldxdw r1, [r10-0x220]
  stxdw [r10-0x288], r1
  ldxdw r2, [r10-0x228]
  stxdw [r10-0x290], r2
  stxdw [r6+0x10], r1
  stxdw [r6+0x8], r2
  mov64 r1, 0x2
  stxw [r6+0x98], r1
  stxdw [r6+0x0], r8

jmp_1250:
  exit

jmp_1258:
  stxdw [r10-0x368], r8
  mov64 r7, r10
  add64 r7, -0x228
  mov64 r2, r10
  add64 r2, -0x180
  mov64 r1, r7
  mov64 r3, 0x64
  call fn_490d0
  ldxdw r1, [r10-0x1a0]
  stxdw [r10-0x318], r1
  ldxdw r1, [r10-0x198]
  stxdw [r10-0x310], r1
  ldxdw r1, [r10-0x190]
  stxdw [r10-0x308], r1
  ldxw r1, [r10-0x189]
  stxw [r10-0x301], r1
  mov64 r1, r10
  add64 r1, -0x33c
  mov64 r2, r10
  add64 r2, -0x1c4
  mov64 r3, 0x24
  call fn_490d0
  mov64 r8, r10
  add64 r8, -0x290
  mov64 r1, r8
  mov64 r2, r7
  mov64 r3, 0x64
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x2f8
  mov64 r2, r8
  mov64 r3, 0x64
  call fn_490d0
  mov64 r8, 0x0
  mov64 r7, 0x1
  ldxdw r1, [r10-0x348]
  jeq r1, 0xa5, jmp_13b8
  ldxdw r7, [r10-0x350]
  jeq r1, 0xa6, jmp_14a0
  ldxb r2, [r7+0xa5]
  jne r2, 0x2, jmp_14a0
  add64 r7, 0xa6
  add64 r1, -0xa6
  mov64 r8, r1

jmp_13b8:
  mov64 r1, r6
  add64 r1, 0x18
  mov64 r2, r10
  add64 r2, -0x2f8
  mov64 r3, 0x64
  call fn_490d0
  ldxdw r1, [r10-0x318]
  stxdw [r6+0x7d], r1
  ldxdw r1, [r10-0x310]
  stxdw [r6+0x85], r1
  ldxdw r1, [r10-0x308]
  stxdw [r6+0x8d], r1
  ldxw r1, [r10-0x301]
  stxw [r6+0x94], r1
  mov64 r1, r6
  add64 r1, 0x9c
  mov64 r2, r10
  add64 r2, -0x33c
  mov64 r3, 0x24
  call fn_490d0
  ldxdw r1, [r10-0x360]
  stxw [r6+0x98], r1
  ldxdw r1, [r10-0x358]
  stxb [r6+0x7c], r1
  ldxdw r1, [r10-0x368]
  stxdw [r6+0x10], r1
  stxdw [r6+0x8], r8
  stxdw [r6+0x0], r7
  ja jmp_1250

jmp_14a0:
  mov64 r1, 0x2
  stxw [r6+0x98], r1
  mov64 r1, 0x1
  stxdw [r6+0x10], r1
  mov64 r1, 0x0
  stxdw [r6+0x8], r1
  ja jmp_1078

fn_14d8:
  lddw r2, 0x300000000
  ldxdw r3, [r2+0x0]
  mov64 r2, r3
  add64 r2, -0x18
  mov64 r4, 0x0
  mov64 r5, 0x1
  jgt r2, r3, jmp_1520
  mov64 r5, 0x0

jmp_1520:
  jne r5, 0x0, jmp_1530
  mov64 r4, r2

jmp_1530:
  lddw r2, 0x300007fe8
  jeq r3, 0x0, jmp_1558
  and64 r4, -0x8
  mov64 r2, r4

jmp_1558:
  lddw r3, 0x300000007
  jgt r2, r3, jmp_1588
  mov64 r1, 0x8
  mov64 r2, 0x18
  call fn_37a08

jmp_1588:
  lddw r3, 0x300000000
  stxdw [r3+0x0], r2
  ldxdw r3, [r1+0x10]
  stxdw [r2+0x10], r3
  ldxdw r3, [r1+0x8]
  stxdw [r2+0x8], r3
  ldxdw r1, [r1+0x0]
  stxdw [r2+0x0], r1
  mov64 r1, 0x15
  lddw r3, data_2a28
  call fn_36580
  exit

fn_15f8:
  mov64 r6, r2
  mov64 r2, r1
  mov64 r8, 0x1
  mov64 r7, 0x1
  jeq r6, 0x0, jmp_16e0
  mov64 r1, 0x0
  jsgt r1, r6, jmp_17f8
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  lddw r4, 0x300008000
  jeq r1, 0x0, jmp_1668
  mov64 r4, r1

jmp_1668:
  mov64 r3, r4
  sub64 r3, r6
  mov64 r7, 0x0
  mov64 r1, 0x1
  mov64 r5, 0x1
  jgt r3, r4, jmp_16a0
  mov64 r5, 0x0

jmp_16a0:
  jne r5, 0x0, jmp_16b0
  mov64 r7, r3

jmp_16b0:
  lddw r3, 0x300000008
  jgt r3, r7, jmp_17f8
  lddw r1, 0x300000000
  stxdw [r1+0x0], r7

jmp_16e0:
  mov64 r1, r7
  mov64 r3, r6
  call fn_490d0
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r2, r1
  add64 r2, -0x18
  mov64 r3, 0x0
  jgt r2, r1, jmp_1738
  mov64 r8, 0x0

jmp_1738:
  jne r8, 0x0, jmp_1748
  mov64 r3, r2

jmp_1748:
  lddw r2, 0x300007fe8
  jeq r1, 0x0, jmp_1770
  and64 r3, -0x8
  mov64 r2, r3

jmp_1770:
  lddw r1, 0x300000007
  jgt r2, r1, jmp_17a0
  mov64 r1, 0x8
  mov64 r2, 0x18
  call fn_37a08

jmp_17a0:
  lddw r1, 0x300000000
  stxdw [r1+0x0], r2
  stxdw [r2+0x8], r7
  stxdw [r2+0x10], r6
  stxdw [r2+0x0], r6
  mov64 r1, 0x15
  lddw r3, data_2a28
  call fn_36580
  exit

jmp_17f8:
  mov64 r2, r6
  call fn_379f0
  ldxdw r1, [r1+0x0]
  ldxb r3, [r1+0x0]
  jne r3, 0x0, jmp_1850
  mov64 r1, r2
  lddw r2, str_0317
  mov64 r3, 0x4
  call fn_43d50
  ja jmp_18a8

jmp_1850:
  add64 r1, 0x1
  stxdw [r10-0x8], r1
  mov64 r4, r10
  add64 r4, -0x8
  mov64 r1, r2
  lddw r2, str_0307
  mov64 r3, 0x4
  lddw r5, data_2c20
  call fn_44028

jmp_18a8:
  exit
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, 0x8
  stxdw [r10-0x8], r3
  mov64 r3, r10
  add64 r3, -0x8
  stxdw [r10-0xfd8], r3
  lddw r3, data_2c88
  stxdw [r10-0xfd0], r3
  lddw r3, str_02db
  stxdw [r10-0xfe8], r3
  lddw r3, data_2c68
  stxdw [r10-0xff0], r3
  stxdw [r10-0xff8], r1
  mov64 r1, 0xb
  stxdw [r10-0x1000], r1
  mov64 r1, 0x9
  stxdw [r10-0xfe0], r1
  mov64 r5, r10
  mov64 r1, r2
  lddw r2, str_02c7
  mov64 r3, 0x9
  lddw r4, str_02d0
  call fn_43de8
  exit
  mov64 r1, r2
  lddw r2, str_01a6
  mov64 r3, 0x2
  call fn_42f98
  exit
  ldxdw r1, [r1+0x0]
  ldxw r3, [r2+0x34]
  mov64 r4, r3
  and64 r4, 0x10
  jne r4, 0x0, jmp_1a20
  and64 r3, 0x20
  jeq r3, 0x0, jmp_1a10
  ja jmp_1a30

jmp_1a10:
  call fn_48c10
  ja jmp_1a38

jmp_1a20:
  call fn_47b50
  ja jmp_1a38

jmp_1a30:
  call fn_47cc8

jmp_1a38:
  exit
  ldxdw r1, [r1+0x0]
  call fn_3fba8
  exit
  mov64 r3, r2
  ldxdw r2, [r1+0x8]
  ldxdw r1, [r1+0x0]
  call fn_34ce0
  exit
  mov64 r1, r2
  lddw r2, str_0029
  mov64 r3, 0x15
  call fn_43d50
  exit

fn_1ab0:
  stxdw [r10-0x50], r1
  mov64 r9, r3
  add64 r9, 0x1
  rsh64 r9, 0x1
  add64 r9, r3
  mov64 r6, 0x0
  stxdw [r10-0x38], r6
  stxdw [r10-0x48], r6
  mov64 r8, 0x1
  stxdw [r10-0x40], r8
  mov64 r7, 0x0
  jeq r9, 0x0, jmp_1bd0
  stxdw [r10-0x68], r2
  stxdw [r10-0x60], r3
  mov64 r1, r10
  add64 r1, -0x48
  mov64 r2, 0x0
  mov64 r3, r9
  call fn_31d0
  ldxdw r8, [r10-0x40]
  ldxdw r7, [r10-0x38]
  mov64 r1, r8
  add64 r1, r7
  jeq r9, 0x1, jmp_1ba8
  add64 r9, -0x1
  mov64 r2, 0x0
  mov64 r3, r9
  call fn_493f8
  add64 r7, r9
  mov64 r1, r8
  add64 r1, r7

jmp_1ba8:
  mov64 r2, 0x0
  stxb [r1+0x0], r2
  add64 r7, 0x1
  ldxdw r3, [r10-0x60]
  ldxdw r2, [r10-0x68]

jmp_1bd0:
  jeq r3, 0x0, jmp_1f38
  mov64 r0, r8
  mov64 r1, r2
  stxdw [r10-0x60], r3
  add64 r1, r3
  stxdw [r10-0x58], r1
  mov64 r1, 0x0
  mov64 r3, 0x3a
  stxdw [r10-0x68], r2
  mov64 r5, r2

jmp_1c20:
  mov64 r2, r7
  jge r7, r1, jmp_1c38
  ja jmp_20d0

jmp_1c38:
  ldxb r7, [r5+0x0]
  jeq r1, 0x0, jmp_1cc0
  mov64 r9, r1
  mov64 r4, r0

jmp_1c58:
  ldxb r6, [r4+0x0]
  lsh64 r6, 0x8
  add64 r6, r7
  mov64 r7, r6
  div64 r7, 0x3a
  mov64 r8, r7
  mul64 r8, 0x3a
  sub64 r6, r8
  stxb [r4+0x0], r6
  add64 r4, 0x1
  add64 r9, -0x1
  jeq r9, 0x0, jmp_1cc0
  ja jmp_1c58

jmp_1cc0:
  jeq r7, 0x0, jmp_1d48

jmp_1cc8:
  mov64 r6, r7
  mov64 r9, 0x1
  mov64 r7, r2
  jeq r7, r1, jmp_1f58
  mov64 r7, r6
  div64 r7, 0x3a
  mov64 r4, r7
  mul64 r4, 0x3a
  mov64 r8, r6
  sub64 r8, r4
  mov64 r4, r0
  add64 r4, r1
  stxb [r4+0x0], r8
  add64 r1, 0x1
  jgt r3, r6, jmp_1d48
  ja jmp_1cc8

jmp_1d48:
  add64 r5, 0x1
  mov64 r7, r2
  ldxdw r2, [r10-0x58]
  jne r5, r2, jmp_1c20
  mov64 r4, 0x0
  ldxdw r3, [r10-0x68]
  mov64 r9, 0x1
  ja jmp_1dd8

jmp_1d88:
  jge r1, r7, jmp_20b0
  add64 r3, 0x1
  mov64 r5, r0
  add64 r5, r1
  stxb [r5+0x0], r4
  add64 r1, 0x1
  ldxdw r2, [r10-0x60]
  add64 r2, -0x1
  stxdw [r10-0x60], r2
  jeq r2, 0x0, jmp_1e00

jmp_1dd8:
  ldxb r5, [r3+0x0]
  jeq r5, 0x0, jmp_1df0
  ja jmp_1e00

jmp_1df0:
  jeq r7, r1, jmp_1f58
  ja jmp_1d88

jmp_1e00:
  jge r7, r1, jmp_1e28
  mov64 r2, r7
  lddw r3, data_2b88
  call fn_45270

jmp_1e28:
  mov64 r6, 0x0
  mov64 r8, r0
  jeq r1, 0x0, jmp_1f38
  mov64 r3, 0x0

jmp_1e48:
  mov64 r4, r8
  add64 r4, r3
  ldxb r2, [r4+0x0]
  jgt r2, 0x39, jmp_2088
  lddw r5, data_04e8
  add64 r5, r2
  ldxb r2, [r5+0x80]
  stxb [r4+0x0], r2
  add64 r3, 0x1
  jeq r1, r3, jmp_1ea8
  ja jmp_1e48

jmp_1ea8:
  mov64 r6, 0x1
  jeq r1, 0x1, jmp_1f38
  mov64 r2, r1
  rsh64 r2, 0x1
  mov64 r3, r1
  add64 r3, r8
  add64 r3, -0x1
  mov64 r4, r8

jmp_1ee8:
  ldxb r5, [r4+0x0]
  ldxb r0, [r3+0x0]
  stxb [r4+0x0], r0
  stxb [r3+0x0], r5
  add64 r3, -0x1
  add64 r4, 0x1
  add64 r2, -0x1
  mov64 r6, r1
  jeq r2, 0x0, jmp_1f38
  ja jmp_1ee8

jmp_1f38:
  mov64 r0, r8
  mov64 r9, 0x0
  jgt r6, r7, jmp_1f58
  mov64 r7, r6

jmp_1f58:
  jne r9, 0x0, jmp_20e8
  ldxdw r6, [r10-0x48]
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r8, r0
  mov64 r2, r8
  mov64 r3, r7
  call fn_45510
  ldxdw r1, [r10-0x30]
  jne r1, 0x0, jmp_1fe8
  mov64 r1, r7
  mov64 r7, r8
  mov64 r8, r6

jmp_1fc0:
  ldxdw r2, [r10-0x50]
  stxdw [r2+0x10], r1
  stxdw [r2+0x8], r7
  stxdw [r2+0x0], r8
  exit

jmp_1fe8:
  ldxdw r1, [r10-0x28]
  lddw r2, -0x8000000000000000
  jeq r6, r2, jmp_1fc0
  ldxdw r2, [r10-0x20]
  stxdw [r10-0x10], r2
  stxdw [r10-0x18], r1
  stxdw [r10-0x20], r7
  stxdw [r10-0x28], r8
  stxdw [r10-0x30], r6
  mov64 r3, r10
  add64 r3, -0x30
  lddw r1, str_0240
  mov64 r2, 0x2b
  lddw r4, data_2d08
  lddw r5, data_2d28
  call fn_40400

jmp_2088:
  mov64 r1, r2
  mov64 r2, 0x3a
  lddw r3, data_2ba0
  call fn_3ffc8

jmp_20b0:
  mov64 r2, r7
  lddw r3, data_2bb8
  call fn_3ffc8

jmp_20d0:
  lddw r3, data_2bd0
  call fn_45270

jmp_20e8:
  mov64 r3, r10
  add64 r3, -0x1
  lddw r1, str_0240
  mov64 r2, 0x2b
  lddw r4, data_2be8
  lddw r5, data_2c08
  call fn_40400
  ldxw r3, [r2+0x34]
  mov64 r4, r3
  and64 r4, 0x10
  jne r4, 0x0, jmp_2180
  and64 r3, 0x20
  jeq r3, 0x0, jmp_2170
  ja jmp_2190

jmp_2170:
  call fn_48c10
  ja jmp_2198

jmp_2180:
  call fn_47b50
  ja jmp_2198

jmp_2190:
  call fn_47cc8

jmp_2198:
  exit
  ldxw r3, [r2+0x34]
  mov64 r4, r3
  and64 r4, 0x10
  jne r4, 0x0, jmp_21e8
  and64 r3, 0x20
  jeq r3, 0x0, jmp_21d8
  ja jmp_21f8

jmp_21d8:
  call fn_48d28
  ja jmp_2200

jmp_21e8:
  call fn_48140
  ja jmp_2200

jmp_21f8:
  call fn_482b0

jmp_2200:
  exit
  mov64 r3, r2
  lddw r2, data_2b20
  call fn_42488
  exit

fn_2230:
  ldxdw r3, [r1+0x0]
  lddw r2, -0x7fffffffffffffe6
  jeq r3, r2, jmp_2250

jmp_2250:
  ldxdw r1, [r1+0x18]
  jeq r1, r2, jmp_2260

jmp_2260:
  exit
  exit
  exit
  exit
  exit
  exit
  exit

fn_2298:
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r1+0x8]
  ldxdw r4, [r3+0x0]
  add64 r4, -0x1
  stxdw [r3+0x0], r4
  jne r4, 0x0, jmp_22e0
  ldxdw r4, [r3+0x8]
  add64 r4, -0x1
  stxdw [r3+0x8], r4

jmp_22e0:
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_2318
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_2318:
  ldxdw r2, [r1+0x40]
  ldxdw r3, [r1+0x38]
  ldxdw r4, [r3+0x0]
  add64 r4, -0x1
  stxdw [r3+0x0], r4
  jne r4, 0x0, jmp_2360
  ldxdw r4, [r3+0x8]
  add64 r4, -0x1
  stxdw [r3+0x8], r4

jmp_2360:
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_2398
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_2398:
  ldxdw r2, [r1+0x70]
  ldxdw r3, [r1+0x68]
  ldxdw r4, [r3+0x0]
  add64 r4, -0x1
  stxdw [r3+0x0], r4
  jne r4, 0x0, jmp_23e0
  ldxdw r4, [r3+0x8]
  add64 r4, -0x1
  stxdw [r3+0x8], r4

jmp_23e0:
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_2418
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_2418:
  ldxdw r2, [r1+0xa0]
  ldxdw r1, [r1+0x98]
  ldxdw r3, [r1+0x0]
  add64 r3, -0x1
  stxdw [r1+0x0], r3
  jne r3, 0x0, jmp_2460
  ldxdw r3, [r1+0x8]
  add64 r3, -0x1
  stxdw [r1+0x8], r3

jmp_2460:
  ldxdw r1, [r2+0x0]
  add64 r1, -0x1
  stxdw [r2+0x0], r1
  jne r1, 0x0, jmp_2498
  ldxdw r1, [r2+0x8]
  add64 r1, -0x1
  stxdw [r2+0x8], r1

jmp_2498:
  exit

fn_24a0:
  mov64 r2, 0x0
  stxdw [r1+0x10], r2
  stxdw [r1+0x8], r2
  stxdw [r1+0x0], r2
  stxdw [r1+0x18], r2
  stxdw [r1+0x20], r2
  stxdw [r1+0x28], r2
  stxdw [r1+0x30], r2
  stxdw [r1+0x38], r2
  stxdw [r1+0x40], r2
  stxdw [r1+0x48], r2
  stxdw [r1+0x50], r2
  stxdw [r1+0x58], r2
  stxdw [r1+0x60], r2
  stxdw [r1+0x68], r2
  stxdw [r1+0x70], r2
  stxdw [r1+0x88], r2
  stxdw [r1+0x80], r2
  stxdw [r1+0x78], r2
  stxdw [r1+0xa0], r2
  stxdw [r1+0x98], r2
  stxdw [r1+0x90], r2
  stxdw [r1+0xb8], r2
  stxdw [r1+0xb0], r2
  stxdw [r1+0xa8], r2
  stxdw [r1+0xd0], r2
  stxdw [r1+0xc8], r2
  stxdw [r1+0xc0], r2
  stxdw [r1+0xe8], r2
  stxdw [r1+0xe0], r2
  stxdw [r1+0xd8], r2
  stxdw [r1+0x100], r2
  stxdw [r1+0xf8], r2
  stxdw [r1+0xf0], r2
  stxdw [r1+0x108], r2
  stxdw [r1+0x110], r2
  stxdw [r1+0x118], r2
  stxdw [r1+0x130], r2
  stxdw [r1+0x128], r2
  stxdw [r1+0x120], r2
  stxdw [r1+0x148], r2
  stxdw [r1+0x140], r2
  stxdw [r1+0x138], r2
  stxdw [r1+0x160], r2
  stxdw [r1+0x158], r2
  stxdw [r1+0x150], r2
  stxdw [r1+0x178], r2
  stxdw [r1+0x170], r2
  stxdw [r1+0x168], r2
  stxdw [r1+0x190], r2
  stxdw [r1+0x188], r2
  stxdw [r1+0x180], r2
  stxdw [r1+0x1a8], r2
  stxdw [r1+0x1a0], r2
  stxdw [r1+0x198], r2
  stxdw [r1+0x1c0], r2
  stxdw [r1+0x1b8], r2
  stxdw [r1+0x1b0], r2
  stxdw [r1+0x1d8], r2
  stxdw [r1+0x1d0], r2
  stxdw [r1+0x1c8], r2
  exit
  mov64 r2, 0x0
  stxdw [r1+0x0], r2
  exit
  exit
  lddw r2, 0x1c4088621fee484b
  stxdw [r1+0x8], r2
  lddw r2, 0x2219183bd7fa6079
  stxdw [r1+0x0], r2
  exit

fn_26e8:
  mov64 r6, r1
  ldxdw r3, [r2+0x8]
  jeq r3, 0x0, jmp_2778
  add64 r3, -0x1
  ldxdw r4, [r2+0x0]
  ldxb r1, [r4+0x0]
  stxdw [r2+0x8], r3
  add64 r4, 0x1
  stxdw [r2+0x0], r4
  stxb [r10-0x59], r1
  jeq r1, 0x0, jmp_27b0
  jeq r1, 0x1, jmp_2750
  ja jmp_27d0

jmp_2750:
  mov64 r1, 0x1
  stxb [r6+0x1], r1
  mov64 r1, 0x0
  stxb [r6+0x0], r1
  ja jmp_28a8

jmp_2778:
  lddw r1, data_2af0
  call fn_35778
  stxdw [r6+0x8], r0
  mov64 r1, 0x1
  stxb [r6+0x0], r1
  ja jmp_28a8

jmp_27b0:
  mov64 r1, 0x0
  stxb [r6+0x1], r1
  stxb [r6+0x0], r1
  ja jmp_28a8

jmp_27d0:
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  lddw r1, data_2c58
  stxdw [r10-0x40], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x8ae0
  stxdw [r10-0x8], r1
  mov64 r1, r10
  add64 r1, -0x59
  stxdw [r10-0x10], r1
  mov64 r8, 0x1
  stxdw [r10-0x38], r8
  stxdw [r10-0x28], r8
  mov64 r7, r10
  add64 r7, -0x58
  mov64 r2, r10
  add64 r2, -0x40
  mov64 r1, r7
  call fn_37aa0
  mov64 r1, r7
  call fn_14d8
  stxdw [r6+0x8], r0
  stxb [r6+0x0], r8

jmp_28a8:
  exit
  mov64 r1, r2
  lddw r2, str_02a2
  mov64 r3, 0x5
  call fn_43d50
  exit
  mov64 r1, r2
  lddw r2, str_02a7
  mov64 r3, 0xe
  call fn_43d50
  exit
  mov64 r6, r1
  mov64 r1, r2
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r3, 0x80
  jgt r3, r1, jmp_2a00
  mov64 r3, 0x0
  stxw [r10-0x4], r3
  mov64 r3, 0x800
  jgt r3, r1, jmp_2a68
  mov64 r1, r2
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r3, 0x10000
  jgt r3, r1, jmp_2990
  ja jmp_2ab0

jmp_2990:
  mov64 r1, r2
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x2], r1
  mov64 r1, r2
  rsh64 r1, 0xc
  or64 r1, 0xe0
  stxb [r10-0x4], r1
  rsh64 r2, 0x6
  and64 r2, 0x3f
  or64 r2, 0x80
  stxb [r10-0x3], r2
  mov64 r7, 0x3
  ja jmp_2b48

jmp_2a00:
  ldxdw r7, [r6+0x10]
  ldxdw r1, [r6+0x0]
  jne r7, r1, jmp_2a38
  mov64 r1, r6
  mov64 r8, r2
  call fn_3318
  mov64 r2, r8

jmp_2a38:
  ldxdw r1, [r6+0x8]
  add64 r1, r7
  stxb [r1+0x0], r2
  add64 r7, 0x1
  stxdw [r6+0x10], r7
  ja jmp_2bd0

jmp_2a68:
  mov64 r1, r2
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x3], r1
  rsh64 r2, 0x6
  or64 r2, 0xc0
  stxb [r10-0x4], r2
  mov64 r7, 0x2
  ja jmp_2b48

jmp_2ab0:
  mov64 r1, r2
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x1], r1
  mov64 r1, r2
  rsh64 r1, 0x6
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x2], r1
  mov64 r1, r2
  rsh64 r1, 0xc
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x3], r1
  rsh64 r2, 0x12
  and64 r2, 0x7
  or64 r2, 0xf0
  stxb [r10-0x4], r2
  mov64 r7, 0x4

jmp_2b48:
  ldxdw r8, [r6+0x10]
  ldxdw r1, [r6+0x0]
  sub64 r1, r8
  jge r1, r7, jmp_2b90
  mov64 r1, r6
  mov64 r2, r8
  mov64 r3, r7
  call fn_31d0
  ldxdw r8, [r6+0x10]

jmp_2b90:
  ldxdw r1, [r6+0x8]
  add64 r1, r8
  mov64 r2, r10
  add64 r2, -0x4
  mov64 r3, r7
  call fn_490d0
  add64 r8, r7
  stxdw [r6+0x10], r8

jmp_2bd0:
  mov64 r0, 0x0
  exit
  mov64 r6, r3
  mov64 r7, r1
  ldxdw r8, [r7+0x10]
  ldxdw r1, [r7+0x0]
  sub64 r1, r8
  jge r1, r6, jmp_2c48
  mov64 r1, r7
  mov64 r9, r2
  mov64 r2, r8
  mov64 r3, r6
  call fn_31d0
  mov64 r2, r9
  ldxdw r8, [r7+0x10]

jmp_2c48:
  ldxdw r1, [r7+0x8]
  add64 r1, r8
  mov64 r3, r6
  call fn_490d0
  add64 r8, r6
  stxdw [r7+0x10], r8
  mov64 r0, 0x0
  exit

fn_2c88:
  mov64 r3, r2
  ldxdw r4, [r3+0x18]
  ldxdw r2, [r3+0x8]
  jeq r2, 0x1, jmp_2ce8
  jne r2, 0x0, jmp_2cd0
  mov64 r7, 0x0
  mov64 r2, 0x1
  mov64 r6, 0x1
  jeq r4, 0x0, jmp_2df0

jmp_2cd0:
  mov64 r2, r3
  call fn_37aa0
  ja jmp_2e28

jmp_2ce8:
  jeq r4, 0x0, jmp_2cf8
  ja jmp_2cd0

jmp_2cf8:
  ldxdw r3, [r3+0x0]
  mov64 r6, 0x1
  mov64 r7, 0x0
  ldxdw r2, [r3+0x0]
  ldxdw r3, [r3+0x8]
  jeq r3, 0x0, jmp_2df0
  mov64 r4, 0x0
  jsgt r4, r3, jmp_2e30
  lddw r4, 0x300000000
  ldxdw r4, [r4+0x0]
  lddw r0, 0x300008000
  jeq r4, 0x0, jmp_2d70
  mov64 r0, r4

jmp_2d70:
  mov64 r5, r0
  sub64 r5, r3
  mov64 r6, 0x0
  mov64 r4, 0x1
  mov64 r7, 0x1
  jgt r5, r0, jmp_2da8
  mov64 r7, 0x0

jmp_2da8:
  jne r7, 0x0, jmp_2db8
  mov64 r6, r5

jmp_2db8:
  lddw r5, 0x300000008
  jgt r5, r6, jmp_2e30
  lddw r4, 0x300000000
  stxdw [r4+0x0], r6
  mov64 r7, r3

jmp_2df0:
  mov64 r8, r1
  mov64 r1, r6
  mov64 r3, r7
  call fn_490d0
  stxdw [r8+0x8], r6
  stxdw [r8+0x10], r7
  stxdw [r8+0x0], r7

jmp_2e28:
  exit

jmp_2e30:
  mov64 r1, r4
  mov64 r2, r3
  call fn_379f0

fn_2e48:
  jeq r2, 0x0, jmp_2e88
  ldxdw r5, [r4+0x8]
  jeq r5, 0x0, jmp_2fc0
  ldxdw r5, [r4+0x10]
  jne r5, 0x0, jmp_2ea0
  jne r3, 0x0, jmp_3080

jmp_2e78:
  mov64 r6, r2
  ja jmp_3140

jmp_2e88:
  mov64 r2, 0x0
  stxdw [r1+0x8], r2
  ja jmp_31b8

jmp_2ea0:
  lddw r0, 0x300000000
  ldxdw r0, [r0+0x0]
  lddw r7, 0x300008000
  jeq r0, 0x0, jmp_2ed8
  mov64 r7, r0

jmp_2ed8:
  mov64 r0, r7
  sub64 r0, r3
  mov64 r6, 0x0
  mov64 r8, 0x1
  jgt r0, r7, jmp_2f08
  mov64 r8, 0x0

jmp_2f08:
  jne r8, 0x0, jmp_2f18
  mov64 r6, r0

jmp_2f18:
  mov64 r0, r2
  neg64 r0
  and64 r6, r0
  lddw r0, 0x300000008
  jgt r0, r6, jmp_3188
  ldxdw r4, [r4+0x0]
  lddw r0, 0x300000000
  stxdw [r0+0x0], r6
  mov64 r7, r1
  mov64 r1, r6
  mov64 r8, r2
  mov64 r2, r4
  mov64 r9, r3
  mov64 r3, r5
  call fn_490d0
  mov64 r2, r8
  mov64 r3, r9
  mov64 r1, r7
  ja jmp_3140

jmp_2fc0:
  jne r3, 0x0, jmp_2fd0
  ja jmp_2e78

jmp_2fd0:
  lddw r4, 0x300000000
  ldxdw r4, [r4+0x0]
  lddw r5, 0x300008000
  jeq r4, 0x0, jmp_3008
  mov64 r5, r4

jmp_3008:
  mov64 r4, r5
  sub64 r4, r3
  mov64 r6, 0x0
  mov64 r0, 0x1
  jgt r4, r5, jmp_3038
  mov64 r0, 0x0

jmp_3038:
  jne r0, 0x0, jmp_3048
  mov64 r6, r4

jmp_3048:
  mov64 r4, r2
  neg64 r4
  and64 r6, r4
  lddw r4, 0x300000008
  jgt r4, r6, jmp_3188
  ja jmp_3128

jmp_3080:
  lddw r4, 0x300000000
  ldxdw r4, [r4+0x0]
  lddw r5, 0x300008000
  jeq r4, 0x0, jmp_30b8
  mov64 r5, r4

jmp_30b8:
  mov64 r4, r5
  sub64 r4, r3
  mov64 r6, 0x0
  mov64 r0, 0x1
  jgt r4, r5, jmp_30e8
  mov64 r0, 0x0

jmp_30e8:
  jne r0, 0x0, jmp_30f8
  mov64 r6, r4

jmp_30f8:
  mov64 r4, r2
  neg64 r4
  and64 r6, r4
  lddw r4, 0x300000008
  jgt r4, r6, jmp_3188

jmp_3128:
  lddw r4, 0x300000000
  stxdw [r4+0x0], r6

jmp_3140:
  mov64 r4, r1
  add64 r4, 0x10
  mov64 r5, r1
  add64 r5, 0x8
  jeq r6, 0x0, jmp_31a8
  stxdw [r5+0x0], r6
  stxdw [r4+0x0], r3
  mov64 r2, 0x0
  ja jmp_31c0

jmp_3188:
  mov64 r4, r1
  add64 r4, 0x10
  mov64 r5, r1
  add64 r5, 0x8

jmp_31a8:
  stxdw [r5+0x0], r2
  stxdw [r4+0x0], r3

jmp_31b8:
  mov64 r2, 0x1

jmp_31c0:
  stxdw [r1+0x0], r2
  exit

fn_31d0:
  mov64 r6, r1
  mov64 r4, r2
  add64 r4, r3
  mov64 r1, 0x0
  mov64 r3, 0x1
  jgt r2, r4, jmp_3208
  mov64 r3, 0x0

jmp_3208:
  and64 r3, 0x1
  jne r3, 0x0, jmp_32f0
  ldxdw r1, [r6+0x0]
  mov64 r7, r1
  lsh64 r7, 0x1
  jgt r7, r4, jmp_3240
  mov64 r7, r4

jmp_3240:
  jgt r7, 0x8, jmp_3250
  mov64 r7, 0x8

jmp_3250:
  mov64 r3, 0x0
  mov64 r2, r7
  xor64 r2, -0x1
  rsh64 r2, 0x3f
  jeq r1, 0x0, jmp_3298
  ldxdw r3, [r6+0x8]
  stxdw [r10-0x8], r1
  stxdw [r10-0x18], r3
  mov64 r3, 0x1

jmp_3298:
  stxdw [r10-0x10], r3
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  mov64 r3, r7
  call fn_2e48
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_32f8
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_32f0:
  call fn_379f0

jmp_32f8:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_3318:
  mov64 r6, r1
  ldxdw r3, [r6+0x0]
  mov64 r4, r3
  add64 r4, 0x1
  mov64 r1, 0x0
  mov64 r5, 0x1
  jeq r4, 0x0, jmp_3358
  mov64 r5, 0x0

jmp_3358:
  and64 r5, 0x1
  jne r5, 0x0, jmp_3430
  mov64 r7, r3
  lsh64 r7, 0x1
  jgt r7, r4, jmp_3388
  mov64 r7, r4

jmp_3388:
  jgt r7, 0x8, jmp_3398
  mov64 r7, 0x8

jmp_3398:
  mov64 r2, r7
  xor64 r2, -0x1
  rsh64 r2, 0x3f
  jeq r3, 0x0, jmp_33d8
  ldxdw r1, [r6+0x8]
  stxdw [r10-0x8], r3
  stxdw [r10-0x18], r1
  mov64 r1, 0x1

jmp_33d8:
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  mov64 r3, r7
  call fn_2e48
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_3438
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_3430:
  call fn_379f0

jmp_3438:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_3458:
  mov64 r6, r1
  ldxdw r4, [r6+0x0]
  mov64 r3, r4
  add64 r3, 0x1
  mov64 r1, 0x0
  mov64 r5, 0x1
  jeq r3, 0x0, jmp_3498
  mov64 r5, 0x0

jmp_3498:
  and64 r5, 0x1
  jne r5, 0x0, jmp_3598
  mov64 r7, r4
  lsh64 r7, 0x1
  jgt r7, r3, jmp_34c8
  mov64 r7, r3

jmp_34c8:
  mov64 r2, 0x1
  lddw r3, 0x555555555555556
  jgt r3, r7, jmp_34f0
  mov64 r2, 0x0

jmp_34f0:
  jgt r7, 0x4, jmp_3500
  mov64 r7, 0x4

jmp_3500:
  lsh64 r2, 0x3
  mov64 r3, r7
  mul64 r3, 0x18
  jeq r4, 0x0, jmp_3548
  ldxdw r1, [r6+0x8]
  mul64 r4, 0x18
  stxdw [r10-0x8], r4
  stxdw [r10-0x18], r1
  mov64 r1, 0x8

jmp_3548:
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  call fn_2e48
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_35a0
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_3598:
  call fn_379f0

jmp_35a0:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_35c0:
  mov64 r6, r1
  ldxdw r4, [r6+0x0]
  mov64 r3, r4
  add64 r3, 0x1
  mov64 r1, 0x0
  mov64 r5, 0x1
  jeq r3, 0x0, jmp_3600
  mov64 r5, 0x0

jmp_3600:
  and64 r5, 0x1
  jne r5, 0x0, jmp_36f8
  mov64 r7, r4
  lsh64 r7, 0x1
  jgt r7, r3, jmp_3630
  mov64 r7, r3

jmp_3630:
  mov64 r2, 0x1
  lddw r3, 0x400000000000000
  jgt r3, r7, jmp_3658
  mov64 r2, 0x0

jmp_3658:
  jgt r7, 0x4, jmp_3668
  mov64 r7, 0x4

jmp_3668:
  mov64 r3, r7
  lsh64 r3, 0x5
  jeq r4, 0x0, jmp_36a8
  ldxdw r1, [r6+0x8]
  lsh64 r4, 0x5
  stxdw [r10-0x8], r4
  stxdw [r10-0x18], r1
  mov64 r1, 0x1

jmp_36a8:
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  call fn_2e48
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_3700
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_36f8:
  call fn_379f0

jmp_3700:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_3720:
  mov64 r6, r1
  ldxdw r4, [r6+0x0]
  mov64 r3, r4
  add64 r3, 0x1
  mov64 r1, 0x0
  mov64 r5, 0x1
  jeq r3, 0x0, jmp_3760
  mov64 r5, 0x0

jmp_3760:
  and64 r5, 0x1
  jne r5, 0x0, jmp_3858
  mov64 r7, r4
  lsh64 r7, 0x1
  jgt r7, r3, jmp_3790
  mov64 r7, r3

jmp_3790:
  mov64 r2, 0x1
  lddw r3, 0xaaaaaaaaaaaaaab
  jgt r3, r7, jmp_37b8
  mov64 r2, 0x0

jmp_37b8:
  jgt r7, 0x4, jmp_37c8
  mov64 r7, 0x4

jmp_37c8:
  mov64 r3, r7
  mul64 r3, 0xc
  jeq r4, 0x0, jmp_3808
  ldxdw r1, [r6+0x8]
  mul64 r4, 0xc
  stxdw [r10-0x8], r4
  stxdw [r10-0x18], r1
  mov64 r1, 0x1

jmp_3808:
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  call fn_2e48
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_3860
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_3858:
  call fn_379f0

jmp_3860:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_3880:
  mov64 r6, r1
  jeq r3, 0x0, jmp_5ee0
  mov64 r1, r3
  add64 r1, -0x1
  ldxb r9, [r2+0x0]
  stxdw [r10-0x128], r1
  mov64 r4, r2
  add64 r4, 0x1
  stxdw [r10-0x130], r4
  stxb [r10-0x119], r9
  jsgt r9, 0xb, jmp_3908
  jsgt r9, 0x5, jmp_39d8
  jsgt r9, 0x2, jmp_3be8
  jeq r9, 0x0, jmp_4358
  jeq r9, 0x1, jmp_5b58
  jeq r9, 0x2, jmp_6058
  ja jmp_4828

jmp_3908:
  jsgt r9, 0x11, jmp_3b18
  jsgt r9, 0xe, jmp_3cb8
  jeq r9, 0xc, jmp_4580
  jeq r9, 0xd, jmp_6058
  jeq r9, 0xe, jmp_3938
  ja jmp_4828

jmp_3938:
  mov64 r1, 0x5
  jgt r1, r3, jmp_5ee0
  mov64 r1, r3
  add64 r1, -0x5
  mov64 r5, 0x4
  jgt r5, r1, jmp_5ee0
  jeq r3, 0x9, jmp_5ee0
  ldxw r0, [r4+0x0]
  ldxw r8, [r2+0x5]
  mov64 r4, r3
  add64 r4, -0xa
  ldxb r7, [r2+0x9]
  stxdw [r10-0x128], r4
  mov64 r1, r2
  add64 r1, 0xa
  stxdw [r10-0x130], r1
  stxb [r10-0x98], r7
  mov64 r5, 0x2
  jgt r5, r7, jmp_5108
  ja jmp_5c10

jmp_39d8:
  jsgt r9, 0x7, jmp_3ba0
  jeq r9, 0x6, jmp_40a0
  jeq r9, 0x7, jmp_39f8
  ja jmp_4828

jmp_39f8:
  mov64 r1, 0x21
  jgt r1, r3, jmp_5ee0

jmp_3a08:
  add64 r3, -0x21
  stxdw [r10-0x128], r3
  mov64 r1, r2
  add64 r1, 0x21
  stxdw [r10-0x130], r1
  ldxdw r3, [r2+0x7]
  ldxb r1, [r2+0xf]
  stxb [r10-0x38], r1
  ldxb r1, [r2+0x6]
  stxdw [r10-0x160], r1
  ldxh r1, [r2+0x4]
  stxdw [r10-0x170], r1
  ldxh r1, [r2+0x2]
  stxdw [r10-0x168], r1
  ldxb r5, [r2+0x1]
  stxdw [r10-0x190], r3
  stxdw [r10-0x40], r3
  ldxdw r0, [r10-0x3f]
  ldxb r1, [r2+0x20]
  stxdw [r10-0x158], r1
  ldxw r1, [r2+0x1c]
  stxdw [r10-0x180], r1
  ldxh r1, [r2+0x1a]
  stxdw [r10-0x188], r1
  ldxb r1, [r2+0x19]
  stxdw [r10-0x178], r1
  ldxb r1, [r2+0x18]
  stxdw [r10-0x150], r1
  ldxw r1, [r2+0x14]
  stxdw [r10-0x148], r1
  ldxh r8, [r2+0x12]
  ldxh r1, [r2+0x10]
  stxdw [r10-0x140], r1
  ja jmp_6058

jmp_3b18:
  jsgt r9, 0x14, jmp_3dc0
  mov64 r4, r9
  add64 r4, -0x13
  mov64 r7, 0x2
  jgt r7, r4, jmp_6058
  jeq r9, 0x12, jmp_3b50
  ja jmp_4828

jmp_3b50:
  jeq r1, 0x0, jmp_5ee0
  add64 r3, -0x2
  ldxb r5, [r2+0x1]
  stxdw [r10-0x128], r3
  add64 r2, 0x2
  stxdw [r10-0x130], r2
  stxb [r10-0x98], r5
  mov64 r1, 0x2
  jgt r1, r5, jmp_48c8
  ja jmp_5c10

jmp_3ba0:
  mov64 r1, r9
  add64 r1, -0x8
  mov64 r4, 0x3
  jgt r4, r1, jmp_6058
  jeq r9, 0xb, jmp_3bd0
  ja jmp_4828

jmp_3bd0:
  mov64 r1, 0x21
  jgt r1, r3, jmp_5ee0
  ja jmp_3a08

jmp_3be8:
  jeq r9, 0x3, jmp_4778
  jeq r9, 0x4, jmp_41d8
  jeq r9, 0x5, jmp_3c08
  ja jmp_4828

jmp_3c08:
  mov64 r1, 0x3
  jgt r1, r3, jmp_5ee0
  mov64 r5, r3
  add64 r5, -0x3
  mov64 r1, 0x2
  jgt r1, r5, jmp_5ee0
  mov64 r5, r3
  add64 r5, -0x5
  jgt r1, r5, jmp_5ee0
  ldxh r1, [r4+0x0]
  stxdw [r10-0x168], r1
  ldxh r1, [r2+0x3]
  stxdw [r10-0x170], r1
  add64 r3, -0x7
  ldxh r1, [r2+0x5]
  stxdw [r10-0x128], r3
  add64 r2, 0x7
  stxdw [r10-0x130], r2
  stxdw [r10-0x160], r1
  rsh64 r1, 0x8
  stxdw [r10-0x190], r1
  ja jmp_6058

jmp_3cb8:
  jeq r9, 0xf, jmp_45d0
  jeq r9, 0x10, jmp_4208
  jeq r9, 0x11, jmp_3cd8
  ja jmp_4828

jmp_3cd8:
  jeq r1, 0x0, jmp_5ee0
  mov64 r5, 0x0
  ldxb r1, [r2+0x1]
  stxb [r10-0x98], r1
  jeq r1, 0x0, jmp_3d10
  jne r1, 0x1, jmp_48d0
  mov64 r5, 0x1

jmp_3d10:
  mov64 r1, 0xa
  jgt r1, r3, jmp_5ee0
  mov64 r1, r3
  add64 r1, -0xa
  mov64 r4, 0x8
  jgt r4, r1, jmp_5ee0
  jeq r3, 0x12, jmp_5ee0
  stxdw [r10-0x178], r5
  ldxdw r0, [r2+0x2]
  ldxdw r8, [r2+0xa]
  add64 r3, -0x13
  ldxb r1, [r2+0x12]
  stxdw [r10-0x150], r1
  stxdw [r10-0x128], r3
  add64 r2, 0x13
  stxdw [r10-0x130], r2
  mov64 r1, r8
  rsh64 r1, 0x20
  stxdw [r10-0x148], r1
  stxdw [r10-0x140], r8
  rsh64 r8, 0x10
  ja jmp_42d0

jmp_3dc0:
  jeq r9, 0x15, jmp_4600
  jeq r9, 0x16, jmp_42d8
  jeq r9, 0x17, jmp_3de0
  ja jmp_4828

jmp_3de0:
  stxdw [r10-0x288], r9
  stxdw [r10-0x138], r6
  mov64 r1, 0x21
  jgt r1, r3, jmp_4078
  ldxdw r7, [r2+0x7]
  ldxb r1, [r2+0xf]
  stxb [r10-0x38], r1
  stxdw [r10-0x40], r7
  mov64 r4, r3
  add64 r4, -0x21
  mov64 r1, 0x20
  jgt r1, r4, jmp_4078
  ldxdw r0, [r10-0x3f]
  mov64 r4, r2
  add64 r4, 0x41
  stxdw [r10-0x130], r4
  ldxdw r5, [r2+0x27]
  ldxb r4, [r2+0x2f]
  stxb [r10-0x38], r4
  stxdw [r10-0x1a8], r5
  stxdw [r10-0x40], r5
  mov64 r4, r3
  add64 r4, -0x41
  jgt r1, r4, jmp_4078
  ldxdw r1, [r10-0x3f]
  stxdw [r10-0x1c0], r1
  ldxdw r8, [r2+0x47]
  ldxb r1, [r2+0x4f]
  stxb [r10-0x38], r1
  stxdw [r10-0x40], r8
  mov64 r1, r3
  add64 r1, -0x61
  mov64 r4, 0x20
  jgt r4, r1, jmp_4078
  ldxdw r9, [r10-0x3f]
  mov64 r5, r3
  add64 r5, -0x81
  stxdw [r10-0x128], r5
  ldxdw r1, [r2+0x67]
  ldxb r6, [r2+0x6f]
  stxb [r10-0x38], r6
  stxdw [r10-0x40], r1
  jgt r4, r5, jmp_4078
  ldxdw r4, [r10-0x3f]
  stxdw [r10-0x1f8], r4
  mov64 r4, r2
  add64 r4, 0xa1
  stxdw [r10-0x198], r4
  stxdw [r10-0x130], r4
  ldxdw r6, [r2+0x87]
  ldxb r5, [r2+0x8f]
  stxb [r10-0x38], r5
  stxdw [r10-0x200], r6
  stxdw [r10-0x40], r6
  mov64 r6, r3
  add64 r6, -0xa1
  mov64 r5, 0x20
  jgt r5, r6, jmp_4078
  ldxdw r6, [r10-0x3f]
  stxdw [r10-0x208], r6
  mov64 r4, r1
  mov64 r1, r9
  ldxdw r9, [r2+0xa7]
  ldxb r6, [r2+0xaf]
  stxb [r10-0x38], r6
  stxdw [r10-0x210], r9
  stxdw [r10-0x40], r9
  mov64 r9, r1
  mov64 r6, r3
  add64 r6, -0xc1
  jgt r5, r6, jmp_4078
  ldxdw r5, [r10-0x3f]
  stxdw [r10-0x230], r5
  ldxdw r6, [r2+0xc7]
  ldxb r5, [r2+0xcf]
  stxb [r10-0x38], r5
  stxdw [r10-0x238], r6
  stxdw [r10-0x40], r6
  mov64 r5, r3
  add64 r5, -0xe1
  mov64 r6, 0x20
  jgt r6, r5, jmp_4078
  ja jmp_5570

jmp_4078:
  lddw r1, data_2af0
  call fn_35778
  ldxdw r6, [r10-0x138]
  ja jmp_5ef8

jmp_40a0:
  mov64 r1, 0x3
  jgt r1, r3, jmp_5ee0
  ldxh r4, [r2+0x1]
  mov64 r1, r2
  add64 r1, 0x3
  stxdw [r10-0x130], r1
  mov64 r5, r3
  add64 r5, -0x3
  stxdw [r10-0x128], r5
  jeq r5, 0x0, jmp_5ee0
  stxdw [r10-0x140], r4
  mov64 r8, 0x0
  mov64 r4, r3
  add64 r4, -0x4
  mov64 r1, r2
  add64 r1, 0x4
  ldxb r0, [r2+0x3]
  stxb [r10-0x98], r0
  mov64 r7, 0x0
  jeq r0, 0x0, jmp_4188
  jne r0, 0x1, jmp_4cc8
  mov64 r1, 0x3
  jgt r1, r5, jmp_5ee0
  mov64 r8, 0x1
  ldxh r7, [r2+0x4]
  add64 r3, -0x6
  add64 r2, 0x6
  mov64 r1, r2
  mov64 r4, r3

jmp_4188:
  stxdw [r10-0x148], r7
  jgt r4, 0x7, jmp_41a0
  ja jmp_5ee0

jmp_41a0:
  ldxdw r2, [r10-0x140]
  add64 r4, -0x8
  ldxdw r0, [r1+0x0]
  stxdw [r10-0x128], r4
  add64 r1, 0x8
  stxdw [r10-0x130], r1
  ja jmp_42d0

jmp_41d8:
  jeq r1, 0x0, jmp_5ee0
  ldxb r5, [r2+0x1]
  stxb [r10-0x59], r5
  mov64 r1, 0x3
  jgt r1, r5, jmp_5ed8
  ja jmp_47a0

jmp_4208:
  jeq r1, 0x0, jmp_5ee0
  mov64 r4, 0x0
  ldxb r1, [r2+0x1]
  stxb [r10-0x98], r1
  jeq r1, 0x0, jmp_4240
  jne r1, 0x1, jmp_48d0
  mov64 r4, 0x1

jmp_4240:
  mov64 r1, 0xa
  jgt r1, r3, jmp_5ee0
  stxdw [r10-0x150], r4
  mov64 r1, r3
  add64 r1, -0xa
  mov64 r4, 0x8
  jgt r4, r1, jmp_5ee0
  ldxdw r0, [r2+0x2]
  add64 r3, -0x12
  ldxdw r8, [r2+0xa]
  stxdw [r10-0x128], r3
  add64 r2, 0x12
  stxdw [r10-0x130], r2
  mov64 r1, r8
  rsh64 r1, 0x20
  stxdw [r10-0x148], r1
  stxdw [r10-0x140], r8
  rsh64 r8, 0x10

jmp_42d0:
  ja jmp_6058

jmp_42d8:
  mov64 r1, 0x6
  jgt r1, r3, jmp_5ee0
  jeq r3, 0x6, jmp_5ee0
  add64 r3, -0x7
  ldxb r1, [r2+0x6]
  stxdw [r10-0x160], r1
  stxdw [r10-0x128], r3
  mov64 r1, r2
  add64 r1, 0x7
  stxdw [r10-0x130], r1
  ldxb r5, [r2+0x1]
  ldxw r1, [r2+0x2]
  stxdw [r10-0x168], r1
  rsh64 r1, 0x10
  stxdw [r10-0x170], r1
  ja jmp_48c8

jmp_4358:
  mov64 r1, 0x21
  jgt r1, r3, jmp_5ee0
  ldxdw r5, [r2+0x7]
  ldxb r1, [r2+0xf]
  stxb [r10-0x38], r1
  stxdw [r10-0x40], r5
  mov64 r1, r3
  add64 r1, -0x21
  mov64 r4, 0x20
  jgt r4, r1, jmp_5ee0
  stxdw [r10-0x190], r5
  ldxdw r0, [r10-0x3f]
  add64 r3, -0x41
  stxdw [r10-0x128], r3
  mov64 r1, r2
  add64 r1, 0x41
  stxdw [r10-0x130], r1
  ldxdw r4, [r2+0x27]
  ldxb r1, [r2+0x2f]
  stxb [r10-0x38], r1
  ldxb r1, [r2+0x26]
  lsh64 r1, 0x10
  ldxh r3, [r2+0x24]
  or64 r3, r1
  stxdw [r10-0x1b0], r3
  ldxh r1, [r2+0x22]
  stxdw [r10-0x1b8], r1
  ldxb r1, [r2+0x21]
  stxdw [r10-0x1a0], r1
  stxdw [r10-0x1a8], r4
  stxdw [r10-0x40], r4
  ldxdw r1, [r10-0x3f]
  mov64 r3, r1
  rsh64 r3, 0x28
  stxdw [r10-0x1f0], r3
  stxdw [r10-0x1c0], r1
  rsh64 r1, 0x20
  stxdw [r10-0x1c8], r1
  ldxb r1, [r2+0x20]
  stxdw [r10-0x158], r1
  ldxw r1, [r2+0x1c]
  stxdw [r10-0x180], r1
  ldxh r1, [r2+0x1a]
  stxdw [r10-0x188], r1
  ldxb r1, [r2+0x19]
  stxdw [r10-0x178], r1
  ldxb r1, [r2+0x18]
  stxdw [r10-0x150], r1
  ldxw r1, [r2+0x14]
  stxdw [r10-0x148], r1
  ldxh r8, [r2+0x12]
  ldxh r1, [r2+0x10]
  stxdw [r10-0x140], r1
  ldxb r1, [r2+0x6]
  stxdw [r10-0x160], r1
  ldxh r1, [r2+0x4]
  stxdw [r10-0x170], r1
  ldxh r1, [r2+0x2]
  stxdw [r10-0x168], r1
  ldxb r5, [r2+0x1]
  ldxb r1, [r2+0x40]
  stxdw [r10-0x1e0], r1
  ldxw r1, [r2+0x3c]
  stxdw [r10-0x1d8], r1
  ldxdw r1, [r2+0x34]
  stxdw [r10-0x1e8], r1
  ldxw r1, [r2+0x30]
  stxdw [r10-0x1d0], r1
  ja jmp_6058

jmp_4580:
  jeq r1, 0x0, jmp_5ee0
  add64 r3, -0x2
  ldxb r5, [r2+0x1]
  stxdw [r10-0x128], r3
  add64 r2, 0x2
  stxdw [r10-0x130], r2
  stxb [r10-0x98], r5
  mov64 r1, 0x2
  jgt r1, r5, jmp_48c8
  ja jmp_5c10

jmp_45d0:
  jeq r1, 0x0, jmp_5ee0
  ldxb r5, [r2+0x1]
  stxb [r10-0x98], r5
  mov64 r1, 0x2
  jgt r1, r5, jmp_4940
  ja jmp_5c10

jmp_4600:
  mov64 r1, 0x9
  jgt r1, r3, jmp_5ee0
  mov64 r1, r3
  add64 r1, -0x9
  mov64 r5, 0x4
  jgt r5, r1, jmp_5ee0
  ldxdw r1, [r4+0x0]
  stxdw [r10-0x158], r1
  mov64 r8, 0x1
  mov64 r4, 0x0
  add64 r3, -0xd
  ldxw r5, [r2+0x9]
  stxdw [r10-0x128], r3
  add64 r2, 0xd
  stxdw [r10-0x130], r2
  mov64 r1, 0x0
  jeq r5, 0x0, jmp_4fc8
  mov64 r1, 0x100000
  mov64 r8, r5
  stxdw [r10-0x148], r5
  jgt r1, r5, jmp_46b0
  mov64 r8, 0x100000

jmp_46b0:
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  lddw r5, 0x300008000
  jeq r1, 0x0, jmp_46e8
  mov64 r5, r1

jmp_46e8:
  mov64 r4, r5
  sub64 r4, r8
  mov64 r1, 0x0
  mov64 r0, 0x1
  jgt r4, r5, jmp_4718
  mov64 r0, 0x0

jmp_4718:
  jne r0, 0x0, jmp_4728
  mov64 r1, r4

jmp_4728:
  stxdw [r10-0x288], r9
  stxdw [r10-0x138], r6
  stxdw [r10-0x140], r3
  mov64 r7, r2
  lddw r2, 0x300000007
  jgt r1, r2, jmp_4980
  mov64 r1, 0x1
  mov64 r2, r8
  call fn_379f0

jmp_4778:
  jeq r1, 0x0, jmp_5ee0
  ldxb r5, [r2+0x1]
  stxb [r10-0x59], r5
  mov64 r1, 0x3
  jgt r1, r5, jmp_4970

jmp_47a0:
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  lddw r1, data_35a0
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x38], r1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x3db
  stxdw [r10-0x8], r1
  mov64 r1, r10
  add64 r1, -0x59
  ja jmp_5c90

jmp_4828:
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  lddw r1, data_35a0
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x38], r1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x58
  stxdw [r10-0x30], r1
  lddw r1, 0x3db
  stxdw [r10-0x50], r1
  mov64 r1, r10
  add64 r1, -0x119
  stxdw [r10-0x58], r1
  mov64 r7, r10
  add64 r7, -0x78
  ja jmp_5ca8

jmp_48c8:
  ja jmp_6058

jmp_48d0:
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  lddw r1, data_35a0
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x38], r1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x3db
  ja jmp_5c78

jmp_4940:
  jeq r3, 0x2, jmp_5ee0
  ldxb r1, [r2+0x2]
  stxb [r10-0x98], r1
  mov64 r4, 0x2
  jgt r4, r1, jmp_50a8
  ja jmp_5c10

jmp_4970:
  jgt r3, 0x21, jmp_5f18
  ja jmp_5ee0

jmp_4980:
  lddw r2, 0x300000000
  stxdw [r2+0x0], r1
  mov64 r2, 0x0
  mov64 r3, r8
  mov64 r6, r1
  call fn_493f8
  mov64 r4, r8
  mov64 r0, r6
  stxdw [r10-0x30], r4
  stxdw [r10-0x40], r4
  stxdw [r10-0x38], r0
  mov64 r9, 0x0
  ldxdw r3, [r10-0x140]
  ldxdw r6, [r10-0x138]
  ldxdw r5, [r10-0x148]
  ja jmp_4a18

jmp_4a08:
  add64 r9, r8
  jge r9, r5, jmp_4d10

jmp_4a18:
  mov64 r8, r9
  jne r8, r4, jmp_4b98
  mov64 r9, r4
  lsh64 r9, 0x1
  jgt r5, r9, jmp_4a48
  mov64 r9, r5

jmp_4a48:
  jge r4, r9, jmp_4b88
  sub64 r9, r4
  ldxdw r1, [r10-0x40]
  sub64 r1, r4
  jge r1, r9, jmp_4ac8
  mov64 r1, r10
  add64 r1, -0x40
  mov64 r2, r4
  mov64 r6, r3
  mov64 r3, r9
  call fn_31d0
  ldxdw r5, [r10-0x148]
  mov64 r3, r6
  ldxdw r6, [r10-0x138]
  ldxdw r0, [r10-0x38]
  ldxdw r4, [r10-0x30]

jmp_4ac8:
  mov64 r1, r0
  add64 r1, r4
  mov64 r2, 0x2
  jgt r2, r9, jmp_4b68
  add64 r9, -0x1
  stxdw [r10-0x150], r7
  mov64 r2, 0x0
  stxdw [r10-0x140], r3
  mov64 r3, r9
  mov64 r6, r0
  mov64 r7, r4
  call fn_493f8
  ldxdw r5, [r10-0x148]
  mov64 r4, r7
  ldxdw r3, [r10-0x140]
  ldxdw r7, [r10-0x150]
  add64 r4, r9
  add64 r6, r4
  mov64 r1, r6
  ldxdw r6, [r10-0x138]

jmp_4b68:
  mov64 r2, 0x0
  stxb [r1+0x0], r2
  add64 r4, 0x1
  mov64 r9, r4

jmp_4b88:
  stxdw [r10-0x30], r9
  mov64 r4, r9

jmp_4b98:
  jge r4, r8, jmp_4bc8
  mov64 r1, r8
  mov64 r2, r4
  lddw r3, data_2c40
  call fn_45190

jmp_4bc8:
  mov64 r9, r4
  sub64 r9, r8
  jgt r3, r9, jmp_4be8
  mov64 r9, r3

jmp_4be8:
  ldxdw r0, [r10-0x38]
  mov64 r1, r0
  add64 r1, r8
  jne r9, 0x1, jmp_4c30
  ldxb r2, [r7+0x0]
  stxb [r1+0x0], r2
  add64 r7, 0x1
  add64 r3, -0x1
  ja jmp_4a08

jmp_4c30:
  mov64 r2, r7
  stxdw [r10-0x140], r3
  mov64 r3, r9
  stxdw [r10-0x198], r0
  mov64 r6, r4
  call fn_490d0
  ldxdw r5, [r10-0x148]
  mov64 r4, r6
  ldxdw r3, [r10-0x140]
  ldxdw r0, [r10-0x198]
  ldxdw r6, [r10-0x138]
  add64 r7, r9
  sub64 r3, r9
  jne r9, 0x0, jmp_4a08
  lddw r1, str_026b
  mov64 r2, 0x1a
  call fn_15f8
  ja jmp_5ef8

jmp_4cc8:
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  mov64 r1, 0x2
  stxdw [r10-0x38], r1
  lddw r1, data_2d40
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  ja jmp_5c48

jmp_4d10:
  stxdw [r10-0x128], r3
  stxdw [r10-0x130], r7
  ldxdw r1, [r10-0x40]
  lddw r2, -0x7fffffffffffffff
  ldxdw r9, [r10-0x288]
  jeq r1, r2, jmp_5ef8
  lddw r2, -0x8000000000000000
  mov64 r8, r0
  jne r1, r2, jmp_4fc8
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  lddw r4, 0x300008000
  jeq r1, 0x0, jmp_4da0
  mov64 r4, r1

jmp_4da0:
  mov64 r1, 0x1000
  mov64 r2, r5
  jgt r1, r5, jmp_4dc0
  mov64 r2, 0x1000

jmp_4dc0:
  mov64 r5, 0x1
  jgt r2, 0x1, jmp_4dd8
  mov64 r2, 0x1

jmp_4dd8:
  mov64 r0, r4
  sub64 r0, r2
  mov64 r1, 0x0
  jgt r0, r4, jmp_4e00
  mov64 r5, 0x0

jmp_4e00:
  jne r5, 0x0, jmp_4e10
  mov64 r1, r0

jmp_4e10:
  lddw r4, 0x300000008
  jgt r4, r1, jmp_6758
  lddw r4, 0x300000000
  stxdw [r4+0x0], r1
  mov64 r4, 0x0
  stxdw [r10-0x30], r4
  stxdw [r10-0x38], r1
  stxdw [r10-0x40], r2
  jeq r3, 0x0, jmp_5ee0
  stxdw [r10-0x150], r7
  ja jmp_4e90

jmp_4e78:
  add64 r5, 0x1
  mov64 r4, r5
  jeq r3, r4, jmp_5ee0

jmp_4e90:
  mov64 r2, r7
  add64 r2, r4
  ldxb r8, [r2+0x0]
  ldxdw r2, [r10-0x40]
  jne r4, r2, jmp_4f08
  mov64 r1, r10
  add64 r1, -0x40
  mov64 r6, r3
  mov64 r7, r4
  call fn_3318
  mov64 r4, r7
  mov64 r3, r6
  ldxdw r6, [r10-0x138]
  ldxdw r7, [r10-0x150]
  ldxdw r1, [r10-0x38]

jmp_4f08:
  mov64 r2, r4
  add64 r2, 0x1
  mov64 r5, r4
  mov64 r4, r1
  add64 r4, r5
  stxb [r4+0x0], r8
  stxdw [r10-0x30], r2
  ldxdw r4, [r10-0x148]
  jgt r4, r2, jmp_4e78
  mov64 r1, r5
  xor64 r1, -0x1
  add64 r1, r3
  stxdw [r10-0x128], r1
  add64 r7, r5
  add64 r7, 0x1
  stxdw [r10-0x130], r7
  ldxdw r8, [r10-0x38]
  add64 r5, 0x1
  ldxdw r1, [r10-0x40]
  lddw r2, -0x8000000000000000
  mov64 r0, r8
  mov64 r4, r5
  jeq r1, r2, jmp_5ef8

jmp_4fc8:
  mov64 r2, r8
  rsh64 r2, 0x20
  stxdw [r10-0x148], r2
  stxdw [r10-0x140], r8
  rsh64 r8, 0x10
  ldxdw r2, [r10-0x158]
  mov64 r3, r2
  rsh64 r3, 0x38
  stxdw [r10-0x1a8], r3
  mov64 r3, r2
  rsh64 r3, 0x20
  stxdw [r10-0x1b0], r3
  mov64 r3, r2
  rsh64 r3, 0x10
  stxdw [r10-0x1b8], r3
  rsh64 r2, 0x8
  stxdw [r10-0x1a0], r2
  mov64 r2, r4
  rsh64 r2, 0x20
  stxdw [r10-0x180], r2
  mov64 r2, r4
  rsh64 r2, 0x10
  stxdw [r10-0x188], r2
  stxdw [r10-0x150], r4
  rsh64 r4, 0x8
  stxdw [r10-0x178], r4
  mov64 r0, r1
  ja jmp_6058

jmp_50a8:
  jeq r3, 0x3, jmp_5ee0
  ldxb r7, [r2+0x3]
  mov64 r4, r2
  add64 r4, 0x4
  stxdw [r10-0x130], r4
  mov64 r4, r3
  add64 r4, -0x4
  stxdw [r10-0x128], r4
  stxb [r10-0x98], r7
  mov64 r0, 0x2
  jgt r0, r7, jmp_54f8
  ja jmp_5c10

jmp_5108:
  mov64 r5, 0x8
  jgt r5, r4, jmp_5ee0
  mov64 r4, r3
  add64 r4, -0x12
  jgt r5, r4, jmp_5ee0
  mov64 r5, r3
  add64 r5, -0x1a
  mov64 r4, 0x4
  jgt r4, r5, jmp_5ee0
  mov64 r5, r3
  add64 r5, -0x1e
  jgt r4, r5, jmp_5ee0
  stxdw [r10-0x1c8], r8
  stxdw [r10-0x228], r7
  stxdw [r10-0x1c0], r0
  ldxdw r1, [r1+0x0]
  stxdw [r10-0x198], r1
  ldxdw r1, [r2+0x12]
  stxdw [r10-0x140], r1
  ldxw r1, [r2+0x1a]
  stxdw [r10-0x150], r1
  ldxw r1, [r2+0x1e]
  stxdw [r10-0x180], r1
  mov64 r1, r2
  add64 r1, 0x22
  stxdw [r10-0x130], r1
  mov64 r4, r3
  add64 r4, -0x22
  stxdw [r10-0x128], r4
  mov64 r5, 0x4
  jgt r5, r4, jmp_5ee0
  mov64 r4, r3
  add64 r4, -0x26
  mov64 r5, 0x5
  jgt r5, r4, jmp_5ee0
  mov64 r5, r3
  add64 r5, -0x2b
  mov64 r4, 0x4
  jgt r4, r5, jmp_5ee0
  ldxw r1, [r1+0x0]
  stxdw [r10-0x1d0], r1
  ldxw r8, [r2+0x26]
  ldxb r7, [r2+0x2a]
  ldxw r1, [r2+0x2b]
  stxdw [r10-0x1d8], r1
  mov64 r1, r2
  add64 r1, 0x2f
  stxdw [r10-0x130], r1
  mov64 r5, r3
  add64 r5, -0x2f
  stxdw [r10-0x128], r5
  jgt r4, r5, jmp_5ee0
  jeq r3, 0x33, jmp_5ee0
  mov64 r4, r3
  and64 r4, -0x4
  jeq r4, 0x34, jmp_5ee0
  jeq r4, 0x38, jmp_5ee0
  ldxw r1, [r1+0x0]
  stxdw [r10-0x1e0], r1
  ldxb r1, [r2+0x33]
  stxdw [r10-0x218], r1
  ldxw r1, [r2+0x34]
  stxdw [r10-0x220], r1
  ldxw r1, [r2+0x38]
  stxdw [r10-0x138], r1
  mov64 r1, r2
  add64 r1, 0x3c
  stxdw [r10-0x130], r1
  mov64 r4, r3
  add64 r4, -0x3c
  stxdw [r10-0x128], r4
  jeq r4, 0x0, jmp_5ee0
  mov64 r5, r3
  add64 r5, -0x3d
  mov64 r4, 0x4
  jgt r4, r5, jmp_5ee0
  mov64 r5, r3
  add64 r5, -0x41
  jgt r4, r5, jmp_5ee0
  jeq r3, 0x45, jmp_5ee0
  ldxb r1, [r1+0x0]
  stxdw [r10-0x248], r1
  ldxw r1, [r2+0x3d]
  stxdw [r10-0x250], r1
  ldxw r1, [r2+0x41]
  stxdw [r10-0x148], r1
  ldxb r1, [r2+0x45]
  stxdw [r10-0x240], r1
  mov64 r1, r2
  add64 r1, 0x46
  stxdw [r10-0x130], r1
  mov64 r4, r3
  add64 r4, -0x46
  stxdw [r10-0x128], r4
  mov64 r5, 0x4
  jgt r5, r4, jmp_5ee0
  mov64 r4, r3
  add64 r4, -0x4a
  mov64 r5, 0x5
  jgt r5, r4, jmp_5ee0
  mov64 r4, r2
  mov64 r2, r3
  add64 r3, -0x4f
  mov64 r5, 0x8
  jgt r5, r3, jmp_5ee0
  ldxw r1, [r1+0x0]
  stxdw [r10-0x260], r1
  ldxw r1, [r4+0x4a]
  stxdw [r10-0x160], r1
  ldxb r1, [r4+0x4e]
  stxdw [r10-0x258], r1
  add64 r2, -0x57
  ldxdw r1, [r4+0x4f]
  stxdw [r10-0x158], r1
  stxdw [r10-0x128], r2
  add64 r4, 0x57
  stxdw [r10-0x130], r4
  mov64 r1, r10
  add64 r1, -0x40
  mov64 r2, r10
  add64 r2, -0x130
  call fn_26880
  ldxh r1, [r10-0x40]
  jeq r1, 0x0, jmp_6578
  ldxdw r0, [r10-0x38]
  ja jmp_5ef8

jmp_54f8:
  jeq r4, 0x0, jmp_5ee0
  ldxb r4, [r2+0x4]
  stxb [r10-0x98], r4
  jgt r0, r4, jmp_5520
  ja jmp_5c10

jmp_5520:
  jeq r3, 0x5, jmp_5ee0
  stxdw [r10-0x288], r9
  mov64 r0, r3
  mov64 r3, r2
  ldxb r8, [r2+0x5]
  stxb [r10-0x98], r8
  mov64 r2, 0x2
  mov64 r9, r8
  jgt r2, r8, jmp_5b08
  ja jmp_5c10

jmp_5570:
  stxdw [r10-0x190], r7
  stxdw [r10-0x268], r4
  mov64 r4, r2
  add64 r4, 0x81
  stxdw [r10-0x1f0], r4
  mov64 r5, r2
  add64 r5, 0x90
  mov64 r7, r2
  add64 r7, 0xb0
  mov64 r4, r2
  add64 r4, 0xc1
  stxdw [r10-0x1c8], r4
  ldxdw r6, [r10-0x3f]
  stxdw [r10-0x270], r6
  add64 r3, -0x101
  stxdw [r10-0x128], r3
  mov64 r3, r2
  add64 r3, 0x101
  stxdw [r10-0x130], r3
  ldxdw r6, [r2+0xe7]
  ldxb r3, [r2+0xef]
  stxb [r10-0x38], r3
  stxdw [r10-0x278], r6
  stxdw [r10-0x40], r6
  ldxdw r3, [r10-0x3f]
  stxdw [r10-0x280], r3
  ldxdw r3, [r2+0xf0]
  stxdw [r10-0x118], r3
  ldxdw r3, [r2+0xf8]
  stxdw [r10-0x110], r3
  ldxb r3, [r2+0x100]
  stxb [r10-0x108], r3
  ldxh r3, [r2+0x10]
  stxdw [r10-0x140], r3
  stxdw [r10-0x218], r8
  ldxh r8, [r2+0x12]
  ldxw r3, [r2+0x14]
  stxdw [r10-0x148], r3
  ldxb r3, [r2+0x18]
  stxdw [r10-0x150], r3
  ldxb r3, [r2+0x19]
  stxdw [r10-0x178], r3
  ldxh r3, [r2+0x1a]
  stxdw [r10-0x188], r3
  ldxw r3, [r2+0x1c]
  stxdw [r10-0x180], r3
  ldxb r3, [r2+0x20]
  stxdw [r10-0x158], r3
  ldxw r3, [r2+0x30]
  stxdw [r10-0x1d0], r3
  ldxdw r3, [r2+0x34]
  stxdw [r10-0x1e8], r3
  ldxw r3, [r2+0x3c]
  stxdw [r10-0x1d8], r3
  ldxb r3, [r2+0x40]
  stxdw [r10-0x1e0], r3
  ldxw r3, [r2+0x54]
  stxdw [r10-0x250], r3
  ldxdw r3, [r2+0x58]
  stxdw [r10-0x240], r3
  ldxb r3, [r2+0x70]
  stxdw [r10-0x228], r3
  ldxw r3, [r2+0x50]
  stxdw [r10-0x248], r3
  ldxb r3, [r2+0x60]
  stxdw [r10-0x258], r3
  ldxw r3, [r2+0x74]
  stxw [r10-0x9d], r3
  ldxw r3, [r2+0x71]
  stxw [r10-0xa0], r3
  ldxb r3, [r2+0x80]
  stxb [r10-0x80], r3
  ldxdw r3, [r2+0x78]
  stxdw [r10-0x88], r3
  ldxb r3, [r5+0x10]
  stxb [r10-0xa8], r3
  ldxdw r3, [r5+0x8]
  stxdw [r10-0xb0], r3
  ldxdw r3, [r5+0x0]
  stxdw [r10-0xb8], r3
  ldxb r3, [r7+0x10]
  stxb [r10-0xc8], r3
  ldxdw r3, [r7+0x8]
  stxdw [r10-0xd0], r3
  ldxdw r3, [r7+0x0]
  stxdw [r10-0xd8], r3
  ldxb r3, [r2+0xe0]
  stxb [r10-0xe8], r3
  ldxdw r3, [r2+0xd8]
  stxdw [r10-0xf0], r3
  ldxdw r3, [r2+0xd0]
  stxdw [r10-0xf8], r3
  ldxh r3, [r2+0x22]
  stxdw [r10-0x1b8], r3
  ldxb r3, [r2+0x21]
  stxdw [r10-0x1a0], r3
  ldxb r3, [r2+0x6]
  stxdw [r10-0x160], r3
  ldxh r3, [r2+0x4]
  stxdw [r10-0x170], r3
  ldxh r3, [r2+0x2]
  stxdw [r10-0x168], r3
  ldxb r5, [r2+0x1]
  ldxh r1, [r2+0x24]
  stxdw [r10-0x1b0], r1
  ldxb r1, [r2+0x26]
  stxdw [r10-0x260], r1
  ldxb r6, [r2+0x63]
  ldxh r7, [r2+0x61]
  ldxw r1, [r2+0x41]
  ldxh r3, [r2+0x45]
  stxdw [r10-0x220], r9
  ldxb r9, [r2+0x66]
  stxb [r10-0x56], r9
  ldxh r9, [r2+0x64]
  stxh [r10-0x58], r9
  ldxdw r4, [r10-0x1f0]
  ldxh r9, [r4+0x4]
  stxh [r10-0x7b], r9
  ldxw r9, [r4+0x0]
  stxw [r10-0x7f], r9
  ldxdw r4, [r10-0x198]
  ldxh r9, [r4+0x4]
  stxh [r10-0xbc], r9
  ldxw r4, [r4+0x0]
  stxw [r10-0xc0], r4
  lsh64 r3, 0x20
  mov64 r9, r1
  or64 r9, r3
  lsh64 r7, 0x8
  lsh64 r6, 0x18
  or64 r6, r7
  ldxdw r3, [r10-0x260]
  lsh64 r3, 0x10
  ldxdw r1, [r10-0x1b0]
  or64 r1, r3
  stxdw [r10-0x1b0], r1
  ldxdw r4, [r10-0x1c8]
  ldxw r3, [r4+0x0]
  stxw [r10-0xe0], r3
  ldxh r3, [r4+0x4]
  stxh [r10-0xdc], r3
  ldxdw r3, [r10-0x258]
  or64 r6, r3
  stxdw [r10-0x260], r6
  ldxdw r3, [r10-0x218]
  lsh64 r3, 0x30
  or64 r3, r9
  stxdw [r10-0x218], r3
  ldxw r3, [r2+0xe1]
  stxw [r10-0x100], r3
  ldxh r2, [r2+0xe5]
  stxh [r10-0xfc], r2
  ldxdw r2, [r10-0x248]
  stxw [r10-0x38], r2
  ldxdw r1, [r10-0x268]
  stxb [r10-0x55], r1
  ldxdw r1, [r10-0x220]
  stxdw [r10-0x40], r1
  ldxdw r1, [r10-0x1f8]
  mov64 r2, r1
  rsh64 r2, 0x30
  stxdw [r10-0x268], r2
  stxdw [r10-0x54], r1
  rsh64 r1, 0x20
  stxdw [r10-0x1f8], r1
  ldxdw r1, [r10-0x1c0]
  mov64 r2, r1
  rsh64 r2, 0x28
  stxdw [r10-0x1f0], r2
  rsh64 r1, 0x20
  stxdw [r10-0x1c8], r1
  ldxdw r1, [r10-0x58]
  stxdw [r10-0x258], r1
  ldxdw r1, [r10-0x3c]
  stxdw [r10-0x248], r1
  ldxdw r6, [r10-0x138]
  ldxdw r9, [r10-0x288]
  ja jmp_6058

jmp_5b08:
  jeq r0, 0x6, jmp_5ee0
  add64 r0, -0x7
  ldxb r8, [r3+0x6]
  stxdw [r10-0x128], r0
  add64 r3, 0x7
  stxdw [r10-0x130], r3
  stxb [r10-0x98], r8
  stxdw [r10-0x160], r8
  jgt r2, r8, jmp_6538
  ja jmp_5c10

jmp_5b58:
  mov64 r1, 0x3
  jgt r1, r3, jmp_5ee0
  mov64 r1, r3
  add64 r1, -0x3
  mov64 r5, 0x2
  jgt r5, r1, jmp_5ee0
  ldxh r1, [r4+0x0]
  ldxh r8, [r2+0x3]
  mov64 r4, r2
  add64 r4, 0x5
  stxdw [r10-0x130], r4
  mov64 r5, r3
  add64 r5, -0x5
  stxdw [r10-0x128], r5
  mov64 r0, 0x4
  jgt r0, r5, jmp_5ee0
  jeq r3, 0x9, jmp_5ee0
  ldxw r7, [r4+0x0]
  ldxb r5, [r2+0x9]
  stxb [r10-0x98], r5
  mov64 r4, 0x2
  stxdw [r10-0x1c8], r5
  jgt r4, r5, jmp_5ce0

jmp_5c10:
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  lddw r1, data_2c58
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x38], r1

jmp_5c48:
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x8ae0

jmp_5c78:
  stxdw [r10-0x8], r1
  mov64 r1, r10
  add64 r1, -0x98

jmp_5c90:
  stxdw [r10-0x10], r1
  mov64 r7, r10
  add64 r7, -0x58

jmp_5ca8:
  mov64 r2, r10
  add64 r2, -0x40
  mov64 r1, r7
  call fn_37aa0
  mov64 r1, r7
  call fn_14d8
  ja jmp_5ef8

jmp_5ce0:
  mov64 r4, r3
  add64 r4, -0xa
  mov64 r5, 0x4
  jgt r5, r4, jmp_5ee0
  ldxw r4, [r2+0xa]
  stxdw [r10-0x1b0], r4
  mov64 r4, r2
  add64 r4, 0xe
  stxdw [r10-0x130], r4
  mov64 r0, r3
  add64 r0, -0xe
  stxdw [r10-0x128], r0
  mov64 r5, 0x8
  jgt r5, r0, jmp_5ee0
  mov64 r0, r3
  add64 r0, -0x16
  jgt r5, r0, jmp_5ee0
  mov64 r0, r3
  add64 r0, -0x1e
  mov64 r5, 0x4
  jgt r5, r0, jmp_5ee0
  mov64 r0, r3
  add64 r0, -0x22
  jgt r5, r0, jmp_5ee0
  ldxdw r0, [r4+0x0]
  ldxdw r5, [r2+0x16]
  ldxw r4, [r2+0x1e]
  lsh64 r8, 0x10
  or64 r8, r1
  stxdw [r10-0x1c0], r8
  add64 r3, -0x26
  ldxw r1, [r2+0x22]
  stxdw [r10-0x180], r1
  stxdw [r10-0x128], r3
  add64 r2, 0x26
  stxdw [r10-0x130], r2
  lddw r1, 0xff000000
  ldxdw r2, [r10-0x1b0]
  and64 r2, r1
  mov64 r1, r5
  rsh64 r1, 0x20
  stxdw [r10-0x148], r1
  stxdw [r10-0x140], r5
  mov64 r8, r5
  rsh64 r8, 0x10
  rsh64 r2, 0x18
  stxdw [r10-0x1a8], r2
  stxdw [r10-0x158], r7
  mov64 r2, r7
  mov64 r1, r2
  rsh64 r1, 0x10
  stxdw [r10-0x1b8], r1
  rsh64 r2, 0x8
  stxdw [r10-0x1a0], r2
  stxdw [r10-0x150], r4
  mov64 r2, r4
  mov64 r1, r2
  rsh64 r1, 0x10
  stxdw [r10-0x188], r1
  rsh64 r2, 0x8
  stxdw [r10-0x178], r2
  ja jmp_42d0

jmp_5ed8:
  jgt r3, 0x21, jmp_5f18

jmp_5ee0:
  lddw r1, data_2af0
  call fn_35778

jmp_5ef8:
  mov64 r1, 0x18
  stxb [r6+0x0], r1
  stxdw [r6+0x8], r0

jmp_5f10:
  exit

jmp_5f18:
  add64 r3, -0x22
  stxdw [r10-0x128], r3
  mov64 r1, r2
  add64 r1, 0x22
  stxdw [r10-0x130], r1
  ldxdw r1, [r2+0x8]
  ldxb r3, [r2+0x10]
  stxb [r10-0x38], r3
  ldxb r3, [r2+0x7]
  stxdw [r10-0x190], r3
  ldxb r3, [r2+0x6]
  stxdw [r10-0x160], r3
  ldxh r3, [r2+0x4]
  stxdw [r10-0x170], r3
  ldxh r3, [r2+0x2]
  stxdw [r10-0x168], r3
  stxdw [r10-0x40], r1
  ldxdw r3, [r10-0x3f]
  ldxb r4, [r2+0x11]
  stxb [r10-0x8f], r4
  ldxb r4, [r2+0x21]
  stxdw [r10-0x1a0], r4
  ldxb r4, [r2+0x20]
  stxdw [r10-0x158], r4
  ldxw r4, [r2+0x1c]
  stxdw [r10-0x180], r4
  ldxh r4, [r2+0x1a]
  stxdw [r10-0x188], r4
  ldxb r4, [r2+0x19]
  stxdw [r10-0x178], r4
  ldxb r4, [r2+0x18]
  stxdw [r10-0x150], r4
  ldxw r4, [r2+0x14]
  stxdw [r10-0x148], r4
  ldxh r8, [r2+0x12]
  stxdw [r10-0x97], r3
  stxb [r10-0x98], r1
  ldxh r1, [r10-0x90]
  stxdw [r10-0x140], r1
  ldxdw r0, [r10-0x98]

jmp_6058:
  jeq r9, 0x18, jmp_5ef8
  ldxdw r1, [r10-0x128]
  jeq r1, 0x0, jmp_60b0
  lddw r1, str_02b5
  mov64 r2, 0x12
  call fn_15f8
  stxdw [r6+0x8], r0
  mov64 r1, 0x18
  stxb [r6+0x0], r1
  ja jmp_5f10

jmp_60b0:
  ldxdw r1, [r10-0x140]
  and64 r1, 0xffff
  and64 r8, 0xffff
  lsh64 r8, 0x10
  or64 r8, r1
  ldxdw r1, [r10-0x148]
  lsh64 r1, 0x20
  or64 r8, r1
  ldxw r1, [r10-0x9d]
  stxw [r6+0x74], r1
  ldxw r1, [r10-0xa0]
  stxw [r6+0x71], r1
  ldxdw r1, [r10-0x81]
  stxdw [r6+0x7f], r1
  ldxdw r1, [r10-0x88]
  stxdw [r6+0x78], r1
  ldxb r1, [r10-0xa8]
  stxb [r6+0xa0], r1
  ldxdw r1, [r10-0xb0]
  stxdw [r6+0x98], r1
  ldxdw r1, [r10-0xb8]
  stxdw [r6+0x90], r1
  ldxh r1, [r10-0xbc]
  stxh [r6+0xa5], r1
  ldxw r1, [r10-0xc0]
  stxw [r6+0xa1], r1
  ldxdw r1, [r10-0xd8]
  stxdw [r6+0xb0], r1
  ldxdw r1, [r10-0xd0]
  stxdw [r6+0xb8], r1
  ldxb r1, [r10-0xc8]
  stxb [r6+0xc0], r1
  ldxh r1, [r10-0xdc]
  stxh [r6+0xc5], r1
  ldxw r1, [r10-0xe0]
  stxw [r6+0xc1], r1
  ldxdw r1, [r10-0xf8]
  stxdw [r6+0xd0], r1
  ldxdw r1, [r10-0xf0]
  stxdw [r6+0xd8], r1
  ldxb r1, [r10-0xe8]
  stxb [r6+0xe0], r1
  ldxw r1, [r10-0x100]
  stxw [r6+0xe1], r1
  ldxh r1, [r10-0xfc]
  stxh [r6+0xe5], r1
  ldxdw r7, [r10-0x1b0]
  mov64 r1, r7
  rsh64 r1, 0x10
  ldxb r2, [r10-0x108]
  ldxdw r3, [r10-0x110]
  ldxdw r4, [r10-0x118]
  stxb [r6+0x26], r1
  stxh [r6+0x24], r7
  ldxdw r7, [r10-0x1f0]
  mov64 r1, r7
  rsh64 r1, 0x10
  stxb [r6+0x2f], r1
  stxh [r6+0x2d], r7
  ldxdw r7, [r10-0x218]
  mov64 r1, r7
  rsh64 r1, 0x30
  stxb [r6+0x47], r1
  mov64 r1, r7
  rsh64 r1, 0x20
  stxh [r6+0x45], r1
  stxw [r6+0x41], r7
  stxdw [r6+0xf0], r4
  stxdw [r6+0xf8], r3
  stxb [r6+0x100], r2
  stxdw [r6+0x8], r0
  stxdw [r6+0x10], r8
  ldxdw r1, [r10-0x1e8]
  stxdw [r6+0x34], r1
  ldxdw r1, [r10-0x248]
  stxdw [r6+0x4c], r1
  ldxdw r1, [r10-0x240]
  stxdw [r6+0x58], r1
  ldxdw r1, [r10-0x258]
  stxdw [r6+0x64], r1
  ldxdw r1, [r10-0x208]
  stxdw [r6+0x88], r1
  ldxdw r1, [r10-0x230]
  stxdw [r6+0xa8], r1
  ldxdw r1, [r10-0x270]
  stxdw [r6+0xc8], r1
  ldxdw r1, [r10-0x280]
  stxdw [r6+0xe8], r1
  ldxdw r1, [r10-0x278]
  stxb [r6+0xe7], r1
  ldxdw r1, [r10-0x238]
  stxb [r6+0xc7], r1
  ldxdw r1, [r10-0x210]
  stxb [r6+0xa7], r1
  ldxdw r1, [r10-0x200]
  stxb [r6+0x87], r1
  ldxdw r1, [r10-0x228]
  stxb [r6+0x70], r1
  ldxdw r1, [r10-0x268]
  stxh [r6+0x6e], r1
  ldxdw r1, [r10-0x1f8]
  stxh [r6+0x6c], r1
  ldxdw r1, [r10-0x260]
  stxw [r6+0x60], r1
  ldxdw r1, [r10-0x250]
  stxw [r6+0x54], r1
  ldxdw r1, [r10-0x220]
  stxw [r6+0x48], r1
  ldxdw r1, [r10-0x1e0]
  stxb [r6+0x40], r1
  ldxdw r1, [r10-0x1d8]
  stxw [r6+0x3c], r1
  ldxdw r1, [r10-0x1d0]
  stxw [r6+0x30], r1
  ldxdw r1, [r10-0x1c8]
  stxb [r6+0x2c], r1
  ldxdw r1, [r10-0x1c0]
  stxw [r6+0x28], r1
  ldxdw r1, [r10-0x1a8]
  stxb [r6+0x27], r1
  ldxdw r1, [r10-0x1b8]
  stxh [r6+0x22], r1
  ldxdw r1, [r10-0x1a0]
  stxb [r6+0x21], r1
  ldxdw r1, [r10-0x158]
  stxb [r6+0x20], r1
  ldxdw r1, [r10-0x180]
  stxw [r6+0x1c], r1
  ldxdw r1, [r10-0x188]
  stxh [r6+0x1a], r1
  ldxdw r1, [r10-0x178]
  stxb [r6+0x19], r1
  ldxdw r1, [r10-0x150]
  stxb [r6+0x18], r1
  ldxdw r1, [r10-0x190]
  stxb [r6+0x7], r1
  ldxdw r1, [r10-0x160]
  stxb [r6+0x6], r1
  ldxdw r1, [r10-0x170]
  stxh [r6+0x4], r1
  ldxdw r1, [r10-0x168]
  stxh [r6+0x2], r1
  stxb [r6+0x0], r9
  stxb [r6+0x1], r5
  ja jmp_5f10

jmp_6538:
  lsh64 r9, 0x8
  or64 r9, r4
  stxdw [r10-0x170], r9
  lsh64 r7, 0x8
  or64 r7, r1
  stxdw [r10-0x168], r7
  ldxdw r9, [r10-0x288]
  ja jmp_6058

jmp_6578:
  lsh64 r7, 0x20
  or64 r7, r8
  stxdw [r10-0x1e8], r7
  ldxdw r8, [r10-0x218]
  lsh64 r8, 0x20
  ldxdw r1, [r10-0x1e0]
  or64 r8, r1
  ldxdw r1, [r10-0x248]
  lsh64 r1, 0x20
  ldxdw r2, [r10-0x138]
  or64 r1, r2
  stxdw [r10-0x248], r1
  ldxdw r1, [r10-0x240]
  lsh64 r1, 0x20
  ldxdw r2, [r10-0x148]
  or64 r1, r2
  stxdw [r10-0x240], r1
  ldxdw r1, [r10-0x258]
  lsh64 r1, 0x20
  ldxdw r2, [r10-0x160]
  or64 r1, r2
  stxdw [r10-0x258], r1
  lddw r1, 0xffffff00
  ldxdw r3, [r10-0x1c8]
  and64 r3, r1
  ldxh r1, [r10-0x3c]
  stxdw [r10-0x268], r1
  ldxh r1, [r10-0x3e]
  stxdw [r10-0x1f8], r1
  ldxdw r1, [r10-0x158]
  mov64 r2, r1
  rsh64 r2, 0x38
  stxdw [r10-0x1a8], r2
  mov64 r2, r1
  rsh64 r2, 0x20
  stxdw [r10-0x1b0], r2
  mov64 r2, r1
  rsh64 r2, 0x10
  stxdw [r10-0x1b8], r2
  rsh64 r8, 0x8
  stxdw [r10-0x218], r8
  ldxdw r8, [r10-0x140]
  mov64 r2, r8
  rsh64 r2, 0x20
  stxdw [r10-0x148], r2
  rsh64 r8, 0x10
  rsh64 r1, 0x8
  stxdw [r10-0x1a0], r1
  rsh64 r3, 0x8
  stxdw [r10-0x1f0], r3
  ldxdw r1, [r10-0x150]
  mov64 r2, r1
  mov64 r1, r2
  rsh64 r1, 0x10
  stxdw [r10-0x188], r1
  rsh64 r2, 0x8
  stxdw [r10-0x178], r2
  ldxdw r0, [r10-0x198]
  ja jmp_6058

jmp_6758:
  mov64 r1, 0x1
  call fn_379f0
  mov64 r3, r2
  ldxdw r2, [r1+0x10]
  ldxdw r1, [r1+0x8]
  call fn_44a80
  exit
  mov64 r3, r1
  add64 r3, 0x18
  stxdw [r10-0x8], r3
  mov64 r3, r10
  add64 r3, -0x8
  stxdw [r10-0xfd8], r3
  lddw r3, data_2cc8
  stxdw [r10-0xfd0], r3
  lddw r3, str_02f6
  stxdw [r10-0xfe8], r3
  lddw r3, data_2ca8
  stxdw [r10-0xff0], r3
  stxdw [r10-0xff8], r1
  mov64 r1, 0x5
  stxdw [r10-0xfe0], r1
  stxdw [r10-0x1000], r1
  mov64 r5, r10
  mov64 r1, r2
  lddw r2, str_02e4
  mov64 r3, 0xd
  lddw r4, str_02f1
  call fn_43de8
  exit
  ldxdw r6, [r1+0x10]
  ldxdw r7, [r1+0x8]
  mov64 r1, r10
  add64 r1, -0x18
  call fn_441f8
  jeq r6, 0x0, jmp_68f8

jmp_68a0:
  stxdw [r10-0x8], r7
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r10
  add64 r2, -0x8
  lddw r3, data_2c20
  call fn_41450
  add64 r7, 0x1
  add64 r6, -0x1
  jne r6, 0x0, jmp_68a0

jmp_68f8:
  mov64 r1, r10
  add64 r1, -0x18
  call fn_41760
  exit

fn_6918:
  mov64 r7, r1
  ldxdw r1, [r2+0x0]
  stxdw [r10-0x10], r2
  ldxdw r6, [r2+0x8]
  mov64 r2, 0x20
  mov64 r9, r6
  jgt r2, r6, jmp_6958
  mov64 r9, 0x20

jmp_6958:
  stxdw [r10-0x8], r1
  ldxdw r1, [r10-0x8]
  mov64 r2, r7
  mov64 r3, r9
  call fn_490d0
  ldxdw r1, [r10-0x8]
  add64 r1, r9
  stxdw [r10-0x8], r1
  mov64 r8, r6
  sub64 r8, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r8
  ldxdw r2, [r10-0x8]
  stxdw [r1+0x0], r2
  lddw r0, data_2b08
  mov64 r1, 0x20
  jgt r1, r6, jmp_6fa8
  stxdw [r10-0x18], r7
  mov64 r2, r7
  add64 r2, 0x20
  mov64 r7, 0x20
  mov64 r9, r8
  jgt r7, r8, jmp_6a20
  mov64 r9, 0x20

jmp_6a20:
  ldxdw r1, [r10-0x8]
  mov64 r3, r9
  call fn_490d0
  ldxdw r1, [r10-0x8]
  add64 r1, r9
  stxdw [r10-0x8], r1
  mov64 r6, r8
  sub64 r6, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r6
  ldxdw r2, [r10-0x8]
  stxdw [r1+0x0], r2
  ldxdw r2, [r10-0x18]
  lddw r0, data_2b08
  jgt r7, r8, jmp_6fa8
  add64 r2, 0x40
  mov64 r9, r6
  jgt r7, r6, jmp_6ac0
  mov64 r9, 0x20

jmp_6ac0:
  ldxdw r1, [r10-0x8]
  mov64 r3, r9
  call fn_490d0
  ldxdw r1, [r10-0x8]
  add64 r1, r9
  stxdw [r10-0x8], r1
  mov64 r8, r6
  sub64 r8, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r8
  ldxdw r2, [r10-0x8]
  stxdw [r1+0x0], r2
  ldxdw r2, [r10-0x18]
  lddw r0, data_2b08
  jgt r7, r6, jmp_6fa8
  add64 r2, 0x60
  mov64 r9, r8
  jgt r7, r8, jmp_6b60
  mov64 r9, 0x20

jmp_6b60:
  ldxdw r1, [r10-0x8]
  mov64 r3, r9
  call fn_490d0
  ldxdw r1, [r10-0x8]
  add64 r1, r9
  stxdw [r10-0x8], r1
  mov64 r6, r8
  sub64 r6, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r6
  ldxdw r2, [r10-0x8]
  stxdw [r1+0x0], r2
  ldxdw r2, [r10-0x18]
  lddw r0, data_2b08
  jgt r7, r8, jmp_6fa8
  add64 r2, 0x80
  mov64 r9, r6
  jgt r7, r6, jmp_6c00
  mov64 r9, 0x20

jmp_6c00:
  ldxdw r1, [r10-0x8]
  mov64 r3, r9
  call fn_490d0
  ldxdw r1, [r10-0x8]
  add64 r1, r9
  stxdw [r10-0x8], r1
  mov64 r8, r6
  sub64 r8, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r8
  ldxdw r2, [r10-0x8]
  stxdw [r1+0x0], r2
  ldxdw r2, [r10-0x18]
  lddw r0, data_2b08
  jgt r7, r6, jmp_6fa8
  add64 r2, 0xa0
  mov64 r9, r8
  jgt r7, r8, jmp_6ca0
  mov64 r9, 0x20

jmp_6ca0:
  ldxdw r1, [r10-0x8]
  mov64 r3, r9
  call fn_490d0
  ldxdw r1, [r10-0x8]
  add64 r1, r9
  stxdw [r10-0x8], r1
  mov64 r6, r8
  sub64 r6, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r6
  ldxdw r2, [r10-0x8]
  stxdw [r1+0x0], r2
  ldxdw r2, [r10-0x18]
  lddw r0, data_2b08
  jgt r7, r8, jmp_6fa8
  add64 r2, 0xc0
  mov64 r9, r6
  jgt r7, r6, jmp_6d40
  mov64 r9, 0x20

jmp_6d40:
  ldxdw r1, [r10-0x8]
  mov64 r3, r9
  call fn_490d0
  ldxdw r1, [r10-0x8]
  add64 r1, r9
  stxdw [r10-0x8], r1
  mov64 r8, r6
  sub64 r8, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r8
  ldxdw r2, [r10-0x8]
  stxdw [r1+0x0], r2
  ldxdw r2, [r10-0x18]
  lddw r0, data_2b08
  jgt r7, r6, jmp_6fa8
  add64 r2, 0xe0
  mov64 r9, r8
  jgt r7, r8, jmp_6de0
  mov64 r9, 0x20

jmp_6de0:
  ldxdw r1, [r10-0x8]
  mov64 r3, r9
  call fn_490d0
  ldxdw r1, [r10-0x8]
  add64 r1, r9
  stxdw [r10-0x8], r1
  mov64 r6, r8
  sub64 r6, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r6
  ldxdw r2, [r10-0x8]
  stxdw [r1+0x0], r2
  ldxdw r2, [r10-0x18]
  lddw r0, data_2b08
  jgt r7, r8, jmp_6fa8
  add64 r2, 0x100
  mov64 r1, 0x20
  mov64 r9, r6
  jgt r1, r6, jmp_6e88
  mov64 r9, 0x20

jmp_6e88:
  ldxdw r1, [r10-0x8]
  mov64 r3, r9
  call fn_490d0
  ldxdw r1, [r10-0x8]
  add64 r1, r9
  stxdw [r10-0x8], r1
  mov64 r8, r6
  sub64 r8, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r8
  ldxdw r2, [r10-0x8]
  stxdw [r1+0x0], r2
  ldxdw r7, [r10-0x8]
  ldxdw r2, [r10-0x18]
  lddw r0, data_2b08
  mov64 r1, 0x20
  jgt r1, r6, jmp_6fa8
  add64 r2, 0x120
  mov64 r6, 0x20
  mov64 r9, r8
  jgt r6, r8, jmp_6f40
  mov64 r9, 0x20

jmp_6f40:
  mov64 r1, r7
  mov64 r3, r9
  call fn_490d0
  mov64 r1, r8
  sub64 r1, r9
  ldxdw r2, [r10-0x10]
  stxdw [r2+0x8], r1
  add64 r7, r9
  stxdw [r2+0x0], r7
  lddw r0, data_2b08
  jgt r6, r8, jmp_6fa8
  mov64 r0, 0x0

jmp_6fa8:
  exit

fn_6fb0:
  mov64 r6, r1
  ldxdw r1, [r2+0x8]
  mov64 r3, 0x38
  jgt r3, r1, jmp_7070
  add64 r1, -0x38
  stxdw [r2+0x8], r1
  ldxdw r7, [r2+0x0]
  mov64 r1, r7
  add64 r1, 0x38
  stxdw [r2+0x0], r1
  ldxdw r8, [r7+0x6]
  mov64 r1, r6
  add64 r1, 0xf
  mov64 r2, r7
  add64 r2, 0xe
  mov64 r3, 0x2a
  call fn_490d0
  ldxh r1, [r7+0x4]
  ldxw r2, [r7+0x0]
  stxdw [r6+0x7], r8
  stxw [r6+0x1], r2
  stxh [r6+0x5], r1
  mov64 r1, 0x0
  ja jmp_7098

jmp_7070:
  lddw r1, data_2af0
  call fn_35778
  stxdw [r6+0x8], r0
  mov64 r1, 0x1

jmp_7098:
  stxb [r6+0x0], r1
  exit

fn_70a8:
  mov64 r6, r1
  ldxdw r3, [r2+0x8]
  mov64 r5, 0x20
  jgt r5, r3, jmp_7be8
  ldxdw r1, [r2+0x0]
  mov64 r8, r3
  add64 r8, -0x20
  stxdw [r2+0x8], r8
  mov64 r7, r1
  add64 r7, 0x20
  stxdw [r2+0x0], r7
  ldxdw r0, [r1+0x6]
  ldxb r4, [r1+0xe]
  stxb [r10-0x18], r4
  stxdw [r10-0x70], r0
  stxdw [r10-0x20], r0
  ldxdw r4, [r10-0x1f]
  stxdw [r10-0x78], r4
  ldxw r4, [r1+0x0]
  stxw [r10-0x28], r4
  ldxh r4, [r1+0x4]
  stxh [r10-0x24], r4
  ldxdw r4, [r1+0xf]
  stxdw [r10-0x40], r4
  ldxdw r4, [r1+0x17]
  stxdw [r10-0x38], r4
  ldxb r4, [r1+0x1f]
  stxb [r10-0x30], r4
  jgt r5, r8, jmp_7be8
  mov64 r8, r3
  add64 r8, -0x40
  stxdw [r2+0x8], r8
  mov64 r9, r1
  add64 r9, 0x40
  stxdw [r2+0x0], r9
  ldxdw r5, [r1+0x26]
  ldxb r4, [r1+0x2e]
  stxb [r10-0x18], r4
  stxdw [r10-0x20], r5
  ldxdw r4, [r10-0x1f]
  stxdw [r10-0x80], r4
  ldxw r4, [r7+0x0]
  stxw [r10-0x48], r4
  ldxh r4, [r7+0x4]
  stxh [r10-0x44], r4
  ldxdw r4, [r1+0x2f]
  stxdw [r10-0x60], r4
  ldxdw r4, [r1+0x37]
  stxdw [r10-0x58], r4
  ldxb r4, [r1+0x3f]
  stxb [r10-0x50], r4
  mov64 r4, 0x20
  jgt r4, r8, jmp_7be8
  mov64 r0, r3
  add64 r0, -0x60
  stxdw [r2+0x8], r0
  mov64 r7, r1
  add64 r7, 0x60
  stxdw [r10-0x90], r7
  stxdw [r2+0x0], r7
  mov64 r7, r5
  ldxdw r5, [r1+0x46]
  ldxb r8, [r1+0x4e]
  stxb [r10-0x18], r8
  stxdw [r10-0x88], r5
  stxdw [r10-0x20], r5
  mov64 r5, r7
  ldxdw r7, [r10-0x1f]
  ldxw r8, [r9+0x0]
  stxw [r10-0x68], r8
  ldxh r8, [r9+0x4]
  stxh [r10-0x64], r8
  jgt r4, r0, jmp_7be8
  mov64 r0, r3
  add64 r0, -0x80
  stxdw [r2+0x8], r0
  mov64 r9, r1
  add64 r9, 0x80
  stxdw [r2+0x0], r9
  ldxdw r8, [r1+0x66]
  ldxb r4, [r1+0x6e]
  stxb [r10-0x18], r4
  stxdw [r10-0x98], r8
  stxdw [r10-0x20], r8
  mov64 r4, 0x20
  jgt r4, r0, jmp_7be8
  ldxdw r0, [r10-0x1f]
  stxdw [r10-0xa8], r0
  mov64 r0, r3
  add64 r0, -0xa0
  stxdw [r2+0x8], r0
  mov64 r8, r1
  add64 r8, 0xa0
  stxdw [r10-0xa0], r8
  stxdw [r2+0x0], r8
  mov64 r4, r9
  stxdw [r10-0xb8], r5
  mov64 r5, r7
  ldxdw r7, [r1+0x86]
  ldxb r8, [r1+0x8e]
  stxb [r10-0x18], r8
  stxdw [r10-0xb0], r7
  stxdw [r10-0x20], r7
  mov64 r4, 0x20
  jgt r4, r0, jmp_7be8
  ldxdw r4, [r10-0x1f]
  stxdw [r10-0xc8], r4
  mov64 r0, r3
  add64 r0, -0xc0
  stxdw [r2+0x8], r0
  mov64 r4, r1
  add64 r4, 0xc0
  stxdw [r10-0xc0], r4
  stxdw [r2+0x0], r4
  ldxdw r8, [r1+0xa6]
  ldxb r4, [r1+0xae]
  stxb [r10-0x18], r4
  stxdw [r10-0xd0], r8
  stxdw [r10-0x20], r8
  mov64 r4, 0x20
  jgt r4, r0, jmp_7be8
  ldxdw r0, [r10-0x1f]
  stxdw [r10-0xe0], r0
  mov64 r0, r3
  add64 r0, -0xe0
  stxdw [r2+0x8], r0
  mov64 r8, r1
  add64 r8, 0xe0
  stxdw [r10-0xd8], r8
  stxdw [r2+0x0], r8
  stxdw [r10-0xf8], r5
  stxdw [r10-0xf0], r9
  ldxdw r9, [r1+0xc6]
  ldxb r8, [r1+0xce]
  stxb [r10-0x18], r8
  stxdw [r10-0xe8], r9
  stxdw [r10-0x20], r9
  jgt r4, r0, jmp_7be8
  ldxdw r8, [r10-0x1f]
  mov64 r0, r3
  add64 r0, -0x100
  stxdw [r2+0x8], r0
  mov64 r5, r1
  add64 r5, 0x100
  stxdw [r2+0x0], r5
  ldxdw r9, [r1+0xe6]
  ldxb r4, [r1+0xee]
  stxb [r10-0x18], r4
  stxdw [r10-0x20], r9
  mov64 r4, 0x20
  jgt r4, r0, jmp_7be8
  ldxdw r0, [r10-0x1f]
  stxdw [r10-0x100], r0
  mov64 r0, r3
  add64 r0, -0x120
  stxdw [r2+0x8], r0
  mov64 r4, r1
  add64 r4, 0x120
  stxdw [r10-0x110], r4
  stxdw [r2+0x0], r4
  mov64 r4, r5
  ldxdw r5, [r1+0x106]
  mov64 r7, r8
  ldxb r8, [r1+0x10e]
  stxb [r10-0x18], r8
  mov64 r8, r7
  mov64 r7, r9
  stxdw [r10-0x108], r5
  stxdw [r10-0x20], r5
  mov64 r5, 0x20
  jgt r5, r0, jmp_7be8
  mov64 r5, r1
  add64 r5, 0x4f
  mov64 r9, r1
  add64 r9, 0x6f
  mov64 r0, r1
  add64 r0, 0x8f
  stxdw [r10-0x138], r0
  stxdw [r10-0x128], r8
  mov64 r8, r1
  add64 r8, 0xaf
  stxdw [r10-0x120], r7
  mov64 r7, r1
  add64 r7, 0xcf
  stxdw [r10-0x130], r4
  mov64 r4, r1
  add64 r4, 0xef
  ldxdw r0, [r10-0x1f]
  stxdw [r10-0x118], r0
  add64 r3, -0x140
  stxdw [r2+0x8], r3
  mov64 r3, r1
  add64 r3, 0x140
  stxdw [r2+0x0], r3
  ldxdw r0, [r1+0x126]
  ldxb r3, [r1+0x12e]
  stxb [r10-0x18], r3
  stxdw [r10-0x20], r0
  ldxdw r2, [r10-0x1f]
  stxdw [r10-0x140], r2
  ldxdw r2, [r10-0x110]
  ldxh r3, [r2+0x4]
  stxh [r10-0x4], r3
  ldxw r3, [r2+0x0]
  stxw [r10-0x8], r3
  ldxb r3, [r1+0x13f]
  stxb [r10-0x10], r3
  ldxdw r3, [r1+0x137]
  stxdw [r10-0x18], r3
  ldxdw r3, [r1+0x12f]
  stxdw [r10-0x20], r3
  ldxb r3, [r10-0x30]
  stxb [r6+0x20], r3
  ldxdw r3, [r10-0x38]
  stxdw [r6+0x18], r3
  ldxdw r3, [r10-0x40]
  stxdw [r6+0x10], r3
  ldxb r3, [r10-0x50]
  stxb [r6+0x40], r3
  ldxdw r3, [r10-0x58]
  stxdw [r6+0x38], r3
  ldxdw r3, [r10-0x60]
  stxdw [r6+0x30], r3
  ldxb r3, [r5+0x10]
  stxb [r6+0x60], r3
  ldxdw r3, [r5+0x8]
  stxdw [r6+0x58], r3
  ldxdw r3, [r5+0x0]
  stxdw [r6+0x50], r3
  ldxb r3, [r9+0x10]
  stxb [r6+0x80], r3
  ldxdw r3, [r9+0x8]
  stxdw [r6+0x78], r3
  ldxdw r3, [r9+0x0]
  stxdw [r6+0x70], r3
  ldxdw r5, [r10-0x138]
  ldxb r3, [r5+0x10]
  stxb [r6+0xa0], r3
  ldxdw r3, [r5+0x8]
  stxdw [r6+0x98], r3
  ldxdw r3, [r5+0x0]
  stxdw [r6+0x90], r3
  ldxdw r3, [r8+0x0]
  stxdw [r6+0xb0], r3
  ldxdw r3, [r8+0x8]
  stxdw [r6+0xb8], r3
  ldxb r3, [r8+0x10]
  stxb [r6+0xc0], r3
  ldxdw r3, [r7+0x0]
  stxdw [r6+0xd0], r3
  ldxdw r3, [r7+0x8]
  stxdw [r6+0xd8], r3
  ldxb r3, [r7+0x10]
  stxb [r6+0xe0], r3
  ldxdw r3, [r4+0x0]
  stxdw [r6+0xf0], r3
  ldxdw r3, [r4+0x8]
  stxdw [r6+0xf8], r3
  ldxb r3, [r4+0x10]
  stxb [r6+0x100], r3
  ldxdw r3, [r1+0x10f]
  stxdw [r6+0x110], r3
  ldxdw r3, [r1+0x117]
  stxdw [r6+0x118], r3
  ldxb r1, [r1+0x11f]
  stxb [r6+0x120], r1
  ldxw r1, [r10-0x28]
  stxw [r6+0x1], r1
  ldxh r1, [r10-0x24]
  stxh [r6+0x5], r1
  ldxdw r1, [r10-0x78]
  stxdw [r6+0x8], r1
  ldxdw r1, [r10-0x70]
  stxb [r6+0x7], r1
  ldxw r1, [r10-0x48]
  stxw [r6+0x21], r1
  ldxh r1, [r10-0x44]
  stxh [r6+0x25], r1
  ldxdw r1, [r10-0xb8]
  stxb [r6+0x27], r1
  ldxdw r1, [r10-0x80]
  stxdw [r6+0x28], r1
  ldxh r1, [r10-0x64]
  stxh [r6+0x45], r1
  ldxw r1, [r10-0x68]
  stxw [r6+0x41], r1
  ldxdw r1, [r10-0xf8]
  stxdw [r6+0x48], r1
  ldxdw r1, [r10-0x88]
  stxb [r6+0x47], r1
  ldxdw r3, [r10-0x90]
  ldxh r1, [r3+0x4]
  stxh [r6+0x65], r1
  ldxw r1, [r3+0x0]
  stxw [r6+0x61], r1
  ldxdw r1, [r10-0xa8]
  stxdw [r6+0x68], r1
  ldxdw r1, [r10-0x98]
  stxb [r6+0x67], r1
  ldxdw r3, [r10-0xf0]
  ldxh r1, [r3+0x4]
  stxh [r6+0x85], r1
  ldxw r1, [r3+0x0]
  stxw [r6+0x81], r1
  ldxdw r1, [r10-0xc8]
  stxdw [r6+0x88], r1
  ldxdw r1, [r10-0xb0]
  stxb [r6+0x87], r1
  ldxdw r3, [r10-0xa0]
  ldxh r1, [r3+0x4]
  stxh [r6+0xa5], r1
  ldxw r1, [r3+0x0]
  stxw [r6+0xa1], r1
  ldxdw r1, [r10-0xe0]
  stxdw [r6+0xa8], r1
  ldxdw r1, [r10-0xd0]
  stxb [r6+0xa7], r1
  ldxdw r3, [r10-0xc0]
  ldxh r1, [r3+0x4]
  stxh [r6+0xc5], r1
  ldxw r1, [r3+0x0]
  stxw [r6+0xc1], r1
  ldxdw r1, [r10-0x128]
  stxdw [r6+0xc8], r1
  ldxdw r1, [r10-0xe8]
  stxb [r6+0xc7], r1
  ldxdw r3, [r10-0xd8]
  ldxh r1, [r3+0x4]
  stxh [r6+0xe5], r1
  ldxw r1, [r3+0x0]
  stxw [r6+0xe1], r1
  ldxdw r1, [r10-0x100]
  stxdw [r6+0xe8], r1
  ldxdw r1, [r10-0x120]
  stxb [r6+0xe7], r1
  ldxdw r3, [r10-0x130]
  ldxh r1, [r3+0x4]
  stxh [r6+0x105], r1
  ldxw r1, [r3+0x0]
  stxw [r6+0x101], r1
  ldxdw r1, [r10-0x118]
  stxdw [r6+0x108], r1
  ldxdw r1, [r10-0x108]
  stxb [r6+0x107], r1
  ldxh r1, [r10-0x4]
  stxh [r6+0x125], r1
  ldxw r1, [r10-0x8]
  stxw [r6+0x121], r1
  ldxdw r1, [r10-0x140]
  stxdw [r6+0x128], r1
  stxb [r6+0x127], r0
  ldxb r1, [r10-0x10]
  stxb [r6+0x140], r1
  ldxdw r1, [r10-0x18]
  stxdw [r6+0x138], r1
  ldxdw r1, [r10-0x20]
  stxdw [r6+0x130], r1
  mov64 r1, 0x0
  stxb [r6+0x0], r1
  ja jmp_7c18

jmp_7be8:
  lddw r1, data_2af0
  call fn_35778
  mov64 r1, 0x1
  stxb [r6+0x0], r1
  stxdw [r6+0x8], r0

jmp_7c18:
  exit
  stxdw [r10-0x8], r1
  mov64 r4, r10
  add64 r4, -0x8
  mov64 r1, r2
  lddw r2, data_031f
  mov64 r3, 0xf
  lddw r5, data_2ce8
  call fn_44028
  exit

fn_7c78:
  ldxdw r3, [r2+0x8]
  ldxdw r5, [r3+0x0]
  add64 r5, 0x1
  mov64 r0, 0x1
  jeq r5, 0x0, jmp_7ca8
  mov64 r0, 0x0

jmp_7ca8:
  ldxdw r4, [r2+0x0]
  stxdw [r3+0x0], r5
  jne r0, 0x1, jmp_7cc8

jmp_7cc0:
  call abort

jmp_7cc8:
  ldxdw r5, [r2+0x10]
  ldxdw r0, [r5+0x0]
  add64 r0, 0x1
  mov64 r6, 0x1
  jeq r0, 0x0, jmp_7cf8
  mov64 r6, 0x0

jmp_7cf8:
  stxdw [r5+0x0], r0
  jne r6, 0x1, jmp_7d10
  ja jmp_7cc0

jmp_7d10:
  ldxdw r0, [r2+0x18]
  ldxdw r6, [r2+0x20]
  ldxb r7, [r2+0x28]
  ldxb r8, [r2+0x29]
  ldxb r2, [r2+0x2a]
  stxb [r1+0x2a], r2
  stxb [r1+0x29], r8
  stxb [r1+0x28], r7
  stxdw [r1+0x20], r6
  stxdw [r1+0x18], r0
  stxdw [r1+0x10], r5
  stxdw [r1+0x8], r3
  stxdw [r1+0x0], r4
  exit

fn_7d80:
  mov64 r3, r1
  ldxdw r1, [r3+0x18]
  ldxdw r2, [r3+0x8]
  jeq r2, 0x1, jmp_7df0
  jne r2, 0x0, jmp_7dc8
  mov64 r7, 0x0
  mov64 r2, 0x1
  mov64 r6, 0x1
  jeq r1, 0x0, jmp_7ef8

jmp_7dc8:
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r3
  call fn_37aa0
  ja jmp_7f28

jmp_7df0:
  jeq r1, 0x0, jmp_7e00
  ja jmp_7dc8

jmp_7e00:
  ldxdw r1, [r3+0x0]
  mov64 r6, 0x1
  mov64 r7, 0x0
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r1+0x8]
  jeq r3, 0x0, jmp_7ef8
  mov64 r1, 0x0
  jsgt r1, r3, jmp_8028
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  lddw r5, 0x300008000
  jeq r1, 0x0, jmp_7e78
  mov64 r5, r1

jmp_7e78:
  mov64 r4, r5
  sub64 r4, r3
  mov64 r6, 0x0
  mov64 r1, 0x1
  mov64 r0, 0x1
  jgt r4, r5, jmp_7eb0
  mov64 r0, 0x0

jmp_7eb0:
  jne r0, 0x0, jmp_7ec0
  mov64 r6, r4

jmp_7ec0:
  lddw r4, 0x300000008
  jgt r4, r6, jmp_8028
  lddw r1, 0x300000000
  stxdw [r1+0x0], r6
  mov64 r7, r3

jmp_7ef8:
  mov64 r1, r6
  mov64 r3, r7
  call fn_490d0
  stxdw [r10-0x10], r6
  stxdw [r10-0x8], r7
  stxdw [r10-0x18], r7

jmp_7f28:
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, -0x18
  mov64 r2, 0x0
  mov64 r4, 0x1
  jgt r3, r1, jmp_7f70
  mov64 r4, 0x0

jmp_7f70:
  jne r4, 0x0, jmp_7f80
  mov64 r2, r3

jmp_7f80:
  lddw r0, 0x300007fe8
  jeq r1, 0x0, jmp_7fa8
  and64 r2, -0x8
  mov64 r0, r2

jmp_7fa8:
  lddw r1, 0x300000007
  jgt r0, r1, jmp_7fd8
  mov64 r1, 0x8
  mov64 r2, 0x18
  call fn_37a08

jmp_7fd8:
  lddw r1, 0x300000000
  stxdw [r1+0x0], r0
  ldxdw r1, [r10-0x8]
  stxdw [r0+0x10], r1
  ldxdw r1, [r10-0x10]
  stxdw [r0+0x8], r1
  ldxdw r1, [r10-0x18]
  stxdw [r0+0x0], r1
  exit

jmp_8028:
  mov64 r2, r3
  call fn_379f0

fn_8038:
  mov64 r6, r1
  stxdw [r10-0x1b8], r2
  ldxdw r1, [r2+0x28]
  jne r1, 0x0, jmp_8108
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, -0x18
  mov64 r2, 0x0
  mov64 r4, 0x1
  jgt r3, r1, jmp_80a0
  mov64 r4, 0x0

jmp_80a0:
  jne r4, 0x0, jmp_80b0
  mov64 r2, r3

jmp_80b0:
  lddw r0, 0x300007fe8
  jeq r1, 0x0, jmp_80d8
  and64 r2, -0x8
  mov64 r0, r2

jmp_80d8:
  lddw r1, 0x300000007
  jgt r0, r1, jmp_8640

jmp_80f0:
  mov64 r1, 0x8
  mov64 r2, 0x18
  call fn_37a08

jmp_8108:
  mov64 r5, r1
  add64 r5, -0x1
  stxdw [r2+0x28], r5
  ldxdw r3, [r2+0x20]
  jeq r3, 0x0, jmp_8758
  ldxdw r4, [r2+0x18]
  ldxb r7, [r4+0x0]
  mov64 r0, r4
  add64 r0, 0x1
  stxdw [r2+0x18], r0
  mov64 r0, r3
  add64 r0, -0x1
  stxdw [r2+0x20], r0
  jne r5, 0x0, jmp_8218
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, -0x18
  mov64 r2, 0x0
  mov64 r4, 0x1
  jgt r3, r1, jmp_81c0
  mov64 r4, 0x0

jmp_81c0:
  jne r4, 0x0, jmp_81d0
  mov64 r2, r3

jmp_81d0:
  lddw r0, 0x300007fe8
  jeq r1, 0x0, jmp_81f8
  and64 r2, -0x8
  mov64 r0, r2

jmp_81f8:
  lddw r1, 0x300000007
  jgt r0, r1, jmp_8640
  ja jmp_80f0

jmp_8218:
  mov64 r5, r1
  add64 r5, -0x2
  stxdw [r2+0x28], r5
  jeq r0, 0x0, jmp_8758
  ldxb r8, [r4+0x1]
  mov64 r0, r4
  add64 r0, 0x2
  stxdw [r2+0x18], r0
  mov64 r0, r3
  add64 r0, -0x2
  stxdw [r2+0x20], r0
  jne r5, 0x0, jmp_8318
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, -0x18
  mov64 r2, 0x0
  mov64 r4, 0x1
  jgt r3, r1, jmp_82c0
  mov64 r4, 0x0

jmp_82c0:
  jne r4, 0x0, jmp_82d0
  mov64 r2, r3

jmp_82d0:
  lddw r0, 0x300007fe8
  jeq r1, 0x0, jmp_82f8
  and64 r2, -0x8
  mov64 r0, r2

jmp_82f8:
  lddw r1, 0x300000007
  jgt r0, r1, jmp_8640
  ja jmp_80f0

jmp_8318:
  mov64 r5, r1
  add64 r5, -0x3
  stxdw [r2+0x28], r5
  jeq r0, 0x0, jmp_8758
  ldxb r9, [r4+0x2]
  mov64 r0, r4
  add64 r0, 0x3
  stxdw [r2+0x18], r0
  mov64 r0, r3
  add64 r0, -0x3
  stxdw [r2+0x20], r0
  jne r5, 0x0, jmp_8418
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, -0x18
  mov64 r2, 0x0
  mov64 r4, 0x1
  jgt r3, r1, jmp_83c0
  mov64 r4, 0x0

jmp_83c0:
  jne r4, 0x0, jmp_83d0
  mov64 r2, r3

jmp_83d0:
  lddw r0, 0x300007fe8
  jeq r1, 0x0, jmp_83f8
  and64 r2, -0x8
  mov64 r0, r2

jmp_83f8:
  lddw r1, 0x300000007
  jgt r0, r1, jmp_8640
  ja jmp_80f0

jmp_8418:
  mov64 r5, r1
  add64 r5, -0x4
  stxdw [r2+0x28], r5
  jeq r0, 0x0, jmp_8758
  ldxb r0, [r4+0x3]
  stxdw [r10-0x1c0], r0
  mov64 r0, r4
  add64 r0, 0x4
  stxdw [r2+0x18], r0
  mov64 r0, r3
  add64 r0, -0x4
  stxdw [r2+0x20], r0
  jne r5, 0x0, jmp_8520
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, -0x18
  mov64 r2, 0x0
  mov64 r4, 0x1
  jgt r3, r1, jmp_84c8
  mov64 r4, 0x0

jmp_84c8:
  jne r4, 0x0, jmp_84d8
  mov64 r2, r3

jmp_84d8:
  lddw r0, 0x300007fe8
  jeq r1, 0x0, jmp_8500
  and64 r2, -0x8
  mov64 r0, r2

jmp_8500:
  lddw r1, 0x300000007
  jgt r0, r1, jmp_8640
  ja jmp_80f0

jmp_8520:
  mov64 r5, r1
  add64 r5, -0x5
  stxdw [r2+0x28], r5
  jeq r0, 0x0, jmp_8758
  stxdw [r10-0x1c8], r9
  ldxb r0, [r4+0x4]
  stxdw [r10-0x1d0], r0
  mov64 r0, r4
  add64 r0, 0x5
  stxdw [r2+0x18], r0
  mov64 r0, r3
  add64 r0, -0x5
  stxdw [r2+0x20], r0
  mov64 r9, 0x1a
  stxdw [r10-0x1b0], r9
  jne r5, 0x0, jmp_8678
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, -0x18
  mov64 r2, 0x0
  mov64 r4, 0x1
  jgt r3, r1, jmp_85e8
  mov64 r4, 0x0

jmp_85e8:
  jne r4, 0x0, jmp_85f8
  mov64 r2, r3

jmp_85f8:
  lddw r0, 0x300007fe8
  jeq r1, 0x0, jmp_8620
  and64 r2, -0x8
  mov64 r0, r2

jmp_8620:
  lddw r1, 0x300000007
  jgt r0, r1, jmp_8640
  ja jmp_80f0

jmp_8640:
  lddw r1, 0x300000000
  stxdw [r1+0x0], r0
  lddw r1, -0x7ffffffffffffffa
  stxdw [r0+0x0], r1
  ja jmp_8770

jmp_8678:
  add64 r1, -0x6
  stxdw [r2+0x28], r1
  jeq r0, 0x0, jmp_8758
  add64 r3, -0x6
  ldxb r9, [r4+0x5]
  stxdw [r2+0x20], r3
  add64 r4, 0x6
  stxdw [r2+0x18], r4
  mov64 r1, r10
  add64 r1, -0x1a8
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x1a8]
  jne r1, 0x0, jmp_8790
  stxdw [r10-0x1d8], r9
  ldxb r1, [r10-0x1a7]
  jeq r1, 0x0, jmp_8870
  ldxb r9, [r10-0x1a6]
  mov64 r1, r10
  add64 r1, -0x198
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x198]
  jeq r1, 0x0, jmp_87a0
  ldxdw r0, [r10-0x190]
  ja jmp_8770

jmp_8758:
  lddw r1, data_2af0
  call fn_33928

jmp_8770:
  stxdw [r6+0x8], r0
  mov64 r1, 0x1

jmp_8780:
  stxb [r6+0x0], r1
  exit

jmp_8790:
  ldxdw r0, [r10-0x1a0]
  ja jmp_8770

jmp_87a0:
  stxdw [r10-0x1e0], r9
  ldxb r1, [r10-0x197]
  jeq r1, 0x0, jmp_88f8
  ldxb r9, [r10-0x196]
  mov64 r1, r10
  add64 r1, -0x188
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x188]
  jeq r1, 0x0, jmp_8808
  ldxdw r0, [r10-0x180]
  ja jmp_8770

jmp_8808:
  ldxb r1, [r10-0x187]
  jeq r1, 0x0, jmp_8980
  ldxb r1, [r10-0x186]
  stxdw [r10-0x1e8], r1
  mov64 r1, r10
  add64 r1, -0x178
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x178]
  jeq r1, 0x0, jmp_8890
  ldxdw r0, [r10-0x170]
  ja jmp_8770

jmp_8870:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x6
  ja jmp_96d8

jmp_8890:
  ldxb r1, [r10-0x177]
  jeq r1, 0x0, jmp_8a08
  ldxb r1, [r10-0x176]
  stxdw [r10-0x1f0], r1
  mov64 r1, r10
  add64 r1, -0x168
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x168]
  jeq r1, 0x0, jmp_8918
  ldxdw r0, [r10-0x160]
  ja jmp_8770

jmp_88f8:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x7
  ja jmp_96d8

jmp_8918:
  ldxb r1, [r10-0x167]
  jeq r1, 0x0, jmp_8a90
  ldxb r1, [r10-0x166]
  stxdw [r10-0x1f8], r1
  mov64 r1, r10
  add64 r1, -0x158
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x158]
  jeq r1, 0x0, jmp_89a0
  ldxdw r0, [r10-0x150]
  ja jmp_8770

jmp_8980:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x8
  ja jmp_96d8

jmp_89a0:
  ldxb r1, [r10-0x157]
  jeq r1, 0x0, jmp_8b18
  ldxb r1, [r10-0x156]
  stxdw [r10-0x200], r1
  mov64 r1, r10
  add64 r1, -0x148
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x148]
  jeq r1, 0x0, jmp_8a28
  ldxdw r0, [r10-0x140]
  ja jmp_8770

jmp_8a08:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x9
  ja jmp_96d8

jmp_8a28:
  ldxb r1, [r10-0x147]
  jeq r1, 0x0, jmp_8ba0
  ldxb r1, [r10-0x146]
  stxdw [r10-0x208], r1
  mov64 r1, r10
  add64 r1, -0x138
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x138]
  jeq r1, 0x0, jmp_8ab0
  ldxdw r0, [r10-0x130]
  ja jmp_8770

jmp_8a90:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0xa
  ja jmp_96d8

jmp_8ab0:
  ldxb r1, [r10-0x137]
  jeq r1, 0x0, jmp_8c28
  ldxb r1, [r10-0x136]
  stxdw [r10-0x210], r1
  mov64 r1, r10
  add64 r1, -0x128
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x128]
  jeq r1, 0x0, jmp_8b38
  ldxdw r0, [r10-0x120]
  ja jmp_8770

jmp_8b18:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0xb
  ja jmp_96d8

jmp_8b38:
  ldxb r1, [r10-0x127]
  jeq r1, 0x0, jmp_8cb0
  ldxb r1, [r10-0x126]
  stxdw [r10-0x218], r1
  mov64 r1, r10
  add64 r1, -0x118
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x118]
  jeq r1, 0x0, jmp_8bc0
  ldxdw r0, [r10-0x110]
  ja jmp_8770

jmp_8ba0:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0xc
  ja jmp_96d8

jmp_8bc0:
  ldxb r1, [r10-0x117]
  jeq r1, 0x0, jmp_8d38
  ldxb r1, [r10-0x116]
  stxdw [r10-0x220], r1
  mov64 r1, r10
  add64 r1, -0x108
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x108]
  jeq r1, 0x0, jmp_8c48
  ldxdw r0, [r10-0x100]
  ja jmp_8770

jmp_8c28:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0xd
  ja jmp_96d8

jmp_8c48:
  ldxb r1, [r10-0x107]
  jeq r1, 0x0, jmp_8dc0
  ldxb r1, [r10-0x106]
  stxdw [r10-0x228], r1
  mov64 r1, r10
  add64 r1, -0xf8
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0xf8]
  jeq r1, 0x0, jmp_8cd0
  ldxdw r0, [r10-0xf0]
  ja jmp_8770

jmp_8cb0:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0xe
  ja jmp_96d8

jmp_8cd0:
  ldxb r1, [r10-0xf7]
  jeq r1, 0x0, jmp_8e48
  ldxb r1, [r10-0xf6]
  stxdw [r10-0x230], r1
  mov64 r1, r10
  add64 r1, -0xe8
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0xe8]
  jeq r1, 0x0, jmp_8d58
  ldxdw r0, [r10-0xe0]
  ja jmp_8770

jmp_8d38:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0xf
  ja jmp_96d8

jmp_8d58:
  ldxb r1, [r10-0xe7]
  jeq r1, 0x0, jmp_8ed0
  ldxb r1, [r10-0xe6]
  stxdw [r10-0x238], r1
  mov64 r1, r10
  add64 r1, -0xd8
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0xd8]
  jeq r1, 0x0, jmp_8de0
  ldxdw r0, [r10-0xd0]
  ja jmp_8770

jmp_8dc0:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x10
  ja jmp_96d8

jmp_8de0:
  ldxb r1, [r10-0xd7]
  jeq r1, 0x0, jmp_8f58
  ldxb r1, [r10-0xd6]
  stxdw [r10-0x240], r1
  mov64 r1, r10
  add64 r1, -0xc8
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0xc8]
  jeq r1, 0x0, jmp_8e68
  ldxdw r0, [r10-0xc0]
  ja jmp_8770

jmp_8e48:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x11
  ja jmp_96d8

jmp_8e68:
  ldxb r1, [r10-0xc7]
  jeq r1, 0x0, jmp_8fe0
  ldxb r1, [r10-0xc6]
  stxdw [r10-0x248], r1
  mov64 r1, r10
  add64 r1, -0xb8
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0xb8]
  jeq r1, 0x0, jmp_8ef0
  ldxdw r0, [r10-0xb0]
  ja jmp_8770

jmp_8ed0:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x12
  ja jmp_96d8

jmp_8ef0:
  ldxb r1, [r10-0xb7]
  jeq r1, 0x0, jmp_9068
  ldxb r1, [r10-0xb6]
  stxdw [r10-0x250], r1
  mov64 r1, r10
  add64 r1, -0xa8
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0xa8]
  jeq r1, 0x0, jmp_8f78
  ldxdw r0, [r10-0xa0]
  ja jmp_8770

jmp_8f58:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x13
  ja jmp_96d8

jmp_8f78:
  ldxb r1, [r10-0xa7]
  jeq r1, 0x0, jmp_90f0
  ldxb r1, [r10-0xa6]
  stxdw [r10-0x258], r1
  mov64 r1, r10
  add64 r1, -0x98
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x98]
  jeq r1, 0x0, jmp_9000
  ldxdw r0, [r10-0x90]
  ja jmp_8770

jmp_8fe0:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x14
  ja jmp_96d8

jmp_9000:
  ldxb r1, [r10-0x97]
  jeq r1, 0x0, jmp_9178
  ldxb r1, [r10-0x96]
  stxdw [r10-0x260], r1
  mov64 r1, r10
  add64 r1, -0x88
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x88]
  jeq r1, 0x0, jmp_9088
  ldxdw r0, [r10-0x80]
  ja jmp_8770

jmp_9068:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x15
  ja jmp_96d8

jmp_9088:
  ldxb r1, [r10-0x87]
  jeq r1, 0x0, jmp_9200
  ldxb r1, [r10-0x86]
  stxdw [r10-0x268], r1
  mov64 r1, r10
  add64 r1, -0x78
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x78]
  jeq r1, 0x0, jmp_9110
  ldxdw r0, [r10-0x70]
  ja jmp_8770

jmp_90f0:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x16
  ja jmp_96d8

jmp_9110:
  ldxb r1, [r10-0x77]
  jeq r1, 0x0, jmp_9288
  ldxb r1, [r10-0x76]
  stxdw [r10-0x270], r1
  mov64 r1, r10
  add64 r1, -0x68
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x68]
  jeq r1, 0x0, jmp_9198
  ldxdw r0, [r10-0x60]
  ja jmp_8770

jmp_9178:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x17
  ja jmp_96d8

jmp_9198:
  ldxb r1, [r10-0x67]
  jeq r1, 0x0, jmp_9310
  ldxb r1, [r10-0x66]
  stxdw [r10-0x278], r1
  mov64 r1, r10
  add64 r1, -0x58
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x58]
  jeq r1, 0x0, jmp_9220
  ldxdw r0, [r10-0x50]
  ja jmp_8770

jmp_9200:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x18
  ja jmp_96d8

jmp_9220:
  ldxb r1, [r10-0x57]
  jeq r1, 0x0, jmp_9398
  ldxb r1, [r10-0x56]
  stxdw [r10-0x280], r1
  mov64 r1, r10
  add64 r1, -0x48
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x48]
  jeq r1, 0x0, jmp_92a8
  ldxdw r0, [r10-0x40]
  ja jmp_8770

jmp_9288:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x19
  ja jmp_96d8

jmp_92a8:
  ldxb r1, [r10-0x47]
  jeq r1, 0x0, jmp_9420
  ldxb r1, [r10-0x46]
  stxdw [r10-0x288], r1
  mov64 r1, r10
  add64 r1, -0x38
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x38]
  jeq r1, 0x0, jmp_9330
  ldxdw r0, [r10-0x30]
  ja jmp_8770

jmp_9310:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x1a
  ja jmp_96d8

jmp_9330:
  ldxb r1, [r10-0x37]
  jeq r1, 0x0, jmp_9680
  ldxb r1, [r10-0x36]
  stxdw [r10-0x290], r1
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x28]
  jeq r1, 0x0, jmp_93b8
  ldxdw r0, [r10-0x20]
  ja jmp_8770

jmp_9398:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x1b
  ja jmp_96d8

jmp_93b8:
  ldxb r1, [r10-0x27]
  jeq r1, 0x0, jmp_96a0
  ldxb r1, [r10-0x26]
  stxdw [r10-0x298], r1
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r10
  add64 r2, -0x1b8
  call fn_08c8
  ldxb r1, [r10-0x18]
  jeq r1, 0x0, jmp_9440
  ldxdw r0, [r10-0x10]
  ja jmp_8770

jmp_9420:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x1c
  ja jmp_96d8

jmp_9440:
  ldxb r1, [r10-0x17]
  jeq r1, 0x0, jmp_96c0
  ldxdw r2, [r10-0x1e8]
  lsh64 r2, 0x8
  or64 r2, r9
  ldxdw r1, [r10-0x1f0]
  lsh64 r1, 0x10
  or64 r2, r1
  ldxdw r1, [r10-0x1f8]
  lsh64 r1, 0x18
  or64 r2, r1
  ldxdw r1, [r10-0x200]
  lsh64 r1, 0x20
  or64 r2, r1
  ldxdw r1, [r10-0x208]
  lsh64 r1, 0x28
  or64 r2, r1
  ldxdw r1, [r10-0x210]
  lsh64 r1, 0x30
  or64 r2, r1
  ldxdw r1, [r10-0x218]
  lsh64 r1, 0x38
  or64 r2, r1
  ldxb r1, [r10-0x16]
  stxb [r6+0x20], r1
  ldxdw r1, [r10-0x298]
  stxb [r6+0x1f], r1
  ldxdw r1, [r10-0x290]
  stxb [r6+0x1e], r1
  ldxdw r1, [r10-0x288]
  stxb [r6+0x1d], r1
  ldxdw r1, [r10-0x280]
  stxb [r6+0x1c], r1
  ldxdw r1, [r10-0x278]
  stxb [r6+0x1b], r1
  ldxdw r1, [r10-0x270]
  stxb [r6+0x1a], r1
  ldxdw r1, [r10-0x268]
  stxb [r6+0x19], r1
  ldxdw r1, [r10-0x260]
  stxb [r6+0x18], r1
  ldxdw r1, [r10-0x258]
  stxb [r6+0x17], r1
  ldxdw r1, [r10-0x250]
  stxb [r6+0x16], r1
  ldxdw r1, [r10-0x248]
  stxb [r6+0x15], r1
  ldxdw r1, [r10-0x240]
  stxb [r6+0x14], r1
  ldxdw r1, [r10-0x238]
  stxb [r6+0x13], r1
  ldxdw r1, [r10-0x230]
  stxb [r6+0x12], r1
  ldxdw r1, [r10-0x228]
  stxb [r6+0x11], r1
  ldxdw r1, [r10-0x220]
  stxb [r6+0x10], r1
  stxdw [r6+0x8], r2
  ldxdw r1, [r10-0x1e0]
  stxb [r6+0x7], r1
  ldxdw r1, [r10-0x1d8]
  stxb [r6+0x6], r1
  ldxdw r1, [r10-0x1d0]
  stxb [r6+0x5], r1
  ldxdw r1, [r10-0x1c0]
  stxb [r6+0x4], r1
  ldxdw r1, [r10-0x1c8]
  stxb [r6+0x3], r1
  stxb [r6+0x2], r8
  stxb [r6+0x1], r7
  mov64 r1, 0x0
  ja jmp_8780

jmp_9680:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x1d
  ja jmp_96d8

jmp_96a0:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x1e
  ja jmp_96d8

jmp_96c0:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, 0x1f

jmp_96d8:
  lddw r3, data_29e8
  call fn_0180
  ja jmp_8770

fn_96f8:
  mov64 r3, r2
  mov64 r5, 0x1
  mov64 r2, 0x0
  ldxdw r0, [r3+0x20]
  ldxdw r6, [r3+0x28]
  mov64 r4, 0x0
  jeq r6, r0, jmp_9880
  mov64 r2, r6
  sub64 r2, r0
  jsgt r4, r2, jmp_98a0
  lddw r4, 0x300000000
  ldxdw r4, [r4+0x0]
  lddw r7, 0x300008000
  jeq r4, 0x0, jmp_9780
  mov64 r7, r4

jmp_9780:
  mov64 r6, r7
  sub64 r6, r2
  mov64 r5, 0x0
  mov64 r4, 0x1
  mov64 r8, 0x1
  jgt r6, r7, jmp_97b8
  mov64 r8, 0x0

jmp_97b8:
  jne r8, 0x0, jmp_97c8
  mov64 r5, r6

jmp_97c8:
  lddw r6, 0x300000008
  jgt r6, r5, jmp_98a0
  lddw r4, 0x300000000
  stxdw [r4+0x0], r5
  ldxdw r6, [r3+0x0]
  add64 r6, r0
  ldxdw r3, [r3+0x10]
  add64 r3, r0
  mov64 r4, 0x0

jmp_9820:
  mov64 r0, r6
  add64 r0, r4
  ldxb r0, [r0+0x0]
  mov64 r7, r3
  add64 r7, r4
  ldxb r7, [r7+0x0]
  xor64 r7, r0
  mov64 r0, r5
  add64 r0, r4
  stxb [r0+0x0], r7
  add64 r4, 0x1
  jgt r2, r4, jmp_9820

jmp_9880:
  stxdw [r1+0x10], r4
  stxdw [r1+0x8], r5
  stxdw [r1+0x0], r2
  exit

jmp_98a0:
  mov64 r1, r4
  call fn_379f0

fn_98b0:
  mov64 r7, r4
  ldxdw r0, [r5-0x1000]
  ldxb r4, [r0+0x0]
  jsgt r4, 0xb, jmp_a010
  jsgt r4, 0x5, jmp_a888
  jsgt r4, 0x2, jmp_ad08
  jeq r4, 0x0, jmp_9b60
  jeq r4, 0x1, jmp_9c28
  jeq r7, 0x0, jmp_ab70
  mov64 r8, r3
  add64 r8, 0x30
  jeq r7, 0x1, jmp_b8a8
  mov64 r6, r3
  add64 r6, 0x60
  jeq r7, 0x2, jmp_cad8
  mov64 r4, r3
  add64 r4, 0x90
  jeq r7, 0x3, jmp_a138
  mov64 r5, r3
  add64 r5, 0xc0
  jeq r7, 0x4, jmp_a998
  mov64 r9, r3
  add64 r9, 0xf0
  jeq r7, 0x5, jmp_a6b8
  mov64 r0, r3
  add64 r0, 0x120
  jeq r7, 0x6, jmp_a1d0
  stxdw [r10-0xdf0], r0
  stxdw [r10-0xe00], r5
  stxdw [r10-0xdf8], r4
  ldxdw r7, [r3+0x0]
  ldxdw r4, [r7+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_9ec0

jmp_99c8:
  mov64 r4, 0x1
  jeq r4, 0x0, jmp_99e0
  ja jmp_f2c8

jmp_99e0:
  stxdw [r10-0xe10], r7
  stxdw [r10-0xe08], r9
  stxdw [r10-0xde8], r2
  stxdw [r10-0xdd8], r1
  stxdw [r10-0xde0], r3
  ldxdw r9, [r3+0x10]
  ldxdw r1, [r9+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_9a38
  ja jmp_9ff8

jmp_9a38:
  add64 r1, 0x1
  stxdw [r9+0x10], r1
  ldxdw r1, [r9+0x18]
  ldxdw r2, [r9+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r2, [r10-0xc00]
  ldxdw r7, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r7, r1, jmp_9eb0
  mov64 r1, r10
  add64 r1, -0x218
  stxdw [r10-0xe18], r2
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  ldxdw r1, [r10-0xe18]
  stxdw [r10-0x220], r1
  stxdw [r10-0x228], r7
  ldxdw r1, [r9+0x10]
  add64 r1, -0x1
  mov64 r7, r9
  stxdw [r9+0x10], r1
  lddw r1, -0x3c1cb4130349c29
  ldxdw r2, [r10-0x1d8]
  jeq r2, r1, jmp_9f38

jmp_9b48:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_9fb0

jmp_9b58:
  ja jmp_d270

jmp_9b60:
  stxdw [r10-0xde8], r2
  stxdw [r10-0xde0], r3
  stxdw [r10-0xdd8], r1
  add64 r0, 0x1
  mov64 r1, r10
  add64 r1, -0xc8a
  mov64 r9, r0
  mov64 r2, r0
  mov64 r3, 0x40
  call fn_490d0
  jeq r7, 0x0, jmp_9d90
  ldxdw r8, [r10-0xde0]
  mov64 r6, r8
  add64 r6, 0x30
  ldxdw r1, [r10-0xdd8]
  jeq r7, 0x1, jmp_cad8
  add64 r8, 0x60
  jeq r7, 0x2, jmp_b8a8
  mov64 r1, r8
  call fn_301f0
  jne r0, 0x0, jmp_caf8
  mov64 r1, 0xc
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_9c28:
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  mov64 r8, r3
  add64 r8, 0x60
  jeq r7, 0x2, jmp_b8a8
  mov64 r4, r3
  add64 r4, 0x90
  jeq r7, 0x3, jmp_a138
  mov64 r9, r3
  add64 r9, 0xc0
  jeq r7, 0x4, jmp_a6b8
  mov64 r5, r3
  add64 r5, 0xf0
  jeq r7, 0x5, jmp_a998
  stxdw [r10-0xe00], r9
  stxdw [r10-0xe08], r5
  stxdw [r10-0xde8], r2
  stxdw [r10-0xde0], r3
  stxdw [r10-0xdd8], r1
  ldxb r9, [r0+0x2c]
  ldxh r7, [r0+0x2a]
  ldxh r1, [r0+0x28]
  stxdw [r10-0xdf8], r1
  ldxw r1, [r0+0x24]
  stxdw [r10-0xe10], r1
  ldxw r1, [r0+0x20]
  stxdw [r10-0xe18], r1
  ldxw r1, [r0+0x1c]
  stxdw [r10-0xe38], r1
  ldxw r1, [r0+0x18]
  stxdw [r10-0xe30], r1
  ldxdw r1, [r0+0x10]
  stxdw [r10-0xe28], r1
  ldxdw r1, [r0+0x8]
  stxdw [r10-0xe20], r1
  stxdw [r10-0xdf0], r4
  mov64 r1, r4
  call fn_301f0
  jne r0, 0x0, jmp_9dc8
  mov64 r1, 0xd
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_9d90:
  ldxdw r2, [r10-0xdd8]
  ldxdw r1, [r10-0xde0]
  stxdw [r2+0x8], r1
  lddw r1, -0x7ffffffffffffff6
  stxdw [r2+0x0], r1
  ja jmp_cb60

jmp_9dc8:
  ldxdw r2, [r10-0xde0]
  ldxb r3, [r2+0x88]
  ldxdw r1, [r10-0xdd8]
  jne r3, 0x0, jmp_9df0
  ja jmp_cb18

jmp_9df0:
  stxdw [r10-0xe48], r9
  stxdw [r10-0xe40], r7
  ldxdw r9, [r2+0x40]
  ldxdw r1, [r9+0x10]
  lddw r2, 0x7ffffffffffffffe
  jgt r1, r2, jmp_9fe0
  add64 r1, 0x1
  stxdw [r9+0x10], r1
  ldxdw r1, [r9+0x18]
  ldxdw r2, [r9+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r2, [r10-0xc00]
  ldxdw r7, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r7, r1, jmp_9eb0
  ja jmp_d1d8

jmp_9eb0:
  ldxdw r1, [r10-0xdd8]
  ja jmp_bc98

jmp_9ec0:
  ldxdw r4, [r7+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_99c8
  ldxdw r4, [r7+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_99c8
  mov64 r4, 0x0
  ldxdw r5, [r7+0x18]
  lddw r0, -0x1ff47e790077cfa3
  jne r5, r0, jmp_99c8
  jeq r4, 0x0, jmp_99e0
  ja jmp_f2c8

jmp_9f38:
  lddw r1, -0xb6a3785afba3445
  ldxdw r2, [r10-0x1d0]
  jne r2, r1, jmp_9b48
  lddw r1, -0x182dbcdd20a11484
  ldxdw r2, [r10-0x1c8]
  jne r2, r1, jmp_9b48
  mov64 r1, 0x0
  lddw r2, -0x309924488b6719d5
  ldxdw r3, [r10-0x1c0]
  jne r3, r2, jmp_9b48
  jeq r1, 0x0, jmp_9fb0
  ja jmp_9b58

jmp_9fb0:
  ldxb r1, [r10-0x16]
  jeq r1, 0x0, jmp_c078

jmp_9fc0:
  mov64 r1, 0xf
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_9fe0:
  lddw r1, data_2df0
  call fn_3f090

jmp_9ff8:
  lddw r1, data_2e20
  call fn_3f090

jmp_a010:
  jsgt r4, 0x11, jmp_a0b0
  jsgt r4, 0xe, jmp_a148
  jeq r4, 0xc, jmp_11c48
  jeq r4, 0xd, jmp_1c5c0
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  mov64 r8, r3
  add64 r8, 0x60
  jeq r7, 0x2, jmp_b8a8
  ldxb r4, [r3+0x58]
  jeq r4, 0x0, jmp_cb18
  mov64 r7, r0
  ldxdw r5, [r2+0x0]
  ldxdw r4, [r3+0x18]
  ldxdw r0, [r4+0x0]
  jeq r0, r5, jmp_a388

jmp_a0a0:
  mov64 r5, 0x1
  ja jmp_a3d8

jmp_a0b0:
  jsgt r4, 0x14, jmp_b7d0
  jeq r4, 0x12, jmp_1aed8
  jeq r4, 0x13, jmp_1c5c0
  jeq r7, 0x0, jmp_ab70
  mov64 r8, r3
  add64 r8, 0x30
  jeq r7, 0x1, jmp_b8a8
  mov64 r6, r3
  add64 r6, 0x60
  jeq r7, 0x2, jmp_cad8
  mov64 r9, r3
  add64 r9, 0x90
  jeq r7, 0x3, jmp_a6b8
  mov64 r4, r3
  add64 r4, 0xc0
  jeq r7, 0x4, jmp_a138
  ja jmp_a5c8

jmp_a138:
  stxdw [r1+0x8], r4
  ja jmp_cae0

jmp_a148:
  jeq r4, 0xf, jmp_129b0
  jeq r4, 0x10, jmp_a1e0
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  mov64 r8, r3
  add64 r8, 0x60
  jeq r7, 0x2, jmp_b8a8
  mov64 r4, r3
  add64 r4, 0x90
  jeq r7, 0x3, jmp_a138
  stxdw [r10-0xdf0], r0
  mov64 r0, r3
  add64 r0, 0xc0
  jeq r7, 0x4, jmp_a1d0
  ja jmp_a630

jmp_a1d0:
  stxdw [r1+0x8], r0
  ja jmp_cae0

jmp_a1e0:
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  mov64 r8, r3
  add64 r8, 0x60
  jeq r7, 0x2, jmp_b8a8
  mov64 r4, r3
  add64 r4, 0x90
  jeq r7, 0x3, jmp_a138
  stxdw [r10-0xdf0], r0
  mov64 r0, r3
  add64 r0, 0xc0
  jeq r7, 0x4, jmp_a1d0
  mov64 r9, r3
  add64 r9, 0xf0
  jeq r7, 0x5, jmp_a6b8
  stxdw [r10-0xdf8], r0
  mov64 r0, r3
  add64 r0, 0x120
  jeq r7, 0x6, jmp_a1d0
  stxdw [r10-0xe00], r8
  mov64 r8, r3
  add64 r8, 0x150
  jeq r7, 0x7, jmp_b8a8
  stxdw [r10-0xe10], r8
  mov64 r8, r3
  ldxdw r3, [r10-0xdf0]
  stxdw [r10-0xde0], r8
  mov64 r3, r8
  add64 r3, 0x180
  stxdw [r10-0xe08], r3
  jeq r7, 0x8, jmp_a6e8
  stxdw [r10-0xe28], r9
  stxdw [r10-0xe20], r0
  stxdw [r10-0xe18], r4
  stxdw [r10-0xde8], r2
  ldxdw r9, [r10-0xde0]
  mov64 r8, r9
  add64 r8, 0x1b0
  jeq r7, 0x9, jmp_b8a8
  stxdw [r10-0xdd8], r1
  add64 r9, 0x1e0
  jeq r7, 0xa, jmp_a798
  ldxdw r1, [r10-0xde0]
  add64 r1, 0x210
  stxdw [r10-0xe30], r1
  jeq r7, 0xb, jmp_a368
  ja jmp_bcc0

jmp_a368:
  ldxdw r1, [r10-0xdd8]
  ldxdw r2, [r10-0xe30]
  stxdw [r1+0x8], r2
  ja jmp_cae0

jmp_a388:
  ldxdw r5, [r2+0x8]
  ldxdw r0, [r4+0x8]
  jne r0, r5, jmp_a0a0
  ldxdw r5, [r2+0x10]
  ldxdw r0, [r4+0x10]
  jne r0, r5, jmp_a0a0
  mov64 r5, 0x0
  ldxdw r0, [r2+0x18]
  ldxdw r4, [r4+0x18]
  jne r4, r0, jmp_a0a0

jmp_a3d8:
  jne r5, 0x0, jmp_a5b8
  stxdw [r10-0xde8], r2
  stxdw [r10-0xdd8], r1
  ldxb r1, [r7+0x70]
  stxdw [r10-0xe88], r1
  ldxh r1, [r7+0x6e]
  stxdw [r10-0xe58], r1
  ldxh r9, [r7+0x6c]
  ldxb r1, [r7+0x68]
  stxdw [r10-0xe50], r1
  ldxw r1, [r7+0x64]
  stxdw [r10-0xe48], r1
  ldxw r1, [r7+0x60]
  stxdw [r10-0xe80], r1
  ldxb r1, [r7+0x5c]
  stxdw [r10-0xe40], r1
  ldxw r1, [r7+0x58]
  stxdw [r10-0xe38], r1
  ldxw r1, [r7+0x54]
  stxdw [r10-0xe78], r1
  ldxb r1, [r7+0x50]
  stxdw [r10-0xe30], r1
  ldxw r1, [r7+0x4c]
  stxdw [r10-0xe28], r1
  ldxw r1, [r7+0x48]
  stxdw [r10-0xe70], r1
  ldxb r1, [r7+0x44]
  stxdw [r10-0xe20], r1
  ldxw r1, [r7+0x40]
  stxdw [r10-0xe18], r1
  ldxw r1, [r7+0x3c]
  stxdw [r10-0xe68], r1
  ldxb r1, [r7+0x38]
  stxdw [r10-0xe10], r1
  ldxw r1, [r7+0x34]
  stxdw [r10-0xe08], r1
  ldxw r1, [r7+0x30]
  stxdw [r10-0xe60], r1
  ldxw r1, [r7+0x2c]
  stxdw [r10-0xe00], r1
  ldxw r1, [r7+0x28]
  stxdw [r10-0xdf8], r1
  ldxdw r1, [r7+0x20]
  stxdw [r10-0xea8], r1
  ldxw r1, [r7+0x1c]
  stxdw [r10-0xea0], r1
  ldxw r1, [r7+0x18]
  stxdw [r10-0xe98], r1
  ldxdw r1, [r7+0x10]
  stxdw [r10-0xe90], r1
  ldxdw r7, [r7+0x8]
  stxdw [r10-0xde0], r3
  mov64 r1, r3
  call fn_301f0
  jne r0, 0x0, jmp_a598
  ja jmp_120e0

jmp_a598:
  mov64 r1, 0x15
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_a5b8:
  mov64 r2, 0x2
  ja jmp_cb40

jmp_a5c8:
  stxdw [r10-0xdf0], r4
  stxdw [r10-0xde8], r2
  stxdw [r10-0xde0], r3
  stxdw [r10-0xdd8], r1
  mov64 r1, r9
  call fn_301f0
  jne r0, 0x0, jmp_a608
  ja jmp_a6c8

jmp_a608:
  ldxdw r2, [r10-0xde0]
  ldxb r3, [r2+0x88]
  ldxdw r1, [r10-0xdd8]
  jne r3, 0x0, jmp_1b3a8
  ja jmp_cb18

jmp_a630:
  mov64 r5, r3
  add64 r5, 0xf0
  jeq r7, 0x5, jmp_a998
  stxdw [r10-0xdf8], r8
  mov64 r8, r3
  add64 r8, 0x120
  jeq r7, 0x6, jmp_b8a8
  stxdw [r10-0xe08], r8
  stxdw [r10-0xe00], r0
  mov64 r0, r3
  add64 r0, 0x150
  jeq r7, 0x7, jmp_a1d0
  mov64 r8, r3
  mov64 r9, r8
  add64 r9, 0x180
  jeq r7, 0x8, jmp_a6b8
  ja jmp_a700

jmp_a6b8:
  stxdw [r1+0x8], r9
  ja jmp_cae0

jmp_a6c8:
  mov64 r1, 0x22
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_a6e8:
  ldxdw r2, [r10-0xe08]

jmp_a6f0:
  stxdw [r1+0x8], r2
  ja jmp_cae0

jmp_a700:
  ldxdw r3, [r10-0xdf0]
  stxdw [r10-0xe20], r0
  stxdw [r10-0xe18], r5
  stxdw [r10-0xe10], r4
  stxdw [r10-0xde8], r2
  mov64 r2, r8
  add64 r2, 0x1b0
  jeq r7, 0x9, jmp_a6f0
  stxdw [r10-0xe30], r2
  stxdw [r10-0xdd8], r1
  stxdw [r10-0xde0], r8
  add64 r8, 0x1e0
  stxdw [r10-0xe28], r8
  jeq r7, 0xa, jmp_a778
  ja jmp_a7a8

jmp_a778:
  ldxdw r1, [r10-0xdd8]
  ldxdw r2, [r10-0xe28]
  stxdw [r1+0x8], r2
  ja jmp_cae0

jmp_a798:
  ldxdw r1, [r10-0xdd8]
  ja jmp_a6b8

jmp_a7a8:
  ldxdw r1, [r10-0xde0]
  add64 r1, 0x210
  jeq r7, 0xb, jmp_a7c8
  ja jmp_a7f8

jmp_a7c8:
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x8], r1
  lddw r1, -0x7ffffffffffffff6
  stxdw [r2+0x0], r1
  ja jmp_cb60

jmp_a7f8:
  ldxdw r2, [r10-0xde0]
  add64 r2, 0x240
  stxdw [r10-0xe38], r2
  jeq r7, 0xc, jmp_a820
  ja jmp_a840

jmp_a820:
  ldxdw r1, [r10-0xdd8]
  ldxdw r2, [r10-0xe38]
  stxdw [r1+0x8], r2
  ja jmp_cae0

jmp_a840:
  ldxdw r2, [r10-0xde0]
  add64 r2, 0x270
  stxdw [r10-0xe40], r2
  jeq r7, 0xd, jmp_a868
  ja jmp_ca80

jmp_a868:
  ldxdw r1, [r10-0xdd8]
  ldxdw r2, [r10-0xe40]
  stxdw [r1+0x8], r2
  ja jmp_cae0

jmp_a888:
  jsgt r4, 0x8, jmp_b418
  jeq r4, 0x6, jmp_a908
  jeq r4, 0x7, jmp_11038
  jeq r7, 0x0, jmp_ab70
  mov64 r8, r3
  add64 r8, 0x30
  jeq r7, 0x1, jmp_b8a8
  ldxb r2, [r3+0x58]
  jeq r2, 0x0, jmp_cb18
  ldxdw r2, [r3+0x0]
  ldxdw r4, [r2+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_a9a8

jmp_a8f8:
  mov64 r4, 0x1
  ja jmp_aa10

jmp_a908:
  jeq r7, 0x0, jmp_ab70
  mov64 r8, r3
  add64 r8, 0x30
  jeq r7, 0x1, jmp_b8a8
  mov64 r6, r3
  add64 r6, 0x60
  jeq r7, 0x2, jmp_cad8
  mov64 r9, r3
  add64 r9, 0x90
  jeq r7, 0x3, jmp_a6b8
  mov64 r4, r3
  add64 r4, 0xc0
  jeq r7, 0x4, jmp_a138
  jeq r7, 0x5, jmp_ab68
  mov64 r5, r3
  add64 r5, 0x120
  jeq r7, 0x6, jmp_a998
  ja jmp_10200

jmp_a998:
  stxdw [r1+0x8], r5
  ja jmp_cae0

jmp_a9a8:
  ldxdw r4, [r2+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_a8f8
  ldxdw r4, [r2+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_a8f8
  mov64 r4, 0x0
  ldxdw r2, [r2+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r2, r5, jmp_a8f8

jmp_aa10:
  jne r4, 0x0, jmp_f2c8
  ldxb r2, [r3+0x29]
  jeq r2, 0x0, jmp_10268
  stxdw [r10-0xdd8], r1
  ldxdw r9, [r3+0x10]
  ldxdw r1, [r9+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_aa60
  ja jmp_acd8

jmp_aa60:
  add64 r1, 0x1
  stxdw [r9+0x10], r1
  ldxdw r1, [r9+0x18]
  ldxdw r2, [r9+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r7, [r10-0xc00]
  ldxdw r6, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r6, r1, jmp_11a50
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  stxdw [r10-0x220], r7
  stxdw [r10-0x228], r6
  ldxdw r1, [r9+0x10]
  add64 r1, -0x1
  stxdw [r9+0x10], r1
  ldxdw r2, [r8+0x0]
  ldxdw r3, [r2+0x0]
  ldxdw r4, [r10-0x1f8]
  jeq r3, r4, jmp_ab80

jmp_ab58:
  mov64 r3, 0x1
  ja jmp_abd0

jmp_ab68:
  add64 r3, 0xf0

jmp_ab70:
  stxdw [r1+0x8], r3
  ja jmp_cae0

jmp_ab80:
  ldxdw r3, [r2+0x8]
  ldxdw r4, [r10-0x1f0]
  jne r3, r4, jmp_ab58
  ldxdw r3, [r2+0x10]
  ldxdw r4, [r10-0x1e8]
  jne r3, r4, jmp_ab58
  mov64 r3, 0x0
  ldxdw r2, [r2+0x18]
  ldxdw r4, [r10-0x1e0]
  jne r2, r4, jmp_ab58

jmp_abd0:
  ldxdw r2, [r10-0xdd8]
  jeq r3, 0x0, jmp_abe8
  ja jmp_1c330

jmp_abe8:
  ldxb r3, [r10-0x16]
  jeq r3, 0x0, jmp_ac00
  ja jmp_12ca0

jmp_ac00:
  lddw r2, -0x309924488b6719d5
  stxdw [r10-0x1c0], r2
  lddw r2, -0x182dbcdd20a11484
  stxdw [r10-0x1c8], r2
  lddw r2, -0xb6a3785afba3445
  stxdw [r10-0x1d0], r2
  lddw r2, -0x3c1cb4130349c29
  stxdw [r10-0x1d8], r2
  jeq r1, 0x0, jmp_ac70
  ja jmp_acf0

jmp_ac70:
  mov64 r1, -0x1
  stxdw [r9+0x10], r1
  ldxdw r1, [r9+0x18]
  ldxdw r2, [r9+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_11c10
  ja jmp_11848

jmp_acd8:
  lddw r1, data_2fa0
  call fn_3f090

jmp_acf0:
  lddw r1, data_2f88
  call fn_3efe8

jmp_ad08:
  jeq r4, 0x3, jmp_e040
  jeq r4, 0x4, jmp_f220
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  mov64 r8, r3
  add64 r8, 0x60
  jeq r7, 0x2, jmp_b8a8
  mov64 r5, r3
  add64 r5, 0x90
  jeq r7, 0x3, jmp_a998
  mov64 r4, r3
  add64 r4, 0xc0
  jeq r7, 0x4, jmp_a138
  stxdw [r10-0xdf8], r5
  stxdw [r10-0xe00], r4
  mov64 r9, r0
  ldxdw r4, [r3+0x0]
  ldxdw r5, [r4+0x0]
  lddw r0, 0x9e9974ee626ad71
  jeq r5, r0, jmp_af28

jmp_adc0:
  mov64 r5, 0x1
  jeq r5, 0x0, jmp_add8
  ja jmp_f2c8

jmp_add8:
  stxdw [r10-0xde8], r2
  stxdw [r10-0xdd8], r1
  stxdw [r10-0xde0], r3
  ldxdw r7, [r3+0x10]
  ldxdw r1, [r7+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_ae20
  ja jmp_b3d0

jmp_ae20:
  ldxh r2, [r9+0x6]
  stxdw [r10-0xe08], r2
  ldxw r9, [r9+0x2]
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ldxdw r1, [r7+0x18]
  ldxdw r2, [r7+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  lddw r1, -0x8000000000000000
  ldxdw r2, [r10-0xc08]
  jeq r2, r1, jmp_bc68
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  lddw r1, -0x3c1cb4130349c29
  ldxdw r2, [r10-0x1d8]
  jeq r2, r1, jmp_afa0

jmp_af18:
  mov64 r2, 0x1
  ja jmp_b008

jmp_af28:
  ldxdw r5, [r4+0x8]
  lddw r0, -0x5a4e740901420473
  jne r5, r0, jmp_adc0
  ldxdw r5, [r4+0x10]
  lddw r0, 0x3f762b2616a7d0c7
  jne r5, r0, jmp_adc0
  mov64 r5, 0x0
  ldxdw r4, [r4+0x18]
  lddw r0, -0x1ff47e790077cfa3
  jne r4, r0, jmp_adc0
  jeq r5, 0x0, jmp_add8
  ja jmp_f2c8

jmp_afa0:
  lddw r1, -0xb6a3785afba3445
  ldxdw r2, [r10-0x1d0]
  jne r2, r1, jmp_af18
  lddw r1, -0x182dbcdd20a11484
  ldxdw r2, [r10-0x1c8]
  jne r2, r1, jmp_af18
  mov64 r2, 0x0
  lddw r1, -0x309924488b6719d5
  ldxdw r3, [r10-0x1c0]
  jne r3, r1, jmp_af18

jmp_b008:
  ldxdw r1, [r10-0xdd8]
  jeq r2, 0x0, jmp_b020
  ja jmp_1bac8

jmp_b020:
  ldxdw r2, [r10-0xde0]
  ldxb r2, [r2+0x58]
  jeq r2, 0x0, jmp_cb18
  ldxdw r1, [r6+0x0]
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r10-0x1d8]
  jeq r2, r3, jmp_b2f0

jmp_b058:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_b070
  ja jmp_170d0

jmp_b070:
  ldxb r1, [r10-0x16]
  jeq r1, 0x0, jmp_b088
  ja jmp_10548

jmp_b088:
  ldxdw r1, [r10-0xe08]
  lsh64 r1, 0x20
  or64 r9, r1
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  mov64 r3, r8
  mov64 r4, r9
  call fn_1e560
  ldxdw r1, [r10-0xc08]
  lddw r2, -0x7fffffffffffffe6
  jeq r1, r2, jmp_b0f8
  ja jmp_10ac0

jmp_b0f8:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x89]
  jeq r1, 0x0, jmp_10630
  ldxdw r1, [r10-0xde0]
  ldxdw r8, [r1+0x70]
  ldxdw r1, [r8+0x10]
  jeq r1, 0x0, jmp_b138
  ja jmp_b3e8

jmp_b138:
  mov64 r1, -0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x20]
  jne r1, 0x4f0, jmp_b350
  ldxdw r1, [r8+0x18]
  mov64 r7, r1
  and64 r1, 0x7
  jeq r1, 0x0, jmp_b180
  ja jmp_b350

jmp_b180:
  rsh64 r9, 0x10
  mov64 r2, r7
  ldxdw r1, [r2+0x468]
  add64 r1, 0x1
  stxdw [r2+0x468], r1
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  ldxdw r3, [r10-0xdf8]
  mov64 r4, r9
  call fn_1e2f8
  ldxdw r1, [r10-0xc08]
  lddw r2, -0x7fffffffffffffe6
  jeq r1, r2, jmp_b200
  ja jmp_b388

jmp_b200:
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0xa0]
  stxdw [r10-0xdf0], r1
  ldxdw r1, [r1+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_b240
  ja jmp_b400

jmp_b240:
  add64 r1, 0x1
  ldxdw r2, [r10-0xdf0]
  stxdw [r2+0x10], r1
  ldxdw r3, [r2+0x20]
  ldxdw r2, [r2+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_1048
  ldxw r1, [r10-0xb70]
  jeq r1, 0x2, jmp_b298
  ja jmp_fd98

jmp_b298:
  ldxdw r1, [r10-0xbf8]
  stxdw [r10-0x2d8], r1
  ldxdw r2, [r10-0xc00]
  stxdw [r10-0x2e0], r2
  ldxdw r3, [r10-0xc08]
  stxdw [r10-0x2e8], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ja jmp_101c0

jmp_b2f0:
  ldxdw r2, [r1+0x8]
  ldxdw r3, [r10-0x1d0]
  jne r2, r3, jmp_b058
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r10-0x1c8]
  jne r2, r3, jmp_b058
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r10-0x1c0]
  jne r1, r3, jmp_b058
  jeq r2, 0x0, jmp_b070
  ja jmp_170d0

jmp_b350:
  mov64 r1, 0xffff
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ja jmp_101e0

jmp_b388:
  ldxb r2, [r10-0xc00]
  ldxdw r3, [r10-0xbf8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  ldxdw r3, [r10-0xbff]
  stxdw [r4+0x9], r3
  stxb [r4+0x8], r2
  stxdw [r4+0x0], r1
  ja jmp_101e0

jmp_b3d0:
  lddw r1, data_2ee0
  call fn_3f090

jmp_b3e8:
  lddw r1, data_2ec8
  call fn_3efe8

jmp_b400:
  lddw r1, data_2eb0
  call fn_3f090

jmp_b418:
  jeq r4, 0x9, jmp_11418
  jeq r4, 0xa, jmp_118b0
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  ldxb r2, [r3+0x58]
  jeq r2, 0x0, jmp_cb18
  ldxdw r2, [r3+0x0]
  ldxdw r4, [r2+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_b490

jmp_b480:
  mov64 r4, 0x1
  ja jmp_b4f8

jmp_b490:
  ldxdw r4, [r2+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_b480
  ldxdw r4, [r2+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_b480
  mov64 r4, 0x0
  ldxdw r2, [r2+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r2, r5, jmp_b480

jmp_b4f8:
  jne r4, 0x0, jmp_f2c8
  ldxb r2, [r3+0x29]
  jeq r2, 0x0, jmp_10268
  stxdw [r10-0xdf0], r0
  stxdw [r10-0xdd8], r1
  ldxdw r8, [r3+0x10]
  ldxdw r1, [r8+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_b550
  ja jmp_b7a0

jmp_b550:
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r9, [r10-0xc00]
  ldxdw r7, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r7, r1, jmp_111e8
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  stxdw [r10-0x220], r9
  stxdw [r10-0x228], r7
  ldxdw r1, [r8+0x10]
  add64 r1, -0x1
  stxdw [r8+0x10], r1
  ldxdw r2, [r6+0x0]
  ldxdw r3, [r2+0x0]
  ldxdw r4, [r10-0x1f8]
  jeq r3, r4, jmp_b658

jmp_b648:
  mov64 r3, 0x1
  ja jmp_b6a8

jmp_b658:
  ldxdw r3, [r2+0x8]
  ldxdw r4, [r10-0x1f0]
  jne r3, r4, jmp_b648
  ldxdw r3, [r2+0x10]
  ldxdw r4, [r10-0x1e8]
  jne r3, r4, jmp_b648
  mov64 r3, 0x0
  ldxdw r2, [r2+0x18]
  ldxdw r4, [r10-0x1e0]
  jne r2, r4, jmp_b648

jmp_b6a8:
  ldxdw r2, [r10-0xdd8]
  jeq r3, 0x0, jmp_b6c0
  ja jmp_1c330

jmp_b6c0:
  ldxb r3, [r10-0x16]
  jeq r3, 0x0, jmp_b6d8
  ja jmp_12ca0

jmp_b6d8:
  ldxdw r3, [r10-0xdf0]
  add64 r3, 0x1
  ldxdw r2, [r3+0x18]
  stxdw [r10-0x1a0], r2
  ldxdw r2, [r3+0x10]
  stxdw [r10-0x1a8], r2
  ldxdw r2, [r3+0x8]
  stxdw [r10-0x1b0], r2
  ldxdw r2, [r3+0x0]
  stxdw [r10-0x1b8], r2
  jeq r1, 0x0, jmp_b738
  ja jmp_b7b8

jmp_b738:
  mov64 r1, -0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_12090
  ja jmp_1b358

jmp_b7a0:
  lddw r1, data_2fd0
  call fn_3f090

jmp_b7b8:
  lddw r1, data_2fb8
  call fn_3efe8

jmp_b7d0:
  jeq r4, 0x15, jmp_b868
  jeq r4, 0x16, jmp_1c000
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  mov64 r8, r3
  add64 r8, 0x60
  jeq r7, 0x2, jmp_b8a8
  ldxb r4, [r3+0x58]
  jeq r4, 0x0, jmp_cb18
  mov64 r7, r0
  ldxdw r4, [r3+0x0]
  ldxdw r5, [r4+0x0]
  lddw r0, 0x9e9974ee626ad71
  jeq r5, r0, jmp_b8b8

jmp_b858:
  mov64 r5, 0x1
  ja jmp_b920

jmp_b868:
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  mov64 r8, r3
  add64 r8, 0x60
  jeq r7, 0x2, jmp_b8a8
  ja jmp_ba80

jmp_b8a8:
  stxdw [r1+0x8], r8
  ja jmp_cae0

jmp_b8b8:
  ldxdw r5, [r4+0x8]
  lddw r0, -0x5a4e740901420473
  jne r5, r0, jmp_b858
  ldxdw r5, [r4+0x10]
  lddw r0, 0x3f762b2616a7d0c7
  jne r5, r0, jmp_b858
  mov64 r5, 0x0
  ldxdw r4, [r4+0x18]
  lddw r0, -0x1ff47e790077cfa3
  jne r4, r0, jmp_b858

jmp_b920:
  jne r5, 0x0, jmp_f2c8
  stxdw [r10-0xdf0], r7
  stxdw [r10-0xde8], r2
  stxdw [r10-0xdd8], r1
  stxdw [r10-0xde0], r3
  ldxdw r7, [r3+0x10]
  ldxdw r1, [r7+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_b978
  ja jmp_ba68

jmp_b978:
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ldxdw r1, [r7+0x18]
  ldxdw r2, [r7+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  lddw r1, -0x8000000000000000
  ldxdw r2, [r10-0xc08]
  jeq r2, r1, jmp_bc68
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  lddw r1, -0x3c1cb4130349c29
  ldxdw r2, [r10-0x1d8]
  jeq r2, r1, jmp_1ba50

jmp_ba58:
  mov64 r2, 0x1
  ja jmp_1bab8

jmp_ba68:
  lddw r1, data_3468
  call fn_3f090

jmp_ba80:
  ldxb r4, [r3+0x58]
  jeq r4, 0x0, jmp_cb18
  mov64 r9, r0
  ldxdw r4, [r3+0x0]
  ldxdw r5, [r4+0x0]
  lddw r0, 0x9e9974ee626ad71
  jeq r5, r0, jmp_bb00

jmp_bac0:
  mov64 r5, 0x1
  jeq r5, 0x0, jmp_bb78

jmp_bad0:
  mov64 r2, 0x0
  stxb [r1+0xb], r2
  stxh [r1+0x9], r2
  mov64 r2, 0x17
  stxb [r1+0x8], r2
  ja jmp_cb48

jmp_bb00:
  ldxdw r5, [r4+0x8]
  lddw r0, -0x5a4e740901420473
  jne r5, r0, jmp_bac0
  ldxdw r5, [r4+0x10]
  lddw r0, 0x3f762b2616a7d0c7
  jne r5, r0, jmp_bac0
  mov64 r5, 0x0
  ldxdw r4, [r4+0x18]
  lddw r0, -0x1ff47e790077cfa3
  jne r4, r0, jmp_bac0
  jeq r5, 0x0, jmp_bb78
  ja jmp_bad0

jmp_bb78:
  stxdw [r10-0xde8], r2
  stxdw [r10-0xdd8], r1
  stxdw [r10-0xde0], r3
  ldxdw r7, [r3+0x10]
  ldxdw r1, [r7+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_bbc0
  ja jmp_bc80

jmp_bbc0:
  ldxdw r2, [r9+0x20]
  stxdw [r10-0xe00], r2
  ldxdw r2, [r9+0x18]
  stxdw [r10-0xdf8], r2
  ldxdw r9, [r9+0x10]
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ldxdw r1, [r7+0x18]
  ldxdw r2, [r7+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  lddw r1, -0x8000000000000000
  ldxdw r2, [r10-0xc08]
  jeq r2, r1, jmp_bc68
  ja jmp_1b920

jmp_bc68:
  ldxdw r2, [r10-0xc00]
  ldxdw r1, [r10-0xdd8]
  ja jmp_f410

jmp_bc80:
  lddw r1, data_3438
  call fn_3f090

jmp_bc98:
  call fn_30d48
  ldxdw r1, [r9+0x10]
  add64 r1, -0x1
  stxdw [r9+0x10], r1
  ja jmp_cb60

jmp_bcc0:
  ldxdw r1, [r10-0xde0]
  add64 r1, 0x240
  stxdw [r10-0xe38], r1
  jeq r7, 0xc, jmp_a820
  ldxdw r1, [r10-0xde0]
  add64 r1, 0x270
  stxdw [r10-0xe40], r1
  jeq r7, 0xd, jmp_a868
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x88]
  jeq r1, 0x0, jmp_cab0
  ldxdw r1, [r10-0xde8]
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r1+0x0]
  jeq r3, r2, jmp_bd58

jmp_bd48:
  mov64 r2, 0x1
  ja jmp_bdc0

jmp_bd58:
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x8]
  ldxdw r3, [r1+0x8]
  jne r3, r2, jmp_bd48
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x10]
  ldxdw r3, [r1+0x10]
  jne r3, r2, jmp_bd48
  mov64 r2, 0x0
  ldxdw r3, [r10-0xde8]
  ldxdw r3, [r3+0x18]
  ldxdw r1, [r1+0x18]
  jne r1, r3, jmp_bd48

jmp_bdc0:
  jne r2, 0x0, jmp_1bc78
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x29]
  jeq r1, 0x0, jmp_bde8
  ja jmp_10630

jmp_bde8:
  ldxdw r1, [r5-0xff0]
  stxdw [r10-0xe58], r1
  ldxdw r1, [r5-0xff8]
  stxdw [r10-0xe60], r1
  ldxdw r2, [r10-0xdf0]
  ldxb r1, [r2+0x18]
  stxdw [r10-0xe48], r1
  ldxdw r1, [r2+0x10]
  stxdw [r10-0xe50], r1
  ldxdw r1, [r2+0x8]
  stxdw [r10-0xdf0], r1
  ldxdw r1, [r10-0xde0]
  call fn_301f0
  jne r0, 0x0, jmp_a598
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  lddw r3, 0x9e9974ee626ad71
  jeq r2, r3, jmp_bfe8

jmp_be88:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_bea0
  ja jmp_d380

jmp_bea0:
  ldxdw r1, [r10-0xde0]
  ldxdw r7, [r1+0x10]
  ldxdw r1, [r7+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_bed8
  ja jmp_c060

jmp_bed8:
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ldxdw r1, [r7+0x18]
  ldxdw r2, [r7+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r1, [r10-0xc00]
  stxdw [r10-0xe68], r1
  ldxdw r2, [r10-0xc08]
  lddw r1, -0x8000000000000000
  stxdw [r10-0xe70], r2
  jeq r2, r1, jmp_bf70
  ja jmp_12f18

jmp_bf70:
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xe68]
  call fn_30d48
  ldxdw r1, [r10-0xbf8]
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0xc00]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0xc08]
  stxdw [r2+0x0], r1
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  ja jmp_cb60

jmp_bfe8:
  ldxdw r2, [r1+0x8]
  lddw r3, -0x5a4e740901420473
  jne r2, r3, jmp_be88
  ldxdw r2, [r1+0x10]
  lddw r3, 0x3f762b2616a7d0c7
  jne r2, r3, jmp_be88
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  lddw r3, -0x1ff47e790077cfa3
  jne r1, r3, jmp_be88
  jeq r2, 0x0, jmp_bea0
  ja jmp_d380

jmp_c060:
  lddw r1, data_3240
  call fn_3f090

jmp_c078:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x29]
  jeq r1, 0x0, jmp_10630
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x58]
  jeq r1, 0x0, jmp_cab0
  ldxdw r1, [r8+0x0]
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r10-0x1d8]
  jeq r2, r3, jmp_c0f8

jmp_c0c8:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_c158

jmp_c0d8:
  mov64 r1, 0x3
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_c0f8:
  ldxdw r2, [r1+0x8]
  ldxdw r3, [r10-0x1d0]
  jne r2, r3, jmp_c0c8
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r10-0x1c8]
  jne r2, r3, jmp_c0c8
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r10-0x1c0]
  jne r1, r3, jmp_c0c8
  jeq r2, 0x0, jmp_c158
  ja jmp_c0d8

jmp_c158:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x59]
  jeq r1, 0x0, jmp_10630
  ldxh r9, [r10-0x1a]
  add64 r9, 0x1
  stxh [r10-0x1a], r9
  mov64 r1, r9
  be16 r1
  stxh [r10-0x718], r1
  mov64 r1, r6
  call fn_301f0
  jne r0, 0x0, jmp_c1d8
  mov64 r1, 0xe
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_c1d8:
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  mov64 r3, r6
  mov64 r4, r9
  call fn_1e2f8
  ldxb r1, [r10-0xc00]
  ldxdw r2, [r10-0xc08]
  lddw r3, -0x7fffffffffffffe6
  jeq r2, r3, jmp_c238
  ja jmp_c2b8

jmp_c238:
  ldxdw r2, [r10-0xde0]
  ldxb r2, [r2+0x89]
  jeq r2, 0x0, jmp_10630
  ldxdw r2, [r10-0xde0]
  ldxdw r3, [r2+0xc0]
  mov64 r9, r3
  ldxdw r3, [r3+0x0]
  ldxdw r2, [r2+0xa8]
  ldxdw r4, [r2+0x0]
  jeq r4, r3, jmp_c2f8

jmp_c288:
  mov64 r3, 0x1
  jeq r3, 0x0, jmp_c358

jmp_c298:
  mov64 r1, 0x2
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_c2b8:
  ldxdw r3, [r10-0xbf8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  ldxdw r3, [r10-0xbff]
  stxdw [r4+0x9], r3
  stxb [r4+0x8], r1
  stxdw [r4+0x0], r2
  ja jmp_cb60

jmp_c2f8:
  ldxdw r3, [r9+0x8]
  ldxdw r4, [r2+0x8]
  jne r4, r3, jmp_c288
  ldxdw r3, [r9+0x10]
  ldxdw r4, [r2+0x10]
  jne r4, r3, jmp_c288
  mov64 r3, 0x0
  ldxdw r4, [r9+0x18]
  ldxdw r2, [r2+0x18]
  jne r2, r4, jmp_c288
  jeq r3, 0x0, jmp_c358
  ja jmp_c298

jmp_c358:
  ldxdw r2, [r10-0xe08]
  ldxdw r2, [r2+0x0]
  ldxdw r3, [r2+0x0]
  lddw r4, 0x515c2c1917d5a706
  jeq r3, r4, jmp_c618

jmp_c388:
  mov64 r3, 0x1
  jeq r3, 0x0, jmp_c3a0
  ja jmp_c0d8

jmp_c3a0:
  ldxdw r2, [r10-0xdf0]
  ldxdw r2, [r2+0x0]
  ldxdw r3, [r2+0x0]
  jeq r3, 0x0, jmp_c690

jmp_c3c0:
  mov64 r3, 0x1
  jeq r3, 0x0, jmp_c3d8
  ja jmp_c0d8

jmp_c3d8:
  mov64 r2, 0x1
  stxdw [r10-0x658], r2
  mov64 r2, r10
  add64 r2, -0x6a8
  stxdw [r10-0x660], r2
  mov64 r2, 0x2
  stxdw [r10-0x668], r2
  mov64 r2, r10
  add64 r2, -0x718
  stxdw [r10-0x670], r2
  mov64 r2, 0x5
  stxdw [r10-0x678], r2
  lddw r2, str_04dd
  stxdw [r10-0x680], r2
  stxb [r10-0x6a8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xdf8]
  ldxdw r3, [r10-0xe00]
  call fn_20788
  ldxdw r1, [r10-0xc00]
  ldxdw r2, [r10-0xc08]
  lddw r3, -0x7fffffffffffffe6
  jeq r2, r3, jmp_c4b0
  ja jmp_c6d8

jmp_c4b0:
  mov64 r2, 0x3
  stxdw [r10-0xff8], r2
  stxdw [r10-0xff0], r1
  mov64 r1, r10
  add64 r1, -0x680
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r5, r10
  mov64 r2, r8
  mov64 r3, r6
  mov64 r4, r9
  call fn_1cf68
  ldxdw r1, [r10-0xc08]
  lddw r2, -0x7fffffffffffffe6
  jeq r1, r2, jmp_c540
  ja jmp_10fb0

jmp_c540:
  ldxdw r1, [r10-0xdf8]
  ldxdw r4, [r1+0x0]
  ldxdw r3, [r6+0x0]
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r9
  ldxdw r5, [r10-0xe10]
  call fn_2c2d8
  ldxdw r1, [r10-0xc00]
  stxdw [r10-0x380], r1
  ldxdw r1, [r10-0xbf8]
  stxdw [r10-0x378], r1
  ldxdw r1, [r10-0xbf0]
  stxdw [r10-0x370], r1
  ldxdw r8, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r8, r1, jmp_c5d8
  ja jmp_c708

jmp_c5d8:
  ldxdw r1, [r10-0x370]
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x378]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x380]
  stxdw [r2+0x0], r1
  ja jmp_cb60

jmp_c618:
  ldxdw r3, [r2+0x8]
  lddw r4, 0x7ff14a3d4cc98c21
  jne r3, r4, jmp_c388
  ldxdw r3, [r2+0x10]
  lddw r4, 0x44fda19b08eeda58
  jne r3, r4, jmp_c388
  mov64 r3, 0x0
  ldxdw r2, [r2+0x18]
  lddw r4, 0x8ad9dbe3
  jne r2, r4, jmp_c388
  jeq r3, 0x0, jmp_c3a0
  ja jmp_c0d8

jmp_c690:
  ldxdw r3, [r2+0x8]
  jne r3, 0x0, jmp_c3c0
  ldxdw r3, [r2+0x10]
  jne r3, 0x0, jmp_c3c0
  mov64 r3, 0x0
  ldxdw r2, [r2+0x18]
  jne r2, 0x0, jmp_c3c0
  jeq r3, 0x0, jmp_c3d8
  ja jmp_c0d8

jmp_c6d8:
  ldxdw r3, [r10-0xbf8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  stxdw [r4+0x8], r1
  stxdw [r4+0x0], r2
  ja jmp_cb60

jmp_c708:
  mov64 r1, r10
  add64 r1, -0x2c8
  mov64 r2, r10
  add64 r2, -0xbe8
  mov64 r3, 0x30
  call fn_490d0
  stxdw [r10-0x2e8], r8
  ldxdw r1, [r10-0x380]
  stxdw [r10-0x2e0], r1
  ldxdw r1, [r10-0x378]
  stxdw [r10-0x2d8], r1
  ldxdw r1, [r10-0x370]
  stxdw [r10-0x2d0], r1
  mov64 r9, r10
  add64 r9, -0x5c0
  mov64 r1, r9
  mov64 r2, r6
  call fn_7c78
  mov64 r8, r10
  add64 r8, -0x500
  mov64 r1, r8
  ldxdw r2, [r10-0xdf8]
  call fn_7c78
  mov64 r6, r10
  add64 r6, -0x440
  mov64 r1, r6
  ldxdw r2, [r10-0xde0]
  call fn_7c78
  mov64 r1, r10
  add64 r1, -0xb78
  ldxdw r2, [r10-0xe08]
  call fn_7c78
  mov64 r1, r10
  add64 r1, -0xc08
  stxdw [r10-0xde0], r1
  mov64 r2, r9
  mov64 r3, 0x30
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0xbd8
  mov64 r2, r8
  mov64 r3, 0x30
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0xba8
  mov64 r2, r6
  mov64 r3, 0x30
  call fn_490d0
  mov64 r1, 0x3
  stxdw [r10-0x438], r1
  mov64 r1, r10
  add64 r1, -0x680
  stxdw [r10-0x440], r1
  mov64 r1, r10
  add64 r1, -0x440
  stxdw [r10-0x1000], r1
  mov64 r1, 0x1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x6f0
  mov64 r2, r10
  add64 r2, -0x2e8
  mov64 r5, r10
  ldxdw r3, [r10-0xde0]
  mov64 r4, 0x4
  call fn_2da88
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0x6f0]
  jeq r2, r1, jmp_c940
  ja jmp_ca10

jmp_c940:
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_2298
  ldxdw r1, [r7+0x10]
  jeq r1, 0x0, jmp_c970
  ja jmp_ca68

jmp_c970:
  mov64 r1, -0x1
  mov64 r2, r7
  stxdw [r2+0x10], r1
  ldxdw r1, [r2+0x18]
  ldxdw r2, [r2+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_e540

jmp_c9d8:
  ldxdw r1, [r10-0xdd8]
  mov64 r2, r0
  call fn_30d48
  ldxdw r1, [r7+0x10]
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ja jmp_cb60

jmp_ca10:
  ldxdw r1, [r10-0x6e0]
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x6e8]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x6f0]
  stxdw [r2+0x0], r1
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_2298
  ja jmp_cb60

jmp_ca68:
  lddw r1, data_2e08
  call fn_3efe8

jmp_ca80:
  ldxdw r2, [r10-0xde0]
  ldxb r2, [r2+0x88]
  jeq r2, 0x0, jmp_cab0
  ldxdw r2, [r10-0xde0]
  ldxb r2, [r2+0x238]
  jne r2, 0x0, jmp_16f48

jmp_cab0:
  mov64 r1, 0x0
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_cad0:
  ldxdw r1, [r10-0xdd8]

jmp_cad8:
  stxdw [r1+0x8], r6

jmp_cae0:
  lddw r2, -0x7ffffffffffffff6
  ja jmp_cb58

jmp_caf8:
  ldxdw r2, [r10-0xde0]
  ldxb r3, [r2+0x28]
  ldxdw r1, [r10-0xdd8]
  jne r3, 0x0, jmp_cb28

jmp_cb18:
  mov64 r2, 0x0
  ja jmp_cb40

jmp_cb28:
  ldxb r3, [r2+0x58]
  jne r3, 0x0, jmp_cb68
  ja jmp_cb18

jmp_cb40:
  stxw [r1+0x8], r2

jmp_cb48:
  lddw r2, -0x8000000000000000

jmp_cb58:
  stxdw [r1+0x0], r2

jmp_cb60:
  exit

jmp_cb68:
  ldxdw r3, [r6+0x0]
  ldxdw r4, [r3+0x0]
  lddw r5, -0x3c1cb4130349c29
  jeq r4, r5, jmp_cba0

jmp_cb90:
  mov64 r4, 0x1
  ja jmp_cc08

jmp_cba0:
  ldxdw r4, [r3+0x8]
  lddw r5, -0xb6a3785afba3445
  jne r4, r5, jmp_cb90
  ldxdw r4, [r3+0x10]
  lddw r5, -0x182dbcdd20a11484
  jne r4, r5, jmp_cb90
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  lddw r5, -0x309924488b6719d5
  jne r3, r5, jmp_cb90

jmp_cc08:
  jne r4, 0x0, jmp_1c5c0
  ldxdw r3, [r8+0x0]
  ldxdw r4, [r3+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_cdb8

jmp_cc38:
  mov64 r4, 0x1
  jeq r4, 0x0, jmp_cc50
  ja jmp_f2c8

jmp_cc50:
  ldxb r3, [r2+0x89]
  jeq r3, 0x0, jmp_10268
  mov64 r1, 0x1
  stxdw [r10-0xbf0], r1
  mov64 r1, r10
  add64 r1, -0x2e8
  stxdw [r10-0xbf8], r1
  mov64 r1, 0x5
  stxdw [r10-0xc00], r1
  lddw r1, data_03d0
  stxdw [r10-0xc08], r1
  mov64 r1, 0xff
  stxb [r10-0x2e8], r1
  mov64 r1, 0x2
  stxdw [r10-0xff8], r1
  mov64 r1, 0x2800
  stxdw [r10-0xff0], r1
  mov64 r1, r10
  add64 r1, -0xc08
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r5, r10
  mov64 r3, r8
  ldxdw r4, [r10-0xde8]
  call fn_1cf68
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0x228]
  jeq r2, r1, jmp_cd50
  ja jmp_ce30

jmp_cd50:
  mov64 r1, r10
  add64 r1, -0x228
  call fn_1e7c8
  ldxdw r7, [r10-0x210]
  ldxdw r8, [r10-0x218]
  ldxdw r6, [r10-0x220]
  ldxdw r1, [r10-0x228]
  jeq r1, 0x0, jmp_ce70
  ldxdw r1, [r10-0xdd8]
  stxdw [r1+0x10], r7
  stxdw [r1+0x8], r8
  stxdw [r1+0x0], r6
  ja jmp_cb60

jmp_cdb8:
  ldxdw r4, [r3+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_cc38
  ldxdw r4, [r3+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_cc38
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r3, r5, jmp_cc38
  jeq r4, 0x0, jmp_cc50
  ja jmp_f2c8

jmp_ce30:
  ldxdw r1, [r10-0x218]
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x220]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x228]
  stxdw [r2+0x0], r1
  ja jmp_cb60

jmp_ce70:
  mov64 r1, r10
  add64 r1, -0x228
  call fn_1e7c8
  ldxdw r1, [r10-0x220]
  stxdw [r10-0x2e8], r1
  ldxdw r1, [r10-0x218]
  stxdw [r10-0x2e0], r1
  ldxdw r1, [r10-0x210]
  stxdw [r10-0x2d8], r1
  ldxdw r1, [r10-0x228]
  jeq r1, 0x0, jmp_cf08

jmp_cec8:
  ldxdw r1, [r10-0x2d8]
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x2e0]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x2e8]
  stxdw [r2+0x0], r1
  ja jmp_cb60

jmp_cf08:
  mov64 r1, r10
  add64 r1, -0xc6a
  ldxdw r2, [r10-0x2d8]
  stxdw [r10-0xbf8], r2
  ldxdw r2, [r10-0x2e0]
  stxdw [r10-0xc00], r2
  ldxdw r2, [r10-0x2e8]
  stxdw [r10-0xc08], r2
  ldxdw r2, [r9+0x18]
  ldxdw r3, [r9+0x10]
  ldxdw r4, [r9+0x8]
  ldxdw r5, [r9+0x0]
  lddw r0, -0x3c1cb4130349c29
  stxdw [r10-0xbb8], r0
  lddw r0, -0xb6a3785afba3445
  stxdw [r10-0xbb0], r0
  lddw r0, -0x182dbcdd20a11484
  stxdw [r10-0xba8], r0
  lddw r0, -0x309924488b6719d5
  stxdw [r10-0xba0], r0
  stxdw [r10-0xbd8], r5
  stxdw [r10-0xbd0], r4
  stxdw [r10-0xbc8], r3
  stxdw [r10-0xbc0], r2
  ldxdw r2, [r1+0x18]
  ldxdw r3, [r1+0x10]
  ldxdw r4, [r1+0x8]
  ldxdw r1, [r1+0x0]
  mov64 r5, 0x3020100
  stxw [r10-0x9f3], r5
  mov64 r5, 0x1010101
  stxh [r10-0x9fc], r5
  stxw [r10-0xa00], r5
  mov64 r5, 0x4
  stxh [r10-0x9ef], r5
  stxdw [r10-0xb98], r1
  stxdw [r10-0xb90], r4
  stxdw [r10-0xb88], r3
  stxdw [r10-0xb80], r2
  mov64 r1, 0x0
  stxb [r10-0x9f4], r1
  stxh [r10-0x9f6], r1
  stxw [r10-0x9fa], r1
  mov64 r1, r10
  add64 r1, -0xb78
  mov64 r2, 0x0
  mov64 r3, 0x178
  call fn_493f8
  stxdw [r10-0xbe0], r7
  stxdw [r10-0xbe8], r8
  stxdw [r10-0xbf0], r6
  ldxdw r1, [r10-0xde0]
  ldxdw r6, [r1+0x70]
  ldxdw r1, [r6+0x10]
  jeq r1, 0x0, jmp_d0e8
  ja jmp_d1a0

jmp_d0e8:
  mov64 r1, -0x1
  stxdw [r6+0x10], r1
  ldxdw r1, [r6+0x18]
  ldxdw r2, [r6+0x20]
  stxdw [r10-0x220], r2
  stxdw [r10-0x228], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x228
  call fn_277a8
  jeq r0, 0x0, jmp_d180
  ldxdw r1, [r10-0xdd8]
  mov64 r2, r0
  call fn_30d48

jmp_d160:
  ldxdw r1, [r6+0x10]
  add64 r1, 0x1

jmp_d170:
  stxdw [r6+0x10], r1
  ja jmp_cb60

jmp_d180:
  ldxdw r1, [r6+0x10]
  add64 r1, 0x1
  stxdw [r6+0x10], r1
  ja jmp_d1b8

jmp_d1a0:
  lddw r1, data_2d60
  call fn_3efe8

jmp_d1b8:
  lddw r2, -0x7fffffffffffffe6
  ldxdw r1, [r10-0xdd8]
  ja jmp_cb58

jmp_d1d8:
  mov64 r1, r10
  add64 r1, -0x218
  stxdw [r10-0xe50], r2
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  ldxdw r1, [r10-0xe50]
  stxdw [r10-0x220], r1
  stxdw [r10-0x228], r7
  ldxdw r1, [r9+0x10]
  add64 r1, -0x1
  stxdw [r9+0x10], r1
  lddw r1, -0x3c1cb4130349c29
  ldxdw r2, [r10-0x1d8]
  jeq r2, r1, jmp_d290

jmp_d260:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_d308

jmp_d270:
  mov64 r1, 0x1c
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_d290:
  lddw r1, -0xb6a3785afba3445
  ldxdw r2, [r10-0x1d0]
  jne r2, r1, jmp_d260
  lddw r1, -0x182dbcdd20a11484
  ldxdw r2, [r10-0x1c8]
  jne r2, r1, jmp_d260
  mov64 r1, 0x0
  lddw r2, -0x309924488b6719d5
  ldxdw r3, [r10-0x1c0]
  jne r3, r2, jmp_d260
  jeq r1, 0x0, jmp_d308
  ja jmp_d270

jmp_d308:
  mov64 r7, r9
  ldxdw r1, [r8+0x0]
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r10-0x1d8]
  jeq r2, r3, jmp_d3b0

jmp_d330:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_d348
  ja jmp_170d0

jmp_d348:
  ldxdw r1, [r6+0x0]
  ldxdw r2, [r1+0x0]
  lddw r3, 0x9e9974ee626ad71
  jeq r2, r3, jmp_d410

jmp_d370:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_d488

jmp_d380:
  mov64 r1, 0x0
  ldxdw r2, [r10-0xdd8]
  stxb [r2+0xb], r1
  stxh [r2+0x9], r1
  mov64 r1, 0x17
  ja jmp_d898

jmp_d3b0:
  ldxdw r2, [r1+0x8]
  ldxdw r3, [r10-0x1d0]
  jne r2, r3, jmp_d330
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r10-0x1c8]
  jne r2, r3, jmp_d330
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r10-0x1c0]
  jne r1, r3, jmp_d330
  jeq r2, 0x0, jmp_d348
  ja jmp_170d0

jmp_d410:
  ldxdw r2, [r1+0x8]
  lddw r3, -0x5a4e740901420473
  jne r2, r3, jmp_d370
  ldxdw r2, [r1+0x10]
  lddw r3, 0x3f762b2616a7d0c7
  jne r2, r3, jmp_d370
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  lddw r3, -0x1ff47e790077cfa3
  jne r1, r3, jmp_d370
  jeq r2, 0x0, jmp_d488
  ja jmp_d380

jmp_d488:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x59]
  jeq r1, 0x0, jmp_10630
  ldxb r1, [r10-0x16]
  jeq r1, 0x0, jmp_d4b8
  ja jmp_10548

jmp_d4b8:
  ldxh r9, [r10-0x18]
  add64 r9, 0x1
  stxh [r10-0x18], r9
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  ldxdw r3, [r10-0xdf0]
  mov64 r4, r9
  call fn_1e560
  ldxb r1, [r10-0xc00]
  stxdw [r10-0xe50], r1
  ldxdw r1, [r10-0xc08]
  lddw r2, -0x7fffffffffffffe6
  jeq r1, r2, jmp_d538
  ja jmp_d6d0

jmp_d538:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0xb9]
  jeq r1, 0x0, jmp_10630
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  ldxdw r3, [r10-0xe00]
  ldxdw r4, [r10-0xdf8]
  call fn_1e2f8
  ldxdw r1, [r10-0xc08]
  lddw r6, -0x7fffffffffffffe6
  jeq r1, r6, jmp_d5a8
  ja jmp_10ac0

jmp_d5a8:
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  ldxdw r3, [r10-0xe08]
  ldxdw r4, [r10-0xe40]
  call fn_1e2f8
  ldxdw r1, [r10-0xc08]
  jeq r1, r6, jmp_d5f0
  ja jmp_10ac0

jmp_d5f0:
  ldxdw r1, [r10-0xde0]
  ldxdw r8, [r1+0xd0]
  ldxdw r1, [r8+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_d628
  ja jmp_d868

jmp_d628:
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ldxdw r3, [r8+0x20]
  ldxdw r2, [r8+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_1048
  ldxw r1, [r10-0xb70]
  jeq r1, 0x2, jmp_d678
  ja jmp_d718

jmp_d678:
  ldxdw r1, [r10-0xbf8]
  stxdw [r10-0x2d8], r1
  ldxdw r2, [r10-0xc00]
  stxdw [r10-0x2e0], r2
  ldxdw r3, [r10-0xc08]
  stxdw [r10-0x2e8], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ja jmp_e020

jmp_d6d0:
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0xdd8]
  stxdw [r3+0x10], r2
  ldxdw r2, [r10-0xbff]
  stxdw [r3+0x9], r2
  ldxdw r2, [r10-0xe50]
  stxb [r3+0x8], r2
  stxdw [r3+0x0], r1
  ja jmp_cb60

jmp_d718:
  mov64 r6, r10
  add64 r6, -0x2e8
  mov64 r2, r10
  add64 r2, -0xc08
  mov64 r1, r6
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x440
  mov64 r2, r6
  mov64 r3, 0x98
  call fn_490d0
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x100]
  stxdw [r10-0xe00], r1
  ldxdw r1, [r1+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_d7b8
  ja jmp_d880

jmp_d7b8:
  add64 r1, 0x1
  ldxdw r2, [r10-0xe00]
  stxdw [r2+0x10], r1
  ldxdw r3, [r2+0x20]
  ldxdw r2, [r2+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_1048
  ldxw r1, [r10-0xb70]
  jeq r1, 0x2, jmp_d810
  ja jmp_d8c0

jmp_d810:
  ldxdw r1, [r10-0xbf8]
  stxdw [r10-0x4f0], r1
  ldxdw r2, [r10-0xc00]
  stxdw [r10-0x4f8], r2
  ldxdw r3, [r10-0xc08]
  stxdw [r10-0x500], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ja jmp_db68

jmp_d868:
  lddw r1, data_2dd8
  call fn_3f090

jmp_d880:
  lddw r1, data_2dc0
  call fn_3f090

jmp_d898:
  stxb [r2+0x8], r1

jmp_d8a0:
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ja jmp_cb60

jmp_d8c0:
  mov64 r6, r10
  add64 r6, -0x500
  mov64 r2, r10
  add64 r2, -0xc08
  mov64 r1, r6
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x2e8
  mov64 r2, r6
  mov64 r3, 0x98
  call fn_490d0
  ldxdw r1, [r10-0x2d8]
  ldxdw r2, [r10-0x430]
  jeq r2, r1, jmp_d948

jmp_d938:
  mov64 r1, 0x1
  ja jmp_d998

jmp_d948:
  ldxdw r1, [r10-0x2d0]
  ldxdw r2, [r10-0x428]
  jne r2, r1, jmp_d938
  ldxdw r1, [r10-0x2c8]
  ldxdw r2, [r10-0x420]
  jne r2, r1, jmp_d938
  mov64 r1, 0x0
  ldxdw r2, [r10-0x2c0]
  ldxdw r3, [r10-0x418]
  jne r3, r2, jmp_d938

jmp_d998:
  jeq r1, 0x0, jmp_db00
  mov64 r1, r9
  be16 r1
  stxh [r10-0x5c0], r1
  mov64 r1, 0x1
  stxdw [r10-0xbe0], r1
  mov64 r1, r10
  add64 r1, -0x680
  stxdw [r10-0xbe8], r1
  mov64 r1, 0x2
  stxdw [r10-0xbf0], r1
  mov64 r1, r10
  add64 r1, -0x5c0
  stxdw [r10-0xbf8], r1
  mov64 r1, 0x5
  stxdw [r10-0xc00], r1
  lddw r1, str_04d8
  stxdw [r10-0xc08], r1
  ldxdw r1, [r10-0xe50]
  stxb [r10-0x680], r1
  mov64 r1, 0x3
  stxdw [r10-0xff8], r1
  mov64 r1, 0x4f0
  stxdw [r10-0xff0], r1
  mov64 r1, r10
  add64 r1, -0xc08
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0x500
  mov64 r5, r10
  ldxdw r2, [r10-0xde0]
  ldxdw r3, [r10-0xdf0]
  ldxdw r4, [r10-0xde8]
  call fn_1cf68
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0x500]
  jeq r2, r1, jmp_dad8
  ja jmp_db30

jmp_dad8:
  ldxdw r1, [r10-0xe10]
  jgt r1, 0xf4240, jmp_daf0
  ja jmp_db90

jmp_daf0:
  mov64 r1, 0xa
  ja jmp_db08

jmp_db00:
  mov64 r1, 0x6

jmp_db08:
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  ja jmp_db60

jmp_db30:
  ldxdw r1, [r10-0x4f0]
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x4f8]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x500]

jmp_db60:
  stxdw [r2+0x0], r1

jmp_db68:
  ldxdw r2, [r10-0xe00]

jmp_db70:
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ja jmp_e020

jmp_db90:
  ldxdw r1, [r10-0xe18]
  jgt r1, 0xf4240, jmp_dba8
  ja jmp_dbb8

jmp_dba8:
  mov64 r1, 0xb
  ja jmp_db08

jmp_dbb8:
  mov64 r1, r10
  add64 r1, -0x430
  mov64 r2, r10
  add64 r2, -0x2d8
  ldxdw r3, [r1+0x18]
  stxdw [r10-0xbd8], r3
  ldxdw r3, [r1+0x10]
  stxdw [r10-0xbe0], r3
  ldxdw r3, [r1+0x8]
  stxdw [r10-0xbe8], r3
  ldxdw r1, [r1+0x0]
  stxdw [r10-0xbf0], r1
  ldxdw r1, [r2+0x0]
  stxdw [r10-0xbd0], r1
  ldxdw r1, [r2+0x8]
  stxdw [r10-0xbc8], r1
  ldxdw r1, [r2+0x10]
  stxdw [r10-0xbc0], r1
  ldxdw r1, [r2+0x18]
  stxdw [r10-0xbb8], r1
  mov64 r1, r10
  add64 r1, -0xb68
  call fn_24a0
  mov64 r1, r10
  add64 r1, -0x988
  call fn_24a0
  mov64 r6, 0x0
  stxdw [r10-0xc00], r6
  stxdw [r10-0xc08], r6
  mov64 r1, r10
  add64 r1, -0x740
  mov64 r2, 0x0
  mov64 r3, 0x28
  call fn_493f8
  ldxdw r1, [r10-0xe38]
  stxw [r10-0xb9c], r1
  ldxdw r1, [r10-0xe30]
  stxw [r10-0xba0], r1
  ldxdw r1, [r10-0xe28]
  stxdw [r10-0xba8], r1
  ldxdw r1, [r10-0xe20]
  stxdw [r10-0xbb0], r1
  ldxdw r1, [r10-0xdf8]
  stxh [r10-0xbf2], r1
  stxh [r10-0xbf4], r9
  ldxdw r1, [r10-0xe10]
  stxw [r10-0xbf8], r1
  mov64 r1, r10
  add64 r1, -0xb98
  mov64 r2, 0x0
  mov64 r3, 0x30
  call fn_493f8
  mov64 r1, 0xf4240
  stxw [r10-0x764], r1
  stxw [r10-0x770], r1
  stxw [r10-0x77c], r1
  stxw [r10-0x788], r1
  lddw r1, 0xf424000000000
  stxdw [r10-0x798], r1
  ldxdw r1, [r10-0xe48]
  stxb [r10-0x7a2], r1
  ldxdw r1, [r10-0xe40]
  stxh [r10-0x7a4], r1
  ldxdw r1, [r10-0xe18]
  stxw [r10-0x7a8], r1
  stxdw [r10-0x760], r6
  stxdw [r10-0x76c], r6
  stxdw [r10-0x778], r6
  stxdw [r10-0x784], r6
  stxdw [r10-0x790], r6
  stxdw [r10-0x7a0], r6
  stxb [r10-0x7a1], r6
  stxdw [r10-0x758], r6
  stxdw [r10-0x750], r6
  stxdw [r10-0x748], r6
  ldxdw r1, [r7+0x10]
  jeq r1, 0x0, jmp_de30
  ja jmp_dff0

jmp_de30:
  mov64 r1, -0x1
  mov64 r2, r7
  stxdw [r2+0x10], r1
  ldxdw r1, [r2+0x18]
  ldxdw r2, [r2+0x20]
  stxdw [r10-0x4f8], r2
  stxdw [r10-0x500], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0x500
  call fn_277a8
  jeq r0, 0x0, jmp_ded0
  ldxdw r1, [r10-0xdd8]
  mov64 r2, r0
  call fn_30d48
  ldxdw r1, [r7+0x10]
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ja jmp_db68

jmp_ded0:
  ldxdw r1, [r7+0x10]
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ldxdw r1, [r10-0xde0]
  ldxdw r6, [r1+0xa0]
  ldxdw r1, [r6+0x10]
  jeq r1, 0x0, jmp_df10
  ja jmp_e008

jmp_df10:
  mov64 r1, -0x1
  stxdw [r6+0x10], r1
  ldxdw r1, [r6+0x20]
  jeq r1, 0x4f0, jmp_df50
  mov64 r2, 0x4f0
  lddw r3, data_2d78
  call fn_45430

jmp_df50:
  ldxdw r1, [r6+0x18]
  mov64 r2, r10
  add64 r2, -0xc08
  mov64 r3, 0x4f0
  call fn_490d0
  ldxdw r1, [r6+0x10]
  add64 r1, 0x1
  stxdw [r6+0x10], r1
  lddw r2, -0x7fffffffffffffe6
  ldxdw r1, [r10-0xdd8]
  stxdw [r1+0x0], r2
  ldxdw r2, [r10-0xe00]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r1, [r8+0x10]
  add64 r1, -0x1
  stxdw [r8+0x10], r1
  ja jmp_cb60

jmp_dff0:
  lddw r1, data_2da8
  call fn_3efe8

jmp_e008:
  lddw r1, data_2d90
  call fn_3efe8

jmp_e020:
  ldxdw r1, [r8+0x10]
  add64 r1, -0x1
  stxdw [r8+0x10], r1
  ja jmp_cb60

jmp_e040:
  mov64 r6, r3
  stxdw [r10-0xdd8], r1
  add64 r0, 0x1
  mov64 r1, r10
  add64 r1, -0xc4a
  mov64 r2, r0
  mov64 r3, 0x21
  call fn_490d0
  jeq r7, 0x0, jmp_cad0
  mov64 r2, r6
  mov64 r8, r2
  add64 r8, 0x30
  ldxdw r1, [r10-0xdd8]
  jeq r7, 0x1, jmp_b8a8
  ldxdw r3, [r2+0x0]
  ldxdw r4, [r3+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_e1e0

jmp_e0d8:
  mov64 r4, 0x1
  jeq r4, 0x0, jmp_e0f0
  ja jmp_f2c8

jmp_e0f0:
  ldxdw r7, [r2+0x10]
  ldxdw r1, [r7+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_e120
  ja jmp_e258

jmp_e120:
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ldxdw r1, [r7+0x18]
  ldxdw r2, [r7+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r4, [r10-0xc00]
  ldxdw r9, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_e1a8
  ja jmp_e270

jmp_e1a8:
  ldxdw r1, [r10-0xdd8]
  mov64 r2, r4
  call fn_30d48
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  ja jmp_cb60

jmp_e1e0:
  ldxdw r4, [r3+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_e0d8
  ldxdw r4, [r3+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_e0d8
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r3, r5, jmp_e0d8
  jeq r4, 0x0, jmp_e0f0
  ja jmp_f2c8

jmp_e258:
  lddw r1, data_2e50
  call fn_3f090

jmp_e270:
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  stxdw [r10-0xdf0], r1
  mov64 r3, 0x210
  stxdw [r10-0xde8], r4
  call fn_490d0
  ldxdw r1, [r10-0xde8]
  stxdw [r10-0x220], r1
  stxdw [r10-0x228], r9
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  lddw r2, -0x3c1cb4130349c29
  ldxdw r3, [r10-0x1d8]
  jeq r3, r2, jmp_e310

jmp_e300:
  mov64 r3, 0x1
  ja jmp_e378

jmp_e310:
  lddw r2, -0xb6a3785afba3445
  ldxdw r3, [r10-0x1d0]
  jne r3, r2, jmp_e300
  lddw r2, -0x182dbcdd20a11484
  ldxdw r3, [r10-0x1c8]
  jne r3, r2, jmp_e300
  mov64 r3, 0x0
  lddw r2, -0x309924488b6719d5
  ldxdw r4, [r10-0x1c0]
  jne r4, r2, jmp_e300

jmp_e378:
  ldxdw r2, [r10-0xdd8]
  jeq r3, 0x0, jmp_e3a0

jmp_e388:
  mov64 r1, 0x1c
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_e3a0:
  ldxb r3, [r10-0x16]
  jeq r3, 0x0, jmp_e3b8
  ja jmp_12ca0

jmp_e3b8:
  ldxb r3, [r6+0x29]
  jeq r3, 0x0, jmp_12d10
  ldxb r3, [r6+0x58]
  jeq r3, 0x0, jmp_f6e8
  ldxdw r3, [r8+0x0]
  ldxdw r4, [r3+0x0]
  ldxdw r5, [r10-0x1d8]
  jeq r4, r5, jmp_e560

jmp_e3f8:
  mov64 r4, 0x1
  jeq r4, 0x0, jmp_e410
  ja jmp_1c330

jmp_e410:
  ldxb r2, [r10-0xc4a]
  jeq r2, 0x0, jmp_e5c0
  jeq r2, 0x1, jmp_e438
  ldxdw r1, [r10-0x208]
  stxdw [r10-0xde8], r1

jmp_e438:
  jeq r2, 0x1, jmp_e458
  mov64 r1, r10
  add64 r1, -0x200
  stxdw [r10-0xdf0], r1

jmp_e458:
  ldxw r1, [r10-0xc2d]
  stxw [r10-0xc00], r1
  ldxw r1, [r10-0xc3b]
  stxw [r10-0xc04], r1
  ldxw r1, [r10-0xc49]
  stxw [r10-0xc08], r1
  ldxdw r1, [r10-0xdf0]
  ldxdw r2, [r1+0x0]
  mov64 r3, r10
  add64 r3, -0xc08
  ldxdw r1, [r10-0xde8]
  call fn_1e950
  ldxdw r1, [r7+0x10]
  jeq r1, 0x0, jmp_e4d0
  ja jmp_f208

jmp_e4d0:
  mov64 r1, -0x1
  mov64 r2, r7
  stxdw [r2+0x10], r1
  ldxdw r1, [r2+0x18]
  ldxdw r2, [r2+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_e540
  ja jmp_fd90

jmp_e540:
  ldxdw r1, [r7+0x10]
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ja jmp_d1b8

jmp_e560:
  ldxdw r4, [r3+0x8]
  ldxdw r5, [r10-0x1d0]
  jne r4, r5, jmp_e3f8
  ldxdw r4, [r3+0x10]
  ldxdw r5, [r10-0x1c8]
  jne r4, r5, jmp_e3f8
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  ldxdw r5, [r10-0x1c0]
  jne r3, r5, jmp_e3f8
  jeq r4, 0x0, jmp_e410
  ja jmp_1c330

jmp_e5c0:
  ldxdw r2, [r10-0x160]
  ldxdw r3, [r10-0xc49]
  jeq r3, r2, jmp_e610

jmp_e5d8:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_e670

jmp_e5e8:
  ldxdw r2, [r10-0x140]
  ldxdw r3, [r10-0xc49]
  jeq r3, r2, jmp_e690

jmp_e600:
  mov64 r2, 0x1
  ja jmp_e6e0

jmp_e610:
  ldxdw r2, [r10-0x158]
  ldxdw r3, [r10-0xc41]
  jne r3, r2, jmp_e5d8
  ldxdw r2, [r10-0x150]
  ldxdw r3, [r10-0xc39]
  jne r3, r2, jmp_e5d8
  mov64 r2, 0x0
  ldxdw r3, [r10-0x148]
  ldxdw r4, [r10-0xc31]
  jne r4, r3, jmp_e5d8
  jeq r2, 0x0, jmp_e670
  ja jmp_e5e8

jmp_e670:
  mov64 r1, 0x10
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_e690:
  ldxdw r2, [r10-0x138]
  ldxdw r3, [r10-0xc41]
  jne r3, r2, jmp_e600
  ldxdw r2, [r10-0x130]
  ldxdw r3, [r10-0xc39]
  jne r3, r2, jmp_e600
  mov64 r2, 0x0
  ldxdw r3, [r10-0x128]
  ldxdw r4, [r10-0xc31]
  jne r4, r3, jmp_e600

jmp_e6e0:
  jeq r2, 0x0, jmp_e670
  ldxdw r2, [r10-0x120]
  ldxdw r3, [r10-0xc49]
  jeq r3, r2, jmp_e710

jmp_e700:
  mov64 r2, 0x1
  ja jmp_e760

jmp_e710:
  ldxdw r2, [r10-0x118]
  ldxdw r3, [r10-0xc41]
  jne r3, r2, jmp_e700
  ldxdw r2, [r10-0x110]
  ldxdw r3, [r10-0xc39]
  jne r3, r2, jmp_e700
  mov64 r2, 0x0
  ldxdw r3, [r10-0x108]
  ldxdw r4, [r10-0xc31]
  jne r4, r3, jmp_e700

jmp_e760:
  jeq r2, 0x0, jmp_e670
  ldxdw r2, [r10-0x100]
  ldxdw r3, [r10-0xc49]
  jeq r3, r2, jmp_e790

jmp_e780:
  mov64 r2, 0x1
  ja jmp_e7e0

jmp_e790:
  ldxdw r2, [r10-0xf8]
  ldxdw r3, [r10-0xc41]
  jne r3, r2, jmp_e780
  ldxdw r2, [r10-0xf0]
  ldxdw r3, [r10-0xc39]
  jne r3, r2, jmp_e780
  mov64 r2, 0x0
  ldxdw r3, [r10-0xe8]
  ldxdw r4, [r10-0xc31]
  jne r4, r3, jmp_e780

jmp_e7e0:
  jeq r2, 0x0, jmp_e670
  ldxdw r2, [r10-0xe0]
  ldxdw r3, [r10-0xc49]
  jeq r3, r2, jmp_e810

jmp_e800:
  mov64 r2, 0x1
  ja jmp_e860

jmp_e810:
  ldxdw r2, [r10-0xd8]
  ldxdw r3, [r10-0xc41]
  jne r3, r2, jmp_e800
  ldxdw r2, [r10-0xd0]
  ldxdw r3, [r10-0xc39]
  jne r3, r2, jmp_e800
  mov64 r2, 0x0
  ldxdw r3, [r10-0xc8]
  ldxdw r4, [r10-0xc31]
  jne r4, r3, jmp_e800

jmp_e860:
  jeq r2, 0x0, jmp_e670
  ldxdw r2, [r10-0xc0]
  ldxdw r3, [r10-0xc49]
  jeq r3, r2, jmp_e890

jmp_e880:
  mov64 r2, 0x1
  ja jmp_e8e0

jmp_e890:
  ldxdw r2, [r10-0xb8]
  ldxdw r3, [r10-0xc41]
  jne r3, r2, jmp_e880
  ldxdw r2, [r10-0xb0]
  ldxdw r3, [r10-0xc39]
  jne r3, r2, jmp_e880
  mov64 r2, 0x0
  ldxdw r3, [r10-0xa8]
  ldxdw r4, [r10-0xc31]
  jne r4, r3, jmp_e880

jmp_e8e0:
  jeq r2, 0x0, jmp_e670
  ldxdw r2, [r10-0xa0]
  ldxdw r3, [r10-0xc49]
  jeq r3, r2, jmp_e910

jmp_e900:
  mov64 r2, 0x1
  ja jmp_e960

jmp_e910:
  ldxdw r2, [r10-0x98]
  ldxdw r3, [r10-0xc41]
  jne r3, r2, jmp_e900
  ldxdw r2, [r10-0x90]
  ldxdw r3, [r10-0xc39]
  jne r3, r2, jmp_e900
  mov64 r2, 0x0
  ldxdw r3, [r10-0x88]
  ldxdw r4, [r10-0xc31]
  jne r4, r3, jmp_e900

jmp_e960:
  jeq r2, 0x0, jmp_e670
  ldxdw r2, [r10-0x80]
  ldxdw r3, [r10-0xc49]
  jeq r3, r2, jmp_e990

jmp_e980:
  mov64 r2, 0x1
  ja jmp_e9e0

jmp_e990:
  ldxdw r2, [r10-0x78]
  ldxdw r3, [r10-0xc41]
  jne r3, r2, jmp_e980
  ldxdw r2, [r10-0x70]
  ldxdw r3, [r10-0xc39]
  jne r3, r2, jmp_e980
  mov64 r2, 0x0
  ldxdw r3, [r10-0x68]
  ldxdw r4, [r10-0xc31]
  jne r4, r3, jmp_e980

jmp_e9e0:
  jeq r2, 0x0, jmp_e670
  ldxdw r2, [r10-0x60]
  ldxdw r3, [r10-0xc49]
  jeq r3, r2, jmp_ea10

jmp_ea00:
  mov64 r2, 0x1
  ja jmp_ea60

jmp_ea10:
  ldxdw r2, [r10-0x58]
  ldxdw r3, [r10-0xc41]
  jne r3, r2, jmp_ea00
  ldxdw r2, [r10-0x50]
  ldxdw r3, [r10-0xc39]
  jne r3, r2, jmp_ea00
  mov64 r2, 0x0
  ldxdw r3, [r10-0x48]
  ldxdw r4, [r10-0xc31]
  jne r4, r3, jmp_ea00

jmp_ea60:
  jeq r2, 0x0, jmp_e670
  ldxdw r2, [r10-0x40]
  ldxdw r3, [r10-0xc49]
  jeq r3, r2, jmp_ea90

jmp_ea80:
  mov64 r2, 0x1
  ja jmp_eae0

jmp_ea90:
  ldxdw r2, [r10-0x38]
  ldxdw r3, [r10-0xc41]
  jne r3, r2, jmp_ea80
  ldxdw r2, [r10-0x30]
  ldxdw r3, [r10-0xc39]
  jne r3, r2, jmp_ea80
  mov64 r2, 0x0
  ldxdw r3, [r10-0x28]
  ldxdw r4, [r10-0xc31]
  jne r4, r3, jmp_ea80

jmp_eae0:
  jeq r2, 0x0, jmp_e670
  mov64 r2, 0x0
  stxdw [r10-0xbf0], r2
  stxdw [r10-0xbf8], r2
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r2
  ldxdw r2, [r10-0x160]
  jeq r2, 0x0, jmp_eb30

jmp_eb20:
  mov64 r3, 0x1
  ja jmp_eb80

jmp_eb30:
  ldxdw r2, [r10-0xc00]
  ldxdw r3, [r10-0x158]
  jne r3, r2, jmp_eb20
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0x150]
  jne r3, r2, jmp_eb20
  mov64 r3, 0x0
  ldxdw r2, [r10-0xbf0]
  ldxdw r4, [r10-0x148]
  jne r4, r2, jmp_eb20

jmp_eb80:
  mov64 r2, 0x0
  jeq r3, 0x0, jmp_f190
  stxdw [r10-0xbf0], r2
  stxdw [r10-0xbf8], r2
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r2
  ldxdw r2, [r10-0x140]
  jeq r2, 0x0, jmp_ebd0

jmp_ebc0:
  mov64 r3, 0x1
  ja jmp_ec20

jmp_ebd0:
  ldxdw r2, [r10-0xc00]
  ldxdw r3, [r10-0x138]
  jne r3, r2, jmp_ebc0
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0x130]
  jne r3, r2, jmp_ebc0
  mov64 r3, 0x0
  ldxdw r2, [r10-0xbf0]
  ldxdw r4, [r10-0x128]
  jne r4, r2, jmp_ebc0

jmp_ec20:
  mov64 r2, 0x1
  jeq r3, 0x0, jmp_f190
  mov64 r2, 0x0
  stxdw [r10-0xbf0], r2
  stxdw [r10-0xbf8], r2
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r2
  ldxdw r2, [r10-0x120]
  jeq r2, 0x0, jmp_ec78

jmp_ec68:
  mov64 r3, 0x1
  ja jmp_ecc8

jmp_ec78:
  ldxdw r2, [r10-0xc00]
  ldxdw r3, [r10-0x118]
  jne r3, r2, jmp_ec68
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0x110]
  jne r3, r2, jmp_ec68
  mov64 r3, 0x0
  ldxdw r2, [r10-0xbf0]
  ldxdw r4, [r10-0x108]
  jne r4, r2, jmp_ec68

jmp_ecc8:
  mov64 r2, 0x2
  jeq r3, 0x0, jmp_f190
  mov64 r2, 0x0
  stxdw [r10-0xbf0], r2
  stxdw [r10-0xbf8], r2
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r2
  ldxdw r2, [r10-0x100]
  jeq r2, 0x0, jmp_ed20

jmp_ed10:
  mov64 r3, 0x1
  ja jmp_ed70

jmp_ed20:
  ldxdw r2, [r10-0xc00]
  ldxdw r3, [r10-0xf8]
  jne r3, r2, jmp_ed10
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0xf0]
  jne r3, r2, jmp_ed10
  mov64 r3, 0x0
  ldxdw r2, [r10-0xbf0]
  ldxdw r4, [r10-0xe8]
  jne r4, r2, jmp_ed10

jmp_ed70:
  mov64 r2, 0x3
  jeq r3, 0x0, jmp_f190
  mov64 r2, 0x0
  stxdw [r10-0xbf0], r2
  stxdw [r10-0xbf8], r2
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r2
  ldxdw r2, [r10-0xe0]
  jeq r2, 0x0, jmp_edc8

jmp_edb8:
  mov64 r3, 0x1
  ja jmp_ee18

jmp_edc8:
  ldxdw r2, [r10-0xc00]
  ldxdw r3, [r10-0xd8]
  jne r3, r2, jmp_edb8
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0xd0]
  jne r3, r2, jmp_edb8
  mov64 r3, 0x0
  ldxdw r2, [r10-0xbf0]
  ldxdw r4, [r10-0xc8]
  jne r4, r2, jmp_edb8

jmp_ee18:
  mov64 r2, 0x4
  jeq r3, 0x0, jmp_f190
  mov64 r2, 0x0
  stxdw [r10-0xbf0], r2
  stxdw [r10-0xbf8], r2
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r2
  ldxdw r2, [r10-0xc0]
  jeq r2, 0x0, jmp_ee70

jmp_ee60:
  mov64 r3, 0x1
  ja jmp_eec0

jmp_ee70:
  ldxdw r2, [r10-0xc00]
  ldxdw r3, [r10-0xb8]
  jne r3, r2, jmp_ee60
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0xb0]
  jne r3, r2, jmp_ee60
  mov64 r3, 0x0
  ldxdw r2, [r10-0xbf0]
  ldxdw r4, [r10-0xa8]
  jne r4, r2, jmp_ee60

jmp_eec0:
  mov64 r2, 0x5
  jeq r3, 0x0, jmp_f190
  mov64 r2, 0x0
  stxdw [r10-0xbf0], r2
  stxdw [r10-0xbf8], r2
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r2
  ldxdw r2, [r10-0xa0]
  jeq r2, 0x0, jmp_ef18

jmp_ef08:
  mov64 r3, 0x1
  ja jmp_ef68

jmp_ef18:
  ldxdw r2, [r10-0xc00]
  ldxdw r3, [r10-0x98]
  jne r3, r2, jmp_ef08
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0x90]
  jne r3, r2, jmp_ef08
  mov64 r3, 0x0
  ldxdw r2, [r10-0xbf0]
  ldxdw r4, [r10-0x88]
  jne r4, r2, jmp_ef08

jmp_ef68:
  mov64 r2, 0x6
  jeq r3, 0x0, jmp_f190
  mov64 r2, 0x0
  stxdw [r10-0xbf0], r2
  stxdw [r10-0xbf8], r2
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r2
  ldxdw r2, [r10-0x80]
  jeq r2, 0x0, jmp_efc0

jmp_efb0:
  mov64 r3, 0x1
  ja jmp_f010

jmp_efc0:
  ldxdw r2, [r10-0xc00]
  ldxdw r3, [r10-0x78]
  jne r3, r2, jmp_efb0
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0x70]
  jne r3, r2, jmp_efb0
  mov64 r3, 0x0
  ldxdw r2, [r10-0xbf0]
  ldxdw r4, [r10-0x68]
  jne r4, r2, jmp_efb0

jmp_f010:
  mov64 r2, 0x7
  jeq r3, 0x0, jmp_f190
  mov64 r2, 0x0
  stxdw [r10-0xbf0], r2
  stxdw [r10-0xbf8], r2
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r2
  ldxdw r2, [r10-0x60]
  jeq r2, 0x0, jmp_f068

jmp_f058:
  mov64 r3, 0x1
  ja jmp_f0b8

jmp_f068:
  ldxdw r2, [r10-0xc00]
  ldxdw r3, [r10-0x58]
  jne r3, r2, jmp_f058
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0x50]
  jne r3, r2, jmp_f058
  mov64 r3, 0x0
  ldxdw r2, [r10-0xbf0]
  ldxdw r4, [r10-0x48]
  jne r4, r2, jmp_f058

jmp_f0b8:
  mov64 r2, 0x8
  jeq r3, 0x0, jmp_f190
  mov64 r2, 0x0
  stxdw [r10-0xbf0], r2
  stxdw [r10-0xbf8], r2
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r2
  ldxdw r2, [r10-0x40]
  jeq r2, 0x0, jmp_f110

jmp_f100:
  mov64 r3, 0x1
  ja jmp_f160

jmp_f110:
  ldxdw r2, [r10-0xc00]
  ldxdw r3, [r10-0x38]
  jne r3, r2, jmp_f100
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0x30]
  jne r3, r2, jmp_f100
  mov64 r3, 0x0
  ldxdw r2, [r10-0xbf0]
  ldxdw r4, [r10-0x28]
  jne r4, r2, jmp_f100

jmp_f160:
  mov64 r2, 0x9
  jeq r3, 0x0, jmp_f190
  mov64 r1, 0x11
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_f190:
  mov64 r3, r10
  add64 r3, -0xc49
  mov64 r4, r10
  add64 r4, -0x160
  lsh64 r2, 0x5
  add64 r4, r2
  ldxdw r2, [r3+0x18]
  stxdw [r4+0x18], r2
  ldxdw r2, [r3+0x10]
  stxdw [r4+0x10], r2
  ldxdw r2, [r3+0x8]
  stxdw [r4+0x8], r2
  ldxdw r2, [r3+0x0]
  stxdw [r4+0x0], r2
  jeq r1, 0x0, jmp_e4d0

jmp_f208:
  lddw r1, data_2e38
  call fn_3efe8

jmp_f220:
  mov64 r6, r3
  stxdw [r10-0xdd8], r1
  add64 r0, 0x1
  mov64 r1, r10
  add64 r1, -0xc29
  mov64 r2, r0
  mov64 r3, 0x21
  call fn_490d0
  jeq r7, 0x0, jmp_cad0
  mov64 r2, r6
  mov64 r8, r2
  add64 r8, 0x30
  ldxdw r1, [r10-0xdd8]
  jeq r7, 0x1, jmp_b8a8
  ldxdw r3, [r2+0x0]
  ldxdw r4, [r3+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_f2d0

jmp_f2b8:
  mov64 r4, 0x1
  jeq r4, 0x0, jmp_f348

jmp_f2c8:
  ja jmp_bad0

jmp_f2d0:
  ldxdw r4, [r3+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_f2b8
  ldxdw r4, [r3+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_f2b8
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r3, r5, jmp_f2b8
  jeq r4, 0x0, jmp_f348
  ja jmp_f2c8

jmp_f348:
  ldxdw r7, [r2+0x10]
  ldxdw r1, [r7+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_f378
  ja jmp_f438

jmp_f378:
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ldxdw r1, [r7+0x18]
  ldxdw r2, [r7+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r4, [r10-0xc00]
  ldxdw r9, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_f400
  ja jmp_f450

jmp_f400:
  ldxdw r1, [r10-0xdd8]
  mov64 r2, r4

jmp_f410:
  call fn_30d48

jmp_f418:
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  ja jmp_cb60

jmp_f438:
  lddw r1, data_2e80
  call fn_3f090

jmp_f450:
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  stxdw [r10-0xdf0], r1
  mov64 r3, 0x210
  stxdw [r10-0xde8], r4
  call fn_490d0
  ldxdw r1, [r10-0xde8]
  stxdw [r10-0x220], r1
  stxdw [r10-0x228], r9
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  lddw r2, -0x3c1cb4130349c29
  ldxdw r3, [r10-0x1d8]
  jeq r3, r2, jmp_f4f0

jmp_f4e0:
  mov64 r3, 0x1
  ja jmp_f558

jmp_f4f0:
  lddw r2, -0xb6a3785afba3445
  ldxdw r3, [r10-0x1d0]
  jne r3, r2, jmp_f4e0
  lddw r2, -0x182dbcdd20a11484
  ldxdw r3, [r10-0x1c8]
  jne r3, r2, jmp_f4e0
  mov64 r3, 0x0
  lddw r2, -0x309924488b6719d5
  ldxdw r4, [r10-0x1c0]
  jne r4, r2, jmp_f4e0

jmp_f558:
  ldxdw r2, [r10-0xdd8]
  jeq r3, 0x0, jmp_f570
  ja jmp_1c2f8

jmp_f570:
  ldxb r3, [r10-0x16]
  jeq r3, 0x0, jmp_f588
  ja jmp_12ca0

jmp_f588:
  ldxb r3, [r6+0x29]
  jeq r3, 0x0, jmp_12d10
  ldxb r3, [r6+0x58]
  jeq r3, 0x0, jmp_f6e8
  ldxdw r3, [r8+0x0]
  ldxdw r4, [r3+0x0]
  ldxdw r5, [r10-0x1d8]
  jeq r4, r5, jmp_f700

jmp_f5c8:
  mov64 r4, 0x1
  jeq r4, 0x0, jmp_f5e0
  ja jmp_1c330

jmp_f5e0:
  ldxb r2, [r10-0xc29]
  jeq r2, 0x0, jmp_f760
  jeq r2, 0x1, jmp_f608
  ldxdw r1, [r10-0x208]
  stxdw [r10-0xde8], r1

jmp_f608:
  jeq r2, 0x1, jmp_f628
  mov64 r1, r10
  add64 r1, -0x200
  stxdw [r10-0xdf0], r1

jmp_f628:
  ldxw r1, [r10-0xc0c]
  stxw [r10-0x2e0], r1
  ldxw r1, [r10-0xc1a]
  stxw [r10-0x2e4], r1
  ldxw r1, [r10-0xc28]
  stxw [r10-0x2e8], r1
  ldxdw r1, [r10-0xdf0]
  ldxdw r3, [r1+0x0]
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r4, r10
  add64 r4, -0x2e8
  ldxdw r2, [r10-0xde8]
  call fn_1eb58
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0xc08]
  jeq r2, r1, jmp_f6c0
  ja jmp_10fb0

jmp_f6c0:
  ldxdw r1, [r7+0x10]
  jeq r1, 0x0, jmp_fd28

jmp_f6d0:
  lddw r1, data_2e68
  call fn_3efe8

jmp_f6e8:
  mov64 r1, 0x0
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_f700:
  ldxdw r4, [r3+0x8]
  ldxdw r5, [r10-0x1d0]
  jne r4, r5, jmp_f5c8
  ldxdw r4, [r3+0x10]
  ldxdw r5, [r10-0x1c8]
  jne r4, r5, jmp_f5c8
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  ldxdw r5, [r10-0x1c0]
  jne r3, r5, jmp_f5c8
  jeq r4, 0x0, jmp_f5e0
  ja jmp_1c330

jmp_f760:
  ldxdw r2, [r10-0x160]
  ldxdw r3, [r10-0xc28]
  jeq r3, r2, jmp_f788

jmp_f778:
  mov64 r4, 0x1
  ja jmp_f7d8

jmp_f788:
  ldxdw r2, [r10-0x158]
  ldxdw r3, [r10-0xc20]
  jne r3, r2, jmp_f778
  ldxdw r2, [r10-0x150]
  ldxdw r3, [r10-0xc18]
  jne r3, r2, jmp_f778
  mov64 r4, 0x0
  ldxdw r2, [r10-0x148]
  ldxdw r3, [r10-0xc10]
  jne r3, r2, jmp_f778

jmp_f7d8:
  mov64 r2, 0x0
  mov64 r3, 0x0
  jeq r4, 0x0, jmp_fcd8
  ldxdw r3, [r10-0x140]
  ldxdw r4, [r10-0xc28]
  jeq r4, r3, jmp_f818

jmp_f808:
  mov64 r4, 0x1
  ja jmp_f868

jmp_f818:
  ldxdw r3, [r10-0x138]
  ldxdw r4, [r10-0xc20]
  jne r4, r3, jmp_f808
  ldxdw r3, [r10-0x130]
  ldxdw r4, [r10-0xc18]
  jne r4, r3, jmp_f808
  mov64 r4, 0x0
  ldxdw r3, [r10-0x128]
  ldxdw r5, [r10-0xc10]
  jne r5, r3, jmp_f808

jmp_f868:
  mov64 r3, 0x1
  jeq r4, 0x0, jmp_fcd8
  ldxdw r3, [r10-0x120]
  ldxdw r4, [r10-0xc28]
  jeq r4, r3, jmp_f8a0

jmp_f890:
  mov64 r4, 0x1
  ja jmp_f8f0

jmp_f8a0:
  ldxdw r3, [r10-0x118]
  ldxdw r4, [r10-0xc20]
  jne r4, r3, jmp_f890
  ldxdw r3, [r10-0x110]
  ldxdw r4, [r10-0xc18]
  jne r4, r3, jmp_f890
  mov64 r4, 0x0
  ldxdw r3, [r10-0x108]
  ldxdw r5, [r10-0xc10]
  jne r5, r3, jmp_f890

jmp_f8f0:
  mov64 r3, 0x2
  jeq r4, 0x0, jmp_fcd8
  ldxdw r3, [r10-0x100]
  ldxdw r4, [r10-0xc28]
  jeq r4, r3, jmp_f928

jmp_f918:
  mov64 r4, 0x1
  ja jmp_f978

jmp_f928:
  ldxdw r3, [r10-0xf8]
  ldxdw r4, [r10-0xc20]
  jne r4, r3, jmp_f918
  ldxdw r3, [r10-0xf0]
  ldxdw r4, [r10-0xc18]
  jne r4, r3, jmp_f918
  mov64 r4, 0x0
  ldxdw r3, [r10-0xe8]
  ldxdw r5, [r10-0xc10]
  jne r5, r3, jmp_f918

jmp_f978:
  mov64 r3, 0x3
  jeq r4, 0x0, jmp_fcd8
  ldxdw r3, [r10-0xe0]
  ldxdw r4, [r10-0xc28]
  jeq r4, r3, jmp_f9b0

jmp_f9a0:
  mov64 r4, 0x1
  ja jmp_fa00

jmp_f9b0:
  ldxdw r3, [r10-0xd8]
  ldxdw r4, [r10-0xc20]
  jne r4, r3, jmp_f9a0
  ldxdw r3, [r10-0xd0]
  ldxdw r4, [r10-0xc18]
  jne r4, r3, jmp_f9a0
  mov64 r4, 0x0
  ldxdw r3, [r10-0xc8]
  ldxdw r5, [r10-0xc10]
  jne r5, r3, jmp_f9a0

jmp_fa00:
  mov64 r3, 0x4
  jeq r4, 0x0, jmp_fcd8
  ldxdw r3, [r10-0xc0]
  ldxdw r4, [r10-0xc28]
  jeq r4, r3, jmp_fa38

jmp_fa28:
  mov64 r4, 0x1
  ja jmp_fa88

jmp_fa38:
  ldxdw r3, [r10-0xb8]
  ldxdw r4, [r10-0xc20]
  jne r4, r3, jmp_fa28
  ldxdw r3, [r10-0xb0]
  ldxdw r4, [r10-0xc18]
  jne r4, r3, jmp_fa28
  mov64 r4, 0x0
  ldxdw r3, [r10-0xa8]
  ldxdw r5, [r10-0xc10]
  jne r5, r3, jmp_fa28

jmp_fa88:
  mov64 r3, 0x5
  jeq r4, 0x0, jmp_fcd8
  ldxdw r3, [r10-0xa0]
  ldxdw r4, [r10-0xc28]
  jeq r4, r3, jmp_fac0

jmp_fab0:
  mov64 r4, 0x1
  ja jmp_fb10

jmp_fac0:
  ldxdw r3, [r10-0x98]
  ldxdw r4, [r10-0xc20]
  jne r4, r3, jmp_fab0
  ldxdw r3, [r10-0x90]
  ldxdw r4, [r10-0xc18]
  jne r4, r3, jmp_fab0
  mov64 r4, 0x0
  ldxdw r3, [r10-0x88]
  ldxdw r5, [r10-0xc10]
  jne r5, r3, jmp_fab0

jmp_fb10:
  mov64 r3, 0x6
  jeq r4, 0x0, jmp_fcd8
  ldxdw r3, [r10-0x80]
  ldxdw r4, [r10-0xc28]
  jeq r4, r3, jmp_fb48

jmp_fb38:
  mov64 r4, 0x1
  ja jmp_fb98

jmp_fb48:
  ldxdw r3, [r10-0x78]
  ldxdw r4, [r10-0xc20]
  jne r4, r3, jmp_fb38
  ldxdw r3, [r10-0x70]
  ldxdw r4, [r10-0xc18]
  jne r4, r3, jmp_fb38
  mov64 r4, 0x0
  ldxdw r3, [r10-0x68]
  ldxdw r5, [r10-0xc10]
  jne r5, r3, jmp_fb38

jmp_fb98:
  mov64 r3, 0x7
  jeq r4, 0x0, jmp_fcd8
  ldxdw r3, [r10-0x60]
  ldxdw r4, [r10-0xc28]
  jeq r4, r3, jmp_fbd0

jmp_fbc0:
  mov64 r4, 0x1
  ja jmp_fc20

jmp_fbd0:
  ldxdw r3, [r10-0x58]
  ldxdw r4, [r10-0xc20]
  jne r4, r3, jmp_fbc0
  ldxdw r3, [r10-0x50]
  ldxdw r4, [r10-0xc18]
  jne r4, r3, jmp_fbc0
  mov64 r4, 0x0
  ldxdw r3, [r10-0x48]
  ldxdw r5, [r10-0xc10]
  jne r5, r3, jmp_fbc0

jmp_fc20:
  mov64 r3, 0x8
  jeq r4, 0x0, jmp_fcd8
  ldxdw r3, [r10-0x40]
  ldxdw r4, [r10-0xc28]
  jeq r4, r3, jmp_fc58

jmp_fc48:
  mov64 r4, 0x1
  ja jmp_fca8

jmp_fc58:
  ldxdw r3, [r10-0x38]
  ldxdw r4, [r10-0xc20]
  jne r4, r3, jmp_fc48
  ldxdw r3, [r10-0x30]
  ldxdw r4, [r10-0xc18]
  jne r4, r3, jmp_fc48
  mov64 r4, 0x0
  ldxdw r3, [r10-0x28]
  ldxdw r5, [r10-0xc10]
  jne r5, r3, jmp_fc48

jmp_fca8:
  mov64 r3, 0x9
  jeq r4, 0x0, jmp_fcd8
  mov64 r1, 0x12
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_fcd8:
  mov64 r4, r10
  add64 r4, -0x160
  lsh64 r3, 0x5
  add64 r4, r3
  stxdw [r4+0x18], r2
  stxdw [r4+0x10], r2
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r2
  jeq r1, 0x0, jmp_fd28
  ja jmp_f6d0

jmp_fd28:
  mov64 r1, -0x1
  mov64 r2, r7
  stxdw [r2+0x10], r1
  ldxdw r1, [r2+0x18]
  ldxdw r2, [r2+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_e540

jmp_fd90:
  ja jmp_c9d8

jmp_fd98:
  mov64 r6, r10
  add64 r6, -0x2e8
  mov64 r2, r10
  add64 r2, -0xc08
  mov64 r1, r6
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x440
  mov64 r2, r6
  mov64 r3, 0x98
  call fn_490d0
  ldxdw r1, [r7+0x18]
  ldxdw r2, [r10-0x430]
  jeq r2, r1, jmp_fe58

jmp_fe10:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_feb8

jmp_fe20:
  mov64 r1, 0x5
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ja jmp_101c0

jmp_fe58:
  ldxdw r1, [r7+0x20]
  ldxdw r2, [r10-0x428]
  jne r2, r1, jmp_fe10
  ldxdw r1, [r7+0x28]
  ldxdw r2, [r10-0x420]
  jne r2, r1, jmp_fe10
  mov64 r1, 0x0
  ldxdw r2, [r7+0x30]
  ldxdw r3, [r10-0x418]
  jne r3, r2, jmp_fe10
  jeq r1, 0x0, jmp_feb8
  ja jmp_fe20

jmp_feb8:
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  ldxdw r3, [r10-0xe00]
  ldxdw r4, [r10-0xe08]
  call fn_1e2f8
  ldxdw r1, [r10-0xc08]
  lddw r2, -0x7fffffffffffffe6
  jeq r1, r2, jmp_ff10
  ja jmp_fff0

jmp_ff10:
  ldxdw r1, [r10-0xde0]
  ldxdw r6, [r1+0xd0]
  ldxdw r1, [r6+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_ff48
  ja jmp_10038

jmp_ff48:
  add64 r1, 0x1
  stxdw [r6+0x10], r1
  ldxdw r3, [r6+0x20]
  ldxdw r2, [r6+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_1048
  ldxw r1, [r10-0xb70]
  jeq r1, 0x2, jmp_ff98
  ja jmp_10050

jmp_ff98:
  ldxdw r1, [r10-0xbf8]
  stxdw [r10-0x4f0], r1
  ldxdw r2, [r10-0xc00]
  stxdw [r10-0x4f8], r2
  ldxdw r3, [r10-0xc08]
  stxdw [r10-0x500], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ja jmp_101a8

jmp_fff0:
  ldxb r2, [r10-0xc00]
  ldxdw r3, [r10-0xbf8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  ldxdw r3, [r10-0xbff]
  stxdw [r4+0x9], r3
  stxb [r4+0x8], r2
  stxdw [r4+0x0], r1
  ja jmp_101c0

jmp_10038:
  lddw r1, data_2e98
  call fn_3f090

jmp_10050:
  mov64 r1, r10
  add64 r1, -0x500
  stxdw [r10-0xde0], r1
  mov64 r2, r10
  add64 r2, -0xc08
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x2e8
  ldxdw r2, [r10-0xde0]
  mov64 r3, 0x98
  call fn_490d0
  ldxdw r1, [r7+0x38]
  ldxdw r2, [r10-0x2d8]
  jeq r2, r1, jmp_10110

jmp_100c8:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_10170

jmp_100d8:
  mov64 r1, 0x5
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ja jmp_101a8

jmp_10110:
  ldxdw r1, [r7+0x40]
  ldxdw r2, [r10-0x2d0]
  jne r2, r1, jmp_100c8
  ldxdw r1, [r7+0x48]
  ldxdw r2, [r10-0x2c8]
  jne r2, r1, jmp_100c8
  mov64 r1, 0x0
  ldxdw r2, [r7+0x50]
  ldxdw r3, [r10-0x2c0]
  jne r3, r2, jmp_100c8
  jeq r1, 0x0, jmp_10170
  ja jmp_100d8

jmp_10170:
  ldxdw r1, [r10-0xe08]
  stxh [r7+0x464], r1
  stxh [r7+0x16], r9
  lddw r2, -0x7fffffffffffffe6
  ldxdw r1, [r10-0xdd8]
  stxdw [r1+0x0], r2

jmp_101a8:
  ldxdw r1, [r6+0x10]
  add64 r1, -0x1
  stxdw [r6+0x10], r1

jmp_101c0:
  ldxdw r2, [r10-0xdf0]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1

jmp_101e0:
  ldxdw r1, [r8+0x10]
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ja jmp_cb60

jmp_10200:
  stxdw [r10-0xe00], r5
  stxdw [r10-0xdf8], r4
  mov64 r7, r0
  ldxdw r4, [r3+0x0]
  ldxdw r5, [r4+0x0]
  lddw r0, 0x9e9974ee626ad71
  jeq r5, r0, jmp_10278

jmp_10240:
  mov64 r5, 0x1
  jeq r5, 0x0, jmp_10258
  ja jmp_f2c8

jmp_10258:
  ldxb r4, [r3+0x29]
  jeq r4, 0x0, jmp_102f0

jmp_10268:
  mov64 r2, 0x1
  ja jmp_cb40

jmp_10278:
  ldxdw r5, [r4+0x8]
  lddw r0, -0x5a4e740901420473
  jne r5, r0, jmp_10240
  ldxdw r5, [r4+0x10]
  lddw r0, 0x3f762b2616a7d0c7
  jne r5, r0, jmp_10240
  mov64 r5, 0x0
  ldxdw r4, [r4+0x18]
  lddw r0, -0x1ff47e790077cfa3
  jne r4, r0, jmp_10240
  jeq r5, 0x0, jmp_10258
  ja jmp_f2c8

jmp_102f0:
  stxdw [r10-0xe08], r9
  stxdw [r10-0xde8], r2
  stxdw [r10-0xdd8], r1
  ldxh r1, [r7+0x14]
  stxdw [r10-0xe20], r1
  ldxh r1, [r7+0x12]
  stxdw [r10-0xe18], r1
  ldxh r1, [r7+0x10]
  stxdw [r10-0xe10], r1
  ldxdw r1, [r7+0x8]
  stxdw [r10-0xe28], r1
  mov64 r1, 0x1
  stxdw [r10-0x5a8], r1
  mov64 r1, r10
  add64 r1, -0x680
  stxdw [r10-0x5b0], r1
  mov64 r1, 0x5
  stxdw [r10-0x5b8], r1
  lddw r1, data_03d0
  stxdw [r10-0x5c0], r1
  mov64 r1, 0xff
  stxb [r10-0x680], r1
  stxdw [r10-0xde0], r3
  ldxdw r7, [r3+0x10]
  ldxdw r1, [r7+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_103e0
  ja jmp_10488

jmp_103e0:
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ldxdw r1, [r7+0x18]
  ldxdw r2, [r7+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r1, [r10-0xc00]
  stxdw [r10-0xdf0], r1
  ldxdw r9, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_10470
  ja jmp_104a0

jmp_10470:
  ldxdw r1, [r10-0xdd8]
  ldxdw r2, [r10-0xdf0]
  ja jmp_f410

jmp_10488:
  lddw r1, data_2f40
  call fn_3f090

jmp_104a0:
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  ldxdw r1, [r10-0xdf0]
  stxdw [r10-0x220], r1
  stxdw [r10-0x228], r9
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  lddw r1, -0x3c1cb4130349c29
  ldxdw r2, [r10-0x1d8]
  jeq r2, r1, jmp_10550

jmp_10520:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_10538
  ja jmp_d270

jmp_10538:
  ldxb r1, [r10-0x16]
  jeq r1, 0x0, jmp_105c8

jmp_10548:
  ja jmp_9fc0

jmp_10550:
  lddw r1, -0xb6a3785afba3445
  ldxdw r2, [r10-0x1d0]
  jne r2, r1, jmp_10520
  lddw r1, -0x182dbcdd20a11484
  ldxdw r2, [r10-0x1c8]
  jne r2, r1, jmp_10520
  mov64 r1, 0x0
  lddw r2, -0x309924488b6719d5
  ldxdw r3, [r10-0x1c0]
  jne r3, r2, jmp_10520
  jeq r1, 0x0, jmp_10538
  ja jmp_d270

jmp_105c8:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x58]
  jeq r1, 0x0, jmp_cab0
  ldxdw r1, [r8+0x0]
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r10-0x1d8]
  jeq r2, r3, jmp_10650

jmp_10600:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_10618
  ja jmp_170d0

jmp_10618:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x89]
  jeq r1, 0x0, jmp_106b0

jmp_10630:
  mov64 r1, 0x1
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_10650:
  ldxdw r2, [r1+0x8]
  ldxdw r3, [r10-0x1d0]
  jne r2, r3, jmp_10600
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r10-0x1c8]
  jne r2, r3, jmp_10600
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r10-0x1c0]
  jne r1, r3, jmp_10600
  jeq r2, 0x0, jmp_10618
  ja jmp_170d0

jmp_106b0:
  ldxdw r1, [r10-0xde0]
  ldxdw r9, [r1+0xf0]
  ldxdw r2, [r9+0x0]
  ldxdw r1, [r1+0x78]
  ldxdw r3, [r1+0x0]
  jeq r3, r2, jmp_107d8

jmp_106e0:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_106f8
  ja jmp_1bc78

jmp_106f8:
  ldxdw r1, [r10-0xde0]
  ldxdw r7, [r1+0x70]
  ldxdw r1, [r7+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_10730
  ja jmp_10b40

jmp_10730:
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ldxdw r3, [r7+0x20]
  ldxdw r2, [r7+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_0ac0
  ldxw r1, [r10-0xc08]
  jeq r1, 0x2, jmp_10780
  ja jmp_10838

jmp_10780:
  ldxdw r1, [r10-0xbf0]
  stxdw [r10-0x2d4], r1
  ldxdw r2, [r10-0xbf8]
  stxdw [r10-0x2dc], r2
  ldxdw r3, [r10-0xc00]
  stxdw [r10-0x2e4], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ja jmp_f418

jmp_107d8:
  ldxdw r2, [r9+0x8]
  ldxdw r3, [r1+0x8]
  jne r3, r2, jmp_106e0
  ldxdw r2, [r9+0x10]
  ldxdw r3, [r1+0x10]
  jne r3, r2, jmp_106e0
  mov64 r2, 0x0
  ldxdw r3, [r9+0x18]
  ldxdw r1, [r1+0x18]
  jne r1, r3, jmp_106e0
  jeq r2, 0x0, jmp_106f8
  ja jmp_1bc78

jmp_10838:
  ldxb r1, [r10-0xbd8]
  stxdw [r10-0xdf0], r1
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  ldxdw r3, [r10-0xe08]
  ldxdw r4, [r10-0xe10]
  call fn_1e2f8
  ldxdw r1, [r10-0xc08]
  lddw r2, -0x7fffffffffffffe6
  jeq r1, r2, jmp_108b8
  ja jmp_10ac0

jmp_108b8:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0xb9]
  jeq r1, 0x0, jmp_10630
  ldxdw r1, [r10-0xde0]
  ldxdw r8, [r1+0xa0]
  ldxdw r1, [r8+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_10908
  ja jmp_10b58

jmp_10908:
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ldxdw r3, [r8+0x20]
  ldxdw r2, [r8+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_1048
  ldxw r1, [r10-0xb70]
  jeq r1, 0x2, jmp_d678
  mov64 r7, r10
  add64 r7, -0x2e8
  mov64 r2, r10
  add64 r2, -0xc08
  mov64 r1, r7
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x440
  mov64 r2, r7
  mov64 r3, 0x98
  call fn_490d0
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0xe9]
  jeq r1, 0x0, jmp_10b08
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0xd0]
  stxdw [r10-0xe10], r1
  ldxdw r1, [r1+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_10a08
  ja jmp_10b70

jmp_10a08:
  add64 r1, 0x1
  ldxdw r2, [r10-0xe10]
  stxdw [r2+0x10], r1
  ldxdw r3, [r2+0x20]
  ldxdw r2, [r2+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_1048
  ldxw r1, [r10-0xb70]
  jeq r1, 0x2, jmp_10a60
  ja jmp_10b88

jmp_10a60:
  ldxdw r1, [r10-0xbf8]
  stxdw [r10-0x4f0], r1
  ldxdw r2, [r10-0xc00]
  stxdw [r10-0x4f8], r2
  ldxdw r3, [r10-0xc08]
  stxdw [r10-0x500], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ldxdw r2, [r10-0xe10]
  ja jmp_db70

jmp_10ac0:
  ldxb r2, [r10-0xc00]
  ldxdw r3, [r10-0xbf8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  ldxdw r3, [r10-0xbff]
  stxdw [r4+0x9], r3
  stxb [r4+0x8], r2
  stxdw [r4+0x0], r1
  ja jmp_cb60

jmp_10b08:
  mov64 r1, 0x1
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ja jmp_e020

jmp_10b40:
  lddw r1, data_2f28
  call fn_3f090

jmp_10b58:
  lddw r1, data_2f10
  call fn_3f090

jmp_10b70:
  lddw r1, data_2ef8
  call fn_3f090

jmp_10b88:
  mov64 r7, r10
  add64 r7, -0x500
  mov64 r2, r10
  add64 r2, -0xc08
  mov64 r1, r7
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x2e8
  mov64 r2, r7
  mov64 r3, 0x98
  call fn_490d0
  ldxdw r1, [r10-0x430]
  ldxdw r2, [r10-0x2d8]
  jeq r2, r1, jmp_10c48

jmp_10c00:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_10c18
  ja jmp_10d00

jmp_10c18:
  ldxdw r1, [r6+0x0]
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r10-0x2d8]
  jeq r3, r2, jmp_10ca8

jmp_10c38:
  mov64 r2, 0x1
  ja jmp_10cf8

jmp_10c48:
  ldxdw r1, [r10-0x428]
  ldxdw r2, [r10-0x2d0]
  jne r2, r1, jmp_10c00
  ldxdw r1, [r10-0x420]
  ldxdw r2, [r10-0x2c8]
  jne r2, r1, jmp_10c00
  mov64 r1, 0x0
  ldxdw r2, [r10-0x418]
  ldxdw r3, [r10-0x2c0]
  jne r3, r2, jmp_10c00
  jeq r1, 0x0, jmp_10c18
  ja jmp_10d00

jmp_10ca8:
  ldxdw r2, [r1+0x8]
  ldxdw r3, [r10-0x2d0]
  jne r3, r2, jmp_10c38
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r10-0x2c8]
  jne r3, r2, jmp_10c38
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r10-0x2c0]
  jne r3, r1, jmp_10c38

jmp_10cf8:
  jeq r2, 0x0, jmp_10d40

jmp_10d00:
  mov64 r1, 0x5

jmp_10d08:
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ldxdw r2, [r10-0xe10]
  ja jmp_db70

jmp_10d40:
  ldxdw r1, [r10-0xe18]
  jeq r1, 0x0, jmp_10df0
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  ldxdw r3, [r10-0xdf8]
  ldxdw r4, [r10-0xe20]
  call fn_1e2f8
  ldxdw r1, [r10-0xc08]
  lddw r2, -0x7fffffffffffffe6
  jeq r1, r2, jmp_10e88
  ldxb r2, [r10-0xc00]
  ldxdw r3, [r10-0xbf8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  ldxdw r3, [r10-0xbff]
  stxdw [r4+0x9], r3
  stxb [r4+0x8], r2
  stxdw [r4+0x0], r1
  ldxdw r2, [r10-0xe10]
  ja jmp_db70

jmp_10df0:
  ldxdw r1, [r10-0x1b8]
  ldxdw r2, [r10-0x2b8]
  jeq r2, r1, jmp_10e28

jmp_10e08:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_10e88

jmp_10e18:
  mov64 r1, 0x4
  ja jmp_10d08

jmp_10e28:
  ldxdw r1, [r10-0x1b0]
  ldxdw r2, [r10-0x2b0]
  jne r2, r1, jmp_10e08
  ldxdw r1, [r10-0x1a8]
  ldxdw r2, [r10-0x2a8]
  jne r2, r1, jmp_10e08
  mov64 r1, 0x0
  ldxdw r2, [r10-0x1a0]
  ldxdw r3, [r10-0x2a0]
  jne r3, r2, jmp_10e08
  jeq r1, 0x0, jmp_10e88
  ja jmp_10e18

jmp_10e88:
  ldxdw r1, [r8+0x10]
  add64 r1, -0x1
  stxdw [r8+0x10], r1
  ldxdw r2, [r10-0xe10]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0xe00]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  jeq r2, 0x0, jmp_10ff0

jmp_10ee0:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_10ef8
  ja jmp_170d0

jmp_10ef8:
  ldxdw r1, [r10-0xe28]
  stxdw [r10-0xfe0], r1
  ldxdw r1, [r10-0xdf0]
  stxdw [r10-0xfd8], r1
  stxdw [r10-0xfe8], r9
  ldxdw r1, [r10-0xdf8]
  stxdw [r10-0xff0], r1
  ldxdw r1, [r10-0xe08]
  stxdw [r10-0xff8], r1
  mov64 r1, 0x2
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r4, r10
  add64 r4, -0x5c0
  mov64 r5, r10
  mov64 r2, r6
  ldxdw r3, [r10-0xde0]
  call fn_20f88
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0xc08]
  jeq r2, r1, jmp_1b830

jmp_10fb0:
  ldxdw r1, [r10-0xbf8]
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0xc00]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0xc08]
  stxdw [r2+0x0], r1
  ja jmp_cb60

jmp_10ff0:
  ldxdw r2, [r1+0x8]
  jne r2, 0x0, jmp_10ee0
  ldxdw r2, [r1+0x10]
  jne r2, 0x0, jmp_10ee0
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  jne r1, 0x0, jmp_10ee0
  jeq r2, 0x0, jmp_10ef8
  ja jmp_170d0

jmp_11038:
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  ldxb r2, [r3+0x58]
  jeq r2, 0x0, jmp_cb18
  ldxdw r2, [r3+0x0]
  ldxdw r4, [r2+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_110a0

jmp_11090:
  mov64 r4, 0x1
  ja jmp_11108

jmp_110a0:
  ldxdw r4, [r2+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_11090
  ldxdw r4, [r2+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_11090
  mov64 r4, 0x0
  ldxdw r2, [r2+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r2, r5, jmp_11090

jmp_11108:
  jne r4, 0x0, jmp_f2c8
  ldxb r2, [r3+0x29]
  jeq r2, 0x0, jmp_10268
  stxdw [r10-0xdf0], r0
  stxdw [r10-0xdd8], r1
  ldxdw r8, [r3+0x10]
  ldxdw r1, [r8+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_11160
  ja jmp_11208

jmp_11160:
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r9, [r10-0xc00]
  ldxdw r7, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r7, r1, jmp_111e8
  ja jmp_11220

jmp_111e8:
  ldxdw r1, [r10-0xdd8]
  mov64 r2, r9
  call fn_30d48
  ja jmp_e020

jmp_11208:
  lddw r1, data_2f70
  call fn_3f090

jmp_11220:
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  stxdw [r10-0x220], r9
  stxdw [r10-0x228], r7
  ldxdw r1, [r8+0x10]
  add64 r1, -0x1
  stxdw [r8+0x10], r1
  ldxdw r2, [r6+0x0]
  ldxdw r3, [r2+0x0]
  ldxdw r4, [r10-0x1f8]
  jeq r3, r4, jmp_112a8

jmp_11298:
  mov64 r3, 0x1
  ja jmp_112f8

jmp_112a8:
  ldxdw r3, [r2+0x8]
  ldxdw r4, [r10-0x1f0]
  jne r3, r4, jmp_11298
  ldxdw r3, [r2+0x10]
  ldxdw r4, [r10-0x1e8]
  jne r3, r4, jmp_11298
  mov64 r3, 0x0
  ldxdw r2, [r2+0x18]
  ldxdw r4, [r10-0x1e0]
  jne r2, r4, jmp_11298

jmp_112f8:
  ldxdw r2, [r10-0xdd8]
  jeq r3, 0x0, jmp_11310
  ja jmp_1c330

jmp_11310:
  ldxb r3, [r10-0x16]
  jeq r3, 0x0, jmp_11328
  ja jmp_12ca0

jmp_11328:
  ldxdw r4, [r10-0xdf0]
  add64 r4, 0x1
  mov64 r2, r10
  add64 r2, -0x1f8
  ldxdw r3, [r4+0x18]
  stxdw [r2+0x18], r3
  ldxdw r3, [r4+0x10]
  stxdw [r2+0x10], r3
  ldxdw r3, [r4+0x8]
  stxdw [r2+0x8], r3
  ldxdw r3, [r4+0x0]
  stxdw [r2+0x0], r3
  jeq r1, 0x0, jmp_11398
  ja jmp_11400

jmp_11398:
  mov64 r1, -0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_12090
  ja jmp_1b358

jmp_11400:
  lddw r1, data_2f58
  call fn_3efe8

jmp_11418:
  jeq r7, 0x0, jmp_ab70
  mov64 r8, r3
  add64 r8, 0x30
  jeq r7, 0x1, jmp_b8a8
  ldxb r2, [r3+0x58]
  jeq r2, 0x0, jmp_cb18
  ldxdw r2, [r3+0x0]
  ldxdw r4, [r2+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_11480

jmp_11470:
  mov64 r4, 0x1
  ja jmp_114e8

jmp_11480:
  ldxdw r4, [r2+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_11470
  ldxdw r4, [r2+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_11470
  mov64 r4, 0x0
  ldxdw r2, [r2+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r2, r5, jmp_11470

jmp_114e8:
  jne r4, 0x0, jmp_f2c8
  stxdw [r10-0xdd8], r1
  stxdw [r10-0xde0], r3
  ldxdw r9, [r3+0x10]
  ldxdw r1, [r9+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_11530
  ja jmp_11880

jmp_11530:
  add64 r1, 0x1
  stxdw [r9+0x10], r1
  ldxdw r1, [r9+0x18]
  ldxdw r2, [r9+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r7, [r10-0xc00]
  ldxdw r6, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r6, r1, jmp_11a50
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  stxdw [r10-0x220], r7
  stxdw [r10-0x228], r6
  ldxdw r7, [r9+0x10]
  add64 r7, -0x1
  stxdw [r9+0x10], r7
  ldxdw r2, [r8+0x0]
  ldxdw r1, [r2+0x0]
  ldxdw r3, [r10-0x1f8]
  jeq r1, r3, jmp_11638

jmp_11628:
  mov64 r1, 0x1
  ja jmp_11688

jmp_11638:
  ldxdw r1, [r2+0x8]
  ldxdw r3, [r10-0x1f0]
  jne r1, r3, jmp_11628
  ldxdw r1, [r2+0x10]
  ldxdw r3, [r10-0x1e8]
  jne r1, r3, jmp_11628
  mov64 r1, 0x0
  ldxdw r3, [r2+0x18]
  ldxdw r4, [r10-0x1e0]
  jne r3, r4, jmp_11628

jmp_11688:
  lddw r4, -0x7fffffffffffffe6
  jeq r1, 0x0, jmp_116b0
  lddw r4, -0x8000000000000000

jmp_116b0:
  ldxdw r5, [r2+0x0]
  ldxdw r0, [r10-0x1d8]
  ldxdw r3, [r10-0xdd8]
  jeq r5, r0, jmp_116e0

jmp_116d0:
  mov64 r5, 0x1
  ja jmp_11730

jmp_116e0:
  ldxdw r5, [r2+0x8]
  ldxdw r0, [r10-0x1d0]
  jne r5, r0, jmp_116d0
  ldxdw r5, [r2+0x10]
  ldxdw r0, [r10-0x1c8]
  jne r5, r0, jmp_116d0
  mov64 r5, 0x0
  ldxdw r2, [r2+0x18]
  ldxdw r0, [r10-0x1c0]
  jne r2, r0, jmp_116d0

jmp_11730:
  lddw r2, -0x7fffffffffffffe6
  jeq r5, 0x0, jmp_11758
  lddw r2, -0x8000000000000000

jmp_11758:
  mov64 r0, 0x3
  stxw [r10-0xbe8], r0
  stxw [r10-0xc00], r0
  stxdw [r10-0xc08], r4
  stxdw [r10-0xbf0], r2
  jeq r1, 0x0, jmp_11798
  jeq r5, 0x0, jmp_11798
  ja jmp_1b260

jmp_11798:
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_2230
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x29]
  jeq r1, 0x0, jmp_10630
  mov64 r1, 0x1
  stxb [r10-0x16], r1
  jeq r7, 0x0, jmp_117e8
  ja jmp_11898

jmp_117e8:
  mov64 r1, -0x1
  stxdw [r9+0x10], r1
  ldxdw r1, [r9+0x18]
  ldxdw r2, [r9+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_11c10

jmp_11848:
  ldxdw r1, [r10-0xdd8]
  mov64 r2, r0
  call fn_30d48
  ldxdw r1, [r9+0x10]
  add64 r1, 0x1
  stxdw [r9+0x10], r1
  ja jmp_cb60

jmp_11880:
  lddw r1, data_3000
  call fn_3f090

jmp_11898:
  lddw r1, data_2fe8
  call fn_3efe8

jmp_118b0:
  jeq r7, 0x0, jmp_ab70
  mov64 r8, r3
  add64 r8, 0x30
  jeq r7, 0x1, jmp_b8a8
  ldxb r2, [r3+0x58]
  jeq r2, 0x0, jmp_cb18
  ldxdw r2, [r3+0x0]
  ldxdw r4, [r2+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_11918

jmp_11908:
  mov64 r4, 0x1
  ja jmp_11980

jmp_11918:
  ldxdw r4, [r2+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_11908
  ldxdw r4, [r2+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_11908
  mov64 r4, 0x0
  ldxdw r2, [r2+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r2, r5, jmp_11908

jmp_11980:
  jne r4, 0x0, jmp_f2c8
  stxdw [r10-0xdd8], r1
  stxdw [r10-0xde0], r3
  ldxdw r9, [r3+0x10]
  ldxdw r1, [r9+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_119c8
  ja jmp_11a68

jmp_119c8:
  add64 r1, 0x1
  stxdw [r9+0x10], r1
  ldxdw r1, [r9+0x18]
  ldxdw r2, [r9+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r7, [r10-0xc00]
  ldxdw r6, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r6, r1, jmp_11a50
  ja jmp_11a80

jmp_11a50:
  ldxdw r1, [r10-0xdd8]
  mov64 r2, r7
  ja jmp_bc98

jmp_11a68:
  lddw r1, data_3030
  call fn_3f090

jmp_11a80:
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  stxdw [r10-0x220], r7
  stxdw [r10-0x228], r6
  ldxdw r1, [r9+0x10]
  add64 r1, -0x1
  stxdw [r9+0x10], r1
  ldxdw r2, [r8+0x0]
  ldxdw r3, [r2+0x0]
  ldxdw r4, [r10-0x1f8]
  jeq r3, r4, jmp_11b08

jmp_11af8:
  mov64 r3, 0x1
  ja jmp_11b58

jmp_11b08:
  ldxdw r3, [r2+0x8]
  ldxdw r4, [r10-0x1f0]
  jne r3, r4, jmp_11af8
  ldxdw r3, [r2+0x10]
  ldxdw r4, [r10-0x1e8]
  jne r3, r4, jmp_11af8
  mov64 r3, 0x0
  ldxdw r2, [r2+0x18]
  ldxdw r4, [r10-0x1e0]
  jne r2, r4, jmp_11af8

jmp_11b58:
  ldxdw r2, [r10-0xdd8]
  ldxdw r4, [r10-0xde0]
  jeq r3, 0x0, jmp_11b78
  ja jmp_1c330

jmp_11b78:
  ldxb r3, [r4+0x29]
  jeq r3, 0x0, jmp_12d10
  mov64 r2, 0x0
  stxb [r10-0x16], r2
  jeq r1, 0x0, jmp_11ba8
  ja jmp_11c30

jmp_11ba8:
  mov64 r1, -0x1
  stxdw [r9+0x10], r1
  ldxdw r1, [r9+0x18]
  ldxdw r2, [r9+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_11c10
  ja jmp_11848

jmp_11c10:
  ldxdw r1, [r9+0x10]
  add64 r1, 0x1
  stxdw [r9+0x10], r1
  ja jmp_d1b8

jmp_11c30:
  lddw r1, data_3018
  call fn_3efe8

jmp_11c48:
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  ldxb r2, [r3+0x58]
  jeq r2, 0x0, jmp_cb18
  ldxdw r2, [r3+0x0]
  ldxdw r4, [r2+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_11cb0

jmp_11ca0:
  mov64 r4, 0x1
  ja jmp_11d18

jmp_11cb0:
  ldxdw r4, [r2+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_11ca0
  ldxdw r4, [r2+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_11ca0
  mov64 r4, 0x0
  ldxdw r2, [r2+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r2, r5, jmp_11ca0

jmp_11d18:
  jne r4, 0x0, jmp_f2c8
  stxdw [r10-0xdd8], r1
  stxdw [r10-0xde0], r3
  ldxdw r8, [r3+0x10]
  ldxdw r1, [r8+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_11d60
  ja jmp_120b0

jmp_11d60:
  ldxb r2, [r0+0x1]
  stxdw [r10-0xde8], r2
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r7, [r10-0xc00]
  ldxdw r9, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_1c1c0
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  stxdw [r10-0x220], r7
  stxdw [r10-0x228], r9
  ldxdw r7, [r8+0x10]
  add64 r7, -0x1
  stxdw [r8+0x10], r7
  ldxdw r2, [r6+0x0]
  ldxdw r1, [r2+0x0]
  ldxdw r3, [r10-0x1f8]
  jeq r1, r3, jmp_11e78

jmp_11e68:
  mov64 r1, 0x1
  ja jmp_11ec8

jmp_11e78:
  ldxdw r1, [r2+0x8]
  ldxdw r3, [r10-0x1f0]
  jne r1, r3, jmp_11e68
  ldxdw r1, [r2+0x10]
  ldxdw r3, [r10-0x1e8]
  jne r1, r3, jmp_11e68
  mov64 r1, 0x0
  ldxdw r3, [r2+0x18]
  ldxdw r4, [r10-0x1e0]
  jne r3, r4, jmp_11e68

jmp_11ec8:
  lddw r4, -0x7fffffffffffffe6
  jeq r1, 0x0, jmp_11ef0
  lddw r4, -0x8000000000000000

jmp_11ef0:
  ldxdw r5, [r2+0x0]
  ldxdw r0, [r10-0x1d8]
  ldxdw r3, [r10-0xdd8]
  jeq r5, r0, jmp_11f20

jmp_11f10:
  mov64 r5, 0x1
  ja jmp_11f70

jmp_11f20:
  ldxdw r5, [r2+0x8]
  ldxdw r0, [r10-0x1d0]
  jne r5, r0, jmp_11f10
  ldxdw r5, [r2+0x10]
  ldxdw r0, [r10-0x1c8]
  jne r5, r0, jmp_11f10
  mov64 r5, 0x0
  ldxdw r2, [r2+0x18]
  ldxdw r0, [r10-0x1c0]
  jne r2, r0, jmp_11f10

jmp_11f70:
  lddw r2, -0x7fffffffffffffe6
  jeq r5, 0x0, jmp_11f98
  lddw r2, -0x8000000000000000

jmp_11f98:
  mov64 r0, 0x3
  stxw [r10-0xbe8], r0
  stxw [r10-0xc00], r0
  stxdw [r10-0xc08], r4
  stxdw [r10-0xbf0], r2
  jeq r1, 0x0, jmp_11fd8
  jeq r5, 0x0, jmp_11fd8
  ja jmp_1b260

jmp_11fd8:
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_2230
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x29]
  jeq r1, 0x0, jmp_10630
  ldxdw r1, [r10-0xde8]
  stxb [r10-0x15], r1
  jeq r7, 0x0, jmp_12028
  ja jmp_120c8

jmp_12028:
  mov64 r1, -0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_12090
  ja jmp_1b358

jmp_12090:
  ldxdw r1, [r8+0x10]
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ja jmp_d1b8

jmp_120b0:
  lddw r1, data_3060
  call fn_3f090

jmp_120c8:
  lddw r1, data_3048
  call fn_3efe8

jmp_120e0:
  ldxdw r2, [r10-0xde0]
  ldxdw r3, [r2+0x0]
  ldxdw r4, [r3+0x0]
  lddw r5, 0x9e9974ee626ad71
  ldxdw r1, [r10-0xdd8]
  jeq r4, r5, jmp_12288

jmp_12118:
  mov64 r4, 0x1
  jeq r4, 0x0, jmp_12130
  ja jmp_f2c8

jmp_12130:
  stxdw [r10-0xdf0], r7
  ldxdw r7, [r2+0x10]
  ldxdw r1, [r7+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_12168
  ja jmp_12378

jmp_12168:
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ldxdw r1, [r7+0x18]
  ldxdw r2, [r7+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  lddw r1, -0x8000000000000000
  ldxdw r2, [r10-0xc08]
  jeq r2, r1, jmp_bc68
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  lddw r1, -0x3c1cb4130349c29
  ldxdw r2, [r10-0x1d8]
  jeq r2, r1, jmp_12300

jmp_12248:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_12260
  ja jmp_12390

jmp_12260:
  mov64 r7, r9
  ldxb r1, [r10-0x16]
  jeq r1, 0x0, jmp_123b0

jmp_12278:
  mov64 r1, 0xf
  ja jmp_12398

jmp_12288:
  ldxdw r4, [r3+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_12118
  ldxdw r4, [r3+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_12118
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r3, r5, jmp_12118
  jeq r4, 0x0, jmp_12130
  ja jmp_f2c8

jmp_12300:
  lddw r1, -0xb6a3785afba3445
  ldxdw r2, [r10-0x1d0]
  jne r2, r1, jmp_12248
  lddw r1, -0x182dbcdd20a11484
  ldxdw r2, [r10-0x1c8]
  jne r2, r1, jmp_12248
  mov64 r1, 0x0
  lddw r2, -0x309924488b6719d5
  ldxdw r3, [r10-0x1c0]
  jne r3, r2, jmp_12248
  jeq r1, 0x0, jmp_12260
  ja jmp_12390

jmp_12378:
  lddw r1, data_3090
  call fn_3f090

jmp_12390:
  mov64 r1, 0x1c

jmp_12398:
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_123b0:
  ldxdw r1, [r6+0x0]
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r10-0x1d8]
  jeq r2, r3, jmp_12438

jmp_123d0:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_123e8
  ja jmp_1b5a8

jmp_123e8:
  ldxdw r1, [r10-0xde8]
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x78]
  ldxdw r3, [r1+0x0]
  jeq r3, r2, jmp_12498

jmp_12418:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_12510

jmp_12428:
  mov64 r1, 0x2
  ja jmp_12398

jmp_12438:
  ldxdw r2, [r1+0x8]
  ldxdw r3, [r10-0x1d0]
  jne r2, r3, jmp_123d0
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r10-0x1c8]
  jne r2, r3, jmp_123d0
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r10-0x1c0]
  jne r1, r3, jmp_123d0
  jeq r2, 0x0, jmp_123e8
  ja jmp_1b5a8

jmp_12498:
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x8]
  ldxdw r3, [r1+0x8]
  jne r3, r2, jmp_12418
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x10]
  ldxdw r3, [r1+0x10]
  jne r3, r2, jmp_12418
  mov64 r2, 0x0
  ldxdw r3, [r10-0xde8]
  ldxdw r3, [r3+0x18]
  ldxdw r1, [r1+0x18]
  jne r1, r3, jmp_12418
  jeq r2, 0x0, jmp_12510
  ja jmp_12428

jmp_12510:
  mov64 r1, r8
  call fn_301f0
  jne r0, 0x0, jmp_12530
  ja jmp_12540

jmp_12530:
  mov64 r1, 0x16
  ja jmp_12398

jmp_12540:
  ldxdw r1, [r10-0xde0]
  ldxdw r6, [r1+0x70]
  ldxdw r1, [r6+0x10]
  jeq r1, 0x0, jmp_12568
  ja jmp_12998

jmp_12568:
  mov64 r1, -0x1
  stxdw [r6+0x10], r1
  ldxdw r1, [r6+0x20]
  jne r1, 0x4f0, jmp_12648
  ldxdw r9, [r6+0x18]
  mov64 r1, r9
  and64 r1, 0x7
  jeq r1, 0x0, jmp_125b0
  ja jmp_12648

jmp_125b0:
  ldxdw r1, [r9+0x468]
  add64 r1, 0x1
  stxdw [r9+0x468], r1
  ldxh r4, [r9+0x14]
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  mov64 r3, r8
  call fn_1e560
  ldxdw r1, [r10-0xc08]
  lddw r2, -0x7fffffffffffffe6
  jeq r1, r2, jmp_12620
  ja jmp_12680

jmp_12620:
  ldxdw r1, [r10-0xdf8]
  jgt r1, 0xf4240, jmp_12638
  ja jmp_126c8

jmp_12638:
  mov64 r1, 0xa
  ja jmp_12650

jmp_12648:
  mov64 r1, 0xffff

jmp_12650:
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ja jmp_d160

jmp_12680:
  ldxb r2, [r10-0xc00]
  ldxdw r3, [r10-0xbf8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  ldxdw r3, [r10-0xbff]
  stxdw [r4+0x9], r3
  stxb [r4+0x8], r2
  stxdw [r4+0x0], r1
  ja jmp_d160

jmp_126c8:
  ldxdw r1, [r10-0xe00]
  jgt r1, 0xf4240, jmp_126e0
  ja jmp_126f0

jmp_126e0:
  mov64 r1, 0xb
  ja jmp_12650

jmp_126f0:
  ldxdw r1, [r10-0xe08]
  mov64 r2, 0xf4240
  jgt r2, r1, jmp_12710
  ja jmp_12720

jmp_12710:
  mov64 r1, 0x1d
  ja jmp_12650

jmp_12720:
  ldxdw r1, [r10-0xe10]
  jgt r1, 0xe, jmp_12710
  ldxdw r1, [r10-0xe18]
  jgt r2, r1, jmp_12710
  ldxdw r1, [r10-0xe20]
  jgt r1, 0xe, jmp_12710
  ldxdw r1, [r10-0xe28]
  jgt r2, r1, jmp_12710
  ldxdw r1, [r10-0xe30]
  jgt r1, 0xe, jmp_12710
  ldxdw r1, [r10-0xe38]
  jgt r2, r1, jmp_12710
  ldxdw r1, [r10-0xe40]
  jgt r1, 0xe, jmp_12710
  ldxdw r1, [r10-0xe48]
  jgt r2, r1, jmp_12710
  ldxdw r1, [r10-0xe50]
  jgt r1, 0xe, jmp_12710
  mov64 r1, 0x0
  stxb [r9+0x4ab], r1
  stxh [r9+0x4a9], r1
  stxb [r9+0x49f], r1
  stxh [r9+0x49d], r1
  stxb [r9+0x493], r1
  stxh [r9+0x491], r1
  stxb [r9+0x487], r1
  stxh [r9+0x485], r1
  stxb [r9+0x47b], r1
  stxh [r9+0x479], r1
  ldxdw r1, [r10-0xe88]
  stxb [r9+0x466], r1
  ldxdw r1, [r10-0xe00]
  stxw [r9+0x460], r1
  ldxdw r1, [r10-0xdf8]
  stxw [r9+0x10], r1
  ldxdw r1, [r10-0xea8]
  stxdw [r9+0x4b0], r1
  ldxdw r1, [r10-0xe50]
  stxb [r9+0x4a8], r1
  ldxdw r1, [r10-0xe48]
  stxw [r9+0x4a4], r1
  ldxdw r1, [r10-0xe80]
  stxw [r9+0x4a0], r1
  ldxdw r1, [r10-0xe40]
  stxb [r9+0x49c], r1
  ldxdw r1, [r10-0xe38]
  stxw [r9+0x498], r1
  ldxdw r1, [r10-0xe78]
  stxw [r9+0x494], r1
  ldxdw r1, [r10-0xe30]
  stxb [r9+0x490], r1
  ldxdw r1, [r10-0xe28]
  stxw [r9+0x48c], r1
  ldxdw r1, [r10-0xe70]
  stxw [r9+0x488], r1
  ldxdw r1, [r10-0xe20]
  stxb [r9+0x484], r1
  ldxdw r1, [r10-0xe18]
  stxw [r9+0x480], r1
  ldxdw r1, [r10-0xe68]
  stxw [r9+0x47c], r1
  ldxdw r1, [r10-0xe10]
  stxb [r9+0x478], r1
  ldxdw r1, [r10-0xe08]
  stxw [r9+0x474], r1
  ldxdw r1, [r10-0xe60]
  stxw [r9+0x470], r1
  ldxdw r1, [r10-0xea0]
  stxw [r9+0x6c], r1
  ldxdw r1, [r10-0xe98]
  stxw [r9+0x68], r1
  ldxdw r1, [r10-0xe90]
  stxdw [r9+0x60], r1
  ldxdw r1, [r10-0xdf0]
  stxdw [r9+0x58], r1
  ldxdw r1, [r10-0xe58]
  stxh [r9+0x4ae], r1
  stxh [r9+0x4ac], r7
  ja jmp_1bfd8

jmp_12998:
  lddw r1, data_3078
  call fn_3efe8

jmp_129b0:
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  ldxb r2, [r3+0x58]
  jeq r2, 0x0, jmp_cb18
  ldxdw r2, [r3+0x0]
  ldxdw r4, [r2+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_12a18

jmp_12a08:
  mov64 r4, 0x1
  ja jmp_12a80

jmp_12a18:
  ldxdw r4, [r2+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_12a08
  ldxdw r4, [r2+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_12a08
  mov64 r4, 0x0
  ldxdw r2, [r2+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r2, r5, jmp_12a08

jmp_12a80:
  jne r4, 0x0, jmp_f2c8
  stxdw [r10-0xdd8], r1
  stxdw [r10-0xde0], r3
  ldxdw r8, [r3+0x10]
  ldxdw r1, [r8+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_12ac8
  ja jmp_12c78

jmp_12ac8:
  ldxh r2, [r0+0x5]
  stxdw [r10-0xdf8], r2
  ldxw r2, [r0+0x1]
  stxdw [r10-0xde8], r2
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r7, [r10-0xc00]
  ldxdw r9, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_1c1c0
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  stxdw [r10-0x220], r7
  stxdw [r10-0x228], r9
  ldxdw r1, [r8+0x10]
  add64 r1, -0x1
  stxdw [r8+0x10], r1
  lddw r2, -0x3c1cb4130349c29
  ldxdw r3, [r10-0x1d8]
  jeq r3, r2, jmp_12bf0

jmp_12be0:
  mov64 r3, 0x1
  ja jmp_12c58

jmp_12bf0:
  lddw r2, -0xb6a3785afba3445
  ldxdw r3, [r10-0x1d0]
  jne r3, r2, jmp_12be0
  lddw r2, -0x182dbcdd20a11484
  ldxdw r3, [r10-0x1c8]
  jne r3, r2, jmp_12be0
  mov64 r3, 0x0
  lddw r2, -0x309924488b6719d5
  ldxdw r4, [r10-0x1c0]
  jne r4, r2, jmp_12be0

jmp_12c58:
  ldxdw r2, [r10-0xdd8]
  ldxdw r4, [r10-0xde0]
  jeq r3, 0x0, jmp_12c90
  ja jmp_e388

jmp_12c78:
  lddw r1, data_30c0
  call fn_3f090

jmp_12c90:
  ldxb r3, [r10-0x16]
  jeq r3, 0x0, jmp_12cb8

jmp_12ca0:
  mov64 r1, 0xf
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_12cb8:
  ldxb r3, [r4+0x29]
  jeq r3, 0x0, jmp_12d10
  ldxdw r3, [r6+0x0]
  ldxdw r4, [r3+0x0]
  ldxdw r5, [r10-0x1d8]
  jeq r4, r5, jmp_12d28

jmp_12ce8:
  mov64 r4, 0x1
  jeq r4, 0x0, jmp_12d88

jmp_12cf8:
  mov64 r1, 0x3
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_12d10:
  mov64 r1, 0x1
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_12d28:
  ldxdw r4, [r3+0x8]
  ldxdw r5, [r10-0x1d0]
  jne r4, r5, jmp_12ce8
  ldxdw r4, [r3+0x10]
  ldxdw r5, [r10-0x1c8]
  jne r4, r5, jmp_12ce8
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  ldxdw r5, [r10-0x1c0]
  jne r3, r5, jmp_12ce8
  jeq r4, 0x0, jmp_12d88
  ja jmp_12cf8

jmp_12d88:
  ldxdw r2, [r10-0xdf8]
  lsh64 r2, 0x20
  ldxdw r3, [r10-0xde8]
  or64 r3, r2
  mov64 r2, r3
  and64 r2, 0x1
  stxb [r10-0x20], r2
  mov64 r2, r3
  rsh64 r2, 0x20
  and64 r2, 0x1
  stxb [r10-0x1b], r2
  mov64 r2, r3
  rsh64 r2, 0x18
  and64 r2, 0x1
  stxb [r10-0x1d], r2
  mov64 r2, r3
  rsh64 r2, 0x10
  and64 r2, 0x1
  stxb [r10-0x1e], r2
  mov64 r2, r3
  rsh64 r2, 0x8
  and64 r2, 0x1
  stxb [r10-0x1f], r2
  rsh64 r3, 0x28
  and64 r3, 0x1
  stxb [r10-0x1c], r3
  jeq r1, 0x0, jmp_12e68
  ja jmp_12f00

jmp_12e68:
  mov64 r1, -0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_12090
  ldxdw r1, [r10-0xdd8]
  mov64 r2, r0
  call fn_30d48
  ldxdw r1, [r8+0x10]
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ja jmp_cb60

jmp_12f00:
  lddw r1, data_30a8
  call fn_3efe8

jmp_12f18:
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  ldxdw r1, [r10-0xe68]
  stxdw [r10-0x220], r1
  ldxdw r1, [r10-0xe70]
  stxdw [r10-0x228], r1
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  lddw r1, -0x3c1cb4130349c29
  ldxdw r2, [r10-0x1d8]
  jeq r2, r1, jmp_12fc0

jmp_12fa0:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_13038

jmp_12fb0:
  mov64 r1, 0x1c
  ja jmp_15238

jmp_12fc0:
  lddw r1, -0xb6a3785afba3445
  ldxdw r2, [r10-0x1d0]
  jne r2, r1, jmp_12fa0
  lddw r1, -0x182dbcdd20a11484
  ldxdw r2, [r10-0x1c8]
  jne r2, r1, jmp_12fa0
  mov64 r1, 0x0
  lddw r2, -0x309924488b6719d5
  ldxdw r3, [r10-0x1c0]
  jne r3, r2, jmp_12fa0
  jeq r1, 0x0, jmp_13038
  ja jmp_12fb0

jmp_13038:
  mov64 r1, 0x1
  stxdw [r10-0x700], r1
  mov64 r1, r10
  add64 r1, -0x6f1
  stxdw [r10-0x708], r1
  mov64 r1, 0x5
  stxdw [r10-0x710], r1
  lddw r1, data_03d0
  stxdw [r10-0x718], r1
  mov64 r1, 0xff
  stxb [r10-0x6f1], r1
  ldxb r1, [r10-0x16]
  ldxb r2, [r10-0x15]
  or64 r2, r1
  mov64 r1, 0xf
  and64 r2, 0xff
  jeq r2, 0x0, jmp_130d0
  ja jmp_15238

jmp_130d0:
  ldxdw r1, [r10-0xde8]
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x48]
  ldxdw r3, [r1+0x0]
  jeq r3, r2, jmp_13110

jmp_13100:
  mov64 r2, 0x1
  ja jmp_13178

jmp_13110:
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x8]
  ldxdw r3, [r1+0x8]
  jne r3, r2, jmp_13100
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x10]
  ldxdw r3, [r1+0x10]
  jne r3, r2, jmp_13100
  mov64 r2, 0x0
  ldxdw r3, [r10-0xde8]
  ldxdw r3, [r3+0x18]
  ldxdw r1, [r1+0x18]
  jne r1, r3, jmp_13100

jmp_13178:
  mov64 r1, 0x2
  jne r2, 0x0, jmp_15238
  mov64 r1, r6
  call fn_301f0
  mov64 r1, 0x16
  jne r0, 0x0, jmp_15238
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x40]
  stxdw [r10-0xe68], r1
  ldxdw r1, [r1+0x10]
  jne r1, 0x0, jmp_14b78
  mov64 r1, -0x1
  ldxdw r2, [r10-0xe68]
  stxdw [r2+0x10], r1
  ldxdw r1, [r2+0x20]
  jne r1, 0x4f0, jmp_13358
  ldxdw r1, [r10-0xe68]
  ldxdw r1, [r1+0x18]
  stxdw [r10-0xe70], r1
  and64 r1, 0x7
  jeq r1, 0x0, jmp_13228
  ja jmp_13358

jmp_13228:
  ldxdw r1, [r10-0xe70]
  ldxdw r7, [r1+0x78]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_2f0a8
  ldxdw r1, [r10-0xc00]
  ldxdw r2, [r10-0xc08]
  lddw r3, -0x7fffffffffffffe6
  jeq r2, r3, jmp_13280
  ja jmp_13390

jmp_13280:
  jgt r7, r1, jmp_13290
  ja jmp_13358

jmp_13290:
  ldxdw r2, [r10-0xe70]
  ldxdw r1, [r2+0x468]
  add64 r1, 0x1
  stxdw [r2+0x468], r1
  ldxh r4, [r2+0x14]
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  mov64 r3, r6
  call fn_1e560
  ldxdw r1, [r10-0xc08]
  lddw r2, -0x7fffffffffffffe6
  jeq r1, r2, jmp_13308
  ja jmp_14850

jmp_13308:
  ldxdw r1, [r10-0xe30]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  lddw r3, 0x66d17b1817d5a706
  jeq r2, r3, jmp_133c0

jmp_13338:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_13438

jmp_13348:
  mov64 r1, 0x3
  ja jmp_13360

jmp_13358:
  mov64 r1, 0xffff

jmp_13360:
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1

jmp_13370:
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ja jmp_14890

jmp_13390:
  ldxdw r3, [r10-0xbf8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  stxdw [r4+0x8], r1
  stxdw [r4+0x0], r2
  ja jmp_14890

jmp_133c0:
  ldxdw r2, [r1+0x8]
  lddw r3, -0x3f3d02aafb2b25cb
  jne r2, r3, jmp_13338
  ldxdw r2, [r1+0x10]
  lddw r3, -0x5a8aa9de7039db3f
  jne r2, r3, jmp_13338
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  lddw r3, 0x85fcbbadb
  jne r1, r3, jmp_13338
  jeq r2, 0x0, jmp_13438
  ja jmp_13348

jmp_13438:
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0xb0]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0xa8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0xc8]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0xc0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0xe0]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0xd8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0xf8]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0xf0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x110]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x108]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x128]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x120]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x140]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x138]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x158]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x150]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x170]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x168]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x188]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x180]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x1a0]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x198]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x1b8]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x1b0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x1d0]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x1c8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x1e8]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x1e0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x200]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x1f8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x218]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x210]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x230]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x228]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x248]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x240]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x260]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x258]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x278]
  jeq r1, 0x0, jmp_139d0
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x270]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jgt r3, r2, jmp_139d0
  ja jmp_13360

jmp_139d0:
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x290]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x288]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x2a8]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x2a0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x2c0]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x2b8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x2d8]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x2d0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x2f0]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x2e8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x308]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x300]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x320]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x318]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x338]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x330]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x350]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x348]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x368]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x360]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x380]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x378]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x398]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x390]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x3b0]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x3a8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x3c8]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x3c0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x3e0]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x3d8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x3f8]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x3f0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x410]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x408]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x428]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x420]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r2, r3, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x440]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r3, [r1+0x438]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jge r3, r2, jmp_13360
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x458]
  jeq r1, 0x0, jmp_13f68
  ldxdw r1, [r10-0xe70]
  ldxdw r2, [r1+0x450]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_13360
  mov64 r1, 0x8
  jgt r3, r2, jmp_13f68
  ja jmp_13360

jmp_13f68:
  ldxdw r1, [r10-0xe38]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  lddw r3, 0x6a34d2558a800097
  jeq r2, r3, jmp_13fe0

jmp_13f98:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_14058

jmp_13fa8:
  mov64 r1, 0x0
  ldxdw r2, [r10-0xdd8]
  stxb [r2+0xb], r1
  stxh [r2+0x9], r1
  mov64 r1, 0x20
  stxb [r2+0x8], r1
  ja jmp_13370

jmp_13fe0:
  ldxdw r2, [r1+0x8]
  lddw r3, -0x27bb7242248810a4
  jne r2, r3, jmp_13f98
  ldxdw r2, [r1+0x10]
  lddw r3, -0x4e99f83a7f19f3b3
  jne r2, r3, jmp_13f98
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  lddw r3, 0x4a51182b7d233fc5
  jne r1, r3, jmp_13f98
  jeq r2, 0x0, jmp_14058
  ja jmp_13fa8

jmp_14058:
  ldxdw r1, [r10-0xde8]
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x258]
  ldxdw r3, [r1+0x0]
  jeq r3, r2, jmp_140a8

jmp_14088:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_14120

jmp_14098:
  mov64 r1, 0x2
  ja jmp_13360

jmp_140a8:
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x8]
  ldxdw r3, [r1+0x8]
  jne r3, r2, jmp_14088
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x10]
  ldxdw r3, [r1+0x10]
  jne r3, r2, jmp_14088
  mov64 r2, 0x0
  ldxdw r3, [r10-0xde8]
  ldxdw r3, [r3+0x18]
  ldxdw r1, [r1+0x18]
  jne r1, r3, jmp_14088
  jeq r2, 0x0, jmp_14120
  ja jmp_14098

jmp_14120:
  ldxdw r1, [r10-0xe38]
  call fn_301f0
  jne r0, 0x0, jmp_14140
  ja jmp_14150

jmp_14140:
  mov64 r1, 0x21
  ja jmp_13360

jmp_14150:
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_2eff0
  ldxdw r1, [r10-0xc00]
  stxdw [r10-0xe38], r1
  ldxdw r1, [r10-0xc08]
  jeq r1, 0x0, jmp_141c8
  ldxdw r1, [r10-0xbf8]
  ldxdw r2, [r10-0xbf0]
  ldxdw r3, [r10-0xdd8]
  stxdw [r3+0x10], r2
  stxdw [r3+0x8], r1
  ldxdw r1, [r10-0xe38]
  stxdw [r3+0x0], r1
  ja jmp_14890

jmp_141c8:
  ldxdw r7, [r10-0xbe0]
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xe40]
  call fn_1c910
  mov64 r2, r10
  add64 r2, -0xc00
  ldxdw r1, [r10-0xc08]
  jeq r1, 0x0, jmp_14268
  ldxdw r1, [r2+0x10]
  stxdw [r10-0x2d8], r1
  ldxdw r3, [r2+0x8]
  stxdw [r10-0x2e0], r3
  ldxdw r2, [r2+0x0]
  stxdw [r10-0x2e8], r2
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r3
  stxdw [r4+0x0], r2
  ja jmp_14890

jmp_14268:
  mov64 r6, r10
  add64 r6, -0x2e8
  mov64 r1, r6
  mov64 r3, 0x58
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x440
  mov64 r2, r6
  mov64 r3, 0x58
  call fn_490d0
  ldxdw r2, [r10-0x418]
  ldxdw r3, [r10-0x410]
  ldxdw r4, [r10-0x408]
  ldxdw r1, [r10-0xe38]
  stxdw [r10-0x1000], r1
  stxdw [r10-0xff8], r7
  mov64 r1, r10
  add64 r1, -0xd48
  mov64 r5, r10
  call fn_1cd90
  ldxdw r1, [r10-0xd48]
  stxdw [r10-0xe78], r1
  ldxb r7, [r10-0xd40]
  jne r7, 0x2, jmp_148c8
  mov64 r1, 0x0

jmp_14330:
  stxdw [r10-0xe88], r1

jmp_14338:
  ldxdw r1, [r10-0xe48]
  mov64 r2, 0x1b0
  stxdw [r10-0xe80], r2
  jeq r1, 0x0, jmp_14368
  mov64 r2, 0x1e0
  stxdw [r10-0xe80], r2

jmp_14368:
  jeq r1, 0x0, jmp_14378
  mov64 r9, r8

jmp_14378:
  ldxdw r2, [r10-0xe10]
  stxdw [r10-0xe48], r2
  jeq r1, 0x0, jmp_143a0
  ldxdw r2, [r10-0xe08]
  stxdw [r10-0xe48], r2

jmp_143a0:
  jeq r1, 0x0, jmp_143b8
  ldxdw r2, [r10-0xe10]
  stxdw [r10-0xe08], r2

jmp_143b8:
  ldxdw r2, [r10-0xe28]
  stxdw [r10-0xe40], r2
  jeq r1, 0x0, jmp_143e0
  ldxdw r2, [r10-0xe20]
  stxdw [r10-0xe40], r2

jmp_143e0:
  jeq r1, 0x0, jmp_143f8
  ldxdw r2, [r10-0xe28]
  stxdw [r10-0xe20], r2

jmp_143f8:
  mov64 r3, 0x80
  mov64 r2, 0x90
  jeq r1, 0x0, jmp_14418
  mov64 r2, 0x80

jmp_14418:
  jeq r1, 0x0, jmp_14428
  mov64 r3, 0x90

jmp_14428:
  mov64 r4, 0x280
  stxdw [r10-0xe28], r4
  jeq r1, 0x0, jmp_14450
  mov64 r4, 0xa0
  stxdw [r10-0xe28], r4

jmp_14450:
  mov64 r5, 0x464
  mov64 r4, 0x16
  jeq r1, 0x0, jmp_14470
  mov64 r4, 0x464

jmp_14470:
  jeq r1, 0x0, jmp_14480
  mov64 r5, 0x16

jmp_14480:
  mov64 r0, 0x1
  mov64 r6, 0x1
  jne r1, 0x0, jmp_144a0
  mov64 r6, 0x0

jmp_144a0:
  jeq r1, 0x0, jmp_144b0
  mov64 r0, 0x0

jmp_144b0:
  ldxdw r7, [r10-0xdf8]
  stxdw [r10-0xe10], r7
  jeq r1, 0x0, jmp_144d8
  ldxdw r7, [r10-0xe18]
  stxdw [r10-0xe10], r7

jmp_144d8:
  jeq r1, 0x0, jmp_144f0
  ldxdw r1, [r10-0xdf8]
  stxdw [r10-0xe18], r1

jmp_144f0:
  ldxdw r1, [r10-0xe18]
  ldxb r1, [r1+0x29]
  jeq r1, 0x0, jmp_148b8
  ldxdw r1, [r10-0xe10]
  ldxb r1, [r1+0x29]
  jeq r1, 0x0, jmp_148b8
  ldxdw r1, [r10-0xe20]
  ldxb r1, [r1+0x29]
  jeq r1, 0x0, jmp_148b8
  ldxdw r1, [r10-0xe40]
  ldxb r1, [r1+0x29]
  jeq r1, 0x0, jmp_148b8
  ldxdw r7, [r10-0xe70]
  mov64 r1, r7
  add64 r1, r5
  mov64 r5, r7
  add64 r5, r3
  mov64 r3, r7
  add64 r3, r2
  lsh64 r6, 0x3
  lsh64 r0, 0x3
  mov64 r2, r7
  add64 r2, r0
  mov64 r0, r7
  add64 r0, r4
  stxdw [r10-0xe90], r6
  add64 r7, r6
  ldxdw r4, [r3+0x8]
  stxdw [r10-0xea0], r4
  ldxdw r3, [r3+0x0]
  stxdw [r10-0xe98], r3
  ldxdw r3, [r5+0x8]
  stxdw [r10-0xea8], r3
  ldxdw r3, [r5+0x0]
  stxdw [r10-0xeb0], r3
  ldxh r4, [r1+0x0]
  ldxh r6, [r0+0x0]
  ldxdw r1, [r7+0x0]
  stxdw [r10-0xdf8], r1
  ldxdw r7, [r2+0x0]
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  ldxdw r3, [r10-0xe10]
  call fn_1e2f8
  ldxdw r1, [r10-0xc08]
  lddw r8, -0x7fffffffffffffe6
  jeq r1, r8, jmp_14680
  ja jmp_14850

jmp_14680:
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  ldxdw r3, [r10-0xe18]
  mov64 r4, r6
  call fn_1e2f8
  ldxdw r1, [r10-0xc08]
  jeq r1, r8, jmp_146c8
  ja jmp_14850

jmp_146c8:
  ldxdw r1, [r10-0xe08]
  ldxdw r6, [r1+0x10]
  ldxdw r1, [r6+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_14700
  ja jmp_14e58

jmp_14700:
  add64 r1, 0x1
  stxdw [r6+0x10], r1
  ldxdw r3, [r6+0x20]
  ldxdw r2, [r6+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_0ac0
  ldxw r1, [r10-0xc08]
  jeq r1, 0x2, jmp_147f8
  ldxb r1, [r10-0xbd8]
  stxdw [r10-0xec0], r1
  ldxdw r1, [r6+0x10]
  add64 r1, -0x1
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0xe48]
  ldxdw r6, [r1+0x10]
  ldxdw r1, [r6+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_147a8
  ja jmp_14e70

jmp_147a8:
  add64 r1, 0x1
  stxdw [r6+0x10], r1
  ldxdw r3, [r6+0x20]
  ldxdw r2, [r6+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_0ac0
  ldxw r1, [r10-0xc08]
  jeq r1, 0x2, jmp_147f8
  ja jmp_14b90

jmp_147f8:
  ldxdw r1, [r10-0xbf0]
  stxdw [r10-0x2d4], r1
  ldxdw r2, [r10-0xbf8]
  stxdw [r10-0x2dc], r2
  ldxdw r3, [r10-0xc00]
  stxdw [r10-0x2e4], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ja jmp_14b10

jmp_14850:
  ldxb r2, [r10-0xc00]
  ldxdw r3, [r10-0xbf8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  ldxdw r3, [r10-0xbff]
  stxdw [r4+0x9], r3
  stxb [r4+0x8], r2

jmp_14888:
  stxdw [r4+0x0], r1

jmp_14890:
  ldxdw r2, [r10-0xe68]
  ldxdw r1, [r2+0x10]
  add64 r1, 0x1
  stxdw [r2+0x10], r1
  ja jmp_cb60

jmp_148b8:
  mov64 r1, 0x1
  ja jmp_13360

jmp_148c8:
  ldxdw r1, [r10-0xde0]
  ldxdw r6, [r1+0x250]
  ldxdw r1, [r6+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_14900
  ja jmp_14e88

jmp_14900:
  add64 r1, 0x1
  stxdw [r6+0x10], r1
  ldxdw r1, [r6+0x20]
  jne r1, 0x800, jmp_14ae0
  ldxdw r2, [r6+0x18]
  mov64 r1, r2
  and64 r1, 0x7
  jeq r1, 0x0, jmp_14948
  ja jmp_14ae0

jmp_14948:
  add64 r2, 0x420
  mov64 r1, r10
  add64 r1, -0xc08
  stxdw [r10-0xe40], r1
  mov64 r3, 0x100
  call fn_490d0
  ldxdw r1, [r6+0x10]
  add64 r1, -0x1
  stxdw [r6+0x10], r1
  mov64 r1, r10
  add64 r1, -0x438
  ldxdw r2, [r10-0xe40]
  mov64 r3, 0x8
  call fn_1cc20
  stxdw [r10-0xe88], r0
  jeq r0, 0x0, jmp_14338
  and64 r7, 0x1
  jeq r7, 0x0, jmp_14338
  ldxdw r1, [r10-0xe70]
  ldxdw r1, [r1+0x4b0]
  jne r1, 0x0, jmp_149f8
  ja jmp_14338

jmp_149f8:
  ldxdw r7, [r10-0xe70]
  ldxdw r2, [r7+0x80]
  stxdw [r10-0xe40], r2
  ldxdw r4, [r7+0x8]
  ldxdw r3, [r7+0x0]
  ldxdw r2, [r7+0x88]
  ldxdw r0, [r7+0x90]
  ldxdw r6, [r7+0x98]
  ldxdw r7, [r7+0x4b8]
  ldxdw r5, [r10-0xe78]
  stxdw [r10-0xfe0], r5
  stxdw [r10-0xfd8], r7
  stxdw [r10-0xfe8], r1
  stxdw [r10-0xff0], r6
  stxdw [r10-0xff8], r0
  stxdw [r10-0x1000], r2
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r5, r10
  mov64 r2, r3
  mov64 r3, r4
  ldxdw r4, [r10-0xe40]
  call fn_1fd70
  ldxdw r1, [r10-0xc08]
  jne r1, 0x0, jmp_14b30
  mov64 r1, 0xffff
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x8], r1
  ja jmp_13370

jmp_14ae0:
  mov64 r1, 0xffff
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1

jmp_14b10:
  ldxdw r1, [r6+0x10]
  add64 r1, -0x1
  stxdw [r6+0x10], r1
  ja jmp_14890

jmp_14b30:
  ldxdw r1, [r10-0xc00]
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0xbf0]
  ldxdw r4, [r10-0xe70]
  stxdw [r4+0x4b8], r3
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r1
  mov64 r1, 0x1
  ja jmp_14330

jmp_14b78:
  lddw r1, data_3228
  call fn_3efe8

jmp_14b90:
  ldxb r1, [r10-0xbd8]
  stxdw [r10-0xed0], r1
  ldxdw r1, [r6+0x10]
  add64 r1, -0x1
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0xe10]
  ldxdw r1, [r1+0x10]
  stxdw [r10-0xeb8], r1
  ldxdw r1, [r1+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_14bf8
  ja jmp_14ea0

jmp_14bf8:
  add64 r1, 0x1
  ldxdw r2, [r10-0xeb8]
  stxdw [r2+0x10], r1
  ldxdw r3, [r2+0x20]
  ldxdw r2, [r2+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_1048
  ldxw r6, [r10-0xb70]
  jeq r6, 0x2, jmp_14c50
  ja jmp_14cc8

jmp_14c50:
  ldxdw r1, [r10-0xbf8]
  stxdw [r10-0x2d8], r1
  ldxdw r2, [r10-0xc00]
  stxdw [r10-0x2e0], r2
  ldxdw r3, [r10-0xc08]
  stxdw [r10-0x2e8], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ldxdw r2, [r10-0xeb8]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ja jmp_14890

jmp_14cc8:
  mov64 r8, r10
  add64 r8, -0x2e8
  mov64 r2, r10
  add64 r2, -0xc08
  mov64 r1, r8
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x524
  mov64 r2, r10
  add64 r2, -0xb6c
  mov64 r3, 0x24
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x5c0
  mov64 r2, r8
  mov64 r3, 0x98
  call fn_490d0
  stxw [r10-0x528], r6
  ldxdw r1, [r10-0xe18]
  ldxdw r1, [r1+0x10]
  stxdw [r10-0xec8], r1
  ldxdw r1, [r1+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_14da0
  ja jmp_14eb8

jmp_14da0:
  add64 r1, 0x1
  ldxdw r2, [r10-0xec8]
  stxdw [r2+0x10], r1
  ldxdw r3, [r2+0x20]
  ldxdw r2, [r2+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_1048
  ldxw r6, [r10-0xb70]
  jeq r6, 0x2, jmp_14df8
  ja jmp_14ed0

jmp_14df8:
  ldxdw r1, [r10-0xbf8]
  stxdw [r10-0x2d8], r1
  ldxdw r2, [r10-0xc00]
  stxdw [r10-0x2e0], r2
  ldxdw r3, [r10-0xc08]
  stxdw [r10-0x2e8], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  mov64 r1, 0x1
  ja jmp_16758

jmp_14e58:
  lddw r1, data_3210
  call fn_3f090

jmp_14e70:
  lddw r1, data_31f8
  call fn_3f090

jmp_14e88:
  lddw r1, data_30d8
  call fn_3f090

jmp_14ea0:
  lddw r1, data_31e0
  call fn_3f090

jmp_14eb8:
  lddw r1, data_31c8
  call fn_3f090

jmp_14ed0:
  mov64 r8, r10
  add64 r8, -0x2e8
  mov64 r2, r10
  add64 r2, -0xc08
  mov64 r1, r8
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x464
  mov64 r2, r10
  add64 r2, -0xb6c
  mov64 r3, 0x24
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x500
  mov64 r2, r8
  mov64 r3, 0x98
  call fn_490d0
  stxw [r10-0x468], r6
  ldxdw r1, [r10-0xe20]
  ldxdw r1, [r1+0x10]
  stxdw [r10-0xed8], r1
  ldxdw r1, [r1+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_14fa8
  ja jmp_15068

jmp_14fa8:
  add64 r1, 0x1
  ldxdw r2, [r10-0xed8]
  stxdw [r2+0x10], r1
  ldxdw r3, [r2+0x20]
  ldxdw r2, [r2+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_1048
  ldxw r1, [r10-0xb70]
  stxdw [r10-0xee0], r1
  jeq r1, 0x2, jmp_15008
  ja jmp_15080

jmp_15008:
  ldxdw r1, [r10-0xbf8]
  stxdw [r10-0x2d8], r1
  ldxdw r2, [r10-0xc00]
  stxdw [r10-0x2e0], r2
  ldxdw r3, [r10-0xc08]
  stxdw [r10-0x2e8], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  mov64 r1, 0x1
  ja jmp_16738

jmp_15068:
  lddw r1, data_31b0
  call fn_3f090

jmp_15080:
  mov64 r6, r10
  add64 r6, -0x2e8
  mov64 r2, r10
  add64 r2, -0xc08
  mov64 r1, r6
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x3a4
  mov64 r2, r10
  add64 r2, -0xb6c
  mov64 r3, 0x24
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x440
  mov64 r2, r6
  mov64 r3, 0x98
  call fn_490d0
  ldxdw r1, [r10-0xee0]
  stxw [r10-0x3a8], r1
  ldxdw r1, [r10-0xe40]
  ldxdw r1, [r1+0x10]
  stxdw [r10-0xee0], r1
  ldxdw r1, [r1+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_15160
  ja jmp_15220

jmp_15160:
  add64 r1, 0x1
  ldxdw r2, [r10-0xee0]
  stxdw [r2+0x10], r1
  ldxdw r3, [r2+0x20]
  ldxdw r2, [r2+0x18]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_1048
  ldxw r1, [r10-0xb70]
  stxdw [r10-0xee8], r1
  jeq r1, 0x2, jmp_151c0
  ja jmp_15268

jmp_151c0:
  ldxdw r1, [r10-0xbf8]
  stxdw [r10-0x670], r1
  ldxdw r2, [r10-0xc00]
  stxdw [r10-0x678], r2
  ldxdw r3, [r10-0xc08]
  stxdw [r10-0x680], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  mov64 r1, 0x1
  ja jmp_16718

jmp_15220:
  lddw r1, data_3198
  call fn_3f090

jmp_15238:
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ja jmp_cb60

jmp_15268:
  mov64 r6, r10
  add64 r6, -0x680
  mov64 r2, r10
  add64 r2, -0xc08
  mov64 r1, r6
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x24c
  mov64 r2, r10
  add64 r2, -0xb6c
  mov64 r3, 0x24
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x2e8
  mov64 r2, r6
  mov64 r3, 0x98
  call fn_490d0
  ldxdw r1, [r10-0xee8]
  stxw [r10-0x250], r1
  ldxdw r1, [r10-0xe00]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r10-0x410]
  jeq r3, r2, jmp_15350

jmp_15330:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_153b0

jmp_15340:
  mov64 r1, 0x4
  ja jmp_15640

jmp_15350:
  ldxdw r2, [r1+0x8]
  ldxdw r3, [r10-0x408]
  jne r3, r2, jmp_15330
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r10-0x400]
  jne r3, r2, jmp_15330
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r10-0x3f8]
  jne r3, r1, jmp_15330
  jeq r2, 0x0, jmp_153b0
  ja jmp_15340

jmp_153b0:
  ldxdw r1, [r10-0x5b0]
  ldxdw r2, [r10-0x430]
  jeq r2, r1, jmp_153e0

jmp_153c8:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_15440
  ja jmp_155a8

jmp_153e0:
  ldxdw r1, [r10-0x5a8]
  ldxdw r2, [r10-0x428]
  jne r2, r1, jmp_153c8
  ldxdw r1, [r10-0x5a0]
  ldxdw r2, [r10-0x420]
  jne r2, r1, jmp_153c8
  mov64 r1, 0x0
  ldxdw r2, [r10-0x598]
  ldxdw r3, [r10-0x418]
  jne r3, r2, jmp_153c8
  jeq r1, 0x0, jmp_15440
  ja jmp_155a8

jmp_15440:
  ldxdw r1, [r10-0x4f0]
  ldxdw r2, [r10-0x2d8]
  jeq r2, r1, jmp_15470

jmp_15458:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_154d0
  ja jmp_155a8

jmp_15470:
  ldxdw r1, [r10-0x4e8]
  ldxdw r2, [r10-0x2d0]
  jne r2, r1, jmp_15458
  ldxdw r1, [r10-0x4e0]
  ldxdw r2, [r10-0x2c8]
  jne r2, r1, jmp_15458
  mov64 r1, 0x0
  ldxdw r2, [r10-0x4d8]
  ldxdw r3, [r10-0x2c0]
  jne r3, r2, jmp_15458
  jeq r1, 0x0, jmp_154d0
  ja jmp_155a8

jmp_154d0:
  ldxdw r1, [r10-0xe08]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r10-0x430]
  jeq r3, r2, jmp_15510

jmp_154f8:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_15570
  ja jmp_155a8

jmp_15510:
  ldxdw r2, [r1+0x8]
  ldxdw r3, [r10-0x428]
  jne r3, r2, jmp_154f8
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r10-0x420]
  jne r3, r2, jmp_154f8
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r10-0x418]
  jne r3, r1, jmp_154f8
  jeq r2, 0x0, jmp_15570
  ja jmp_155a8

jmp_15570:
  ldxdw r1, [r10-0xe48]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r10-0x2d8]
  jeq r3, r2, jmp_155b8

jmp_15598:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_15618

jmp_155a8:
  mov64 r1, 0x5
  ja jmp_15640

jmp_155b8:
  ldxdw r2, [r1+0x8]
  ldxdw r3, [r10-0x2d0]
  jne r3, r2, jmp_15598
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r10-0x2c8]
  jne r3, r2, jmp_15598
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r10-0x2c0]
  jne r3, r1, jmp_15598
  jeq r2, 0x0, jmp_15618
  ja jmp_155a8

jmp_15618:
  ldxdw r1, [r10-0x3f0]
  ldxdw r2, [r10-0xdf0]
  jgt r2, r1, jmp_15638
  ja jmp_15678

jmp_15638:
  mov64 r1, 0xffff

jmp_15640:
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  mov64 r1, 0x1
  ja jmp_16718

jmp_15678:
  ldxdw r1, [r10-0xe60]
  stxdw [r10-0x1000], r1
  ldxdw r1, [r10-0xe58]
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r3, r10
  add64 r3, -0x228
  mov64 r5, r10
  ldxdw r2, [r10-0xde8]
  ldxdw r4, [r10-0xe30]
  call fn_22030
  ldxb r1, [r10-0xc00]
  ldxdw r2, [r10-0xc08]
  lddw r3, -0x7fffffffffffffe6
  jeq r2, r3, jmp_15708
  ja jmp_158a8

jmp_15708:
  mov64 r2, 0x0
  stxdw [r10-0xde8], r2
  jeq r1, 0x0, jmp_15738
  ldxdw r1, [r10-0xe70]
  ldxw r1, [r1+0x10]
  stxdw [r10-0xde8], r1

jmp_15738:
  ldxdw r1, [r10-0xde0]
  ldxdw r2, [r1+0x250]
  ldxdw r3, [r2+0x10]
  lddw r1, 0x7ffffffffffffffe
  jgt r3, r1, jmp_15900
  ldxb r4, [r10-0xe]
  ldxb r1, [r10-0xbff]
  stxdw [r10-0xe30], r1
  mov64 r1, r3
  add64 r1, 0x1
  stxdw [r2+0x10], r1
  ldxdw r1, [r2+0x20]
  jne r1, 0x800, jmp_15918
  ldxdw r5, [r2+0x18]
  mov64 r1, r5
  and64 r1, 0x7
  jeq r1, 0x0, jmp_157d0
  ja jmp_15918

jmp_157d0:
  mov64 r1, 0x4
  ldxdw r6, [r5+0x0]
  ldxdw r0, [r10-0xe38]
  and64 r0, -0x4
  jgt r6, r0, jmp_15820
  sub64 r0, r6
  jgt r0, 0x3ff, jmp_15820
  rsh64 r0, 0x2
  add64 r5, r0
  ldxb r1, [r5+0x8]

jmp_15820:
  stxdw [r2+0x10], r3
  mov64 r2, r4
  and64 r1, 0xff
  jgt r1, r2, jmp_15848
  mov64 r1, r2

jmp_15848:
  mov64 r2, 0x5
  jgt r2, r1, jmp_15860
  ja jmp_15968

jmp_15860:
  mul64 r1, 0xc
  ldxdw r3, [r10-0xe70]
  add64 r3, r1
  ldxw r6, [r3+0x474]
  mov64 r1, 0xf4240
  jgt r1, r6, jmp_15898
  ja jmp_15980

jmp_15898:
  mov64 r1, 0x1d
  ja jmp_166e8

jmp_158a8:
  ldxb r3, [r10-0xbff]
  ldxdw r4, [r10-0xbf8]
  ldxdw r5, [r10-0xdd8]
  stxdw [r5+0x10], r4
  ldxdw r4, [r10-0xbfe]
  stxdw [r5+0xa], r4
  stxb [r5+0x9], r3
  stxb [r5+0x8], r1
  stxdw [r5+0x0], r2
  mov64 r1, 0x1
  ja jmp_16718

jmp_15900:
  lddw r1, data_3180
  call fn_3f090

jmp_15918:
  mov64 r1, 0xffff
  ldxdw r3, [r10-0xdd8]
  stxw [r3+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r3+0x0], r1
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ja jmp_16710

jmp_15968:
  lddw r3, data_30f0
  call fn_3ffc8

jmp_15980:
  ldxdw r2, [r10-0xe70]
  ldxdw r1, [r10-0xe28]
  add64 r2, r1
  ldxb r1, [r3+0x478]
  stxdw [r10-0xe28], r1
  ldxw r1, [r3+0x470]
  stxdw [r10-0xe58], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r3, 0x168
  call fn_491e0
  jeq r6, 0xf4240, jmp_16110
  ldxdw r3, [r10-0xc00]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15a48
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xc00], r1
  ja jmp_15a58

jmp_15a48:
  mov64 r1, 0x0
  stxb [r10-0xbf8], r1

jmp_15a58:
  ldxdw r3, [r10-0xbe8]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15ac0
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xbe8], r1
  ja jmp_15ad0

jmp_15ac0:
  mov64 r1, 0x0
  stxb [r10-0xbe0], r1

jmp_15ad0:
  ldxdw r3, [r10-0xbd0]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15b38
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xbd0], r1
  ja jmp_15b48

jmp_15b38:
  mov64 r1, 0x0
  stxb [r10-0xbc8], r1

jmp_15b48:
  ldxdw r3, [r10-0xbb8]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15bb0
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xbb8], r1
  ja jmp_15bc0

jmp_15bb0:
  mov64 r1, 0x0
  stxb [r10-0xbb0], r1

jmp_15bc0:
  ldxdw r3, [r10-0xba0]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15c28
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xba0], r1
  ja jmp_15c38

jmp_15c28:
  mov64 r1, 0x0
  stxb [r10-0xb98], r1

jmp_15c38:
  ldxdw r3, [r10-0xb88]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15ca0
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xb88], r1
  ja jmp_15cb0

jmp_15ca0:
  mov64 r1, 0x0
  stxb [r10-0xb80], r1

jmp_15cb0:
  ldxdw r3, [r10-0xb70]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15d18
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xb70], r1
  ja jmp_15d28

jmp_15d18:
  mov64 r1, 0x0
  stxb [r10-0xb68], r1

jmp_15d28:
  ldxdw r3, [r10-0xb58]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15d90
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xb58], r1
  ja jmp_15da0

jmp_15d90:
  mov64 r1, 0x0
  stxb [r10-0xb50], r1

jmp_15da0:
  ldxdw r3, [r10-0xb40]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15e08
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xb40], r1
  ja jmp_15e18

jmp_15e08:
  mov64 r1, 0x0
  stxb [r10-0xb38], r1

jmp_15e18:
  ldxdw r3, [r10-0xb28]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15e80
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xb28], r1
  ja jmp_15e90

jmp_15e80:
  mov64 r1, 0x0
  stxb [r10-0xb20], r1

jmp_15e90:
  ldxdw r3, [r10-0xb10]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15ef8
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xb10], r1
  ja jmp_15f08

jmp_15ef8:
  mov64 r1, 0x0
  stxb [r10-0xb08], r1

jmp_15f08:
  ldxdw r3, [r10-0xaf8]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15f70
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xaf8], r1
  ja jmp_15f80

jmp_15f70:
  mov64 r1, 0x0
  stxb [r10-0xaf0], r1

jmp_15f80:
  ldxdw r3, [r10-0xae0]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_15fe8
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xae0], r1
  ja jmp_15ff8

jmp_15fe8:
  mov64 r1, 0x0
  stxb [r10-0xad8], r1

jmp_15ff8:
  ldxdw r3, [r10-0xac8]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_16060
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xac8], r1
  ja jmp_16070

jmp_16060:
  mov64 r1, 0x0
  stxb [r10-0xac0], r1

jmp_16070:
  ldxdw r3, [r10-0xab0]
  jgt r3, 0xf4240, jmp_160d8
  mov64 r1, 0xf4240
  mov64 r2, 0xf4240
  sub64 r2, r3
  mul64 r2, r6
  lddw r3, 0xe8d4a50fff
  jgt r2, r3, jmp_16100
  div64 r2, 0xf4240
  sub64 r1, r2
  stxdw [r10-0xab0], r1
  ja jmp_16110

jmp_160d8:
  lddw r2, -0x7fffffffffffffe9
  ldxdw r1, [r10-0xdd8]
  stxdw [r1+0x0], r2
  ja jmp_16710

jmp_16100:
  mov64 r1, 0x0
  stxb [r10-0xaa8], r1

jmp_16110:
  mov64 r1, 0x10
  ldxdw r2, [r10-0xe28]
  jgt r1, r2, jmp_16150
  ldxdw r1, [r10-0xe28]
  mov64 r2, 0xf
  lddw r3, data_3108
  call fn_45190

jmp_16150:
  ldxdw r2, [r10-0xe28]
  mov64 r1, r2
  mul64 r1, 0x18
  mov64 r3, r10
  add64 r3, -0xc08
  add64 r3, r1
  mov64 r4, -0x1
  xor64 r2, 0xf
  stxdw [r10-0xe28], r2
  mov64 r1, r2
  mul64 r1, 0x18
  stxdw [r10-0xe60], r3
  mov64 r2, r3

jmp_161b8:
  mov64 r3, r4
  jeq r1, 0x0, jmp_16240
  ldxb r4, [r2+0x10]
  jeq r4, 0x0, jmp_16240
  mov64 r5, 0x7
  ldxdw r4, [r2+0x8]
  jgt r4, 0xf423f, jmp_16210
  add64 r2, 0x18
  mov64 r5, 0x8
  add64 r1, -0x18
  jgt r3, r4, jmp_161b8

jmp_16210:
  ldxdw r1, [r10-0xdd8]
  stxw [r1+0x8], r5
  lddw r2, -0x8000000000000000
  stxdw [r1+0x0], r2
  ja jmp_16710

jmp_16240:
  ldxdw r2, [r10-0xe70]
  ldxdw r3, [r2+0x78]
  add64 r2, 0x58
  mov64 r1, r10
  add64 r1, -0xd50
  ldxdw r4, [r10-0xe38]
  call fn_1f958
  ldxdw r2, [r10-0xde8]
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  ldxdw r1, [r10-0xe58]
  mov64 r3, r1
  mov64 r1, r2
  stxdw [r10-0xde8], r3
  jgt r3, r2, jmp_162c0
  stxdw [r10-0xde8], r1

jmp_162c0:
  ldxw r1, [r10-0xd50]
  jeq r1, 0x0, jmp_16678
  ldxw r1, [r10-0xd4c]
  stxdw [r10-0xe38], r1
  mov64 r0, 0x0
  ldxdw r1, [r10-0xe70]
  ldxw r6, [r1+0x6c]
  ldxdw r1, [r10-0xe88]
  jeq r1, 0x0, jmp_16380
  ldxdw r2, [r10-0xe70]
  mov64 r1, r2
  add64 r1, 0x4ac
  mov64 r3, 0x0
  ldxdw r2, [r2+0x4c0]
  jeq r2, 0x0, jmp_16368
  ldxdw r3, [r10-0xe70]
  ldxdw r3, [r3+0x70]
  lddw r4, -0x3894f8df66c6b831
  add64 r3, r4
  xor64 r3, r2

jmp_16368:
  mov64 r2, r6
  ldxdw r4, [r10-0xe78]
  call fn_1fac8

jmp_16380:
  lsh64 r0, 0x20
  rsh64 r0, 0x20
  ldxdw r1, [r10-0xe38]
  add64 r1, r0
  lddw r2, 0xffffffff
  jgt r2, r1, jmp_163c8
  lddw r1, 0xffffffff

jmp_163c8:
  mov64 r2, r6
  jgt r2, r1, jmp_163e0
  mov64 r1, r2

jmp_163e0:
  ldxdw r2, [r10-0xde8]
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  add64 r2, r1
  mov64 r1, r2
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  stxdw [r10-0xde8], r2
  jne r1, r2, jmp_16678
  ldxdw r1, [r10-0xe70]
  ldxb r1, [r1+0x466]
  jeq r1, 0x1, jmp_16448
  ja jmp_165d0

jmp_16448:
  mov64 r1, r10
  add64 r1, -0xd70
  ldxdw r2, [r10-0xea8]
  mov64 r3, 0x0
  mov64 r4, r7
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0xd60
  mov64 r2, r7
  mov64 r3, 0x0
  ldxdw r4, [r10-0xeb0]
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r2, 0x1
  ldxdw r3, [r10-0xd68]
  mov64 r1, 0x1
  jne r3, 0x0, jmp_164e0
  mov64 r1, 0x0

jmp_164e0:
  ldxdw r4, [r10-0xd58]
  ldxdw r5, [r10-0xd70]
  mov64 r3, r4
  add64 r3, r5
  jgt r4, r3, jmp_16510
  mov64 r2, 0x0

jmp_16510:
  or64 r1, r2
  and64 r1, 0x1
  jne r1, 0x0, jmp_16678
  lddw r1, 0x38d7ea4c67fff
  jgt r3, r1, jmp_16698
  ldxdw r2, [r10-0xd60]
  mov64 r1, r10
  add64 r1, -0xd80
  mov64 r6, 0x0
  lddw r4, 0x38d7ea4c68000
  mov64 r5, 0x0
  call fn_49780
  ldxdw r2, [r10-0xd80]
  ldxdw r7, [r10-0xdf8]
  mov64 r1, r7
  sub64 r1, r2
  mov64 r2, 0x1
  jgt r1, r7, jmp_165b8
  mov64 r2, 0x0

jmp_165b8:
  jne r2, 0x0, jmp_165c8
  mov64 r6, r1

jmp_165c8:
  stxdw [r10-0xdf8], r6

jmp_165d0:
  ldxdw r1, [r10-0xe30]
  mov64 r2, r1
  mov64 r1, 0x1
  jne r2, 0x0, jmp_165f8
  mov64 r1, 0x0

jmp_165f8:
  ldxdw r2, [r10-0xe28]
  stxdw [r10-0xff0], r2
  ldxdw r2, [r10-0xe60]
  stxdw [r10-0xff8], r2
  ldxdw r2, [r10-0xea0]
  stxdw [r10-0x1000], r2
  stxdw [r10-0xfe8], r1
  mov64 r1, r10
  add64 r1, -0xd90
  mov64 r5, r10
  ldxdw r2, [r10-0xdf8]
  ldxdw r3, [r10-0xdf0]
  ldxdw r4, [r10-0xe98]
  call fn_1ef70
  ldxdw r1, [r10-0xd90]
  jne r1, 0x0, jmp_167c8

jmp_16678:
  mov64 r1, 0xffff
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x8], r1
  ja jmp_166f8

jmp_16698:
  mov64 r3, r10
  add64 r3, -0x1
  lddw r1, str_0240
  mov64 r2, 0x2b
  lddw r4, data_3120
  lddw r5, data_3140
  call fn_40400

jmp_166e8:
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1

jmp_166f8:
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1

jmp_16710:
  mov64 r1, 0x0

jmp_16718:
  ldxdw r3, [r10-0xee0]
  ldxdw r2, [r3+0x10]
  add64 r2, -0x1
  stxdw [r3+0x10], r2

jmp_16738:
  ldxdw r3, [r10-0xed8]
  ldxdw r2, [r3+0x10]
  add64 r2, -0x1
  stxdw [r3+0x10], r2

jmp_16758:
  ldxdw r3, [r10-0xec8]
  ldxdw r2, [r3+0x10]
  add64 r2, -0x1
  stxdw [r3+0x10], r2
  ldxdw r3, [r10-0xeb8]
  ldxdw r2, [r3+0x10]
  add64 r2, -0x1
  stxdw [r3+0x10], r2
  ldxdw r3, [r10-0xe68]
  ldxdw r2, [r3+0x10]
  add64 r2, 0x1
  stxdw [r3+0x10], r2
  jne r1, 0x0, jmp_167c0

jmp_167c0:
  ja jmp_cb60

jmp_167c8:
  ldxdw r4, [r10-0xd88]
  ldxdw r1, [r10-0xde8]
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  jne r1, 0x0, jmp_16b40

jmp_167f0:
  ldxdw r1, [r10-0x4b0]
  mov64 r6, r4
  jgt r1, r4, jmp_16810
  mov64 r6, r1

jmp_16810:
  ldxdw r2, [r10-0xe30]
  jeq r2, 0x0, jmp_16828
  jgt r4, r1, jmp_16b58

jmp_16828:
  ldxdw r1, [r10-0xe50]
  jgt r1, r6, jmp_16b58
  jeq r6, 0x0, jmp_16b58
  ldxdw r2, [r10-0xeb8]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r2, [r10-0xec8]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r2, [r10-0xed8]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r2, [r10-0xee0]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r1, [r9+0x0]
  ldxdw r2, [r10-0xdf0]
  stxdw [r10-0xff0], r2
  ldxdw r2, [r10-0xec0]
  stxdw [r10-0xfe8], r2
  stxdw [r10-0xff8], r1
  ldxdw r1, [r10-0xe10]
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0x680
  mov64 r5, r10
  ldxdw r2, [r10-0xe08]
  ldxdw r3, [r10-0xe20]
  ldxdw r4, [r10-0xe00]
  call fn_21810
  lddw r8, -0x7fffffffffffffe6
  ldxdw r1, [r10-0x680]
  jne r1, r8, jmp_16b68
  ldxdw r3, [r10-0xde0]
  mov64 r1, r3
  ldxdw r2, [r10-0xe80]
  add64 r1, r2
  ldxdw r1, [r1+0x0]
  stxdw [r10-0xfe0], r6
  ldxdw r2, [r10-0xed0]
  stxdw [r10-0xfd8], r2
  stxdw [r10-0xfe8], r1
  ldxdw r1, [r10-0xe40]
  stxdw [r10-0xff0], r1
  ldxdw r1, [r10-0xe18]
  stxdw [r10-0xff8], r1
  mov64 r1, 0x2
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0x680
  mov64 r4, r10
  add64 r4, -0x718
  mov64 r5, r10
  ldxdw r2, [r10-0xe48]
  call fn_20f88
  ldxdw r1, [r10-0x680]
  jeq r1, r8, jmp_16a20
  ja jmp_16b68

jmp_16a20:
  ldxdw r1, [r10-0xe70]
  ldxw r2, [r1+0x460]
  mov64 r1, r10
  add64 r1, -0xdc0
  mov64 r3, 0x0
  ldxdw r4, [r10-0xdf0]
  mov64 r5, 0x0
  call fn_4b0a0
  ldxdw r3, [r10-0xdb8]
  jgt r3, 0xf423f, jmp_16ba8
  ldxdw r2, [r10-0xdc0]
  mov64 r1, r10
  add64 r1, -0xdd0
  mov64 r8, 0x0
  mov64 r4, 0xf4240
  mov64 r5, 0x0
  call fn_49780
  ldxdw r3, [r10-0xe70]
  ldxdw r1, [r10-0xe90]
  add64 r3, r1
  ldxdw r1, [r3+0x0]
  ldxdw r2, [r10-0xdd0]
  add64 r1, r2
  stxdw [r3+0x0], r1
  mov64 r1, r10
  add64 r1, -0x6f0
  call fn_2eff0
  ldxdw r1, [r10-0x6e8]
  ldxdw r2, [r10-0x6f0]
  jeq r2, 0x0, jmp_16bf8
  ldxdw r2, [r10-0x6e0]
  ldxdw r3, [r10-0x6d8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  stxdw [r4+0x8], r2
  ja jmp_14888

jmp_16b40:
  mov64 r2, 0xf4241
  jgt r2, r1, jmp_16e98
  ja jmp_16678

jmp_16b58:
  mov64 r1, 0xffff
  ja jmp_166e8

jmp_16b68:
  ldxdw r1, [r10-0x670]
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x678]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x680]
  stxdw [r2+0x0], r1
  ja jmp_14890

jmp_16ba8:
  mov64 r3, r10
  add64 r3, -0x1
  lddw r1, str_0240
  mov64 r2, 0x2b
  lddw r4, data_3120
  lddw r5, data_3168
  call fn_40400

jmp_16bf8:
  stxdw [r10-0x690], r1
  ldxdw r1, [r10-0xdf0]
  stxdw [r10-0x6c0], r1
  mov64 r1, r10
  add64 r1, -0x6a8
  stxdw [r10-0x650], r1
  mov64 r1, r10
  add64 r1, -0x6c0
  stxdw [r10-0x660], r1
  mov64 r1, 0x8
  stxdw [r10-0x648], r1
  stxdw [r10-0x658], r1
  stxdw [r10-0x668], r1
  mov64 r1, r10
  add64 r1, -0x690
  stxdw [r10-0x670], r1
  mov64 r1, 0x20
  stxdw [r10-0x678], r1
  lddw r1, data_03b0
  stxdw [r10-0x680], r1
  stxdw [r10-0x6a8], r6
  mov64 r6, r10
  add64 r6, -0x6f0
  mov64 r2, r10
  add64 r2, -0x680
  mov64 r9, 0x4
  mov64 r1, r6
  mov64 r3, 0x4
  call fn_34480
  stxdw [r10-0x350], r9
  stxdw [r10-0x358], r9
  mov64 r1, r10
  add64 r1, -0x6d0
  stxdw [r10-0x368], r1
  stxdw [r10-0x370], r6
  mov64 r1, r10
  add64 r1, -0x67c
  stxdw [r10-0x378], r1
  mov64 r1, r10
  add64 r1, -0x680
  stxdw [r10-0x380], r1
  ldxdw r1, [r10-0xde8]
  stxw [r10-0x680], r1
  stxdw [r10-0x360], r8
  mov64 r1, r10
  add64 r1, -0x6c0
  mov64 r2, r10
  add64 r2, -0x380
  call fn_96f8
  ldxdw r2, [r10-0x6b8]
  ldxdw r3, [r10-0x6b0]
  mov64 r6, r10
  add64 r6, -0x6f0
  mov64 r1, r6
  call fn_1ab0
  lddw r1, 0xc6b
  stxdw [r10-0x688], r1
  stxdw [r10-0x690], r6
  stxdw [r10-0x660], r8
  lddw r1, data_3158
  stxdw [r10-0x680], r1
  mov64 r1, 0x1
  stxdw [r10-0x678], r1
  stxdw [r10-0x668], r1
  mov64 r1, r10
  add64 r1, -0x690
  stxdw [r10-0x670], r1
  mov64 r1, r10
  add64 r1, -0x6a8
  mov64 r2, r10
  add64 r2, -0x680
  call fn_2c88
  ldxdw r1, [r10-0x6a0]
  ldxdw r2, [r10-0x698]
  call sol_log_
  lddw r2, -0x7fffffffffffffe6
  ldxdw r1, [r10-0xdd8]
  stxdw [r1+0x0], r2
  ldxdw r2, [r10-0xe68]
  ja jmp_1ad48

jmp_16e98:
  ldxdw r1, [r10-0xde8]
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r3, 0x1
  jgt r1, 0xf4240, jmp_16ec8
  mov64 r3, 0x0

jmp_16ec8:
  neg64 r3
  mov64 r2, 0xf4240
  sub64 r2, r1
  mov64 r1, r10
  add64 r1, -0xda0
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0xdb0
  ldxdw r2, [r10-0xda0]
  ldxdw r3, [r10-0xd98]
  mov64 r4, 0xf4240
  mov64 r5, 0x0
  call fn_49780
  ldxdw r4, [r10-0xdb0]
  ja jmp_167f0

jmp_16f48:
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  lddw r3, 0x2afdee7efe3d4376
  jeq r2, r3, jmp_16f80

jmp_16f70:
  mov64 r2, 0x1
  ja jmp_16fe8

jmp_16f80:
  ldxdw r2, [r1+0x8]
  lddw r3, 0x46e5441d0afe311d
  jne r2, r3, jmp_16f70
  ldxdw r2, [r1+0x10]
  lddw r3, -0x25a6657d66cbf7cb
  jne r2, r3, jmp_16f70
  mov64 r2, 0x0
  ldxdw r3, [r1+0x18]
  lddw r4, 0x78dec6132898152a
  jne r3, r4, jmp_16f70

jmp_16fe8:
  ldxdw r4, [r10-0xdf0]
  ldxb r3, [r4+0x19]
  stxdw [r10-0xe48], r3
  ldxb r7, [r4+0x18]
  ldxdw r3, [r4+0x10]
  stxdw [r10-0xe50], r3
  ldxdw r3, [r4+0x8]
  stxdw [r10-0xdf0], r3
  jeq r2, 0x0, jmp_170d8
  ldxdw r2, [r1+0x0]
  lddw r3, -0x1e88963061062c2a
  jeq r2, r3, jmp_17060

jmp_17050:
  mov64 r2, 0x1
  ja jmp_170c8

jmp_17060:
  ldxdw r2, [r1+0x8]
  lddw r3, -0x3f5df940b0cf1ddb
  jne r2, r3, jmp_17050
  ldxdw r2, [r1+0x10]
  lddw r3, -0x4ae4c47c7df57a16
  jne r2, r3, jmp_17050
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  lddw r3, -0x79d69db9d39aa8e0
  jne r1, r3, jmp_17050

jmp_170c8:
  jeq r2, 0x0, jmp_170d8

jmp_170d0:
  ja jmp_c0d8

jmp_170d8:
  jgt r7, 0x4, jmp_1c558
  ldxdw r1, [r10-0xde8]
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r1+0x0]
  jeq r3, r2, jmp_172f0

jmp_17110:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_17128
  ja jmp_1bc78

jmp_17128:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x29]
  jeq r1, 0x0, jmp_17148
  ja jmp_10630

jmp_17148:
  ldxdw r1, [r10-0xde0]
  call fn_301f0
  jne r0, 0x0, jmp_a598
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  lddw r3, 0x9e9974ee626ad71
  jeq r2, r3, jmp_17368

jmp_17190:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_171a8
  ja jmp_d380

jmp_171a8:
  ldxdw r1, [r10-0xde0]
  ldxdw r8, [r1+0x10]
  ldxdw r1, [r8+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_171e0
  ja jmp_173e0

jmp_171e0:
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r1, [r10-0xc00]
  stxdw [r10-0xe58], r1
  ldxdw r2, [r10-0xc08]
  lddw r1, -0x8000000000000000
  stxdw [r10-0xe60], r2
  jeq r2, r1, jmp_17278
  ja jmp_173f8

jmp_17278:
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xe58]
  call fn_30d48
  ldxdw r1, [r10-0xbf8]
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0xc00]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0xc08]
  stxdw [r2+0x0], r1
  ldxdw r1, [r8+0x10]
  add64 r1, -0x1
  stxdw [r8+0x10], r1
  ja jmp_cb60

jmp_172f0:
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x8]
  ldxdw r3, [r1+0x8]
  jne r3, r2, jmp_17110
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x10]
  ldxdw r3, [r1+0x10]
  jne r3, r2, jmp_17110
  mov64 r2, 0x0
  ldxdw r3, [r10-0xde8]
  ldxdw r3, [r3+0x18]
  ldxdw r1, [r1+0x18]
  jne r1, r3, jmp_17110
  jeq r2, 0x0, jmp_17128
  ja jmp_1bc78

jmp_17368:
  ldxdw r2, [r1+0x8]
  lddw r3, -0x5a4e740901420473
  jne r2, r3, jmp_17190
  ldxdw r2, [r1+0x10]
  lddw r3, 0x3f762b2616a7d0c7
  jne r2, r3, jmp_17190
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  lddw r3, -0x1ff47e790077cfa3
  jne r1, r3, jmp_17190
  jeq r2, 0x0, jmp_171a8
  ja jmp_d380

jmp_173e0:
  lddw r1, data_3390
  call fn_3f090

jmp_173f8:
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  ldxdw r1, [r10-0xe58]
  stxdw [r10-0x220], r1
  ldxdw r1, [r10-0xe60]
  stxdw [r10-0x228], r1
  ldxdw r1, [r8+0x10]
  add64 r1, -0x1
  stxdw [r8+0x10], r1
  lddw r1, -0x3c1cb4130349c29
  ldxdw r2, [r10-0x1d8]
  jeq r2, r1, jmp_17498

jmp_17480:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_17510

jmp_17490:
  ja jmp_12fb0

jmp_17498:
  lddw r1, -0xb6a3785afba3445
  ldxdw r2, [r10-0x1d0]
  jne r2, r1, jmp_17480
  lddw r1, -0x182dbcdd20a11484
  ldxdw r2, [r10-0x1c8]
  jne r2, r1, jmp_17480
  mov64 r1, 0x0
  lddw r2, -0x309924488b6719d5
  ldxdw r3, [r10-0x1c0]
  jne r3, r2, jmp_17480
  jeq r1, 0x0, jmp_17510
  ja jmp_17490

jmp_17510:
  mov64 r1, 0x1
  stxdw [r10-0x6d8], r1
  mov64 r1, r10
  add64 r1, -0x718
  stxdw [r10-0x6e0], r1
  mov64 r1, 0x5
  stxdw [r10-0x6e8], r1
  lddw r1, data_03d0
  stxdw [r10-0x6f0], r1
  mov64 r1, 0xff
  stxb [r10-0x718], r1
  mov64 r1, 0xf
  ldxb r2, [r10-0x15]
  jne r2, 0x0, jmp_15238
  ldxb r2, [r10-0x16]
  jne r2, 0x0, jmp_15238
  ldxb r2, [r10-0x14]
  jeq r2, 0x0, jmp_175b0
  ja jmp_15238

jmp_175b0:
  ldxdw r1, [r10-0xde8]
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x48]
  ldxdw r3, [r1+0x0]
  jeq r3, r2, jmp_175f0

jmp_175e0:
  mov64 r2, 0x1
  ja jmp_17658

jmp_175f0:
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x8]
  ldxdw r3, [r1+0x8]
  jne r3, r2, jmp_175e0
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x10]
  ldxdw r3, [r1+0x10]
  jne r3, r2, jmp_175e0
  mov64 r2, 0x0
  ldxdw r3, [r10-0xde8]
  ldxdw r3, [r3+0x18]
  ldxdw r1, [r1+0x18]
  jne r1, r3, jmp_175e0

jmp_17658:
  mov64 r1, 0x2
  jne r2, 0x0, jmp_15238
  mov64 r1, r6
  call fn_301f0
  mov64 r1, 0x16
  jne r0, 0x0, jmp_15238
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x40]
  stxdw [r10-0xe60], r1
  ldxdw r1, [r1+0x10]
  jne r1, 0x0, jmp_18f88
  mov64 r1, -0x1
  ldxdw r2, [r10-0xe60]
  stxdw [r2+0x10], r1
  ldxdw r1, [r2+0x20]
  jne r1, 0x4f0, jmp_18390
  ldxdw r1, [r10-0xe60]
  ldxdw r1, [r1+0x18]
  stxdw [r10-0xe68], r1
  and64 r1, 0x7
  jeq r1, 0x0, jmp_17708
  ja jmp_18390

jmp_17708:
  ldxdw r1, [r10-0xe68]
  ldxdw r8, [r1+0x78]
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_2f0a8
  ldxdw r1, [r10-0xc00]
  ldxdw r2, [r10-0xc08]
  lddw r3, -0x7fffffffffffffe6
  jeq r2, r3, jmp_17760
  ja jmp_183c8

jmp_17760:
  jgt r8, r1, jmp_17770
  ja jmp_18390

jmp_17770:
  ldxdw r2, [r10-0xe68]
  ldxdw r1, [r2+0x468]
  add64 r1, 0x1
  stxdw [r2+0x468], r1
  ldxh r4, [r2+0x14]
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xde8]
  mov64 r3, r6
  call fn_1e560
  ldxdw r1, [r10-0xc08]
  lddw r2, -0x7fffffffffffffe6
  jeq r1, r2, jmp_177e8
  ja jmp_183f8

jmp_177e8:
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0xb0]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0xa8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0xc8]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0xc0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0xe0]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0xd8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0xf8]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0xf0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x110]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x108]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x128]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x120]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x140]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x138]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x158]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x150]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x170]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x168]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x188]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x180]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x1a0]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x198]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x1b8]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x1b0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x1d0]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x1c8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x1e8]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x1e0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x200]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x1f8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x218]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x210]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x230]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x228]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x248]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x240]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x260]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x258]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x278]
  jeq r1, 0x0, jmp_17d80
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x270]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jgt r3, r2, jmp_17d80
  ja jmp_18398

jmp_17d80:
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x290]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x288]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x2a8]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x2a0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x2c0]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x2b8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x2d8]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x2d0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x2f0]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x2e8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x308]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x300]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x320]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x318]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x338]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x330]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x350]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x348]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x368]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x360]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x380]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x378]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x398]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x390]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x3b0]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x3a8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x3c8]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x3c0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x3e0]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x3d8]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x3f8]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x3f0]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x410]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x408]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x428]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x420]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r2, r3, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x440]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r3, [r1+0x438]
  mov64 r1, 0x7
  jgt r3, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jge r3, r2, jmp_18398
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x458]
  jeq r1, 0x0, jmp_18318
  ldxdw r1, [r10-0xe68]
  ldxdw r2, [r1+0x450]
  mov64 r1, 0x7
  jgt r2, 0xf423f, jmp_18398
  mov64 r1, 0x8
  jgt r3, r2, jmp_18318
  ja jmp_18398

jmp_18318:
  ldxdw r1, [r10-0xe38]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  lddw r3, 0x6a34d2558a800097
  jeq r2, r3, jmp_18460

jmp_18348:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_184d8

jmp_18358:
  mov64 r1, 0x0
  ldxdw r2, [r10-0xdd8]
  stxb [r2+0xb], r1
  stxh [r2+0x9], r1
  mov64 r1, 0x20
  stxb [r2+0x8], r1
  ja jmp_183a8

jmp_18390:
  mov64 r1, 0xffff

jmp_18398:
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1

jmp_183a8:
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ja jmp_18438

jmp_183c8:
  ldxdw r3, [r10-0xbf8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  stxdw [r4+0x8], r1
  stxdw [r4+0x0], r2
  ja jmp_18438

jmp_183f8:
  ldxb r2, [r10-0xc00]
  ldxdw r3, [r10-0xbf8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  ldxdw r3, [r10-0xbff]

jmp_18420:
  stxdw [r4+0x9], r3
  stxb [r4+0x8], r2
  stxdw [r4+0x0], r1

jmp_18438:
  ldxdw r2, [r10-0xe60]
  ldxdw r1, [r2+0x10]
  add64 r1, 0x1
  stxdw [r2+0x10], r1
  ja jmp_cb60

jmp_18460:
  ldxdw r2, [r1+0x8]
  lddw r3, -0x27bb7242248810a4
  jne r2, r3, jmp_18348
  ldxdw r2, [r1+0x10]
  lddw r3, -0x4e99f83a7f19f3b3
  jne r2, r3, jmp_18348
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  lddw r3, 0x4a51182b7d233fc5
  jne r1, r3, jmp_18348
  jeq r2, 0x0, jmp_184d8
  ja jmp_18358

jmp_184d8:
  ldxdw r1, [r10-0xde8]
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x258]
  ldxdw r3, [r1+0x0]
  jeq r3, r2, jmp_18528

jmp_18508:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_185a0

jmp_18518:
  mov64 r1, 0x2
  ja jmp_18398

jmp_18528:
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x8]
  ldxdw r3, [r1+0x8]
  jne r3, r2, jmp_18508
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x10]
  ldxdw r3, [r1+0x10]
  jne r3, r2, jmp_18508
  mov64 r2, 0x0
  ldxdw r3, [r10-0xde8]
  ldxdw r3, [r3+0x18]
  ldxdw r1, [r1+0x18]
  jne r1, r3, jmp_18508
  jeq r2, 0x0, jmp_185a0
  ja jmp_18518

jmp_185a0:
  ldxdw r1, [r10-0xe38]
  call fn_301f0
  jne r0, 0x0, jmp_185c0
  ja jmp_185d0

jmp_185c0:
  mov64 r1, 0x21
  ja jmp_18398

jmp_185d0:
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_2eff0
  ldxdw r1, [r10-0xc00]
  stxdw [r10-0xe38], r1
  ldxdw r1, [r10-0xc08]
  jeq r1, 0x0, jmp_18648
  ldxdw r1, [r10-0xbf8]
  ldxdw r2, [r10-0xbf0]
  ldxdw r3, [r10-0xdd8]
  stxdw [r3+0x10], r2
  stxdw [r3+0x8], r1
  ldxdw r1, [r10-0xe38]
  stxdw [r3+0x0], r1
  ja jmp_18438

jmp_18648:
  ldxdw r8, [r10-0xbe0]
  mov64 r1, r10
  add64 r1, -0xc08
  ldxdw r2, [r10-0xe40]
  call fn_1c910
  mov64 r2, r10
  add64 r2, -0xc00
  ldxdw r1, [r10-0xc08]
  jeq r1, 0x0, jmp_186e8
  ldxdw r1, [r2+0x10]
  stxdw [r10-0x2d8], r1
  ldxdw r3, [r2+0x8]
  stxdw [r10-0x2e0], r3
  ldxdw r2, [r2+0x0]
  stxdw [r10-0x2e8], r2
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r3
  stxdw [r4+0x0], r2
  ja jmp_18438

jmp_186e8:
  mov64 r6, r10
  add64 r6, -0x2e8
  mov64 r1, r6
  mov64 r3, 0x58
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x440
  mov64 r2, r6
  mov64 r3, 0x58
  call fn_490d0
  ldxdw r2, [r10-0x418]
  ldxdw r3, [r10-0x410]
  ldxdw r4, [r10-0x408]
  ldxdw r1, [r10-0xe38]
  stxdw [r10-0x1000], r1
  stxdw [r10-0xff8], r8
  mov64 r1, r10
  add64 r1, -0xcb0
  mov64 r5, r10
  call fn_1cd90
  ldxdw r1, [r10-0xcb0]
  stxdw [r10-0xe70], r1
  ldxb r8, [r10-0xca8]
  jne r8, 0x2, jmp_188c8
  mov64 r1, 0x0

jmp_187b0:
  stxdw [r10-0xe78], r1

jmp_187b8:
  ldxdw r8, [r10-0xe68]
  add64 r8, 0x8
  ldxdw r1, [r10-0xe48]
  jeq r1, 0x0, jmp_18ae0
  ldxdw r6, [r10-0xe68]
  mov64 r2, r6
  add64 r2, 0xa0
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r3, 0x168
  call fn_491e0
  mov64 r1, 0x90
  stxdw [r10-0xe80], r1
  mov64 r4, 0x80
  mov64 r3, 0x464
  mov64 r2, 0x16
  ldxdw r1, [r10-0xe10]
  stxdw [r10-0xe40], r1
  ldxdw r1, [r10-0xe00]
  stxdw [r10-0xe10], r1
  ldxdw r1, [r10-0xe18]
  stxdw [r10-0xe00], r1
  ldxdw r1, [r10-0xe08]
  stxdw [r10-0xe18], r1
  ldxdw r1, [r10-0xe20]
  stxdw [r10-0xe08], r1
  stxdw [r10-0xe20], r9
  ldxdw r1, [r10-0xe30]
  stxdw [r10-0xe88], r1
  ldxdw r1, [r10-0xe28]
  stxdw [r10-0xe30], r1
  mov64 r5, r8
  mov64 r8, r6
  ja jmp_18b80

jmp_188c8:
  ldxdw r1, [r10-0xde0]
  ldxdw r6, [r1+0x250]
  ldxdw r1, [r6+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_18900
  ja jmp_190d8

jmp_18900:
  add64 r1, 0x1
  stxdw [r6+0x10], r1
  ldxdw r1, [r6+0x20]
  jne r1, 0x800, jmp_18ec0
  ldxdw r2, [r6+0x18]
  mov64 r1, r2
  and64 r1, 0x7
  jeq r1, 0x0, jmp_18948
  ja jmp_18ec0

jmp_18948:
  add64 r2, 0x420
  mov64 r1, r10
  add64 r1, -0xc08
  stxdw [r10-0xe40], r1
  mov64 r3, 0x100
  call fn_490d0
  ldxdw r1, [r6+0x10]
  add64 r1, -0x1
  stxdw [r6+0x10], r1
  mov64 r1, r10
  add64 r1, -0x438
  ldxdw r2, [r10-0xe40]
  mov64 r3, 0x8
  call fn_1cc20
  stxdw [r10-0xe78], r0
  jeq r0, 0x0, jmp_187b8
  and64 r8, 0x1
  jeq r8, 0x0, jmp_187b8
  ldxdw r1, [r10-0xe68]
  ldxdw r1, [r1+0x4b0]
  jne r1, 0x0, jmp_189f8
  ja jmp_187b8

jmp_189f8:
  ldxdw r5, [r10-0xe68]
  ldxdw r8, [r5+0x80]
  ldxdw r2, [r5+0x8]
  stxdw [r10-0xe40], r2
  ldxdw r4, [r5+0x0]
  ldxdw r3, [r5+0x88]
  ldxdw r0, [r5+0x90]
  ldxdw r6, [r5+0x98]
  ldxdw r2, [r5+0x4b8]
  ldxdw r5, [r10-0xe70]
  stxdw [r10-0xfe0], r5
  stxdw [r10-0xfd8], r2
  stxdw [r10-0xfe8], r1
  stxdw [r10-0xff0], r6
  stxdw [r10-0xff8], r0
  stxdw [r10-0x1000], r3
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r5, r10
  mov64 r2, r4
  ldxdw r3, [r10-0xe40]
  mov64 r4, r8
  call fn_1fd70
  ldxdw r1, [r10-0xc08]
  jne r1, 0x0, jmp_18f40
  mov64 r1, 0xffff
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x8], r1
  ja jmp_183a8

jmp_18ae0:
  ldxdw r6, [r10-0xe68]
  mov64 r2, r6
  add64 r2, 0x280
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r3, 0x168
  call fn_490d0
  mov64 r1, 0x80
  stxdw [r10-0xe80], r1
  mov64 r4, 0x90
  mov64 r3, 0x16
  mov64 r2, 0x464
  ldxdw r1, [r10-0xe00]
  stxdw [r10-0xe40], r1
  ldxdw r1, [r10-0xe08]
  stxdw [r10-0xe00], r1
  stxdw [r10-0xe08], r9
  ldxdw r1, [r10-0xe28]
  stxdw [r10-0xe88], r1
  mov64 r5, r6

jmp_18b80:
  ldxdw r0, [r10-0xe10]
  ldxb r0, [r0+0x29]
  jeq r0, 0x0, jmp_18eb0
  ldxdw r1, [r10-0xe40]
  ldxb r0, [r1+0x29]
  jeq r0, 0x0, jmp_18eb0
  ldxdw r1, [r10-0xe00]
  ldxb r0, [r1+0x29]
  jeq r0, 0x0, jmp_18eb0
  ldxdw r0, [r10-0xe18]
  ldxb r0, [r0+0x29]
  jeq r0, 0x0, jmp_18eb0
  ldxdw r0, [r10-0xe68]
  mov64 r1, r0
  add64 r1, r4
  mov64 r9, r0
  add64 r9, r3
  mov64 r3, r0
  add64 r3, r2
  ldxdw r4, [r10-0xe80]
  add64 r0, r4
  ldxdw r4, [r5+0x0]
  stxdw [r10-0xe28], r4
  ldxdw r8, [r8+0x0]
  ldxdw r4, [r1+0x8]
  stxdw [r10-0xe90], r4
  ldxdw r1, [r1+0x0]
  stxdw [r10-0xe80], r1
  ldxdw r1, [r0+0x8]
  stxdw [r10-0xea0], r1
  ldxdw r1, [r0+0x0]
  stxdw [r10-0xe98], r1
  ldxh r4, [r3+0x0]
  ldxh r6, [r9+0x0]
  mov64 r1, r10
  add64 r1, -0x2e8
  ldxdw r2, [r10-0xde8]
  ldxdw r3, [r10-0xe40]
  call fn_1e2f8
  ldxdw r1, [r10-0x2e8]
  lddw r9, -0x7fffffffffffffe6
  jeq r1, r9, jmp_18ce0
  ja jmp_18f10

jmp_18ce0:
  mov64 r1, r10
  add64 r1, -0x2e8
  ldxdw r2, [r10-0xde8]
  ldxdw r3, [r10-0xe10]
  mov64 r4, r6
  call fn_1e2f8
  ldxdw r1, [r10-0x2e8]
  jeq r1, r9, jmp_18d28
  ja jmp_18f10

jmp_18d28:
  ldxdw r1, [r10-0xe08]
  ldxdw r6, [r1+0x10]
  ldxdw r1, [r6+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_18d60
  ja jmp_190f0

jmp_18d60:
  add64 r1, 0x1
  stxdw [r6+0x10], r1
  ldxdw r3, [r6+0x20]
  ldxdw r2, [r6+0x18]
  mov64 r1, r10
  add64 r1, -0x2e8
  call fn_0ac0
  ldxw r1, [r10-0x2e8]
  jeq r1, 0x2, jmp_18e58
  ldxb r1, [r10-0x2b8]
  stxdw [r10-0xea8], r1
  ldxdw r1, [r6+0x10]
  add64 r1, -0x1
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0xe20]
  ldxdw r6, [r1+0x10]
  ldxdw r1, [r6+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_18e08
  ja jmp_19108

jmp_18e08:
  add64 r1, 0x1
  stxdw [r6+0x10], r1
  ldxdw r3, [r6+0x20]
  ldxdw r2, [r6+0x18]
  mov64 r1, r10
  add64 r1, -0x2e8
  call fn_0ac0
  ldxw r1, [r10-0x2e8]
  jeq r1, 0x2, jmp_18e58
  ja jmp_18fa0

jmp_18e58:
  ldxdw r1, [r10-0x2d0]
  stxdw [r10-0x42c], r1
  ldxdw r2, [r10-0x2d8]
  stxdw [r10-0x434], r2
  ldxdw r3, [r10-0x2e0]
  stxdw [r10-0x43c], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ja jmp_18ef0

jmp_18eb0:
  mov64 r1, 0x1
  ja jmp_18398

jmp_18ec0:
  mov64 r1, 0xffff
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1

jmp_18ef0:
  ldxdw r1, [r6+0x10]
  add64 r1, -0x1
  stxdw [r6+0x10], r1
  ja jmp_18438

jmp_18f10:
  ldxb r2, [r10-0x2e0]
  ldxdw r3, [r10-0x2d8]
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r3
  ldxdw r3, [r10-0x2df]
  ja jmp_18420

jmp_18f40:
  ldxdw r1, [r10-0xc00]
  ldxdw r2, [r10-0xbf8]
  ldxdw r3, [r10-0xbf0]
  ldxdw r4, [r10-0xe68]
  stxdw [r4+0x4b8], r3
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r1
  mov64 r1, 0x1
  ja jmp_187b0

jmp_18f88:
  lddw r1, data_3378
  call fn_3efe8

jmp_18fa0:
  ldxb r1, [r10-0x2b8]
  stxdw [r10-0xec0], r1
  ldxdw r1, [r6+0x10]
  add64 r1, -0x1
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0xe40]
  ldxdw r1, [r1+0x10]
  stxdw [r10-0xde8], r1
  ldxdw r1, [r1+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_19008
  ja jmp_19120

jmp_19008:
  add64 r1, 0x1
  ldxdw r2, [r10-0xde8]
  stxdw [r2+0x10], r1
  ldxdw r3, [r2+0x20]
  ldxdw r2, [r2+0x18]
  mov64 r1, r10
  add64 r1, -0x2e8
  call fn_1048
  ldxw r9, [r10-0x250]
  jeq r9, 0x2, jmp_19060
  ja jmp_19138

jmp_19060:
  ldxdw r1, [r10-0x2d8]
  stxdw [r10-0x430], r1
  ldxdw r2, [r10-0x2e0]
  stxdw [r10-0x438], r2
  ldxdw r3, [r10-0x2e8]
  stxdw [r10-0x440], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ldxdw r2, [r10-0xde8]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ja jmp_18438

jmp_190d8:
  lddw r1, data_3258
  call fn_3f090

jmp_190f0:
  lddw r1, data_3360
  call fn_3f090

jmp_19108:
  lddw r1, data_3348
  call fn_3f090

jmp_19120:
  lddw r1, data_3330
  call fn_3f090

jmp_19138:
  mov64 r6, r10
  add64 r6, -0x440
  mov64 r2, r10
  add64 r2, -0x2e8
  mov64 r1, r6
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x5e4
  mov64 r2, r10
  add64 r2, -0x24c
  mov64 r3, 0x24
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x680
  mov64 r2, r6
  mov64 r3, 0x98
  call fn_490d0
  stxw [r10-0x5e8], r9
  ldxdw r1, [r10-0xe10]
  ldxdw r1, [r1+0x10]
  stxdw [r10-0xeb8], r1
  ldxdw r1, [r1+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_19210
  ja jmp_192d0

jmp_19210:
  add64 r1, 0x1
  ldxdw r2, [r10-0xeb8]
  stxdw [r2+0x10], r1
  ldxdw r3, [r2+0x20]
  ldxdw r2, [r2+0x18]
  mov64 r1, r10
  add64 r1, -0x2e8
  call fn_1048
  ldxw r9, [r10-0x250]
  jeq r9, 0x2, jmp_19268
  ja jmp_192e8

jmp_19268:
  ldxdw r1, [r10-0x2d8]
  stxdw [r10-0x430], r1
  ldxdw r2, [r10-0x2e0]
  stxdw [r10-0x438], r2
  ldxdw r3, [r10-0x2e8]
  stxdw [r10-0x440], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  mov64 r1, 0x1
  stxdw [r10-0xeb0], r1
  ja jmp_1a9a0

jmp_192d0:
  lddw r1, data_3318
  call fn_3f090

jmp_192e8:
  mov64 r6, r10
  add64 r6, -0x440
  mov64 r2, r10
  add64 r2, -0x2e8
  mov64 r1, r6
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x524
  mov64 r2, r10
  add64 r2, -0x24c
  mov64 r3, 0x24
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x5c0
  mov64 r2, r6
  mov64 r3, 0x98
  call fn_490d0
  stxw [r10-0x528], r9
  ldxdw r1, [r10-0xe00]
  ldxdw r1, [r1+0x10]
  stxdw [r10-0xec8], r1
  ldxdw r1, [r1+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_193c0
  ja jmp_19480

jmp_193c0:
  add64 r1, 0x1
  ldxdw r2, [r10-0xec8]
  stxdw [r2+0x10], r1
  ldxdw r3, [r2+0x20]
  ldxdw r2, [r2+0x18]
  mov64 r1, r10
  add64 r1, -0x2e8
  call fn_1048
  ldxw r9, [r10-0x250]
  jeq r9, 0x2, jmp_19418
  ja jmp_19498

jmp_19418:
  ldxdw r1, [r10-0x2d8]
  stxdw [r10-0x430], r1
  ldxdw r2, [r10-0x2e0]
  stxdw [r10-0x438], r2
  ldxdw r3, [r10-0x2e8]
  stxdw [r10-0x440], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  mov64 r1, 0x1
  stxdw [r10-0xeb0], r1
  ja jmp_1a980

jmp_19480:
  lddw r1, data_3300
  call fn_3f090

jmp_19498:
  mov64 r6, r10
  add64 r6, -0x440
  mov64 r2, r10
  add64 r2, -0x2e8
  mov64 r1, r6
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x464
  mov64 r2, r10
  add64 r2, -0x24c
  mov64 r3, 0x24
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x500
  mov64 r2, r6
  mov64 r3, 0x98
  call fn_490d0
  stxw [r10-0x468], r9
  ldxdw r1, [r10-0xe18]
  ldxdw r1, [r1+0x10]
  stxdw [r10-0xed0], r1
  ldxdw r1, [r1+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_19570
  ja jmp_19620

jmp_19570:
  add64 r1, 0x1
  ldxdw r2, [r10-0xed0]
  stxdw [r2+0x10], r1
  ldxdw r3, [r2+0x20]
  ldxdw r2, [r2+0x18]
  mov64 r1, r10
  add64 r1, -0x2e8
  call fn_1048
  ldxw r9, [r10-0x250]
  jeq r9, 0x2, jmp_195c8
  ja jmp_19638

jmp_195c8:
  ldxdw r1, [r10-0x2d8]
  stxdw [r10-0x370], r1
  ldxdw r2, [r10-0x2e0]
  stxdw [r10-0x378], r2
  ldxdw r3, [r10-0x2e8]
  stxdw [r10-0x380], r3
  ldxdw r4, [r10-0xdd8]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ja jmp_19790

jmp_19620:
  lddw r1, data_32e8
  call fn_3f090

jmp_19638:
  mov64 r6, r10
  add64 r6, -0x380
  mov64 r2, r10
  add64 r2, -0x2e8
  mov64 r1, r6
  mov64 r3, 0x98
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x3a4
  mov64 r2, r10
  add64 r2, -0x24c
  mov64 r3, 0x24
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x440
  mov64 r2, r6
  mov64 r3, 0x98
  call fn_490d0
  stxw [r10-0x3a8], r9
  ldxdw r1, [r10-0xdf8]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r10-0x4d0]
  jeq r3, r2, jmp_19708

jmp_196f8:
  mov64 r3, 0x1
  ja jmp_19758

jmp_19708:
  ldxdw r2, [r1+0x8]
  ldxdw r3, [r10-0x4c8]
  jne r3, r2, jmp_196f8
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r10-0x4c0]
  jne r3, r2, jmp_196f8
  mov64 r3, 0x0
  ldxdw r2, [r1+0x18]
  ldxdw r4, [r10-0x4b8]
  jne r4, r2, jmp_196f8

jmp_19758:
  mov64 r2, 0x4
  jeq r3, 0x0, jmp_197a8

jmp_19768:
  ldxdw r1, [r10-0xdd8]
  stxw [r1+0x8], r2
  lddw r2, -0x8000000000000000
  stxdw [r1+0x0], r2

jmp_19790:
  mov64 r1, 0x1
  stxdw [r10-0xeb0], r1
  ja jmp_1a960

jmp_197a8:
  ldxdw r2, [r10-0x670]
  ldxdw r3, [r10-0x4f0]
  jeq r3, r2, jmp_197d0

jmp_197c0:
  mov64 r3, 0x1
  ja jmp_19820

jmp_197d0:
  ldxdw r2, [r10-0x668]
  ldxdw r3, [r10-0x4e8]
  jne r3, r2, jmp_197c0
  ldxdw r2, [r10-0x660]
  ldxdw r3, [r10-0x4e0]
  jne r3, r2, jmp_197c0
  mov64 r3, 0x0
  ldxdw r2, [r10-0x658]
  ldxdw r4, [r10-0x4d8]
  jne r4, r2, jmp_197c0

jmp_19820:
  mov64 r2, 0x5
  jne r3, 0x0, jmp_19768
  ldxdw r3, [r10-0x5b0]
  ldxdw r4, [r10-0x430]
  jeq r4, r3, jmp_19858

jmp_19848:
  mov64 r3, 0x1
  ja jmp_198a8

jmp_19858:
  ldxdw r3, [r10-0x5a8]
  ldxdw r4, [r10-0x428]
  jne r4, r3, jmp_19848
  ldxdw r3, [r10-0x5a0]
  ldxdw r4, [r10-0x420]
  jne r4, r3, jmp_19848
  mov64 r3, 0x0
  ldxdw r4, [r10-0x598]
  ldxdw r5, [r10-0x418]
  jne r5, r4, jmp_19848

jmp_198a8:
  jne r3, 0x0, jmp_19768
  ldxdw r3, [r10-0xe08]
  ldxdw r3, [r3+0x0]
  ldxdw r4, [r3+0x0]
  ldxdw r5, [r10-0x4f0]
  jeq r5, r4, jmp_198e8

jmp_198d8:
  mov64 r4, 0x1
  ja jmp_19938

jmp_198e8:
  ldxdw r4, [r3+0x8]
  ldxdw r5, [r10-0x4e8]
  jne r5, r4, jmp_198d8
  ldxdw r4, [r3+0x10]
  ldxdw r5, [r10-0x4e0]
  jne r5, r4, jmp_198d8
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  ldxdw r5, [r10-0x4d8]
  jne r5, r3, jmp_198d8

jmp_19938:
  jne r4, 0x0, jmp_19768
  ldxdw r3, [r10-0xe20]
  ldxdw r3, [r3+0x0]
  ldxdw r4, [r3+0x0]
  ldxdw r5, [r10-0x430]
  jeq r5, r4, jmp_19978

jmp_19968:
  mov64 r4, 0x1
  ja jmp_199c8

jmp_19978:
  ldxdw r4, [r3+0x8]
  ldxdw r5, [r10-0x428]
  jne r5, r4, jmp_19968
  ldxdw r4, [r3+0x10]
  ldxdw r5, [r10-0x420]
  jne r5, r4, jmp_19968
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  ldxdw r5, [r10-0x418]
  jne r5, r3, jmp_19968

jmp_199c8:
  jne r4, 0x0, jmp_19768
  mov64 r2, 0xffff
  ldxdw r3, [r10-0x4b0]
  ldxdw r4, [r10-0xdf0]
  jgt r4, r3, jmp_19768
  ldxw r2, [r1+0x0]
  ldxw r3, [r1+0xe]
  ldxw r1, [r1+0x1c]
  stxw [r10-0x378], r1
  stxw [r10-0x37c], r3
  stxw [r10-0x380], r2
  ldxdw r1, [r10-0x208]
  ldxdw r2, [r10-0x200]
  mov64 r3, r10
  add64 r3, -0x380
  call fn_1edd8
  stxdw [r10-0xeb0], r0
  jne r0, 0x0, jmp_1a930
  ldxdw r2, [r10-0x218]
  mov64 r3, r10
  add64 r3, -0x380
  ldxdw r1, [r10-0xe58]
  call fn_1edd8
  mov64 r2, 0x0
  jne r0, 0x0, jmp_19a98
  ja jmp_19aa8

jmp_19a98:
  ldxdw r1, [r10-0xe68]
  ldxw r2, [r1+0x10]

jmp_19aa8:
  mov64 r1, r10
  add64 r1, -0x228
  ldxdw r3, [r10-0xde0]
  ldxdw r3, [r3+0x250]
  ldxdw r4, [r3+0x10]
  lddw r5, 0x7ffffffffffffffe
  jgt r4, r5, jmp_19c48
  add64 r1, r7
  ldxb r5, [r1+0x215]
  mov64 r1, r4
  add64 r1, 0x1
  stxdw [r3+0x10], r1
  ldxdw r1, [r3+0x20]
  jne r1, 0x800, jmp_19c60
  ldxdw r0, [r3+0x18]
  mov64 r1, r0
  and64 r1, 0x7
  jeq r1, 0x0, jmp_19b48
  ja jmp_19c60

jmp_19b48:
  mov64 r1, 0x4
  ldxdw r7, [r0+0x0]
  ldxdw r6, [r10-0xe38]
  and64 r6, -0x4
  jgt r7, r6, jmp_19b98
  sub64 r6, r7
  jgt r6, 0x3ff, jmp_19b98
  rsh64 r6, 0x2
  add64 r0, r6
  ldxb r1, [r0+0x8]

jmp_19b98:
  stxdw [r3+0x10], r4
  mov64 r3, r5
  and64 r1, 0xff
  jgt r1, r3, jmp_19bc0
  mov64 r1, r3

jmp_19bc0:
  mov64 r3, 0x5
  jgt r3, r1, jmp_19bd8
  ja jmp_19cb0

jmp_19bd8:
  mul64 r1, 0xc
  ldxdw r3, [r10-0xe68]
  add64 r3, r1
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  ldxw r7, [r3+0x470]
  jgt r7, r2, jmp_19c18
  mov64 r7, r2

jmp_19c18:
  ldxw r5, [r3+0x474]
  mov64 r2, 0xf4240
  jgt r2, r5, jmp_19c38
  ja jmp_19cd0

jmp_19c38:
  mov64 r1, 0x1d
  ja jmp_1a938

jmp_19c48:
  lddw r1, data_32d0
  call fn_3f090

jmp_19c60:
  mov64 r1, 0xffff
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ldxdw r1, [r3+0x10]
  add64 r1, -0x1
  stxdw [r3+0x10], r1
  ja jmp_1a960

jmp_19cb0:
  mov64 r2, 0x5
  lddw r3, data_3270
  call fn_3ffc8

jmp_19cd0:
  ldxb r1, [r3+0x478]
  jeq r5, 0xf4240, jmp_1a408
  ldxdw r4, [r10-0xc00]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_19d40
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xc00], r2
  ja jmp_19d50

jmp_19d40:
  mov64 r2, 0x0
  stxb [r10-0xbf8], r2

jmp_19d50:
  ldxdw r4, [r10-0xbe8]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_19db8
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xbe8], r2
  ja jmp_19dc8

jmp_19db8:
  mov64 r2, 0x0
  stxb [r10-0xbe0], r2

jmp_19dc8:
  ldxdw r4, [r10-0xbd0]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_19e30
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xbd0], r2
  ja jmp_19e40

jmp_19e30:
  mov64 r2, 0x0
  stxb [r10-0xbc8], r2

jmp_19e40:
  ldxdw r4, [r10-0xbb8]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_19ea8
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xbb8], r2
  ja jmp_19eb8

jmp_19ea8:
  mov64 r2, 0x0
  stxb [r10-0xbb0], r2

jmp_19eb8:
  ldxdw r4, [r10-0xba0]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_19f20
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xba0], r2
  ja jmp_19f30

jmp_19f20:
  mov64 r2, 0x0
  stxb [r10-0xb98], r2

jmp_19f30:
  ldxdw r4, [r10-0xb88]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_19f98
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xb88], r2
  ja jmp_19fa8

jmp_19f98:
  mov64 r2, 0x0
  stxb [r10-0xb80], r2

jmp_19fa8:
  ldxdw r4, [r10-0xb70]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_1a010
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xb70], r2
  ja jmp_1a020

jmp_1a010:
  mov64 r2, 0x0
  stxb [r10-0xb68], r2

jmp_1a020:
  ldxdw r4, [r10-0xb58]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_1a088
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xb58], r2
  ja jmp_1a098

jmp_1a088:
  mov64 r2, 0x0
  stxb [r10-0xb50], r2

jmp_1a098:
  ldxdw r4, [r10-0xb40]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_1a100
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xb40], r2
  ja jmp_1a110

jmp_1a100:
  mov64 r2, 0x0
  stxb [r10-0xb38], r2

jmp_1a110:
  ldxdw r4, [r10-0xb28]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_1a178
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xb28], r2
  ja jmp_1a188

jmp_1a178:
  mov64 r2, 0x0
  stxb [r10-0xb20], r2

jmp_1a188:
  ldxdw r4, [r10-0xb10]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_1a1f0
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xb10], r2
  ja jmp_1a200

jmp_1a1f0:
  mov64 r2, 0x0
  stxb [r10-0xb08], r2

jmp_1a200:
  ldxdw r4, [r10-0xaf8]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_1a268
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xaf8], r2
  ja jmp_1a278

jmp_1a268:
  mov64 r2, 0x0
  stxb [r10-0xaf0], r2

jmp_1a278:
  ldxdw r4, [r10-0xae0]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_1a2e0
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xae0], r2
  ja jmp_1a2f0

jmp_1a2e0:
  mov64 r2, 0x0
  stxb [r10-0xad8], r2

jmp_1a2f0:
  ldxdw r4, [r10-0xac8]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_1a358
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xac8], r2
  ja jmp_1a368

jmp_1a358:
  mov64 r2, 0x0
  stxb [r10-0xac0], r2

jmp_1a368:
  ldxdw r4, [r10-0xab0]
  jgt r4, 0xf4240, jmp_1a3d0
  mov64 r2, 0xf4240
  mov64 r3, 0xf4240
  sub64 r3, r4
  mul64 r3, r5
  lddw r4, 0xe8d4a50fff
  jgt r3, r4, jmp_1a3f8
  div64 r3, 0xf4240
  sub64 r2, r3
  stxdw [r10-0xab0], r2
  ja jmp_1a408

jmp_1a3d0:
  lddw r2, -0x7fffffffffffffe9
  ldxdw r1, [r10-0xdd8]
  stxdw [r1+0x0], r2
  ja jmp_1a960

jmp_1a3f8:
  mov64 r2, 0x0
  stxb [r10-0xaa8], r2

jmp_1a408:
  mov64 r2, 0x10
  jgt r2, r1, jmp_1a438
  mov64 r2, 0xf
  lddw r3, data_3288
  call fn_45190

jmp_1a438:
  mov64 r2, r1
  mul64 r1, 0x18
  mov64 r3, r10
  add64 r3, -0xc08
  add64 r3, r1
  mov64 r4, -0x1
  xor64 r2, 0xf
  stxdw [r10-0xe58], r2
  mov64 r1, r2
  mul64 r1, 0x18
  stxdw [r10-0xed8], r3
  mov64 r2, r3

jmp_1a498:
  mov64 r3, r4
  jeq r1, 0x0, jmp_1a520
  ldxb r4, [r2+0x10]
  jeq r4, 0x0, jmp_1a520
  mov64 r5, 0x7
  ldxdw r4, [r2+0x8]
  jgt r4, 0xf423f, jmp_1a4f0
  add64 r2, 0x18
  mov64 r5, 0x8
  add64 r1, -0x18
  jgt r3, r4, jmp_1a498

jmp_1a4f0:
  ldxdw r1, [r10-0xdd8]
  stxw [r1+0x8], r5
  lddw r2, -0x8000000000000000
  stxdw [r1+0x0], r2
  ja jmp_1a960

jmp_1a520:
  ldxdw r2, [r10-0xe68]
  ldxdw r3, [r2+0x78]
  add64 r2, 0x58
  mov64 r1, r10
  add64 r1, -0xcb8
  ldxdw r4, [r10-0xe38]
  call fn_1f958
  ldxw r1, [r10-0xcb8]
  jeq r1, 0x0, jmp_1ad78
  ldxw r9, [r10-0xcb4]
  mov64 r0, 0x0
  ldxdw r1, [r10-0xe68]
  ldxw r6, [r1+0x6c]
  ldxdw r1, [r10-0xe78]
  jeq r1, 0x0, jmp_1a610
  ldxdw r2, [r10-0xe68]
  mov64 r1, r2
  add64 r1, 0x4ac
  mov64 r3, 0x0
  ldxdw r2, [r2+0x4c0]
  jeq r2, 0x0, jmp_1a5f8
  ldxdw r3, [r10-0xe68]
  ldxdw r3, [r3+0x70]
  lddw r4, -0x3894f8df66c6b831
  add64 r3, r4
  xor64 r3, r2

jmp_1a5f8:
  mov64 r2, r6
  ldxdw r4, [r10-0xe70]
  call fn_1fac8

jmp_1a610:
  lsh64 r0, 0x20
  rsh64 r0, 0x20
  mov64 r1, r9
  add64 r1, r0
  lddw r2, 0xffffffff
  jgt r2, r1, jmp_1a658
  lddw r1, 0xffffffff

jmp_1a658:
  mov64 r2, r6
  jgt r2, r1, jmp_1a670
  mov64 r1, r2

jmp_1a670:
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  add64 r7, r1
  mov64 r1, r7
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  jne r1, r7, jmp_1ad78
  ldxdw r1, [r10-0xe68]
  ldxb r1, [r1+0x466]
  jeq r1, 0x1, jmp_1a6c8
  ja jmp_1a850

jmp_1a6c8:
  mov64 r1, r10
  add64 r1, -0xcd8
  ldxdw r2, [r10-0xea0]
  mov64 r3, 0x0
  mov64 r4, r8
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0xcc8
  mov64 r2, r8
  mov64 r3, 0x0
  ldxdw r4, [r10-0xe98]
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r2, 0x1
  ldxdw r3, [r10-0xcd0]
  mov64 r1, 0x1
  jne r3, 0x0, jmp_1a760
  mov64 r1, 0x0

jmp_1a760:
  ldxdw r4, [r10-0xcc0]
  ldxdw r5, [r10-0xcd8]
  mov64 r3, r4
  add64 r3, r5
  jgt r4, r3, jmp_1a790
  mov64 r2, 0x0

jmp_1a790:
  or64 r1, r2
  and64 r1, 0x1
  jne r1, 0x0, jmp_1ad78
  lddw r1, 0x38d7ea4c67fff
  jgt r3, r1, jmp_1a8e0
  ldxdw r2, [r10-0xcc8]
  mov64 r1, r10
  add64 r1, -0xce8
  mov64 r6, 0x0
  lddw r4, 0x38d7ea4c68000
  mov64 r5, 0x0
  call fn_49780
  ldxdw r2, [r10-0xce8]
  ldxdw r8, [r10-0xe28]
  mov64 r1, r8
  sub64 r1, r2
  mov64 r2, 0x1
  jgt r1, r8, jmp_1a838
  mov64 r2, 0x0

jmp_1a838:
  jne r2, 0x0, jmp_1a848
  mov64 r6, r1

jmp_1a848:
  stxdw [r10-0xe28], r6

jmp_1a850:
  ldxdw r1, [r10-0xe58]
  stxdw [r10-0xff0], r1
  mov64 r1, 0x1
  stxdw [r10-0xfe8], r1
  ldxdw r1, [r10-0xed8]
  stxdw [r10-0xff8], r1
  ldxdw r1, [r10-0xe90]
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0xcf8
  mov64 r5, r10
  ldxdw r2, [r10-0xe28]
  ldxdw r3, [r10-0xdf0]
  ldxdw r4, [r10-0xe80]
  call fn_1ef70
  ldxdw r1, [r10-0xcf8]
  jne r1, 0x0, jmp_1aa18
  ja jmp_1ad78

jmp_1a8e0:
  mov64 r3, r10
  add64 r3, -0x1
  lddw r1, str_0240
  mov64 r2, 0x2b
  lddw r4, data_3120
  lddw r5, data_32a0
  call fn_40400

jmp_1a930:
  mov64 r1, 0xffff

jmp_1a938:
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1

jmp_1a948:
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1

jmp_1a960:
  ldxdw r2, [r10-0xed0]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1

jmp_1a980:
  ldxdw r2, [r10-0xec8]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1

jmp_1a9a0:
  ldxdw r2, [r10-0xeb8]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r2, [r10-0xde8]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r2, [r10-0xe60]
  ldxdw r1, [r2+0x10]
  add64 r1, 0x1
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0xeb0]
  jne r1, 0x0, jmp_1aa10

jmp_1aa10:
  ja jmp_cb60

jmp_1aa18:
  ldxdw r6, [r10-0xcf0]
  mov64 r1, r7
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  jne r1, 0x0, jmp_1ad68

jmp_1aa40:
  ldxdw r1, [r10-0x570]
  jgt r6, r1, jmp_1a930
  ldxdw r1, [r10-0xe50]
  jgt r1, r6, jmp_1a930
  jeq r6, 0x0, jmp_1a930
  ldxdw r2, [r10-0xde8]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r2, [r10-0xeb8]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r2, [r10-0xec8]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r2, [r10-0xed0]
  ldxdw r1, [r2+0x10]
  add64 r1, -0x1
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0xe88]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r10-0xdf0]
  stxdw [r10-0xff0], r2
  ldxdw r2, [r10-0xea8]
  stxdw [r10-0xfe8], r2
  stxdw [r10-0xff8], r1
  ldxdw r1, [r10-0xe40]
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0x2e8
  mov64 r5, r10
  ldxdw r2, [r10-0xe08]
  ldxdw r3, [r10-0xe00]
  ldxdw r4, [r10-0xdf8]
  call fn_21810
  lddw r7, -0x7fffffffffffffe6
  ldxdw r1, [r10-0x2e8]
  jne r1, r7, jmp_1ad98
  ldxdw r1, [r10-0xe30]
  ldxdw r1, [r1+0x0]
  stxdw [r10-0xfe0], r6
  ldxdw r2, [r10-0xec0]
  stxdw [r10-0xfd8], r2
  stxdw [r10-0xfe8], r1
  ldxdw r1, [r10-0xe18]
  stxdw [r10-0xff0], r1
  ldxdw r1, [r10-0xe10]
  stxdw [r10-0xff8], r1
  mov64 r1, 0x2
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0x2e8
  mov64 r4, r10
  add64 r4, -0x6f0
  mov64 r5, r10
  ldxdw r2, [r10-0xe20]
  ldxdw r3, [r10-0xde0]
  call fn_20f88
  ldxdw r1, [r10-0x2e8]
  jeq r1, r7, jmp_1ac40
  ja jmp_1ad98

jmp_1ac40:
  ldxdw r1, [r10-0xe68]
  ldxw r2, [r1+0x460]
  mov64 r1, r10
  add64 r1, -0xd28
  mov64 r3, 0x0
  ldxdw r4, [r10-0xdf0]
  mov64 r5, 0x0
  call fn_4b0a0
  ldxdw r3, [r10-0xd20]
  jgt r3, 0xf423f, jmp_1add8
  ldxdw r2, [r10-0xd28]
  mov64 r1, r10
  add64 r1, -0xd38
  mov64 r4, 0xf4240
  mov64 r5, 0x0
  call fn_49780
  ldxdw r1, [r10-0xe48]
  mov64 r2, r1
  mov64 r1, 0x1
  jne r2, 0x0, jmp_1ace8
  mov64 r1, 0x0

jmp_1ace8:
  lsh64 r1, 0x3
  ldxdw r3, [r10-0xe68]
  add64 r3, r1
  ldxdw r1, [r3+0x0]
  ldxdw r2, [r10-0xd38]
  add64 r1, r2
  stxdw [r3+0x0], r1
  lddw r2, -0x7fffffffffffffe6
  ldxdw r1, [r10-0xdd8]
  stxdw [r1+0x0], r2
  ldxdw r2, [r10-0xe60]

jmp_1ad48:
  ldxdw r1, [r2+0x10]
  add64 r1, 0x1
  stxdw [r2+0x10], r1
  ja jmp_cb60

jmp_1ad68:
  mov64 r2, 0xf4241
  jgt r2, r1, jmp_1ae28

jmp_1ad78:
  mov64 r1, 0xffff
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x8], r1
  ja jmp_1a948

jmp_1ad98:
  ldxdw r1, [r10-0x2d8]
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x2e0]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x2e8]
  stxdw [r2+0x0], r1
  ja jmp_18438

jmp_1add8:
  mov64 r3, r10
  add64 r3, -0x1
  lddw r1, str_0240
  mov64 r2, 0x2b
  lddw r4, data_3120
  lddw r5, data_32b8
  call fn_40400

jmp_1ae28:
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  mov64 r3, 0x1
  jgt r7, 0xf4240, jmp_1ae50
  mov64 r3, 0x0

jmp_1ae50:
  neg64 r3
  mov64 r2, 0xf4240
  sub64 r2, r7
  mov64 r1, r10
  add64 r1, -0xd08
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0xd18
  ldxdw r2, [r10-0xd08]
  ldxdw r3, [r10-0xd00]
  mov64 r4, 0xf4240
  mov64 r5, 0x0
  call fn_49780
  ldxdw r6, [r10-0xd18]
  ja jmp_1aa40

jmp_1aed8:
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  ldxb r2, [r3+0x58]
  jeq r2, 0x0, jmp_cb18
  ldxdw r2, [r3+0x0]
  ldxdw r4, [r2+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_1af40

jmp_1af30:
  mov64 r4, 0x1
  ja jmp_1afa8

jmp_1af40:
  ldxdw r4, [r2+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_1af30
  ldxdw r4, [r2+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_1af30
  mov64 r4, 0x0
  ldxdw r2, [r2+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r2, r5, jmp_1af30

jmp_1afa8:
  jne r4, 0x0, jmp_f2c8
  stxdw [r10-0xdd8], r1
  stxdw [r10-0xde0], r3
  ldxdw r8, [r3+0x10]
  ldxdw r1, [r8+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_1aff0
  ja jmp_1b378

jmp_1aff0:
  ldxb r2, [r0+0x1]
  stxdw [r10-0xde8], r2
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r7, [r10-0xc00]
  ldxdw r9, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_1c1c0
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  stxdw [r10-0x220], r7
  stxdw [r10-0x228], r9
  ldxdw r7, [r8+0x10]
  add64 r7, -0x1
  stxdw [r8+0x10], r7
  ldxdw r2, [r6+0x0]
  ldxdw r1, [r2+0x0]
  ldxdw r3, [r10-0x1f8]
  jeq r1, r3, jmp_1b108

jmp_1b0f8:
  mov64 r1, 0x1
  ja jmp_1b158

jmp_1b108:
  ldxdw r1, [r2+0x8]
  ldxdw r3, [r10-0x1f0]
  jne r1, r3, jmp_1b0f8
  ldxdw r1, [r2+0x10]
  ldxdw r3, [r10-0x1e8]
  jne r1, r3, jmp_1b0f8
  mov64 r1, 0x0
  ldxdw r3, [r2+0x18]
  ldxdw r4, [r10-0x1e0]
  jne r3, r4, jmp_1b0f8

jmp_1b158:
  lddw r4, -0x7fffffffffffffe6
  jeq r1, 0x0, jmp_1b180
  lddw r4, -0x8000000000000000

jmp_1b180:
  ldxdw r5, [r2+0x0]
  ldxdw r0, [r10-0x1d8]
  ldxdw r3, [r10-0xdd8]
  jeq r5, r0, jmp_1b1b0

jmp_1b1a0:
  mov64 r5, 0x1
  ja jmp_1b200

jmp_1b1b0:
  ldxdw r5, [r2+0x8]
  ldxdw r0, [r10-0x1d0]
  jne r5, r0, jmp_1b1a0
  ldxdw r5, [r2+0x10]
  ldxdw r0, [r10-0x1c8]
  jne r5, r0, jmp_1b1a0
  mov64 r5, 0x0
  ldxdw r2, [r2+0x18]
  ldxdw r0, [r10-0x1c0]
  jne r2, r0, jmp_1b1a0

jmp_1b200:
  lddw r2, -0x7fffffffffffffe6
  jeq r5, 0x0, jmp_1b228
  lddw r2, -0x8000000000000000

jmp_1b228:
  mov64 r0, 0x3
  stxw [r10-0xbe8], r0
  stxw [r10-0xc00], r0
  stxdw [r10-0xc08], r4
  stxdw [r10-0xbf0], r2
  jeq r1, 0x0, jmp_1b2a8
  jeq r5, 0x0, jmp_1b2a8

jmp_1b260:
  mov64 r1, 0x13
  stxw [r3+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r3+0x0], r1
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_2230
  ja jmp_cb60

jmp_1b2a8:
  mov64 r1, r10
  add64 r1, -0xc08
  call fn_2230
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x29]
  jeq r1, 0x0, jmp_10630
  ldxdw r1, [r10-0xde8]
  stxb [r10-0x14], r1
  jeq r7, 0x0, jmp_1b2f8
  ja jmp_1b390

jmp_1b2f8:
  mov64 r1, -0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_12090

jmp_1b358:
  ldxdw r1, [r10-0xdd8]
  mov64 r2, r0
  call fn_30d48
  ja jmp_101e0

jmp_1b378:
  lddw r1, data_33c0
  call fn_3f090

jmp_1b390:
  lddw r1, data_33a8
  call fn_3efe8

jmp_1b3a8:
  ldxdw r3, [r8+0x0]
  ldxdw r4, [r3+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_1b3e0

jmp_1b3d0:
  mov64 r4, 0x1
  ja jmp_1b448

jmp_1b3e0:
  ldxdw r4, [r3+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_1b3d0
  ldxdw r4, [r3+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_1b3d0
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r3, r5, jmp_1b3d0

jmp_1b448:
  jne r4, 0x0, jmp_f2c8
  ldxdw r7, [r2+0x40]
  ldxdw r1, [r7+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_1b480
  ja jmp_1b908

jmp_1b480:
  add64 r1, 0x1
  stxdw [r7+0x10], r1
  ldxdw r1, [r7+0x18]
  ldxdw r2, [r7+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  lddw r1, -0x8000000000000000
  ldxdw r2, [r10-0xc08]
  jeq r2, r1, jmp_bc68
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  lddw r1, -0x3c1cb4130349c29
  ldxdw r2, [r10-0x1d8]
  jeq r2, r1, jmp_1b5b8

jmp_1b560:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_1b578
  ja jmp_12390

jmp_1b578:
  ldxdw r1, [r6+0x0]
  ldxdw r2, [r1+0x0]
  ldxdw r3, [r10-0x1d8]
  jeq r2, r3, jmp_1b630

jmp_1b598:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_1b690

jmp_1b5a8:
  mov64 r1, 0x3
  ja jmp_12398

jmp_1b5b8:
  lddw r1, -0xb6a3785afba3445
  ldxdw r2, [r10-0x1d0]
  jne r2, r1, jmp_1b560
  lddw r1, -0x182dbcdd20a11484
  ldxdw r2, [r10-0x1c8]
  jne r2, r1, jmp_1b560
  mov64 r1, 0x0
  lddw r2, -0x309924488b6719d5
  ldxdw r3, [r10-0x1c0]
  jne r3, r2, jmp_1b560
  jeq r1, 0x0, jmp_1b578
  ja jmp_12390

jmp_1b630:
  ldxdw r2, [r1+0x8]
  ldxdw r3, [r10-0x1d0]
  jne r2, r3, jmp_1b598
  ldxdw r2, [r1+0x10]
  ldxdw r3, [r10-0x1c8]
  jne r2, r3, jmp_1b598
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  ldxdw r3, [r10-0x1c0]
  jne r1, r3, jmp_1b598
  jeq r2, 0x0, jmp_1b690
  ja jmp_1b5a8

jmp_1b690:
  ldxb r1, [r10-0x16]
  jeq r1, 0x0, jmp_1b6a8
  ja jmp_12278

jmp_1b6a8:
  ldxdw r1, [r9+0x0]
  ldxdw r2, [r1+0x0]
  lddw r3, 0x6a34d2558a800097
  jeq r2, r3, jmp_1b848

jmp_1b6d0:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_1b6e8
  ja jmp_1c680

jmp_1b6e8:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0xb9]
  jeq r1, 0x0, jmp_1c808
  ldxdw r1, [r10-0xdf0]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  jeq r2, 0x0, jmp_1b8c0

jmp_1b720:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_1b738
  ja jmp_1b5a8

jmp_1b738:
  mov64 r1, 0x1
  stxdw [r10-0xbf0], r1
  mov64 r1, r10
  add64 r1, -0x440
  stxdw [r10-0xbf8], r1
  mov64 r1, 0x5
  stxdw [r10-0xc00], r1
  lddw r1, str_05a2
  stxdw [r10-0xc08], r1
  mov64 r1, 0xfe
  stxb [r10-0x440], r1
  mov64 r1, 0x2
  stxdw [r10-0xff8], r1
  mov64 r1, 0x800
  stxdw [r10-0xff0], r1
  mov64 r1, r10
  add64 r1, -0xc08
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0x2e8
  mov64 r5, r10
  ldxdw r2, [r10-0xde0]
  mov64 r3, r9
  ldxdw r4, [r10-0xde8]
  call fn_1cf68
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0x2e8]
  jeq r2, r1, jmp_1b830
  ja jmp_cec8

jmp_1b830:
  ldxdw r2, [r10-0xdd8]
  stxdw [r2+0x0], r1
  ja jmp_cb60

jmp_1b848:
  ldxdw r2, [r1+0x8]
  lddw r3, -0x27bb7242248810a4
  jne r2, r3, jmp_1b6d0
  ldxdw r2, [r1+0x10]
  lddw r3, -0x4e99f83a7f19f3b3
  jne r2, r3, jmp_1b6d0
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  lddw r3, 0x4a51182b7d233fc5
  jne r1, r3, jmp_1b6d0
  jeq r2, 0x0, jmp_1b6e8
  ja jmp_1c680

jmp_1b8c0:
  ldxdw r2, [r1+0x8]
  jne r2, 0x0, jmp_1b720
  ldxdw r2, [r1+0x10]
  jne r2, 0x0, jmp_1b720
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  jne r1, 0x0, jmp_1b720
  jeq r2, 0x0, jmp_1b738
  ja jmp_1b5a8

jmp_1b908:
  lddw r1, data_33d8
  call fn_3f090

jmp_1b920:
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  ldxdw r1, [r7+0x10]
  add64 r1, -0x1
  stxdw [r7+0x10], r1
  lddw r1, -0x3c1cb4130349c29
  ldxdw r2, [r10-0x1d8]
  jeq r2, r1, jmp_1b998

jmp_1b988:
  mov64 r2, 0x1
  ja jmp_1ba00

jmp_1b998:
  lddw r1, -0xb6a3785afba3445
  ldxdw r2, [r10-0x1d0]
  jne r2, r1, jmp_1b988
  lddw r1, -0x182dbcdd20a11484
  ldxdw r2, [r10-0x1c8]
  jne r2, r1, jmp_1b988
  mov64 r2, 0x0
  lddw r1, -0x309924488b6719d5
  ldxdw r3, [r10-0x1c0]
  jne r3, r1, jmp_1b988

jmp_1ba00:
  ldxdw r1, [r10-0xdd8]
  jeq r2, 0x0, jmp_1ba18
  ja jmp_1bac8

jmp_1ba18:
  ldxdw r2, [r6+0x0]
  ldxdw r3, [r2+0x0]
  ldxdw r4, [r10-0x1d8]
  jeq r3, r4, jmp_1bad8

jmp_1ba38:
  mov64 r3, 0x1
  jeq r3, 0x0, jmp_1bb38

jmp_1ba48:
  ja jmp_1c5c0

jmp_1ba50:
  lddw r1, -0xb6a3785afba3445
  ldxdw r2, [r10-0x1d0]
  jne r2, r1, jmp_ba58
  lddw r1, -0x182dbcdd20a11484
  ldxdw r2, [r10-0x1c8]
  jne r2, r1, jmp_ba58
  mov64 r2, 0x0
  lddw r1, -0x309924488b6719d5
  ldxdw r3, [r10-0x1c0]
  jne r3, r1, jmp_ba58

jmp_1bab8:
  ldxdw r1, [r10-0xdd8]
  jeq r2, 0x0, jmp_1c590

jmp_1bac8:
  mov64 r2, 0x1c
  ja jmp_cb40

jmp_1bad8:
  ldxdw r3, [r2+0x8]
  ldxdw r4, [r10-0x1d0]
  jne r3, r4, jmp_1ba38
  ldxdw r3, [r2+0x10]
  ldxdw r4, [r10-0x1c8]
  jne r3, r4, jmp_1ba38
  mov64 r3, 0x0
  ldxdw r2, [r2+0x18]
  ldxdw r4, [r10-0x1c0]
  jne r2, r4, jmp_1ba38
  jeq r3, 0x0, jmp_1bb38
  ja jmp_1ba48

jmp_1bb38:
  ldxb r2, [r10-0x16]
  jeq r2, 0x0, jmp_1bb58

jmp_1bb48:
  mov64 r2, 0xf
  ja jmp_cb40

jmp_1bb58:
  ldxdw r1, [r8+0x0]
  ldxdw r2, [r1+0x0]
  lddw r3, 0x6a34d2558a800097
  jeq r2, r3, jmp_1bbc0

jmp_1bb80:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_1bc38

jmp_1bb90:
  mov64 r1, 0x0
  ldxdw r2, [r10-0xdd8]
  stxb [r2+0xb], r1
  stxh [r2+0x9], r1
  mov64 r1, 0x20
  ja jmp_d898

jmp_1bbc0:
  ldxdw r2, [r1+0x8]
  lddw r3, -0x27bb7242248810a4
  jne r2, r3, jmp_1bb80
  ldxdw r2, [r1+0x10]
  lddw r3, -0x4e99f83a7f19f3b3
  jne r2, r3, jmp_1bb80
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  lddw r3, 0x4a51182b7d233fc5
  jne r1, r3, jmp_1bb80
  jeq r2, 0x0, jmp_1bc38
  ja jmp_1bb90

jmp_1bc38:
  ldxdw r1, [r10-0xde8]
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x78]
  ldxdw r3, [r1+0x0]
  jeq r3, r2, jmp_1bc80

jmp_1bc68:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_1bcf8

jmp_1bc78:
  ja jmp_c298

jmp_1bc80:
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x8]
  ldxdw r3, [r1+0x8]
  jne r3, r2, jmp_1bc68
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x10]
  ldxdw r3, [r1+0x10]
  jne r3, r2, jmp_1bc68
  mov64 r2, 0x0
  ldxdw r3, [r10-0xde8]
  ldxdw r3, [r3+0x18]
  ldxdw r1, [r1+0x18]
  jne r1, r3, jmp_1bc68
  jeq r2, 0x0, jmp_1bcf8
  ja jmp_1bc78

jmp_1bcf8:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x89]
  jeq r1, 0x0, jmp_10630
  mov64 r1, r8
  call fn_301f0
  jne r0, 0x0, jmp_1bd80
  ldxdw r1, [r10-0xe00]
  and64 r1, 0x3
  jeq r1, 0x0, jmp_1bd48
  ja jmp_1bd60

jmp_1bd48:
  ldxdw r1, [r10-0xdf8]
  jgt r1, 0x100, jmp_1bd60
  ja jmp_1bda0

jmp_1bd60:
  lddw r2, -0x7ffffffffffffffe
  ldxdw r1, [r10-0xdd8]
  ja jmp_cb58

jmp_1bd80:
  mov64 r1, 0x21
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_1bda0:
  mov64 r1, 0x0
  ja jmp_1bdd8

jmp_1bdb0:
  mov64 r2, r9
  add64 r2, r1
  add64 r1, 0x1
  ldxb r2, [r2+0x0]
  jgt r2, 0x4, jmp_1c558

jmp_1bdd8:
  ldxdw r2, [r10-0xdf8]
  jne r2, r1, jmp_1bdb0
  ldxdw r1, [r10-0xde0]
  ldxdw r6, [r1+0x70]
  ldxdw r1, [r6+0x10]
  jeq r1, 0x0, jmp_1be10
  ja jmp_1bfc0

jmp_1be10:
  mov64 r1, -0x1
  stxdw [r6+0x10], r1
  ldxdw r1, [r6+0x20]
  jne r1, 0x800, jmp_1bf08
  ldxdw r8, [r6+0x18]
  mov64 r1, r8
  and64 r1, 0x7
  jeq r1, 0x0, jmp_1be58
  ja jmp_1bf08

jmp_1be58:
  ldxdw r1, [r10-0xe00]
  stxdw [r8+0x0], r1
  mov64 r1, 0x100
  stxdw [r10-0x1000], r1
  lddw r1, data_33f0
  stxdw [r10-0xff8], r1
  add64 r8, 0x8
  mov64 r1, r10
  add64 r1, -0xca0
  mov64 r5, r10
  mov64 r2, 0x0
  ldxdw r7, [r10-0xdf8]
  mov64 r3, r7
  mov64 r4, r8
  call fn_0000
  ldxdw r1, [r10-0xc98]
  jeq r1, r7, jmp_1bf50
  ldxdw r2, [r10-0xdf8]
  lddw r3, data_3408
  call fn_45430

jmp_1bf08:
  mov64 r1, 0xffff
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  mov64 r1, 0x0
  stxdw [r6+0x10], r1
  ja jmp_cb60

jmp_1bf50:
  ldxdw r1, [r10-0xca0]
  mov64 r2, r9
  ldxdw r7, [r10-0xdf8]
  mov64 r3, r7
  call fn_490d0
  jeq r7, 0x100, jmp_1bfd8
  ldxdw r1, [r10-0xdf8]
  add64 r8, r1
  mov64 r3, 0x100
  sub64 r3, r1
  mov64 r1, r8
  mov64 r2, 0x4
  call fn_493f8
  ja jmp_1bfd8

jmp_1bfc0:
  lddw r1, data_3420
  call fn_3efe8

jmp_1bfd8:
  lddw r2, -0x7fffffffffffffe6
  ldxdw r1, [r10-0xdd8]
  stxdw [r1+0x0], r2
  ja jmp_d160

jmp_1c000:
  jeq r7, 0x0, jmp_ab70
  mov64 r6, r3
  add64 r6, 0x30
  jeq r7, 0x1, jmp_cad8
  ldxb r2, [r3+0x58]
  jeq r2, 0x0, jmp_cb18
  ldxdw r2, [r3+0x0]
  ldxdw r4, [r2+0x0]
  lddw r5, 0x9e9974ee626ad71
  jeq r4, r5, jmp_1c068

jmp_1c058:
  mov64 r4, 0x1
  ja jmp_1c0d0

jmp_1c068:
  ldxdw r4, [r2+0x8]
  lddw r5, -0x5a4e740901420473
  jne r4, r5, jmp_1c058
  ldxdw r4, [r2+0x10]
  lddw r5, 0x3f762b2616a7d0c7
  jne r4, r5, jmp_1c058
  mov64 r4, 0x0
  ldxdw r2, [r2+0x18]
  lddw r5, -0x1ff47e790077cfa3
  jne r2, r5, jmp_1c058

jmp_1c0d0:
  jne r4, 0x0, jmp_f2c8
  stxdw [r10-0xdd8], r1
  stxdw [r10-0xde0], r3
  ldxdw r8, [r3+0x10]
  ldxdw r1, [r8+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r1, jmp_1c118
  ja jmp_1c1e0

jmp_1c118:
  ldxh r2, [r0+0x5]
  stxdw [r10-0xde8], r2
  ldxw r2, [r0+0x1]
  stxdw [r10-0xdf0], r2
  add64 r1, 0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0x2e0], r2
  stxdw [r10-0x2e8], r1
  mov64 r1, r10
  add64 r1, -0xc08
  mov64 r2, r10
  add64 r2, -0x2e8
  call fn_26968
  ldxdw r7, [r10-0xc00]
  ldxdw r9, [r10-0xc08]
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_1c1c0
  ja jmp_1c1f8

jmp_1c1c0:
  ldxdw r1, [r10-0xdd8]
  mov64 r2, r7
  call fn_30d48
  ja jmp_e020

jmp_1c1e0:
  lddw r1, data_3498
  call fn_3f090

jmp_1c1f8:
  mov64 r1, r10
  add64 r1, -0x218
  mov64 r2, r10
  add64 r2, -0xbf8
  mov64 r3, 0x210
  call fn_490d0
  stxdw [r10-0x220], r7
  stxdw [r10-0x228], r9
  ldxdw r1, [r8+0x10]
  add64 r1, -0x1
  stxdw [r8+0x10], r1
  lddw r2, -0x3c1cb4130349c29
  ldxdw r3, [r10-0x1d8]
  jeq r3, r2, jmp_1c280

jmp_1c270:
  mov64 r3, 0x1
  ja jmp_1c2e8

jmp_1c280:
  lddw r2, -0xb6a3785afba3445
  ldxdw r3, [r10-0x1d0]
  jne r3, r2, jmp_1c270
  lddw r2, -0x182dbcdd20a11484
  ldxdw r3, [r10-0x1c8]
  jne r3, r2, jmp_1c270
  mov64 r3, 0x0
  lddw r2, -0x309924488b6719d5
  ldxdw r4, [r10-0x1c0]
  jne r4, r2, jmp_1c270

jmp_1c2e8:
  ldxdw r2, [r10-0xdd8]
  jeq r3, 0x0, jmp_1c300

jmp_1c2f8:
  ja jmp_e388

jmp_1c300:
  ldxdw r3, [r6+0x0]
  ldxdw r4, [r3+0x0]
  ldxdw r5, [r10-0x1d8]
  jeq r4, r5, jmp_1c338

jmp_1c320:
  mov64 r4, 0x1
  jeq r4, 0x0, jmp_1c398

jmp_1c330:
  ja jmp_12cf8

jmp_1c338:
  ldxdw r4, [r3+0x8]
  ldxdw r5, [r10-0x1d0]
  jne r4, r5, jmp_1c320
  ldxdw r4, [r3+0x10]
  ldxdw r5, [r10-0x1c8]
  jne r4, r5, jmp_1c320
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  ldxdw r5, [r10-0x1c0]
  jne r3, r5, jmp_1c320
  jeq r4, 0x0, jmp_1c398
  ja jmp_1c330

jmp_1c398:
  ldxb r3, [r10-0x16]
  jeq r3, 0x0, jmp_1c3b0
  ja jmp_12ca0

jmp_1c3b0:
  ldxdw r7, [r10-0xde8]
  mov64 r2, r7
  lsh64 r2, 0x20
  ldxdw r6, [r10-0xdf0]
  or64 r6, r2
  mov64 r3, r6
  and64 r3, 0xff
  jgt r3, 0x4, jmp_1c558
  mov64 r3, r6
  rsh64 r3, 0x8
  mov64 r4, r3
  and64 r4, 0xff
  jgt r4, 0x4, jmp_1c558
  mov64 r4, r6
  rsh64 r4, 0x10
  mov64 r5, r4
  and64 r5, 0xff
  jgt r5, 0x4, jmp_1c558
  mov64 r5, r6
  rsh64 r5, 0x18
  mov64 r0, r5
  and64 r0, 0xff
  jgt r0, 0x4, jmp_1c558
  mov64 r0, r7
  and64 r0, 0xff
  jgt r0, 0x4, jmp_1c558
  rsh64 r2, 0x28
  jgt r2, 0x4, jmp_1c558
  ldxdw r0, [r10-0xde0]
  ldxb r0, [r0+0x29]
  jeq r0, 0x0, jmp_10630
  stxb [r10-0xe], r2
  ldxdw r2, [r10-0xde8]
  stxb [r10-0xf], r2
  stxb [r10-0x10], r5
  stxb [r10-0x11], r4
  stxb [r10-0x12], r3
  stxb [r10-0x13], r6
  jeq r1, 0x0, jmp_1c4f0
  ja jmp_1c578

jmp_1c4f0:
  mov64 r1, -0x1
  stxdw [r8+0x10], r1
  ldxdw r1, [r8+0x18]
  ldxdw r2, [r8+0x20]
  stxdw [r10-0xc00], r2
  stxdw [r10-0xc08], r1
  mov64 r1, r10
  add64 r1, -0x228
  mov64 r2, r10
  add64 r2, -0xc08
  call fn_277a8
  jeq r0, 0x0, jmp_12090
  ja jmp_1b358

jmp_1c558:
  mov64 r1, 0x1e
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  ja jmp_d8a0

jmp_1c578:
  lddw r1, data_3480
  call fn_3efe8

jmp_1c590:
  ldxdw r2, [r6+0x0]
  ldxdw r3, [r2+0x0]
  ldxdw r4, [r10-0x1d8]
  jeq r3, r4, jmp_1c5d0

jmp_1c5b0:
  mov64 r3, 0x1
  jeq r3, 0x0, jmp_1c630

jmp_1c5c0:
  mov64 r2, 0x3
  ja jmp_cb40

jmp_1c5d0:
  ldxdw r3, [r2+0x8]
  ldxdw r4, [r10-0x1d0]
  jne r3, r4, jmp_1c5b0
  ldxdw r3, [r2+0x10]
  ldxdw r4, [r10-0x1c8]
  jne r3, r4, jmp_1c5b0
  mov64 r3, 0x0
  ldxdw r2, [r2+0x18]
  ldxdw r4, [r10-0x1c0]
  jne r2, r4, jmp_1c5b0
  jeq r3, 0x0, jmp_1c630
  ja jmp_1c5c0

jmp_1c630:
  ldxb r2, [r10-0x16]
  jeq r2, 0x0, jmp_1c648
  ja jmp_1bb48

jmp_1c648:
  ldxdw r1, [r8+0x0]
  ldxdw r2, [r1+0x0]
  lddw r3, 0x6a34d2558a800097
  jeq r2, r3, jmp_1c688

jmp_1c670:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_1c700

jmp_1c680:
  ja jmp_1bb90

jmp_1c688:
  ldxdw r2, [r1+0x8]
  lddw r3, -0x27bb7242248810a4
  jne r2, r3, jmp_1c670
  ldxdw r2, [r1+0x10]
  lddw r3, -0x4e99f83a7f19f3b3
  jne r2, r3, jmp_1c670
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  lddw r3, 0x4a51182b7d233fc5
  jne r1, r3, jmp_1c670
  jeq r2, 0x0, jmp_1c700
  ja jmp_1c680

jmp_1c700:
  ldxdw r1, [r10-0xde8]
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r10-0xde0]
  ldxdw r1, [r1+0x78]
  ldxdw r3, [r1+0x0]
  jeq r3, r2, jmp_1c748

jmp_1c730:
  mov64 r2, 0x1
  jeq r2, 0x0, jmp_1c7c0

jmp_1c740:
  ja jmp_12428

jmp_1c748:
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x8]
  ldxdw r3, [r1+0x8]
  jne r3, r2, jmp_1c730
  ldxdw r2, [r10-0xde8]
  ldxdw r2, [r2+0x10]
  ldxdw r3, [r1+0x10]
  jne r3, r2, jmp_1c730
  mov64 r2, 0x0
  ldxdw r3, [r10-0xde8]
  ldxdw r3, [r3+0x18]
  ldxdw r1, [r1+0x18]
  jne r1, r3, jmp_1c730
  jeq r2, 0x0, jmp_1c7c0
  ja jmp_1c740

jmp_1c7c0:
  ldxdw r1, [r10-0xde0]
  ldxb r1, [r1+0x89]
  jeq r1, 0x0, jmp_1c808
  mov64 r1, r8
  call fn_301f0
  jne r0, 0x0, jmp_1c7f8
  ja jmp_1c818

jmp_1c7f8:
  mov64 r1, 0x21
  ja jmp_12398

jmp_1c808:
  mov64 r1, 0x1
  ja jmp_12398

jmp_1c818:
  ldxdw r1, [r10-0xde0]
  ldxdw r6, [r1+0x70]
  ldxdw r1, [r6+0x10]
  jeq r1, 0x0, jmp_1c840
  ja jmp_1c8f8

jmp_1c840:
  mov64 r1, -0x1
  stxdw [r6+0x10], r1
  ldxdw r1, [r6+0x20]
  jne r1, 0x800, jmp_1c8b8
  ldxdw r1, [r6+0x18]
  mov64 r2, r1
  and64 r2, 0x7
  jeq r2, 0x0, jmp_1c888
  ja jmp_1c8b8

jmp_1c888:
  ldxdw r2, [r10-0xdf0]
  add64 r2, 0x1
  add64 r1, 0x420
  mov64 r3, 0x100
  call fn_490d0
  ja jmp_1bfd8

jmp_1c8b8:
  mov64 r1, 0xffff
  ldxdw r2, [r10-0xdd8]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  mov64 r1, 0x0
  ja jmp_d170

jmp_1c8f8:
  lddw r1, data_3450
  call fn_3efe8

fn_1c910:
  ldxdw r3, [r2+0x0]
  ldxdw r4, [r3+0x0]
  lddw r5, -0x7daedb47779c64cb
  jeq r4, r5, jmp_1c948

jmp_1c938:
  mov64 r4, 0x1
  ja jmp_1c9b0

jmp_1c948:
  ldxdw r4, [r3+0x8]
  lddw r5, -0x685de6b447c4494
  jne r4, r5, jmp_1c938
  ldxdw r4, [r3+0x10]
  lddw r5, 0x4f63819f62088665
  jne r4, r5, jmp_1c938
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  lddw r5, 0x769c506bde49240a
  jne r3, r5, jmp_1c938

jmp_1c9b0:
  jne r4, 0x0, jmp_1ca00
  ldxdw r3, [r2+0x18]
  ldxdw r4, [r3+0x0]
  lddw r5, -0x1629162fad52c0f3
  jeq r4, r5, jmp_1ca40

jmp_1c9e0:
  mov64 r4, 0x1
  jeq r4, 0x0, jmp_1cab8

jmp_1c9f0:
  mov64 r2, 0x2
  ja jmp_1ca08

jmp_1ca00:
  mov64 r2, 0x23

jmp_1ca08:
  stxw [r1+0x10], r2
  lddw r2, -0x8000000000000000
  stxdw [r1+0x8], r2
  mov64 r2, 0x1
  stxdw [r1+0x0], r2

jmp_1ca38:
  exit

jmp_1ca40:
  ldxdw r4, [r3+0x8]
  lddw r5, 0x6d03c1d50a55aba8
  jne r4, r5, jmp_1c9e0
  ldxdw r4, [r3+0x10]
  lddw r5, -0x625d747334b78050
  jne r4, r5, jmp_1c9e0
  mov64 r4, 0x0
  ldxdw r3, [r3+0x18]
  lddw r5, -0x143237379ee6e946
  jne r3, r5, jmp_1c9e0
  jeq r4, 0x0, jmp_1cab8
  ja jmp_1c9f0

jmp_1cab8:
  ldxdw r6, [r2+0x10]
  ldxdw r7, [r6+0x10]
  lddw r2, 0x7fffffffffffffff
  jgt r2, r7, jmp_1cae8
  ja jmp_1cc08

jmp_1cae8:
  mov64 r2, r7
  add64 r2, 0x1
  stxdw [r6+0x10], r2
  ldxdw r2, [r6+0x20]
  jne r2, 0x58, jmp_1cba8
  ldxdw r2, [r6+0x18]
  mov64 r3, r2
  and64 r3, 0x7
  jeq r3, 0x0, jmp_1cb38
  ja jmp_1cba8

jmp_1cb38:
  ldxdw r3, [r2+0x0]
  lddw r4, 0x3130564b544b524d
  jeq r3, r4, jmp_1cb60
  ja jmp_1cbc0

jmp_1cb60:
  mov64 r3, r1
  add64 r3, 0x8
  mov64 r8, r1
  mov64 r1, r3
  mov64 r3, 0x58
  call fn_490d0
  mov64 r1, 0x0
  stxdw [r8+0x0], r1
  ja jmp_1cbf8

jmp_1cba8:
  mov64 r2, 0xffff
  stxdw [r1+0x10], r2
  ja jmp_1cbd0

jmp_1cbc0:
  mov64 r2, 0x23
  stxw [r1+0x10], r2

jmp_1cbd0:
  lddw r2, -0x8000000000000000
  stxdw [r1+0x8], r2
  mov64 r2, 0x1
  stxdw [r1+0x0], r2

jmp_1cbf8:
  stxdw [r6+0x10], r7
  ja jmp_1ca38

jmp_1cc08:
  lddw r1, data_34b0
  call fn_3f090

fn_1cc20:
  mov64 r4, 0x0
  stxdw [r10-0x8], r4
  stxdw [r10-0x10], r4
  stxdw [r10-0x18], r4
  stxdw [r10-0x20], r4
  ldxdw r4, [r1+0x0]
  jeq r4, 0x0, jmp_1cc68

jmp_1cc58:
  mov64 r4, 0x1
  ja jmp_1ccb8

jmp_1cc68:
  ldxdw r4, [r1+0x8]
  ldxdw r5, [r10-0x18]
  jne r4, r5, jmp_1cc58
  ldxdw r4, [r1+0x10]
  ldxdw r5, [r10-0x10]
  jne r4, r5, jmp_1cc58
  mov64 r4, 0x0
  ldxdw r5, [r1+0x18]
  ldxdw r0, [r10-0x8]
  jne r5, r0, jmp_1cc58

jmp_1ccb8:
  mov64 r0, 0x0
  jeq r4, 0x0, jmp_1cd80
  lsh64 r3, 0x5

jmp_1ccd0:
  mov64 r0, 0x1
  jne r3, 0x0, jmp_1cce8
  mov64 r0, 0x0

jmp_1cce8:
  jeq r3, 0x0, jmp_1cd80
  ldxdw r4, [r1+0x0]
  ldxdw r5, [r2+0x0]
  jeq r5, r4, jmp_1cd18

jmp_1cd08:
  mov64 r4, 0x1
  ja jmp_1cd68

jmp_1cd18:
  ldxdw r4, [r1+0x8]
  ldxdw r5, [r2+0x8]
  jne r5, r4, jmp_1cd08
  ldxdw r4, [r1+0x10]
  ldxdw r5, [r2+0x10]
  jne r5, r4, jmp_1cd08
  mov64 r4, 0x0
  ldxdw r5, [r1+0x18]
  ldxdw r6, [r2+0x18]
  jne r6, r5, jmp_1cd08

jmp_1cd68:
  add64 r2, 0x20
  add64 r3, -0x20
  jne r4, 0x0, jmp_1ccd0

jmp_1cd80:
  and64 r0, 0x1
  exit

fn_1cd90:
  mov64 r6, 0x2
  ldxdw r0, [r5-0x1000]
  jne r2, r0, jmp_1cf50
  mov64 r2, r4
  add64 r2, 0x1dcd6500
  mov64 r0, 0x1
  jsgt r4, r2, jmp_1cdd0
  mov64 r0, 0x0

jmp_1cdd0:
  and64 r0, 0x1
  jne r0, 0x0, jmp_1cf50
  stxdw [r10-0x8], r3
  mov64 r8, r1
  mov64 r9, r4
  ldxdw r7, [r5-0xff8]
  mov64 r1, r2
  mov64 r2, 0x3b9aca00
  call fn_4bbf0
  mov64 r2, r0
  sub64 r2, r7
  mov64 r3, 0x1
  mov64 r1, 0x1
  jsgt r0, r2, jmp_1ce48
  mov64 r1, 0x0

jmp_1ce48:
  jsgt r7, 0x0, jmp_1ce58
  mov64 r3, 0x0

jmp_1ce58:
  xor64 r3, r1
  and64 r3, 0x1
  mov64 r4, r9
  mov64 r1, r8
  ldxdw r7, [r10-0x8]
  jne r3, 0x0, jmp_1cf50
  mov64 r3, r2
  jsgt r2, -0x1, jmp_1cec0
  mov64 r3, r2
  neg64 r3
  lddw r5, -0x8000000000000000
  jeq r2, r5, jmp_1cf50

jmp_1cec0:
  jgt r3, 0x1, jmp_1cf50
  mov64 r5, 0x1
  mov64 r3, 0x1
  jsgt r7, 0x0, jmp_1cee8
  mov64 r3, 0x0

jmp_1cee8:
  mov64 r2, r4
  sub64 r2, r7
  jsgt r4, r2, jmp_1cf08
  mov64 r5, 0x0

jmp_1cf08:
  xor64 r3, r5
  and64 r3, 0x1
  jne r3, 0x0, jmp_1cf50
  mov64 r3, 0x0
  jsgt r3, r2, jmp_1cf50
  mov64 r6, 0x1
  mov64 r3, 0x17d78401
  jgt r3, r2, jmp_1cf50
  mov64 r6, 0x0

jmp_1cf50:
  stxb [r1+0x8], r6
  stxdw [r1+0x0], r4
  exit

fn_1cf68:
  mov64 r6, r5
  stxdw [r10-0xe8], r4
  stxdw [r10-0xe0], r3
  mov64 r8, r2
  mov64 r7, r1
  mov64 r1, r10
  add64 r1, -0x88
  call fn_2f130
  ldxdw r9, [r10-0x78]
  ldxdw r1, [r10-0x80]
  ldxdw r2, [r10-0x88]
  jne r2, 0x0, jmp_1d178
  stxdw [r10-0xf8], r8
  ldxdw r2, [r10-0xe8]
  ldxdw r2, [r10-0xe0]
  stxdw [r10-0x110], r7
  ldxdw r8, [r6-0xff0]
  ldxdw r2, [r6-0xff8]
  stxdw [r10-0x108], r2
  ldxdw r2, [r6-0x1000]
  stxdw [r10-0x100], r2
  mov64 r2, r8
  add64 r2, 0x80
  mul64 r1, r2
  call fn_4bd98
  mov64 r1, r9
  mov64 r2, r0
  call fn_4bf90
  mov64 r9, r0
  mov64 r7, 0x0
  mov64 r1, r9
  mov64 r2, 0x0
  call fn_4bae0
  mov64 r6, r0
  mov64 r1, r9
  call fn_496c0
  jsgt r7, r6, jmp_1d098
  mov64 r7, r0

jmp_1d098:
  mov64 r1, r9
  lddw r2, 0x43efffffffffffff
  call fn_4b9d0
  mov64 r9, -0x1
  jsgt r0, 0x0, jmp_1d0d0
  mov64 r9, r7

jmp_1d0d0:
  ldxdw r7, [r10-0xe0]
  mov64 r1, r7
  call fn_30178
  jeq r0, 0x0, jmp_1d450
  ldxdw r1, [r7+0x0]
  stxdw [r10-0xf0], r1
  jgt r9, r0, jmp_1d8d8
  ldxdw r6, [r7+0x8]

jmp_1d110:
  mov64 r1, r10
  add64 r1, -0x88
  ldxdw r2, [r10-0xf0]
  mov64 r3, r8
  call fn_337e0
  ldxdw r2, [r6+0x0]
  add64 r2, 0x1
  stxdw [r6+0x0], r2
  mov64 r1, 0x1
  jeq r2, 0x0, jmp_1d168
  mov64 r1, 0x0

jmp_1d168:
  jne r1, 0x1, jmp_1d1e0
  ja jmp_1d500

jmp_1d178:
  ldxw r2, [r10-0x6f]
  stxw [r10-0xd8], r2
  ldxw r2, [r10-0x6c]
  stxw [r10-0xd5], r2
  ldxb r2, [r10-0x70]
  ldxw r3, [r10-0xd5]
  stxw [r7+0x14], r3
  ldxw r3, [r10-0xd8]
  stxw [r7+0x11], r3
  stxb [r7+0x10], r2
  stxdw [r7+0x8], r9
  stxdw [r7+0x0], r1

jmp_1d1d8:
  exit

jmp_1d1e0:
  ldxdw r8, [r7+0x10]
  ldxdw r1, [r8+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_1d210
  mov64 r2, 0x0

jmp_1d210:
  stxdw [r8+0x0], r1
  jne r2, 0x1, jmp_1d228
  ja jmp_1d500

jmp_1d228:
  ldxdw r2, [r7+0x18]
  ldxdw r3, [r7+0x20]
  ldxb r4, [r7+0x28]
  ldxb r9, [r7+0x29]
  ldxb r7, [r7+0x2a]
  stxdw [r10-0xc8], r8
  stxdw [r10-0xd0], r6
  ldxdw r1, [r10-0xf0]
  stxdw [r10-0xd8], r1
  stxb [r10-0xae], r7
  stxb [r10-0xaf], r9
  stxdw [r10-0x118], r4
  stxb [r10-0xb0], r4
  stxdw [r10-0xf8], r3
  stxdw [r10-0xb8], r3
  stxdw [r10-0xe0], r2
  stxdw [r10-0xc0], r2
  ldxdw r1, [r10-0x108]
  stxdw [r10-0x8], r1
  ldxdw r1, [r10-0x100]
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x1000], r1
  mov64 r1, 0x1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0x88
  mov64 r3, r10
  add64 r3, -0xd8
  mov64 r5, r10
  mov64 r4, 0x1
  call fn_2da88
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0x28]
  jeq r2, r1, jmp_1d368
  ja jmp_1dd40

jmp_1d368:
  ldxdw r1, [r10-0xc8]
  ldxdw r2, [r10-0xd0]
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_1d3b0
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_1d3b0:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  ldxdw r3, [r10-0xe8]
  jne r2, 0x0, jmp_1d3f0
  ldxdw r2, [r1+0x8]
  add64 r2, -0x1
  stxdw [r1+0x8], r2

jmp_1d3f0:
  mov64 r1, r10
  add64 r1, -0x88
  ldxdw r2, [r10-0xf0]
  call fn_33500
  ldxdw r2, [r6+0x0]
  add64 r2, 0x1
  stxdw [r6+0x0], r2
  mov64 r1, 0x1
  jeq r2, 0x0, jmp_1d440
  mov64 r1, 0x0

jmp_1d440:
  jne r1, 0x1, jmp_1dde8
  ja jmp_1d500

jmp_1d450:
  ldxdw r3, [r7+0x0]
  ldxdw r1, [r10-0xf8]
  ldxdw r2, [r1+0x0]
  stxdw [r10-0x1000], r8
  mov64 r8, r1
  ldxdw r1, [r10-0xe8]
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0xd8
  mov64 r5, r10
  stxdw [r10-0x118], r2
  stxdw [r10-0x120], r3
  mov64 r4, r9
  call fn_33328
  ldxdw r9, [r8+0x8]
  ldxdw r1, [r9+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_1d4f0
  mov64 r2, 0x0

jmp_1d4f0:
  stxdw [r9+0x0], r1
  jne r2, 0x1, jmp_1d508

jmp_1d500:
  call abort

jmp_1d508:
  ldxdw r3, [r8+0x10]
  ldxdw r1, [r3+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_1d538
  mov64 r2, 0x0

jmp_1d538:
  stxdw [r3+0x0], r1
  jne r2, 0x1, jmp_1d550
  ja jmp_1d500

jmp_1d550:
  stxdw [r10-0xe8], r3
  ldxdw r2, [r7+0x8]
  ldxdw r0, [r2+0x0]
  add64 r0, 0x1
  mov64 r7, 0x1
  jeq r0, 0x0, jmp_1d588
  mov64 r7, 0x0

jmp_1d588:
  ldxb r1, [r8+0x2a]
  stxdw [r10-0x130], r1
  ldxb r1, [r8+0x29]
  stxdw [r10-0x128], r1
  ldxb r3, [r8+0x28]
  ldxdw r5, [r8+0x20]
  ldxdw r4, [r8+0x18]
  stxdw [r2+0x0], r0
  jne r7, 0x1, jmp_1d5d8
  ja jmp_1d500

jmp_1d5d8:
  ldxdw r1, [r10-0xe0]
  ldxdw r1, [r1+0x10]
  mov64 r6, r1
  ldxdw r0, [r1+0x0]
  add64 r0, 0x1
  mov64 r7, 0x1
  jeq r0, 0x0, jmp_1d618
  mov64 r7, 0x0

jmp_1d618:
  mov64 r8, r3
  stxdw [r10-0xf0], r2
  stxdw [r6+0x0], r0
  jne r7, 0x1, jmp_1d640
  ja jmp_1d500

jmp_1d640:
  ldxdw r3, [r10-0xe0]
  ldxdw r0, [r3+0x18]
  ldxdw r7, [r3+0x20]
  ldxb r1, [r3+0x28]
  ldxb r2, [r3+0x29]
  ldxb r3, [r3+0x2a]
  stxb [r10-0x2e], r3
  stxb [r10-0x2f], r2
  stxb [r10-0x30], r1
  stxdw [r10-0x38], r7
  stxdw [r10-0x40], r0
  stxdw [r10-0x48], r6
  ldxdw r1, [r10-0xf0]
  stxdw [r10-0x50], r1
  ldxdw r1, [r10-0x120]
  stxdw [r10-0x58], r1
  ldxdw r1, [r10-0x130]
  stxb [r10-0x5e], r1
  ldxdw r1, [r10-0x128]
  stxb [r10-0x5f], r1
  stxb [r10-0x60], r8
  stxdw [r10-0x68], r5
  stxdw [r10-0x70], r4
  ldxdw r1, [r10-0xe8]
  stxdw [r10-0x78], r1
  stxdw [r10-0x80], r9
  ldxdw r1, [r10-0x118]
  stxdw [r10-0x88], r1
  ldxdw r1, [r10-0x108]
  stxdw [r10-0x8], r1
  ldxdw r1, [r10-0x100]
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x1000], r1
  mov64 r1, 0x1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0xd8
  mov64 r3, r10
  add64 r3, -0x88
  mov64 r5, r10
  mov64 r4, 0x2
  call fn_2da88
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0x28]
  jeq r2, r1, jmp_1d7d8
  ja jmp_1dfd8

jmp_1d7d8:
  ldxdw r1, [r9+0x0]
  add64 r1, -0x1
  stxdw [r9+0x0], r1
  ldxdw r2, [r10-0x110]
  jne r1, 0x0, jmp_1d818
  ldxdw r1, [r9+0x8]
  add64 r1, -0x1
  stxdw [r9+0x8], r1

jmp_1d818:
  ldxdw r5, [r10-0xe8]
  ldxdw r1, [r5+0x0]
  add64 r1, -0x1
  stxdw [r5+0x0], r1
  ldxdw r3, [r10-0xf0]
  jne r1, 0x0, jmp_1d860
  ldxdw r1, [r5+0x8]
  add64 r1, -0x1
  stxdw [r5+0x8], r1

jmp_1d860:
  ldxdw r1, [r3+0x0]
  add64 r1, -0x1
  stxdw [r3+0x0], r1
  jne r1, 0x0, jmp_1d898
  ldxdw r1, [r3+0x8]
  add64 r1, -0x1
  stxdw [r3+0x8], r1

jmp_1d898:
  ldxdw r1, [r6+0x0]
  add64 r1, -0x1
  stxdw [r6+0x0], r1
  jne r1, 0x0, jmp_1dfb8
  ldxdw r1, [r6+0x8]
  add64 r1, -0x1
  stxdw [r6+0x8], r1
  ja jmp_1dfb8

jmp_1d8d8:
  mov64 r1, r9
  sub64 r1, r0
  mov64 r6, 0x1
  mov64 r2, 0x1
  jgt r1, r9, jmp_1d908
  mov64 r2, 0x0

jmp_1d908:
  mov64 r4, 0x0
  jne r2, 0x0, jmp_1d920
  mov64 r4, r1

jmp_1d920:
  ldxdw r9, [r10-0xf8]
  ldxdw r2, [r9+0x0]
  mov64 r1, r10
  add64 r1, -0xd8
  stxdw [r10-0x118], r2
  ldxdw r3, [r10-0xf0]
  call fn_33660
  ldxdw r5, [r9+0x8]
  ldxdw r2, [r5+0x0]
  add64 r2, 0x1
  jeq r2, 0x0, jmp_1d980
  mov64 r6, 0x0

jmp_1d980:
  stxdw [r5+0x0], r2
  jne r6, 0x1, jmp_1d998
  ja jmp_1d500

jmp_1d998:
  ldxdw r2, [r10-0xf8]
  ldxdw r2, [r2+0x10]
  ldxdw r3, [r2+0x0]
  add64 r3, 0x1
  mov64 r4, 0x1
  jeq r3, 0x0, jmp_1d9d0
  mov64 r4, 0x0

jmp_1d9d0:
  stxdw [r2+0x0], r3
  jne r4, 0x1, jmp_1d9e8
  ja jmp_1d500

jmp_1d9e8:
  ldxdw r0, [r7+0x8]
  ldxdw r7, [r0+0x0]
  add64 r7, 0x1
  mov64 r3, 0x1
  jeq r7, 0x0, jmp_1da18
  mov64 r3, 0x0

jmp_1da18:
  ldxdw r4, [r10-0xf8]
  ldxb r1, [r4+0x2a]
  stxdw [r10-0x128], r1
  ldxb r1, [r4+0x29]
  stxdw [r10-0x120], r1
  ldxb r6, [r4+0x28]
  ldxdw r1, [r4+0x20]
  ldxdw r9, [r4+0x18]
  stxdw [r0+0x0], r7
  jne r3, 0x1, jmp_1da70
  ja jmp_1d500

jmp_1da70:
  stxdw [r10-0x130], r6
  stxdw [r10-0xf8], r0
  ldxdw r3, [r10-0xe0]
  ldxdw r7, [r3+0x10]
  ldxdw r3, [r7+0x0]
  add64 r3, 0x1
  mov64 r4, 0x1
  jeq r3, 0x0, jmp_1dab8
  mov64 r4, 0x0

jmp_1dab8:
  mov64 r6, r5
  stxdw [r10-0x138], r8
  stxdw [r7+0x0], r3
  jne r4, 0x1, jmp_1dae0
  ja jmp_1d500

jmp_1dae0:
  ldxdw r8, [r10-0xe0]
  ldxdw r3, [r8+0x18]
  ldxdw r4, [r8+0x20]
  ldxb r5, [r8+0x28]
  ldxb r0, [r8+0x29]
  ldxb r8, [r8+0x2a]
  stxb [r10-0x2e], r8
  stxb [r10-0x2f], r0
  stxb [r10-0x30], r5
  stxdw [r10-0x38], r4
  stxdw [r10-0x40], r3
  stxdw [r10-0x48], r7
  ldxdw r3, [r10-0xf8]
  stxdw [r10-0x50], r3
  ldxdw r3, [r10-0xf0]
  stxdw [r10-0x58], r3
  ldxdw r3, [r10-0x128]
  stxb [r10-0x5e], r3
  ldxdw r3, [r10-0x120]
  stxb [r10-0x5f], r3
  ldxdw r3, [r10-0x130]
  stxb [r10-0x60], r3
  stxdw [r10-0x68], r1
  stxdw [r10-0x70], r9
  stxdw [r10-0x78], r2
  stxdw [r10-0x80], r6
  ldxdw r1, [r10-0x118]
  stxdw [r10-0x88], r1
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0xd8
  mov64 r3, r10
  add64 r3, -0x88
  mov64 r4, 0x2
  call fn_2da50
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0x28]
  jne r2, r1, jmp_1e108
  ldxdw r1, [r10-0x78]
  ldxdw r2, [r10-0x80]
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_1dc68
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_1dc68:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  ldxdw r7, [r10-0xe0]
  ldxdw r8, [r10-0x138]
  ldxdw r6, [r10-0xf8]
  jne r2, 0x0, jmp_1dcb8
  ldxdw r2, [r1+0x8]
  add64 r2, -0x1
  stxdw [r1+0x8], r2

jmp_1dcb8:
  ldxdw r1, [r10-0x48]
  ldxdw r2, [r10-0x50]
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_1dd00
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_1dd00:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  jne r2, 0x0, jmp_1d110
  ldxdw r2, [r1+0x8]
  add64 r2, -0x1
  stxdw [r1+0x8], r2
  ja jmp_1d110

jmp_1dd40:
  ldxdw r1, [r10-0x18]
  ldxdw r2, [r10-0x110]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x20]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x28]
  stxdw [r2+0x0], r1
  ldxdw r1, [r10-0xc8]
  ldxdw r2, [r10-0xd0]
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_1ddc0
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_1ddc0:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  jne r2, 0x0, jmp_1d1d8
  ja jmp_1e228

jmp_1dde8:
  ldxdw r2, [r8+0x0]
  add64 r2, 0x1
  stxdw [r8+0x0], r2
  mov64 r1, 0x1
  jeq r2, 0x0, jmp_1de18
  mov64 r1, 0x0

jmp_1de18:
  jne r1, 0x1, jmp_1de28
  ja jmp_1d500

jmp_1de28:
  stxb [r10-0xae], r7
  stxb [r10-0xaf], r9
  ldxdw r1, [r10-0x118]
  stxb [r10-0xb0], r1
  ldxdw r1, [r10-0xf8]
  stxdw [r10-0xb8], r1
  ldxdw r1, [r10-0xe0]
  stxdw [r10-0xc0], r1
  stxdw [r10-0xc8], r8
  stxdw [r10-0xd0], r6
  ldxdw r1, [r10-0xf0]
  stxdw [r10-0xd8], r1
  ldxdw r1, [r10-0x108]
  stxdw [r10-0x8], r1
  ldxdw r1, [r10-0x100]
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x1000], r1
  mov64 r1, 0x1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0x88
  mov64 r3, r10
  add64 r3, -0xd8
  mov64 r5, r10
  mov64 r4, 0x1
  call fn_2da88
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0x28]
  jeq r2, r1, jmp_1df40
  ja jmp_1e248

jmp_1df40:
  ldxdw r1, [r6+0x0]
  add64 r1, -0x1
  stxdw [r6+0x0], r1
  ldxdw r2, [r10-0x110]
  jne r1, 0x0, jmp_1df80
  ldxdw r1, [r6+0x8]
  add64 r1, -0x1
  stxdw [r6+0x8], r1

jmp_1df80:
  ldxdw r1, [r8+0x0]
  add64 r1, -0x1
  stxdw [r8+0x0], r1
  jne r1, 0x0, jmp_1dfb8
  ldxdw r1, [r8+0x8]
  add64 r1, -0x1
  stxdw [r8+0x8], r1

jmp_1dfb8:
  lddw r1, -0x7fffffffffffffe6
  stxdw [r2+0x0], r1
  ja jmp_1d1d8

jmp_1dfd8:
  ldxdw r1, [r10-0x18]
  ldxdw r2, [r10-0x110]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x20]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x28]
  stxdw [r2+0x0], r1
  ldxdw r1, [r9+0x0]
  add64 r1, -0x1
  stxdw [r9+0x0], r1
  jne r1, 0x0, jmp_1e048
  ldxdw r1, [r9+0x8]
  add64 r1, -0x1
  stxdw [r9+0x8], r1

jmp_1e048:
  ldxdw r3, [r10-0xe8]
  ldxdw r1, [r3+0x0]
  add64 r1, -0x1
  stxdw [r3+0x0], r1
  ldxdw r2, [r10-0xf0]
  jne r1, 0x0, jmp_1e090
  ldxdw r1, [r3+0x8]
  add64 r1, -0x1
  stxdw [r3+0x8], r1

jmp_1e090:
  ldxdw r1, [r2+0x0]
  add64 r1, -0x1
  stxdw [r2+0x0], r1
  jne r1, 0x0, jmp_1e0c8
  ldxdw r1, [r2+0x8]
  add64 r1, -0x1
  stxdw [r2+0x8], r1

jmp_1e0c8:
  ldxdw r1, [r6+0x0]
  add64 r1, -0x1
  stxdw [r6+0x0], r1
  jne r1, 0x0, jmp_1d1d8
  ldxdw r1, [r6+0x8]
  add64 r1, -0x1
  stxdw [r6+0x8], r1
  ja jmp_1d1d8

jmp_1e108:
  ldxdw r1, [r10-0x18]
  ldxdw r2, [r10-0x110]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x20]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x28]
  stxdw [r2+0x0], r1
  ldxdw r1, [r10-0x78]
  ldxdw r2, [r10-0x80]
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_1e188
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_1e188:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  jne r2, 0x0, jmp_1e1c0
  ldxdw r2, [r1+0x8]
  add64 r2, -0x1
  stxdw [r1+0x8], r2

jmp_1e1c0:
  ldxdw r1, [r10-0x48]
  ldxdw r2, [r10-0x50]
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_1e208
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_1e208:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  jne r2, 0x0, jmp_1d1d8

jmp_1e228:
  ldxdw r2, [r1+0x8]
  add64 r2, -0x1
  stxdw [r1+0x8], r2
  ja jmp_1d1d8

jmp_1e248:
  ldxdw r1, [r10-0x18]
  ldxdw r2, [r10-0x110]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x20]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x28]
  stxdw [r2+0x0], r1
  ldxdw r1, [r6+0x0]
  add64 r1, -0x1
  stxdw [r6+0x0], r1
  jne r1, 0x0, jmp_1e2b8
  ldxdw r1, [r6+0x8]
  add64 r1, -0x1
  stxdw [r6+0x8], r1

jmp_1e2b8:
  ldxdw r1, [r8+0x0]
  add64 r1, -0x1
  stxdw [r8+0x0], r1
  jne r1, 0x0, jmp_1d1d8
  ldxdw r1, [r8+0x8]
  add64 r1, -0x1
  stxdw [r8+0x8], r1
  ja jmp_1d1d8

fn_1e2f8:
  mov64 r7, r3
  mov64 r6, r1
  mov64 r1, r4
  and64 r1, 0xffff
  jne r1, 0x0, jmp_1e330
  mov64 r1, 0x1b
  ja jmp_1e4b8

jmp_1e330:
  mov64 r3, 0xf
  jgt r3, r1, jmp_1e348
  ja jmp_1e3a0

jmp_1e348:
  add64 r4, -0x1
  and64 r4, 0xffff
  mul64 r4, 0x21
  lddw r2, data_05bf
  add64 r2, r4
  mov64 r1, r10
  add64 r1, -0x49
  mov64 r3, 0x21
  call fn_490d0
  ja jmp_1e440

jmp_1e3a0:
  mov64 r1, r10
  add64 r1, -0x2
  stxdw [r10-0x18], r1
  mov64 r1, 0x5
  stxdw [r10-0x20], r1
  lddw r1, str_04dd
  stxdw [r10-0x28], r1
  be16 r4
  stxh [r10-0x2], r4
  mov64 r1, 0x2
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x49
  mov64 r3, r10
  add64 r3, -0x28
  mov64 r4, r2
  mov64 r2, r3
  mov64 r3, 0x2
  call fn_33cf0

jmp_1e440:
  ldxdw r1, [r10-0x31]
  stxdw [r10-0x10], r1
  ldxdw r1, [r10-0x39]
  stxdw [r10-0x18], r1
  ldxdw r1, [r10-0x41]
  stxdw [r10-0x20], r1
  ldxb r1, [r10-0x29]
  ldxdw r3, [r10-0x49]
  stxdw [r10-0x28], r3
  ldxdw r2, [r7+0x0]
  ldxdw r4, [r2+0x0]
  jeq r4, r3, jmp_1e4d8

jmp_1e4a0:
  mov64 r3, 0x1
  jeq r3, 0x0, jmp_1e538

jmp_1e4b0:
  mov64 r1, 0x18

jmp_1e4b8:
  stxw [r6+0x8], r1
  lddw r1, -0x8000000000000000
  ja jmp_1e550

jmp_1e4d8:
  ldxdw r3, [r2+0x8]
  ldxdw r4, [r10-0x20]
  jne r3, r4, jmp_1e4a0
  ldxdw r3, [r2+0x10]
  ldxdw r4, [r10-0x18]
  jne r3, r4, jmp_1e4a0
  mov64 r3, 0x0
  ldxdw r2, [r2+0x18]
  ldxdw r4, [r10-0x10]
  jne r2, r4, jmp_1e4a0
  jeq r3, 0x0, jmp_1e538
  ja jmp_1e4b0

jmp_1e538:
  stxb [r6+0x8], r1
  lddw r1, -0x7fffffffffffffe6

jmp_1e550:
  stxdw [r6+0x0], r1
  exit

fn_1e560:
  mov64 r7, r3
  mov64 r6, r1
  mov64 r1, r4
  and64 r1, 0xffff
  jne r1, 0x0, jmp_1e598
  mov64 r1, 0x1a
  ja jmp_1e720

jmp_1e598:
  mov64 r3, 0xf
  jgt r3, r1, jmp_1e5b0
  ja jmp_1e608

jmp_1e5b0:
  add64 r4, -0x1
  and64 r4, 0xffff
  mul64 r4, 0x21
  lddw r2, data_078d
  add64 r2, r4
  mov64 r1, r10
  add64 r1, -0x49
  mov64 r3, 0x21
  call fn_490d0
  ja jmp_1e6a8

jmp_1e608:
  mov64 r1, r10
  add64 r1, -0x2
  stxdw [r10-0x18], r1
  mov64 r1, 0x5
  stxdw [r10-0x20], r1
  lddw r1, str_04d8
  stxdw [r10-0x28], r1
  be16 r4
  stxh [r10-0x2], r4
  mov64 r1, 0x2
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x49
  mov64 r3, r10
  add64 r3, -0x28
  mov64 r4, r2
  mov64 r2, r3
  mov64 r3, 0x2
  call fn_33cf0

jmp_1e6a8:
  ldxdw r1, [r10-0x31]
  stxdw [r10-0x10], r1
  ldxdw r1, [r10-0x39]
  stxdw [r10-0x18], r1
  ldxdw r1, [r10-0x41]
  stxdw [r10-0x20], r1
  ldxb r1, [r10-0x29]
  ldxdw r3, [r10-0x49]
  stxdw [r10-0x28], r3
  ldxdw r2, [r7+0x0]
  ldxdw r4, [r2+0x0]
  jeq r4, r3, jmp_1e740

jmp_1e708:
  mov64 r3, 0x1
  jeq r3, 0x0, jmp_1e7a0

jmp_1e718:
  mov64 r1, 0x19

jmp_1e720:
  stxw [r6+0x8], r1
  lddw r1, -0x8000000000000000
  ja jmp_1e7b8

jmp_1e740:
  ldxdw r3, [r2+0x8]
  ldxdw r4, [r10-0x20]
  jne r3, r4, jmp_1e708
  ldxdw r3, [r2+0x10]
  ldxdw r4, [r10-0x18]
  jne r3, r4, jmp_1e708
  mov64 r3, 0x0
  ldxdw r2, [r2+0x18]
  ldxdw r4, [r10-0x10]
  jne r2, r4, jmp_1e708
  jeq r3, 0x0, jmp_1e7a0
  ja jmp_1e718

jmp_1e7a0:
  stxb [r6+0x8], r1
  lddw r1, -0x7fffffffffffffe6

jmp_1e7b8:
  stxdw [r6+0x0], r1
  exit

fn_1e7c8:
  lddw r2, 0x300000000
  ldxdw r3, [r2+0x0]
  mov64 r2, r3
  add64 r2, -0x1800
  mov64 r4, 0x0
  mov64 r5, 0x1
  jgt r2, r3, jmp_1e810
  mov64 r5, 0x0

jmp_1e810:
  jne r5, 0x0, jmp_1e820
  mov64 r4, r2

jmp_1e820:
  lddw r2, 0x300006800
  jeq r3, 0x0, jmp_1e848
  and64 r4, -0x8
  mov64 r2, r4

jmp_1e848:
  lddw r3, 0x300000008
  jgt r3, r2, jmp_1e938
  lddw r3, 0x300000000
  stxdw [r3+0x0], r2
  mov64 r4, 0x0
  mov64 r5, 0x1
  mov64 r3, 0x0

jmp_1e890:
  mov64 r0, r2
  add64 r0, r3
  stxdw [r0+0x8], r5
  stxdw [r0+0x10], r4
  stxdw [r0+0x0], r4
  add64 r3, 0x18
  jeq r3, 0x17e8, jmp_1e8d0
  ja jmp_1e890

jmp_1e8d0:
  mov64 r4, r2
  add64 r4, r3
  mov64 r3, 0x1
  stxdw [r4+0x8], r3
  mov64 r3, 0x0
  stxdw [r4+0x10], r3
  stxdw [r4+0x0], r3
  stxdw [r1+0x10], r2
  mov64 r2, 0x100
  stxdw [r1+0x18], r2
  stxdw [r1+0x8], r2
  stxdw [r1+0x0], r3
  exit

jmp_1e938:
  mov64 r1, 0x8
  mov64 r2, 0x1800
  call fn_379f0

fn_1e950:
  mov64 r7, r3
  mov64 r8, r2
  mov64 r6, r1
  mov64 r1, r10
  add64 r1, -0x20
  mov64 r2, r7
  mov64 r3, 0xc
  call fn_34528
  jne r8, 0x0, jmp_1e9b0
  lddw r1, data_3540
  call fn_47a70

jmp_1e9b0:
  ldxdw r2, [r10-0x18]
  be64 r2
  ldxdw r3, [r10-0x20]
  be64 r3
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r9, 0x0
  mov64 r4, r8
  mov64 r5, 0x0
  call fn_4bd50
  ldxdw r1, [r10-0x30]
  jgt r8, r1, jmp_1ea30
  mov64 r2, r8
  lddw r3, data_34c8
  call fn_3ffc8

jmp_1ea30:
  mul64 r1, 0x18
  add64 r6, r1
  ldxw r2, [r7+0x8]
  stxdw [r10-0x38], r7
  ldxdw r3, [r7+0x0]
  ldxdw r1, [r6+0x8]
  ldxdw r7, [r6+0x10]
  mov64 r8, r7
  mul64 r8, 0xc
  ja jmp_1eae0

jmp_1ea80:
  mov64 r4, r1
  add64 r4, r9
  ldxdw r5, [r4+0x0]
  xor64 r5, r3
  ldxw r4, [r4+0x8]
  xor64 r4, r2
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  or64 r5, r4
  add64 r9, 0xc
  jne r5, 0x0, jmp_1eae0

jmp_1ead8:
  exit

jmp_1eae0:
  jne r8, r9, jmp_1ea80
  ldxdw r2, [r6+0x0]
  jne r7, r2, jmp_1eb10
  mov64 r1, r6
  call fn_3720
  ldxdw r1, [r6+0x8]

jmp_1eb10:
  add64 r1, r8
  ldxdw r3, [r10-0x38]
  ldxw r2, [r3+0x8]
  stxw [r1+0x8], r2
  ldxdw r2, [r3+0x0]
  stxdw [r1+0x0], r2
  add64 r7, 0x1
  stxdw [r6+0x10], r7
  ja jmp_1ead8

fn_1eb58:
  mov64 r8, r4
  mov64 r9, r3
  mov64 r7, r2
  stxdw [r10-0x38], r1
  mov64 r1, r10
  add64 r1, -0x20
  mov64 r2, r8
  mov64 r3, 0xc
  call fn_34528
  jne r9, 0x0, jmp_1ebc0
  lddw r1, data_3540
  call fn_47a70

jmp_1ebc0:
  ldxdw r2, [r10-0x18]
  be64 r2
  ldxdw r3, [r10-0x20]
  be64 r3
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r9
  mov64 r5, 0x0
  call fn_4bd50
  ldxdw r1, [r10-0x30]
  jgt r9, r1, jmp_1ec38
  mov64 r2, r9
  lddw r3, data_34e0
  call fn_3ffc8

jmp_1ec38:
  mul64 r1, 0x18
  add64 r7, r1
  mov64 r1, -0x1
  ldxw r5, [r8+0x8]
  ldxdw r0, [r8+0x0]
  ldxdw r3, [r7+0x8]
  ldxdw r2, [r7+0x10]
  mov64 r8, r2
  mul64 r8, 0xc
  mov64 r4, r3
  ja jmp_1ece8

jmp_1ec90:
  ldxdw r9, [r4+0x0]
  xor64 r9, r0
  ldxw r6, [r4+0x8]
  xor64 r6, r5
  lsh64 r6, 0x20
  rsh64 r6, 0x20
  or64 r9, r6
  add64 r8, -0xc
  add64 r1, 0x1
  add64 r4, 0xc
  jeq r9, 0x0, jmp_1ed20

jmp_1ece8:
  jne r8, 0x0, jmp_1ec90
  mov64 r1, 0xffff
  ldxdw r2, [r10-0x38]
  stxw [r2+0x8], r1
  lddw r1, -0x8000000000000000
  ja jmp_1edc8

jmp_1ed20:
  jne r2, 0x0, jmp_1ed40
  lddw r1, data_34f8
  call fn_3fb80

jmp_1ed40:
  jgt r2, r1, jmp_1ed60
  lddw r3, data_3510
  call fn_3ffc8

jmp_1ed60:
  mul64 r2, 0xc
  add64 r2, r3
  ldxdw r1, [r2-0xc]
  ldxw r2, [r2-0x4]
  stxw [r4-0x4], r2
  stxdw [r4-0xc], r1
  ldxdw r1, [r7+0x10]
  jeq r1, 0x0, jmp_1edb0
  add64 r1, -0x1
  stxdw [r7+0x10], r1

jmp_1edb0:
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0x38]

jmp_1edc8:
  stxdw [r2+0x0], r1
  exit

fn_1edd8:
  mov64 r7, r3
  mov64 r8, r2
  mov64 r6, r1
  mov64 r1, r10
  add64 r1, -0x20
  mov64 r2, r7
  mov64 r3, 0xc
  call fn_34528
  jne r8, 0x0, jmp_1ee38
  lddw r1, data_3540
  call fn_47a70

jmp_1ee38:
  ldxdw r2, [r10-0x18]
  be64 r2
  ldxdw r3, [r10-0x20]
  be64 r3
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r8
  mov64 r5, 0x0
  call fn_4bd50
  ldxdw r1, [r10-0x30]
  jgt r8, r1, jmp_1eeb0
  mov64 r2, r8
  lddw r3, data_3528
  call fn_3ffc8

jmp_1eeb0:
  mul64 r1, 0x18
  add64 r6, r1
  ldxw r1, [r7+0x8]
  ldxdw r2, [r7+0x0]
  ldxdw r3, [r6+0x8]
  ldxdw r5, [r6+0x10]
  mul64 r5, 0xc

jmp_1eee8:
  mov64 r4, r5
  jeq r4, 0x0, jmp_1ef50
  ldxdw r0, [r3+0x0]
  xor64 r0, r2
  ldxw r5, [r3+0x8]
  xor64 r5, r1
  lsh64 r5, 0x20
  rsh64 r5, 0x20
  or64 r0, r5
  mov64 r5, r4
  add64 r5, -0xc
  add64 r3, 0xc
  jne r0, 0x0, jmp_1eee8

jmp_1ef50:
  mov64 r0, 0x1
  jne r4, 0x0, jmp_1ef68
  mov64 r0, 0x0

jmp_1ef68:
  exit

fn_1ef70:
  ldxdw r0, [r5-0xfe8]
  stxdw [r10-0x100], r0
  ldxdw r0, [r5-0xff0]
  jeq r0, 0x0, jmp_1f030
  ldxdw r6, [r5-0x1000]
  stxdw [r10-0x108], r6
  ldxdw r7, [r5-0xff8]
  mov64 r6, 0x0
  mov64 r5, r0
  mul64 r5, 0x18
  stxdw [r10-0xf8], r5
  mov64 r5, 0x0

jmp_1efd0:
  mov64 r8, r7
  add64 r8, r6
  ldxdw r9, [r8+0x0]
  jgt r9, r2, jmp_1f020
  sub64 r2, r9
  add64 r5, 0x1
  add64 r6, 0x18
  ldxdw r8, [r10-0xf8]
  jeq r8, r6, jmp_1f030
  ja jmp_1efd0

jmp_1f020:
  jeq r0, r5, jmp_1f030
  ja jmp_1f080

jmp_1f030:
  mov64 r9, 0x0
  mov64 r2, 0x1
  jeq r3, 0x0, jmp_1f050
  mov64 r2, 0x0

jmp_1f050:
  ldxdw r3, [r10-0x100]
  xor64 r3, 0x1
  or64 r2, r3

jmp_1f068:
  stxdw [r1+0x8], r9
  stxdw [r1+0x0], r2
  exit

jmp_1f080:
  stxdw [r10-0x120], r4
  jge r0, r5, jmp_1f0b8
  mov64 r1, r5
  mov64 r2, r0
  lddw r3, data_3558
  call fn_45190

jmp_1f0b8:
  add64 r7, r6
  mov64 r9, 0x0
  ldxb r4, [r7+0x10]
  jeq r4, 0x0, jmp_1f800
  stxdw [r10-0x130], r2
  stxdw [r10-0x118], r3
  stxdw [r10-0x110], r1
  ldxdw r4, [r7+0x8]
  stxdw [r10-0x128], r4
  mov64 r1, r10
  add64 r1, -0x20
  ldxdw r2, [r10-0x108]
  mov64 r3, 0x0
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0x10
  ldxdw r2, [r10-0x120]
  mov64 r3, 0x0
  ldxdw r4, [r10-0x128]
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r2, 0x1
  ldxdw r1, [r10-0x18]
  mov64 r4, 0x1
  jne r1, 0x0, jmp_1f190
  mov64 r4, 0x0

jmp_1f190:
  ldxdw r1, [r10-0x20]
  ldxdw r5, [r10-0x8]
  mov64 r3, r5
  add64 r3, r1
  ldxdw r1, [r10-0x110]
  jgt r5, r3, jmp_1f1c8
  mov64 r2, 0x0

jmp_1f1c8:
  or64 r4, r2
  and64 r4, 0x1
  mov64 r2, 0x0
  jne r4, 0x0, jmp_1f068
  ldxdw r2, [r10-0x10]
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, 0xf4240
  mov64 r5, 0x0
  call fn_49780
  ldxdw r7, [r7+0x0]
  ldxdw r1, [r10-0x130]
  sub64 r7, r1
  ldxdw r2, [r10-0x28]
  ldxdw r9, [r10-0x30]
  mov64 r1, 0x0
  stxdw [r10-0x128], r1
  ldxdw r1, [r10-0x118]
  jgt r7, r1, jmp_1f5e8
  mov64 r1, r10
  add64 r1, -0x50
  stxdw [r10-0x128], r9
  mov64 r9, 0x0
  mov64 r3, 0x0
  mov64 r4, r7
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0x40
  mov64 r2, r7
  mov64 r3, 0x0
  ldxdw r4, [r10-0x128]
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r2, 0x1
  ldxdw r1, [r10-0x48]
  mov64 r4, 0x1
  jne r1, 0x0, jmp_1f300
  mov64 r4, 0x0

jmp_1f300:
  ldxdw r5, [r10-0x38]
  ldxdw r1, [r10-0x50]
  mov64 r3, r5
  add64 r3, r1
  ldxdw r1, [r10-0x110]
  jgt r5, r3, jmp_1f338
  mov64 r2, 0x0

jmp_1f338:
  or64 r4, r2
  and64 r4, 0x1
  mov64 r2, 0x0
  jne r4, 0x0, jmp_1f068
  mov64 r9, r7
  ldxdw r7, [r10-0xf8]
  add64 r7, -0x18
  ldxdw r2, [r10-0x40]
  mov64 r1, r10
  add64 r1, -0x60
  lddw r4, 0x38d7ea4c68000
  mov64 r5, 0x0
  call fn_49780
  ldxdw r1, [r10-0x110]
  ldxdw r3, [r10-0x118]
  sub64 r3, r9
  ldxdw r9, [r10-0x60]
  jeq r7, r6, jmp_1f800
  ldxdw r2, [r10-0xf8]
  sub64 r2, r6
  add64 r2, -0x18
  stxdw [r10-0xf8], r2
  add64 r8, 0x28
  ja jmp_1f468

jmp_1f400:
  and64 r3, 0x1
  mov64 r2, 0x0
  ldxdw r1, [r10-0x110]
  jne r3, 0x0, jmp_1f068
  ldxdw r3, [r10-0x118]
  ldxdw r2, [r10-0x130]
  sub64 r3, r2
  add64 r8, 0x18
  ldxdw r2, [r10-0xf8]
  add64 r2, -0x18
  mov64 r9, r4
  stxdw [r10-0xf8], r2
  jeq r2, 0x0, jmp_1f800

jmp_1f468:
  ldxb r2, [r8+0x0]
  jne r2, 0x0, jmp_1f480
  ja jmp_1f800

jmp_1f480:
  stxdw [r10-0x128], r9
  stxdw [r10-0x118], r3
  ldxdw r6, [r8-0x8]
  mov64 r1, r10
  add64 r1, -0x80
  mov64 r9, 0x0
  ldxdw r2, [r10-0x108]
  mov64 r3, 0x0
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0x70
  ldxdw r2, [r10-0x120]
  mov64 r3, 0x0
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r2, 0x1
  ldxdw r1, [r10-0x78]
  mov64 r4, 0x1
  jne r1, 0x0, jmp_1f538
  mov64 r4, 0x0

jmp_1f538:
  ldxdw r1, [r10-0x80]
  ldxdw r5, [r10-0x68]
  mov64 r3, r5
  add64 r3, r1
  ldxdw r1, [r10-0x110]
  jgt r5, r3, jmp_1f570
  mov64 r2, 0x0

jmp_1f570:
  or64 r4, r2
  and64 r4, 0x1
  mov64 r2, 0x0
  jne r4, 0x0, jmp_1f068
  ldxdw r2, [r10-0x70]
  mov64 r1, r10
  add64 r1, -0x90
  mov64 r4, 0xf4240
  mov64 r5, 0x0
  call fn_49780
  ldxdw r2, [r10-0x88]
  ldxdw r9, [r10-0x90]
  ldxdw r7, [r8-0x10]
  ldxdw r1, [r10-0x118]
  jge r1, r7, jmp_1f688

jmp_1f5e8:
  mov64 r1, r10
  add64 r1, -0xe0
  mov64 r3, 0x0
  ldxdw r6, [r10-0x118]
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0xd0
  mov64 r2, r6
  mov64 r3, 0x0
  mov64 r4, r9
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r2, 0x1
  ldxdw r1, [r10-0xd8]
  mov64 r4, 0x1
  jne r1, 0x0, jmp_1f850
  mov64 r4, 0x0
  ja jmp_1f850

jmp_1f688:
  mov64 r1, r10
  add64 r1, -0xb0
  mov64 r6, r9
  mov64 r9, 0x0
  mov64 r3, 0x0
  mov64 r4, r7
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0xa0
  stxdw [r10-0x130], r7
  mov64 r2, r7
  mov64 r3, 0x0
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r2, 0x1
  ldxdw r1, [r10-0xa8]
  mov64 r4, 0x1
  jne r1, 0x0, jmp_1f730
  mov64 r4, 0x0

jmp_1f730:
  ldxdw r5, [r10-0x98]
  ldxdw r1, [r10-0xb0]
  mov64 r3, r5
  add64 r3, r1
  ldxdw r1, [r10-0x110]
  jgt r5, r3, jmp_1f768
  mov64 r2, 0x0

jmp_1f768:
  or64 r4, r2
  and64 r4, 0x1
  mov64 r2, 0x0
  jne r4, 0x0, jmp_1f068
  ldxdw r2, [r10-0xa0]
  mov64 r1, r10
  add64 r1, -0xc0
  lddw r4, 0x38d7ea4c68000
  mov64 r5, 0x0
  call fn_49780
  ldxdw r1, [r10-0xc0]
  ldxdw r2, [r10-0x128]
  mov64 r4, r2
  add64 r4, r1
  mov64 r3, 0x1
  jgt r2, r4, jmp_1f400
  mov64 r3, 0x0
  ja jmp_1f400

jmp_1f800:
  mov64 r2, 0x1
  mov64 r4, r9
  jeq r3, 0x0, jmp_1f068
  mov64 r9, r4
  ldxdw r3, [r10-0x100]
  jne r3, 0x0, jmp_1f838
  ja jmp_1f068

jmp_1f838:
  mov64 r9, 0x0
  mov64 r2, 0x0
  ja jmp_1f068

jmp_1f850:
  ldxdw r5, [r10-0xc8]
  ldxdw r1, [r10-0xe0]
  mov64 r3, r5
  add64 r3, r1
  ldxdw r1, [r10-0x110]
  jgt r5, r3, jmp_1f888
  mov64 r2, 0x0

jmp_1f888:
  or64 r4, r2
  and64 r4, 0x1
  mov64 r9, 0x0
  mov64 r2, 0x0
  jne r4, 0x0, jmp_1f068
  ldxdw r2, [r10-0xd0]
  mov64 r1, r10
  add64 r1, -0xf0
  lddw r4, 0x38d7ea4c68000
  mov64 r5, 0x0
  call fn_49780
  ldxdw r1, [r10-0xf0]
  ldxdw r2, [r10-0x128]
  mov64 r3, r2
  add64 r3, r1
  mov64 r4, 0x1
  jgt r2, r3, jmp_1f920
  mov64 r4, 0x0

jmp_1f920:
  and64 r4, 0x1
  mov64 r2, 0x0
  ldxdw r1, [r10-0x110]
  jne r4, 0x0, jmp_1f068
  mov64 r2, 0x1
  mov64 r9, r3
  ja jmp_1f068

fn_1f958:
  mov64 r0, 0x0
  jgt r3, r4, jmp_1f980
  sub64 r4, r3
  ldxdw r3, [r2+0x0]
  jgt r3, r4, jmp_1f998

jmp_1f980:
  stxw [r1+0x4], r5
  stxw [r1+0x0], r0
  exit

jmp_1f998:
  mov64 r0, 0x1
  mov64 r5, 0x0
  ldxdw r3, [r2+0x8]
  jgt r3, r4, jmp_1f980
  sub64 r4, r3
  mov64 r0, 0x0
  lddw r3, 0xfffffffe
  jgt r4, r3, jmp_1f980
  add64 r4, 0x1
  ldxw r5, [r2+0x10]
  mov64 r3, r4
  lsh64 r3, 0x20
  rsh64 r3, 0x20
  mul64 r5, r3
  mov64 r3, r5
  rsh64 r3, 0x20
  jne r3, 0x0, jmp_1fa28

jmp_1fa28:
  jne r3, 0x0, jmp_1f980
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  lsh64 r5, 0x20
  rsh64 r5, 0x20
  mul64 r5, r4
  mov64 r3, r5
  lsh64 r3, 0x20
  rsh64 r3, 0x20
  ldxw r2, [r2+0x14]
  jgt r3, r2, jmp_1fa88
  mov64 r2, r3

jmp_1fa88:
  mov64 r3, r5
  rsh64 r3, 0x20
  jne r3, 0x0, jmp_1faa8
  mov64 r5, r2

jmp_1faa8:
  mov64 r0, 0x1
  jeq r3, 0x0, jmp_1f980
  mov64 r0, 0x0
  ja jmp_1f980

fn_1fac8:
  mov64 r0, 0x0
  jeq r3, 0x0, jmp_1fb80
  mov64 r6, 0x1
  mov64 r5, 0x1
  jsgt r3, 0x0, jmp_1faf8
  mov64 r5, 0x0

jmp_1faf8:
  mov64 r7, r4
  sub64 r7, r3
  jsgt r4, r7, jmp_1fb18
  mov64 r6, 0x0

jmp_1fb18:
  xor64 r5, r6
  mov64 r6, r7
  arsh64 r6, 0x3f
  lddw r8, -0x8000000000000000
  xor64 r6, r8
  jne r5, 0x0, jmp_1fb58
  mov64 r6, r7

jmp_1fb58:
  div64 r6, 0xf4240
  jsgt r4, r3, jmp_1fb70
  mov64 r6, 0x0

jmp_1fb70:
  ldxh r3, [r1+0x0]
  jge r6, r3, jmp_1fb88

jmp_1fb80:
  exit

jmp_1fb88:
  mov64 r7, r2
  sub64 r6, r3
  add64 r6, 0x1
  ldxh r2, [r1+0x2]
  mov64 r1, r10
  add64 r1, -0x10
  mov64 r3, 0x0
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0x40
  ldxdw r2, [r10-0x8]
  mov64 r3, 0x0
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0x30
  ldxdw r2, [r10-0x10]
  mov64 r3, 0x0
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4b0a0
  ldxdw r1, [r10-0x40]
  ldxdw r8, [r10-0x28]
  mov64 r6, r8
  add64 r6, r1
  mov64 r1, r10
  add64 r1, -0x20
  ldxdw r2, [r10-0x30]
  mov64 r3, r6
  mov64 r4, 0x2710
  mov64 r5, 0x0
  call fn_49780
  mov64 r1, 0x1
  mov64 r2, 0x1
  jgt r8, r6, jmp_1fcc0
  mov64 r2, 0x0

jmp_1fcc0:
  ldxdw r4, [r10-0x38]
  mov64 r3, 0x1
  jne r4, 0x0, jmp_1fce0
  mov64 r3, 0x0

jmp_1fce0:
  or64 r3, r2
  lddw r2, 0x68db8bac710cb
  jne r3, 0x0, jmp_1fd08
  ldxdw r2, [r10-0x18]

jmp_1fd08:
  lddw r0, 0x295e9e1b089a0275
  jne r3, 0x0, jmp_1fd28
  ldxdw r0, [r10-0x20]

jmp_1fd28:
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  jgt r7, r0, jmp_1fd48
  mov64 r1, 0x0

jmp_1fd48:
  jeq r2, 0x0, jmp_1fd58
  mov64 r1, 0x0

jmp_1fd58:
  jne r1, 0x0, jmp_1fb80
  mov64 r0, r7
  ja jmp_1fb80

fn_1fd70:
  mov64 r6, r3
  mov64 r7, r1
  ldxdw r1, [r5-0xfd8]
  ldxdw r9, [r5-0xfe8]
  mov64 r0, r1
  jeq r9, 0x0, jmp_1fdb0
  ldxdw r0, [r5-0xfe0]
  jne r1, 0x0, jmp_1fde0

jmp_1fdb0:
  stxdw [r7+0x18], r0
  stxdw [r7+0x10], r6
  stxdw [r7+0x8], r2
  mov64 r6, 0x1

jmp_1fdd0:
  stxdw [r7+0x0], r6
  exit

jmp_1fde0:
  stxdw [r10-0xf0], r4
  stxdw [r10-0xe8], r6
  mov64 r6, 0x0
  mov64 r8, 0x1
  mov64 r3, 0x1
  jsgt r1, 0x0, jmp_1fe18
  mov64 r3, 0x0

jmp_1fe18:
  stxdw [r10-0xe0], r7
  mov64 r7, r0
  mov64 r4, r7
  sub64 r4, r1
  mov64 r0, 0x1
  stxdw [r10-0xd8], r7
  jsgt r7, r4, jmp_1fe58
  mov64 r0, 0x0

jmp_1fe58:
  xor64 r3, r0
  mov64 r7, r4
  arsh64 r7, 0x3f
  lddw r0, -0x8000000000000000
  xor64 r7, r0
  jne r3, 0x0, jmp_1fe98
  mov64 r7, r4

jmp_1fe98:
  stxdw [r10-0x100], r2
  ldxdw r2, [r10-0xd8]
  jsgt r2, r1, jmp_1feb8
  mov64 r7, 0x0

jmp_1feb8:
  ldxdw r1, [r5-0xff0]
  stxdw [r10-0x110], r1
  ldxdw r1, [r5-0xff8]
  stxdw [r10-0x108], r1
  ldxdw r1, [r5-0x1000]
  stxdw [r10-0xf8], r1
  mov64 r2, r7
  arsh64 r2, 0x3f
  mov64 r1, r10
  add64 r1, -0x20
  mov64 r3, 0x0
  mov64 r4, r9
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0x10
  mov64 r2, r9
  mov64 r3, 0x0
  mov64 r4, r7
  mov64 r5, 0x0
  call fn_4b0a0
  ldxdw r2, [r10-0x18]
  mov64 r1, 0x1
  jne r2, 0x0, jmp_1ff80
  mov64 r1, 0x0

jmp_1ff80:
  ldxdw r2, [r10-0x8]
  ldxdw r4, [r10-0x20]
  mov64 r3, r2
  add64 r3, r4
  ldxdw r7, [r10-0xe0]
  jgt r2, r3, jmp_1ffb8
  mov64 r8, 0x0

jmp_1ffb8:
  or64 r1, r8
  and64 r1, 0x1
  jne r1, 0x0, jmp_1fdd0
  ldxdw r2, [r10-0x10]
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, 0x3b9aca00
  mov64 r5, 0x0
  call fn_49780
  mov64 r1, r10
  add64 r1, -0x50
  ldxdw r2, [r10-0xf8]
  mov64 r3, 0x0
  ldxdw r8, [r10-0xe8]
  mov64 r4, r8
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0x40
  mov64 r2, r8
  mov64 r3, 0x0
  ldxdw r4, [r10-0xf0]
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r2, 0x1
  ldxdw r3, [r10-0x48]
  mov64 r1, 0x1
  jne r3, 0x0, jmp_200a0
  mov64 r1, 0x0

jmp_200a0:
  ldxdw r4, [r10-0x38]
  ldxdw r5, [r10-0x50]
  mov64 r3, r4
  add64 r3, r5
  jgt r4, r3, jmp_200d0
  mov64 r2, 0x0

jmp_200d0:
  or64 r1, r2
  and64 r1, 0x1
  jne r1, 0x0, jmp_1fdd0
  ldxdw r2, [r10-0x40]
  ldxdw r8, [r10-0x28]
  ldxdw r9, [r10-0x30]
  mov64 r1, r10
  add64 r1, -0x60
  lddw r4, 0x38d7ea4c68000
  mov64 r5, 0x0
  call fn_49780
  mov64 r3, 0x1
  ldxdw r5, [r10-0x60]
  mov64 r2, 0x1
  ldxdw r1, [r10-0x100]
  jge r1, r5, jmp_20160
  mov64 r2, 0x0

jmp_20160:
  ldxdw r4, [r10-0x58]
  jeq r4, 0x0, jmp_20178
  mov64 r3, 0x0

jmp_20178:
  jeq r4, 0x0, jmp_20188
  mov64 r2, r3

jmp_20188:
  and64 r2, 0x1
  jne r2, 0x0, jmp_20638
  mov64 r1, r10
  add64 r1, -0x90
  stxdw [r10-0xf0], r8
  mov64 r2, r8
  mov64 r3, 0x0
  ldxdw r4, [r10-0x108]
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0x80
  ldxdw r8, [r10-0x110]
  mov64 r2, r8
  mov64 r3, 0x0
  mov64 r4, r9
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0x70
  mov64 r2, r9
  mov64 r3, 0x0
  ldxdw r4, [r10-0x108]
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, 0x1
  mov64 r3, 0x1
  jne r8, 0x0, jmp_20270
  mov64 r3, 0x0

jmp_20270:
  mov64 r2, 0x1
  ldxdw r4, [r10-0xf0]
  jne r4, 0x0, jmp_20290
  mov64 r2, 0x0

jmp_20290:
  and64 r2, r3
  ldxdw r4, [r10-0x88]
  mov64 r3, 0x1
  jne r4, 0x0, jmp_202b8
  mov64 r3, 0x0

jmp_202b8:
  or64 r2, r3
  ldxdw r4, [r10-0x78]
  mov64 r3, 0x1
  jne r4, 0x0, jmp_202e0
  mov64 r3, 0x0

jmp_202e0:
  or64 r2, r3
  ldxdw r3, [r10-0x80]
  ldxdw r4, [r10-0x90]
  add64 r4, r3
  ldxdw r3, [r10-0x68]
  mov64 r8, r3
  add64 r8, r4
  jgt r3, r8, jmp_20328
  mov64 r1, 0x0

jmp_20328:
  or64 r2, r1
  and64 r2, 0x1
  jne r2, 0x0, jmp_1fdd0
  ldxdw r1, [r10-0x70]
  stxdw [r10-0xf0], r1
  mov64 r1, r10
  add64 r1, -0xb0
  ldxdw r2, [r10-0x110]
  mov64 r3, 0x0
  ldxdw r9, [r10-0x100]
  mov64 r4, r9
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0xa0
  mov64 r2, r9
  mov64 r3, 0x0
  ldxdw r4, [r10-0x108]
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r2, 0x1
  ldxdw r3, [r10-0xa8]
  mov64 r1, 0x1
  jne r3, 0x0, jmp_203f0
  mov64 r1, 0x0

jmp_203f0:
  ldxdw r3, [r10-0x98]
  ldxdw r4, [r10-0xb0]
  mov64 r9, r3
  add64 r9, r4
  jgt r3, r9, jmp_20420
  mov64 r2, 0x0

jmp_20420:
  or64 r1, r2
  and64 r1, 0x1
  jne r1, 0x0, jmp_1fdd0
  ldxdw r7, [r10-0xa0]
  mov64 r1, r10
  add64 r1, -0xd0
  ldxdw r2, [r10-0xf0]
  mov64 r3, r8
  lddw r4, 0x38d7ea4c68000
  mov64 r5, 0x0
  call fn_49780
  mov64 r1, r10
  add64 r1, -0xc0
  mov64 r2, r7
  mov64 r3, r9
  lddw r4, 0x38d7ea4c68000
  mov64 r5, 0x0
  call fn_49780
  mov64 r1, 0x1
  ldxdw r2, [r10-0xc0]
  mov64 r4, 0x1
  ldxdw r7, [r10-0xe8]
  jgt r2, r7, jmp_204f0
  mov64 r4, 0x0

jmp_204f0:
  ldxdw r3, [r10-0xb8]
  add64 r3, r4
  neg64 r3
  mov64 r5, r7
  sub64 r5, r2
  mov64 r4, 0x1
  ldxdw r2, [r10-0x100]
  jne r3, 0x0, jmp_20538
  mov64 r4, 0x0

jmp_20538:
  mov64 r0, 0x1
  jgt r5, r7, jmp_20550
  mov64 r0, 0x0

jmp_20550:
  jeq r3, 0x0, jmp_20560
  mov64 r0, r4

jmp_20560:
  mov64 r4, 0x0
  jne r0, 0x0, jmp_20578
  mov64 r4, r5

jmp_20578:
  mov64 r5, 0x0
  jne r0, 0x0, jmp_20590
  mov64 r5, r3

jmp_20590:
  ldxdw r3, [r10-0xd0]
  ldxdw r0, [r10-0xc8]
  mov64 r7, 0x1
  jgt r5, r0, jmp_205b8
  mov64 r7, 0x0

jmp_205b8:
  mov64 r8, 0x1
  jgt r4, r3, jmp_205d0
  mov64 r8, 0x0

jmp_205d0:
  jeq r0, r5, jmp_205e0
  mov64 r8, r7

jmp_205e0:
  jne r8, 0x0, jmp_205f0
  mov64 r3, r4

jmp_205f0:
  ldxdw r5, [r10-0xe8]
  mov64 r4, r5
  sub64 r4, r3
  ldxdw r7, [r10-0xe0]
  jgt r4, r5, jmp_20620
  mov64 r1, 0x0

jmp_20620:
  jne r1, 0x0, jmp_20778
  mov64 r6, r4
  ja jmp_20778

jmp_20638:
  mov64 r2, 0x0
  mov64 r3, 0x1
  mov64 r0, 0x1
  jgt r5, r1, jmp_20660
  mov64 r0, 0x0

jmp_20660:
  add64 r4, r0
  neg64 r4
  mov64 r0, r1
  sub64 r0, r5
  mov64 r5, 0x1
  jne r4, 0x0, jmp_20698
  mov64 r5, 0x0

jmp_20698:
  mov64 r6, 0x1
  jgt r0, r1, jmp_206b0
  mov64 r6, 0x0

jmp_206b0:
  jeq r4, 0x0, jmp_206c0
  mov64 r6, r5

jmp_206c0:
  mov64 r5, 0x0
  jne r6, 0x0, jmp_206d8
  mov64 r5, r0

jmp_206d8:
  mov64 r0, 0x0
  jne r6, 0x0, jmp_206f0
  mov64 r0, r4

jmp_206f0:
  mov64 r4, 0x1
  jgt r0, r8, jmp_20708
  mov64 r4, 0x0

jmp_20708:
  mov64 r6, 0x1
  jgt r5, r9, jmp_20720
  mov64 r6, 0x0

jmp_20720:
  jeq r8, r0, jmp_20730
  mov64 r6, r4

jmp_20730:
  jne r6, 0x0, jmp_20740
  mov64 r9, r5

jmp_20740:
  mov64 r4, r1
  sub64 r4, r9
  jgt r4, r1, jmp_20760
  mov64 r3, 0x0

jmp_20760:
  ldxdw r6, [r10-0xe8]
  jne r3, 0x0, jmp_20778
  mov64 r2, r4

jmp_20778:
  ldxdw r0, [r10-0xd8]
  ja jmp_1fdb0

fn_20788:
  mov64 r9, r3
  mov64 r7, r2
  mov64 r8, r1
  ldxdw r3, [r7+0x0]
  ldxdw r2, [r9+0x0]
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0xe8], r2
  stxdw [r10-0xf0], r3
  mov64 r4, 0x2
  mov64 r5, 0x0
  call fn_2cec8
  ldxdw r1, [r10-0x58]
  stxdw [r10-0x78], r1
  ldxdw r1, [r10-0x50]
  stxdw [r10-0x70], r1
  ldxdw r1, [r10-0x48]
  stxdw [r10-0x68], r1
  ldxdw r6, [r10-0x60]
  lddw r1, -0x8000000000000000
  jeq r6, r1, jmp_208f0
  stxdw [r10-0xf8], r8
  mov64 r1, r10
  add64 r1, -0xa8
  mov64 r2, r10
  add64 r2, -0x40
  mov64 r3, 0x30
  call fn_490d0
  stxdw [r10-0xc8], r6
  ldxdw r1, [r10-0x78]
  stxdw [r10-0xc0], r1
  ldxdw r1, [r10-0x70]
  stxdw [r10-0xb8], r1
  ldxdw r1, [r10-0x68]
  stxdw [r10-0xb0], r1
  ldxdw r0, [r7+0x8]
  ldxdw r2, [r0+0x0]
  add64 r2, 0x1
  mov64 r3, 0x1
  jeq r2, 0x0, jmp_208d8
  mov64 r3, 0x0

jmp_208d8:
  stxdw [r0+0x0], r2
  jne r3, 0x1, jmp_20928

jmp_208e8:
  call abort

jmp_208f0:
  ldxdw r1, [r10-0x68]
  stxdw [r8+0x10], r1
  ldxdw r1, [r10-0x70]
  stxdw [r8+0x8], r1
  ldxdw r1, [r10-0x78]
  stxdw [r8+0x0], r1
  ja jmp_20f60

jmp_20928:
  ldxdw r6, [r7+0x10]
  ldxdw r3, [r6+0x0]
  add64 r3, 0x1
  mov64 r4, 0x1
  jeq r3, 0x0, jmp_20958
  mov64 r4, 0x0

jmp_20958:
  stxdw [r6+0x0], r3
  jne r4, 0x1, jmp_20970
  ja jmp_208e8

jmp_20970:
  ldxdw r3, [r9+0x8]
  ldxdw r4, [r3+0x0]
  add64 r4, 0x1
  mov64 r5, 0x1
  jeq r4, 0x0, jmp_209a0
  mov64 r5, 0x0

jmp_209a0:
  ldxb r1, [r7+0x2a]
  stxdw [r10-0x108], r1
  ldxb r1, [r7+0x29]
  stxdw [r10-0x100], r1
  ldxb r2, [r7+0x28]
  ldxdw r8, [r7+0x20]
  ldxdw r1, [r7+0x18]
  stxdw [r3+0x0], r4
  jne r5, 0x1, jmp_209f0
  ja jmp_208e8

jmp_209f0:
  ldxdw r7, [r9+0x10]
  ldxdw r4, [r7+0x0]
  add64 r4, 0x1
  mov64 r5, 0x1
  jeq r4, 0x0, jmp_20a20
  mov64 r5, 0x0

jmp_20a20:
  stxdw [r10-0x118], r6
  stxdw [r10-0x110], r0
  stxdw [r7+0x0], r4
  jne r5, 0x1, jmp_20a48
  ja jmp_208e8

jmp_20a48:
  ldxdw r4, [r9+0x18]
  ldxdw r5, [r9+0x20]
  ldxb r0, [r9+0x28]
  ldxb r6, [r9+0x29]
  ldxb r9, [r9+0x2a]
  stxb [r10-0x6], r9
  stxb [r10-0x7], r6
  stxb [r10-0x8], r0
  stxdw [r10-0x10], r5
  stxdw [r10-0x18], r4
  stxdw [r10-0x20], r7
  stxdw [r10-0x28], r3
  ldxdw r6, [r10-0xe8]
  stxdw [r10-0x30], r6
  ldxdw r3, [r10-0x108]
  stxb [r10-0x36], r3
  ldxdw r3, [r10-0x100]
  stxb [r10-0x37], r3
  stxb [r10-0x38], r2
  stxdw [r10-0x40], r8
  stxdw [r10-0x48], r1
  ldxdw r1, [r10-0x118]
  stxdw [r10-0x50], r1
  ldxdw r1, [r10-0x110]
  stxdw [r10-0x58], r1
  ldxdw r1, [r10-0xf0]
  stxdw [r10-0x60], r1
  mov64 r1, r10
  add64 r1, -0xe0
  mov64 r2, r10
  add64 r2, -0xc8
  mov64 r3, r10
  add64 r3, -0x60
  mov64 r4, 0x2
  call fn_2da50
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0xe0]
  jeq r2, r1, jmp_20b88
  ja jmp_20ce0

jmp_20b88:
  ldxdw r1, [r10-0x50]
  ldxdw r2, [r10-0x58]
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_20bd0
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_20bd0:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  jne r2, 0x0, jmp_20c08
  ldxdw r2, [r1+0x8]
  add64 r2, -0x1
  stxdw [r1+0x8], r2

jmp_20c08:
  ldxdw r1, [r10-0x20]
  ldxdw r2, [r10-0x28]
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_20c50
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_20c50:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  jne r2, 0x0, jmp_20c88
  ldxdw r2, [r1+0x8]
  add64 r2, -0x1
  stxdw [r1+0x8], r2

jmp_20c88:
  mov64 r1, r10
  add64 r1, -0xc8
  call fn_2de68
  lddw r1, -0x8000000000000000
  ldxdw r2, [r10-0xa8]
  jeq r2, r1, jmp_20cc8
  ja jmp_20e20

jmp_20cc8:
  lddw r1, -0x7ffffffffffffffe
  ja jmp_20f50

jmp_20ce0:
  ldxdw r1, [r10-0xd0]
  ldxdw r8, [r10-0xf8]
  stxdw [r8+0x10], r1
  ldxdw r1, [r10-0xd8]
  stxdw [r8+0x8], r1
  ldxdw r1, [r10-0xe0]
  stxdw [r8+0x0], r1
  ldxdw r1, [r10-0x50]
  ldxdw r2, [r10-0x58]
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_20d60
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_20d60:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  jne r2, 0x0, jmp_20d98
  ldxdw r2, [r1+0x8]
  add64 r2, -0x1
  stxdw [r1+0x8], r2

jmp_20d98:
  ldxdw r1, [r10-0x20]
  ldxdw r2, [r10-0x28]
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_20de0
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_20de0:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  jne r2, 0x0, jmp_20f60
  ldxdw r2, [r1+0x8]
  add64 r2, -0x1
  stxdw [r1+0x8], r2
  ja jmp_20f60

jmp_20e20:
  ldxdw r2, [r10-0xc8]
  ldxdw r1, [r10-0xc0]
  ldxdw r3, [r10-0xb8]
  ldxdw r4, [r10-0xb0]
  ldxdw r5, [r10-0x98]
  stxdw [r10-0x30], r5
  stxdw [r10-0x48], r4
  stxdw [r10-0x50], r3
  stxdw [r10-0x58], r1
  ldxdw r1, [r10-0xa0]
  stxdw [r10-0x38], r1
  stxdw [r10-0x60], r2
  ldxdw r3, [r6+0x0]
  jeq r2, r3, jmp_20ea0

jmp_20e90:
  mov64 r2, 0x1
  ja jmp_20ef0

jmp_20ea0:
  ldxdw r2, [r6+0x8]
  ldxdw r3, [r10-0x58]
  jne r3, r2, jmp_20e90
  ldxdw r2, [r6+0x10]
  ldxdw r3, [r10-0x50]
  jne r3, r2, jmp_20e90
  mov64 r2, 0x0
  ldxdw r3, [r6+0x18]
  ldxdw r4, [r10-0x48]
  jne r4, r3, jmp_20e90

jmp_20ef0:
  jne r2, 0x0, jmp_20f40
  ldxdw r2, [r10-0x30]
  ldxdw r8, [r10-0xf8]
  jne r2, 0x8, jmp_20f68
  ldxdw r1, [r1+0x0]
  lddw r2, -0x7fffffffffffffe6
  stxdw [r8+0x0], r2
  stxdw [r8+0x8], r1
  ja jmp_20f60

jmp_20f40:
  lddw r1, -0x7ffffffffffffffa

jmp_20f50:
  ldxdw r2, [r10-0xf8]
  stxdw [r2+0x0], r1

jmp_20f60:
  exit

jmp_20f68:
  lddw r1, -0x7ffffffffffffffe
  stxdw [r8+0x0], r1
  ja jmp_20f60

fn_20f88:
  mov64 r9, r5
  stxdw [r10-0x170], r4
  mov64 r8, r1
  stxdw [r10-0x168], r2
  ldxdw r4, [r2+0x0]
  stxdw [r10-0x160], r3
  ldxdw r5, [r3+0x0]
  ldxdw r7, [r9-0xff8]
  ldxdw r3, [r7+0x0]
  ldxdw r1, [r9-0xff0]
  stxdw [r10-0x158], r1
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r9-0xfe0]
  stxdw [r10-0xfe0], r1
  ldxdw r1, [r9-0xfd8]
  stxdw [r10-0xfd8], r1
  mov64 r1, 0x0
  stxdw [r10-0xfe8], r1
  mov64 r1, 0x8
  stxdw [r10-0xff0], r1
  stxdw [r10-0x190], r5
  stxdw [r10-0xff8], r5
  stxdw [r10-0x188], r2
  stxdw [r10-0x1000], r2
  ldxdw r2, [r9-0xfe8]
  mov64 r1, r10
  add64 r1, -0xd0
  mov64 r5, r10
  stxdw [r10-0x178], r3
  stxdw [r10-0x180], r4
  call fn_2c6c8
  ldxdw r1, [r10-0xc8]
  stxdw [r10-0xe8], r1
  ldxdw r1, [r10-0xc0]
  stxdw [r10-0xe0], r1
  ldxdw r1, [r10-0xb8]
  stxdw [r10-0xd8], r1
  ldxdw r6, [r10-0xd0]
  lddw r1, -0x8000000000000000
  jeq r6, r1, jmp_211a0
  stxdw [r10-0x198], r8
  ldxdw r9, [r9-0x1000]
  mov64 r1, r10
  add64 r1, -0x118
  mov64 r2, r10
  add64 r2, -0xb0
  mov64 r3, 0x30
  call fn_490d0
  stxdw [r10-0x138], r6
  ldxdw r1, [r10-0xe8]
  stxdw [r10-0x130], r1
  ldxdw r1, [r10-0xe0]
  stxdw [r10-0x128], r1
  ldxdw r1, [r10-0xd8]
  stxdw [r10-0x120], r1
  ldxdw r6, [r7+0x8]
  ldxdw r1, [r6+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_21178
  mov64 r2, 0x0

jmp_21178:
  stxdw [r6+0x0], r1
  ldxdw r8, [r10-0x160]
  ldxdw r4, [r10-0x168]
  jne r2, 0x1, jmp_211d8

jmp_21198:
  call abort

jmp_211a0:
  ldxdw r1, [r10-0xd8]
  stxdw [r8+0x10], r1
  ldxdw r1, [r10-0xe0]
  stxdw [r8+0x8], r1
  ldxdw r1, [r10-0xe8]
  stxdw [r8+0x0], r1
  ja jmp_21808

jmp_211d8:
  ldxdw r3, [r7+0x10]
  ldxdw r1, [r3+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_21208
  mov64 r2, 0x0

jmp_21208:
  stxdw [r3+0x0], r1
  jne r2, 0x1, jmp_21220
  ja jmp_21198

jmp_21220:
  ldxdw r0, [r4+0x8]
  ldxdw r1, [r0+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_21250
  mov64 r2, 0x0

jmp_21250:
  ldxb r5, [r7+0x2a]
  stxdw [r10-0x1b8], r5
  ldxb r5, [r7+0x29]
  stxdw [r10-0x1b0], r5
  ldxb r5, [r7+0x28]
  stxdw [r10-0x1a8], r5
  ldxdw r5, [r7+0x20]
  stxdw [r10-0x1a0], r5
  ldxdw r5, [r7+0x18]
  stxdw [r0+0x0], r1
  jne r2, 0x1, jmp_212b0
  ja jmp_21198

jmp_212b0:
  ldxdw r7, [r4+0x10]
  ldxdw r1, [r7+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_212e0
  mov64 r2, 0x0

jmp_212e0:
  stxdw [r10-0x1c0], r7
  stxdw [r7+0x0], r1
  jne r2, 0x1, jmp_21300
  ja jmp_21198

jmp_21300:
  ldxdw r1, [r10-0x158]
  ldxdw r7, [r1+0x8]
  ldxdw r1, [r7+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_21338
  mov64 r2, 0x0

jmp_21338:
  stxdw [r10-0x1c8], r5
  ldxb r5, [r4+0x2a]
  stxdw [r10-0x1e8], r5
  ldxb r5, [r4+0x29]
  stxdw [r10-0x1e0], r5
  ldxb r5, [r4+0x28]
  stxdw [r10-0x1d8], r5
  ldxdw r5, [r4+0x20]
  stxdw [r10-0x1d0], r5
  ldxdw r4, [r4+0x18]
  stxdw [r7+0x0], r1
  jne r2, 0x1, jmp_213a0
  ja jmp_21198

jmp_213a0:
  ldxdw r1, [r10-0x158]
  ldxdw r5, [r1+0x10]
  ldxdw r1, [r5+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_213d8
  mov64 r2, 0x0

jmp_213d8:
  stxdw [r10-0x1f8], r4
  stxdw [r10-0x1f0], r0
  stxdw [r10-0x168], r3
  stxdw [r5+0x0], r1
  jne r2, 0x1, jmp_21408
  ja jmp_21198

jmp_21408:
  stxdw [r10-0x210], r5
  stxdw [r10-0x208], r7
  stxdw [r10-0x200], r9
  ldxdw r0, [r8+0x8]
  ldxdw r3, [r0+0x0]
  add64 r3, 0x1
  mov64 r4, 0x1
  jeq r3, 0x0, jmp_21450
  mov64 r4, 0x0

jmp_21450:
  ldxdw r1, [r10-0x158]
  ldxb r2, [r1+0x2a]
  stxdw [r10-0x218], r2
  ldxb r2, [r1+0x29]
  ldxb r5, [r1+0x28]
  ldxdw r7, [r1+0x20]
  ldxdw r9, [r1+0x18]
  stxdw [r0+0x0], r3
  jne r4, 0x1, jmp_214a0
  ja jmp_21198

jmp_214a0:
  ldxdw r3, [r8+0x10]
  ldxdw r4, [r3+0x0]
  add64 r4, 0x1
  mov64 r1, 0x1
  jeq r4, 0x0, jmp_214d0
  mov64 r1, 0x0

jmp_214d0:
  stxdw [r10-0x220], r2
  stxdw [r10-0x158], r6
  stxdw [r3+0x0], r4
  jne r1, 0x1, jmp_214f8
  ja jmp_21198

jmp_214f8:
  ldxdw r1, [r8+0x18]
  ldxdw r4, [r8+0x20]
  ldxb r2, [r8+0x28]
  ldxb r6, [r8+0x29]
  ldxb r8, [r8+0x2a]
  stxb [r10-0x16], r8
  stxb [r10-0x17], r6
  stxb [r10-0x18], r2
  stxdw [r10-0x20], r4
  stxdw [r10-0x28], r1
  stxdw [r10-0x30], r3
  stxdw [r10-0x38], r0
  ldxdw r1, [r10-0x190]
  stxdw [r10-0x40], r1
  ldxdw r1, [r10-0x218]
  stxb [r10-0x46], r1
  ldxdw r1, [r10-0x220]
  stxb [r10-0x47], r1
  stxb [r10-0x48], r5
  stxdw [r10-0x50], r7
  stxdw [r10-0x58], r9
  ldxdw r1, [r10-0x210]
  stxdw [r10-0x60], r1
  ldxdw r1, [r10-0x208]
  stxdw [r10-0x68], r1
  ldxdw r1, [r10-0x188]
  stxdw [r10-0x70], r1
  ldxdw r1, [r10-0x1e8]
  stxb [r10-0x76], r1
  ldxdw r1, [r10-0x1e0]
  stxb [r10-0x77], r1
  ldxdw r1, [r10-0x1d8]
  stxb [r10-0x78], r1
  ldxdw r1, [r10-0x1d0]
  stxdw [r10-0x80], r1
  ldxdw r1, [r10-0x1f8]
  stxdw [r10-0x88], r1
  ldxdw r1, [r10-0x1c0]
  stxdw [r10-0x90], r1
  ldxdw r1, [r10-0x1f0]
  stxdw [r10-0x98], r1
  ldxdw r1, [r10-0x180]
  stxdw [r10-0xa0], r1
  ldxdw r1, [r10-0x1b8]
  stxb [r10-0xa6], r1
  ldxdw r1, [r10-0x1b0]
  stxb [r10-0xa7], r1
  ldxdw r1, [r10-0x1a8]
  stxb [r10-0xa8], r1
  ldxdw r1, [r10-0x1a0]
  stxdw [r10-0xb0], r1
  ldxdw r1, [r10-0x1c8]
  stxdw [r10-0xb8], r1
  ldxdw r1, [r10-0x168]
  stxdw [r10-0xc0], r1
  ldxdw r1, [r10-0x158]
  stxdw [r10-0xc8], r1
  ldxdw r1, [r10-0x178]
  stxdw [r10-0xd0], r1
  ldxdw r1, [r10-0x200]
  stxdw [r10-0x8], r1
  ldxdw r1, [r10-0x170]
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x1000], r1
  mov64 r1, 0x1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x150
  mov64 r2, r10
  add64 r2, -0x138
  mov64 r3, r10
  add64 r3, -0xd0
  mov64 r5, r10
  mov64 r4, 0x4
  call fn_2da88
  lddw r6, -0x7fffffffffffffe6
  ldxdw r1, [r10-0x150]
  jeq r1, r6, jmp_21788
  ja jmp_217b8

jmp_21788:
  mov64 r1, r10
  add64 r1, -0xd0
  call fn_2298
  ldxdw r1, [r10-0x198]
  stxdw [r1+0x0], r6
  ja jmp_21808

jmp_217b8:
  ldxdw r1, [r10-0x140]
  ldxdw r2, [r10-0x198]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x148]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x150]
  stxdw [r2+0x0], r1
  mov64 r1, r10
  add64 r1, -0xd0
  call fn_2298

jmp_21808:
  exit

fn_21810:
  mov64 r0, r4
  mov64 r8, r3
  mov64 r7, r2
  mov64 r6, r1
  ldxdw r4, [r7+0x0]
  ldxdw r3, [r8+0x0]
  stxdw [r10-0x150], r0
  ldxdw r0, [r0+0x0]
  ldxdw r1, [r5-0x1000]
  stxdw [r10-0x148], r1
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r5-0xff0]
  stxdw [r10-0xfe0], r1
  ldxdw r1, [r5-0xfe8]
  stxdw [r10-0xfd8], r1
  mov64 r1, 0x0
  stxdw [r10-0xfe8], r1
  mov64 r1, 0x8
  stxdw [r10-0xff0], r1
  stxdw [r10-0x170], r0
  stxdw [r10-0xff8], r0
  stxdw [r10-0x168], r2
  stxdw [r10-0x1000], r2
  ldxdw r2, [r5-0xff8]
  mov64 r1, r10
  add64 r1, -0xc0
  mov64 r5, r10
  stxdw [r10-0x158], r3
  stxdw [r10-0x160], r4
  call fn_2c6c8
  ldxdw r1, [r10-0xb8]
  stxdw [r10-0xd8], r1
  ldxdw r1, [r10-0xb0]
  stxdw [r10-0xd0], r1
  ldxdw r1, [r10-0xa8]
  stxdw [r10-0xc8], r1
  ldxdw r9, [r10-0xc0]
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_21a10
  stxdw [r10-0x180], r6
  mov64 r1, r10
  add64 r1, -0x108
  mov64 r2, r10
  add64 r2, -0xa0
  mov64 r3, 0x30
  call fn_490d0
  stxdw [r10-0x128], r9
  ldxdw r1, [r10-0xd8]
  stxdw [r10-0x120], r1
  ldxdw r1, [r10-0xd0]
  stxdw [r10-0x118], r1
  ldxdw r1, [r10-0xc8]
  stxdw [r10-0x110], r1
  ldxdw r3, [r8+0x8]
  ldxdw r1, [r3+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_219f0
  mov64 r2, 0x0

jmp_219f0:
  stxdw [r3+0x0], r1
  ldxdw r6, [r10-0x150]
  jne r2, 0x1, jmp_21a48

jmp_21a08:
  call abort

jmp_21a10:
  ldxdw r1, [r10-0xc8]
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0xd0]
  stxdw [r6+0x8], r1
  ldxdw r1, [r10-0xd8]
  stxdw [r6+0x0], r1
  ja jmp_22028

jmp_21a48:
  ldxdw r0, [r8+0x10]
  ldxdw r1, [r0+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_21a78
  mov64 r2, 0x0

jmp_21a78:
  stxdw [r0+0x0], r1
  jne r2, 0x1, jmp_21a90
  ja jmp_21a08

jmp_21a90:
  ldxdw r9, [r7+0x8]
  ldxdw r1, [r9+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_21ac0
  mov64 r2, 0x0

jmp_21ac0:
  ldxb r4, [r8+0x2a]
  stxdw [r10-0x190], r4
  ldxb r4, [r8+0x29]
  stxdw [r10-0x188], r4
  ldxb r4, [r8+0x28]
  ldxdw r5, [r8+0x20]
  ldxdw r8, [r8+0x18]
  stxdw [r9+0x0], r1
  jne r2, 0x1, jmp_21b10
  ja jmp_21a08

jmp_21b10:
  ldxdw r1, [r7+0x10]
  stxdw [r10-0x178], r1
  ldxdw r1, [r1+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_21b48
  mov64 r2, 0x0

jmp_21b48:
  stxdw [r10-0x198], r4
  ldxdw r4, [r10-0x178]
  stxdw [r4+0x0], r1
  jne r2, 0x1, jmp_21b70
  ja jmp_21a08

jmp_21b70:
  ldxdw r1, [r10-0x148]
  ldxdw r4, [r1+0x8]
  ldxdw r1, [r4+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_21ba8
  mov64 r2, 0x0

jmp_21ba8:
  stxdw [r10-0x1a0], r5
  ldxb r5, [r7+0x2a]
  stxdw [r10-0x1c0], r5
  ldxb r5, [r7+0x29]
  stxdw [r10-0x1b8], r5
  ldxb r5, [r7+0x28]
  stxdw [r10-0x1b0], r5
  ldxdw r5, [r7+0x20]
  stxdw [r10-0x1a8], r5
  ldxdw r7, [r7+0x18]
  stxdw [r4+0x0], r1
  jne r2, 0x1, jmp_21c10
  ja jmp_21a08

jmp_21c10:
  ldxdw r1, [r10-0x148]
  ldxdw r5, [r1+0x10]
  ldxdw r1, [r5+0x0]
  add64 r1, 0x1
  mov64 r2, 0x1
  jeq r1, 0x0, jmp_21c48
  mov64 r2, 0x0

jmp_21c48:
  stxdw [r10-0x1d8], r8
  stxdw [r10-0x1d0], r9
  stxdw [r10-0x1c8], r0
  stxdw [r5+0x0], r1
  jne r2, 0x1, jmp_21c78
  ja jmp_21a08

jmp_21c78:
  stxdw [r10-0x1f0], r5
  stxdw [r10-0x1e8], r4
  stxdw [r10-0x1e0], r7
  ldxdw r0, [r6+0x8]
  ldxdw r8, [r0+0x0]
  add64 r8, 0x1
  mov64 r9, 0x1
  jeq r8, 0x0, jmp_21cc0
  mov64 r9, 0x0

jmp_21cc0:
  ldxdw r1, [r10-0x148]
  ldxb r2, [r1+0x2a]
  stxdw [r10-0x1f8], r2
  ldxb r2, [r1+0x29]
  ldxb r5, [r1+0x28]
  ldxdw r4, [r1+0x20]
  ldxdw r7, [r1+0x18]
  stxdw [r0+0x0], r8
  jne r9, 0x1, jmp_21d10
  ja jmp_21a08

jmp_21d10:
  ldxdw r8, [r6+0x10]
  ldxdw r9, [r8+0x0]
  add64 r9, 0x1
  mov64 r1, 0x1
  jeq r9, 0x0, jmp_21d40
  mov64 r1, 0x0

jmp_21d40:
  stxdw [r10-0x200], r2
  stxdw [r10-0x148], r3
  stxdw [r8+0x0], r9
  jne r1, 0x1, jmp_21d68
  ja jmp_21a08

jmp_21d68:
  ldxdw r1, [r6+0x18]
  ldxdw r9, [r6+0x20]
  ldxb r2, [r6+0x28]
  ldxb r3, [r6+0x29]
  ldxb r6, [r6+0x2a]
  stxb [r10-0x6], r6
  stxb [r10-0x7], r3
  stxb [r10-0x8], r2
  stxdw [r10-0x10], r9
  stxdw [r10-0x18], r1
  stxdw [r10-0x20], r8
  stxdw [r10-0x28], r0
  ldxdw r1, [r10-0x170]
  stxdw [r10-0x30], r1
  ldxdw r1, [r10-0x1f8]
  stxb [r10-0x36], r1
  ldxdw r1, [r10-0x200]
  stxb [r10-0x37], r1
  stxb [r10-0x38], r5
  stxdw [r10-0x40], r4
  stxdw [r10-0x48], r7
  ldxdw r1, [r10-0x1f0]
  stxdw [r10-0x50], r1
  ldxdw r1, [r10-0x1e8]
  stxdw [r10-0x58], r1
  ldxdw r1, [r10-0x168]
  stxdw [r10-0x60], r1
  ldxdw r1, [r10-0x1c0]
  stxb [r10-0x66], r1
  ldxdw r1, [r10-0x1b8]
  stxb [r10-0x67], r1
  ldxdw r1, [r10-0x1b0]
  stxb [r10-0x68], r1
  ldxdw r1, [r10-0x1a8]
  stxdw [r10-0x70], r1
  ldxdw r1, [r10-0x1e0]
  stxdw [r10-0x78], r1
  ldxdw r1, [r10-0x178]
  stxdw [r10-0x80], r1
  ldxdw r1, [r10-0x1d0]
  stxdw [r10-0x88], r1
  ldxdw r1, [r10-0x160]
  stxdw [r10-0x90], r1
  ldxdw r1, [r10-0x190]
  stxb [r10-0x96], r1
  ldxdw r1, [r10-0x188]
  stxb [r10-0x97], r1
  ldxdw r1, [r10-0x198]
  stxb [r10-0x98], r1
  ldxdw r1, [r10-0x1a0]
  stxdw [r10-0xa0], r1
  ldxdw r1, [r10-0x1d8]
  stxdw [r10-0xa8], r1
  ldxdw r1, [r10-0x1c8]
  stxdw [r10-0xb0], r1
  ldxdw r1, [r10-0x148]
  stxdw [r10-0xb8], r1
  ldxdw r1, [r10-0x158]
  stxdw [r10-0xc0], r1
  mov64 r1, r10
  add64 r1, -0x140
  mov64 r2, r10
  add64 r2, -0x128
  mov64 r3, r10
  add64 r3, -0xc0
  mov64 r4, 0x4
  call fn_2da50
  lddw r6, -0x7fffffffffffffe6
  ldxdw r1, [r10-0x140]
  jeq r1, r6, jmp_21fa8
  ja jmp_21fd8

jmp_21fa8:
  mov64 r1, r10
  add64 r1, -0xc0
  call fn_2298
  ldxdw r1, [r10-0x180]
  stxdw [r1+0x0], r6
  ja jmp_22028

jmp_21fd8:
  ldxdw r1, [r10-0x130]
  ldxdw r2, [r10-0x180]
  stxdw [r2+0x10], r1
  ldxdw r1, [r10-0x138]
  stxdw [r2+0x8], r1
  ldxdw r1, [r10-0x140]
  stxdw [r2+0x0], r1
  mov64 r1, r10
  add64 r1, -0xc0
  call fn_2298

jmp_22028:
  exit

fn_22030:
  mov64 r6, r5
  mov64 r9, r4
  stxdw [r10-0x208], r3
  stxdw [r10-0x1f0], r2
  mov64 r7, r1
  mov64 r1, 0x1
  stxdw [r10-0x178], r1
  stxdw [r10-0x160], r1
  mov64 r1, 0x2
  stxb [r10-0x144], r1
  mov64 r1, 0x0
  stxdw [r10-0x170], r1
  stxdw [r10-0x180], r1
  stxdw [r10-0x168], r1
  stxdw [r10-0x158], r1
  stxdw [r10-0x150], r1
  stxw [r10-0x148], r1
  mov64 r1, r10
  add64 r1, -0xf0
  mov64 r2, r9
  call fn_2e138
  ldxh r3, [r10-0xe8]
  ldxdw r1, [r10-0xf0]
  lddw r2, -0x7fffffffffffffe6
  jne r1, r2, jmp_22220
  stxdw [r10-0x218], r3
  stxdw [r10-0x228], r7
  ldxdw r7, [r6-0xff8]
  ldxdw r1, [r6-0x1000]
  stxdw [r10-0x238], r1
  mov64 r1, r10
  add64 r1, -0xf0
  mov64 r2, 0x0
  stxdw [r10-0x1e8], r2
  mov64 r3, r9
  call fn_2ea70
  lddw r1, -0x8000000000000000
  ldxdw r2, [r10-0xf0]
  jeq r2, r1, jmp_25a88
  mov64 r3, 0x1
  mov64 r1, 0x1
  jeq r7, 0x0, jmp_22198
  mov64 r1, 0x0

jmp_22198:
  ldxdw r2, [r10-0x238]
  jeq r2, 0x0, jmp_221b0
  mov64 r3, 0x0

jmp_221b0:
  mov64 r2, r10
  add64 r2, -0x168
  stxdw [r10-0x230], r2
  or64 r3, r1
  mov64 r1, r10
  add64 r1, -0x27
  stxdw [r10-0x248], r1
  mov64 r1, r10
  add64 r1, -0x110
  stxdw [r10-0x220], r1
  and64 r3, 0x1
  stxdw [r10-0x240], r3
  stxdw [r10-0x200], r9
  ja jmp_222b0

jmp_22220:
  ldxdw r2, [r10-0xe0]
  stxdw [r7+0x10], r2
  ldxdw r2, [r10-0xe6]
  stxdw [r7+0xa], r2
  stxh [r7+0x8], r3
  stxdw [r7+0x0], r1
  ja jmp_26818

jmp_22258:
  add64 r7, 0x1
  mov64 r1, r10
  add64 r1, -0xf0
  stxdw [r10-0x1e8], r7
  mov64 r2, r7
  mov64 r3, r9
  call fn_2ea70
  ldxdw r1, [r10-0xf0]
  lddw r2, -0x8000000000000000
  jeq r1, r2, jmp_25a88

jmp_222b0:
  mov64 r1, r10
  add64 r1, -0x140
  mov64 r2, r10
  add64 r2, -0xf0
  mov64 r3, 0x50
  call fn_490d0
  ldxdw r2, [r10-0x130]
  mov64 r8, r2
  mul64 r8, 0x22
  ldxdw r1, [r10-0x138]
  stxdw [r10-0x1f8], r1
  stxdw [r10-0x210], r2
  jeq r2, 0x0, jmp_22568
  ldxdw r6, [r10-0x1f8]
  mov64 r9, r6
  add64 r9, r8
  ja jmp_22348

jmp_22338:
  add64 r6, 0x22
  jeq r6, r9, jmp_22568

jmp_22348:
  ldxb r1, [r6+0x20]
  jeq r1, 0x0, jmp_22338
  mov64 r2, 0x0
  ldxdw r1, [r10-0x178]
  ldxdw r7, [r10-0x170]
  mov64 r3, r7
  lsh64 r3, 0x5

jmp_22380:
  jeq r3, r2, jmp_22428
  mov64 r4, r1
  add64 r4, r2
  ldxdw r5, [r6+0x0]
  ldxdw r0, [r4+0x0]
  jeq r0, r5, jmp_223c0

jmp_223b0:
  mov64 r5, 0x1
  ja jmp_22410

jmp_223c0:
  ldxdw r5, [r6+0x8]
  ldxdw r0, [r4+0x8]
  jne r0, r5, jmp_223b0
  ldxdw r5, [r6+0x10]
  ldxdw r0, [r4+0x10]
  jne r0, r5, jmp_223b0
  mov64 r5, 0x0
  ldxdw r0, [r6+0x18]
  ldxdw r4, [r4+0x18]
  jne r4, r0, jmp_223b0

jmp_22410:
  add64 r2, 0x20
  jeq r5, 0x0, jmp_22338
  ja jmp_22380

jmp_22428:
  ldxdw r2, [r6+0x18]
  stxdw [r10-0xd8], r2
  ldxdw r2, [r6+0x10]
  stxdw [r10-0xe0], r2
  ldxdw r2, [r6+0x8]
  stxdw [r10-0xe8], r2
  ldxdw r2, [r6+0x0]
  stxdw [r10-0xf0], r2
  ldxdw r2, [r10-0x180]
  jne r7, r2, jmp_22498
  mov64 r1, r10
  add64 r1, -0x180
  call fn_35c0
  ldxdw r1, [r10-0x178]

jmp_22498:
  mov64 r2, r7
  lsh64 r2, 0x5
  add64 r1, r2
  ldxdw r2, [r10-0xd8]
  stxdw [r1+0x18], r2
  ldxdw r2, [r10-0xe0]
  stxdw [r1+0x10], r2
  ldxdw r2, [r10-0xe8]
  stxdw [r1+0x8], r2
  ldxdw r2, [r10-0xf0]
  stxdw [r1+0x0], r2
  add64 r7, 0x1
  stxdw [r10-0x170], r7
  ja jmp_22338

jmp_22508:
  ldxdw r1, [r10-0x118]
  mov64 r2, 0x8
  jgt r2, r1, jmp_23820
  ldxdw r1, [r10-0x120]
  ldxdw r1, [r1+0x0]
  lddw r2, 0x76ae84f4647bf193
  jeq r1, r2, jmp_22258

jmp_22548:
  ldxdw r1, [r10-0x150]
  add64 r1, 0x1
  stxdw [r10-0x150], r1
  ja jmp_22258

jmp_22568:
  ldxdw r1, [r10-0x1f0]
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r10-0x110]
  jeq r2, r1, jmp_22598

jmp_22588:
  mov64 r1, 0x1
  ja jmp_22600

jmp_22598:
  ldxdw r1, [r10-0x1f0]
  ldxdw r1, [r1+0x8]
  ldxdw r2, [r10-0x108]
  jne r2, r1, jmp_22588
  ldxdw r1, [r10-0x1f0]
  ldxdw r1, [r1+0x10]
  ldxdw r2, [r10-0x100]
  jne r2, r1, jmp_22588
  mov64 r1, 0x0
  ldxdw r2, [r10-0x1f0]
  ldxdw r2, [r2+0x18]
  ldxdw r3, [r10-0xf8]
  jne r3, r2, jmp_22588

jmp_22600:
  ldxdw r4, [r10-0x208]
  ldxdw r9, [r10-0x200]
  ldxdw r7, [r10-0x1e8]
  jeq r1, 0x0, jmp_23820
  mov64 r1, 0x0
  stxdw [r10-0xd8], r1
  stxdw [r10-0xe0], r1
  stxdw [r10-0xe8], r1
  stxdw [r10-0xf0], r1
  ldxdw r1, [r10-0x110]
  jeq r1, 0x0, jmp_22668

jmp_22658:
  mov64 r1, 0x1
  ja jmp_226b8

jmp_22668:
  ldxdw r1, [r10-0xe8]
  ldxdw r2, [r10-0x108]
  jne r2, r1, jmp_22658
  ldxdw r1, [r10-0xe0]
  ldxdw r2, [r10-0x100]
  jne r2, r1, jmp_22658
  mov64 r1, 0x0
  ldxdw r2, [r10-0xd8]
  ldxdw r3, [r10-0xf8]
  jne r3, r2, jmp_22658

jmp_226b8:
  jeq r1, 0x0, jmp_22bc0
  ldxdw r1, [r4+0xc8]
  ldxdw r2, [r10-0x110]
  jeq r1, r2, jmp_226e8

jmp_226d8:
  mov64 r1, 0x1
  ja jmp_22738

jmp_226e8:
  ldxdw r1, [r4+0xd0]
  ldxdw r2, [r10-0x108]
  jne r1, r2, jmp_226d8
  ldxdw r1, [r4+0xd8]
  ldxdw r2, [r10-0x100]
  jne r1, r2, jmp_226d8
  mov64 r1, 0x0
  ldxdw r2, [r4+0xe0]
  ldxdw r3, [r10-0xf8]
  jne r2, r3, jmp_226d8

jmp_22738:
  jeq r1, 0x0, jmp_22c90
  ldxdw r1, [r4+0xe8]
  ldxdw r2, [r10-0x110]
  jeq r1, r2, jmp_22768

jmp_22758:
  mov64 r1, 0x1
  ja jmp_227b8

jmp_22768:
  ldxdw r1, [r4+0xf0]
  ldxdw r2, [r10-0x108]
  jne r1, r2, jmp_22758
  ldxdw r1, [r4+0xf8]
  ldxdw r2, [r10-0x100]
  jne r1, r2, jmp_22758
  mov64 r1, 0x0
  ldxdw r2, [r4+0x100]
  ldxdw r3, [r10-0xf8]
  jne r2, r3, jmp_22758

jmp_227b8:
  jeq r1, 0x0, jmp_22c90
  ldxdw r1, [r4+0x108]
  ldxdw r2, [r10-0x110]
  jeq r1, r2, jmp_227e8

jmp_227d8:
  mov64 r1, 0x1
  ja jmp_22838

jmp_227e8:
  ldxdw r1, [r4+0x110]
  ldxdw r2, [r10-0x108]
  jne r1, r2, jmp_227d8
  ldxdw r1, [r4+0x118]
  ldxdw r2, [r10-0x100]
  jne r1, r2, jmp_227d8
  mov64 r1, 0x0
  ldxdw r2, [r4+0x120]
  ldxdw r3, [r10-0xf8]
  jne r2, r3, jmp_227d8

jmp_22838:
  jeq r1, 0x0, jmp_22c90
  ldxdw r1, [r4+0x128]
  ldxdw r2, [r10-0x110]
  jeq r1, r2, jmp_22868

jmp_22858:
  mov64 r1, 0x1
  ja jmp_228b8

jmp_22868:
  ldxdw r1, [r4+0x130]
  ldxdw r2, [r10-0x108]
  jne r1, r2, jmp_22858
  ldxdw r1, [r4+0x138]
  ldxdw r2, [r10-0x100]
  jne r1, r2, jmp_22858
  mov64 r1, 0x0
  ldxdw r2, [r4+0x140]
  ldxdw r3, [r10-0xf8]
  jne r2, r3, jmp_22858

jmp_228b8:
  jeq r1, 0x0, jmp_22c90
  ldxdw r1, [r4+0x148]
  ldxdw r2, [r10-0x110]
  jeq r1, r2, jmp_228e8

jmp_228d8:
  mov64 r1, 0x1
  ja jmp_22938

jmp_228e8:
  ldxdw r1, [r4+0x150]
  ldxdw r2, [r10-0x108]
  jne r1, r2, jmp_228d8
  ldxdw r1, [r4+0x158]
  ldxdw r2, [r10-0x100]
  jne r1, r2, jmp_228d8
  mov64 r1, 0x0
  ldxdw r2, [r4+0x160]
  ldxdw r3, [r10-0xf8]
  jne r2, r3, jmp_228d8

jmp_22938:
  jeq r1, 0x0, jmp_22c90
  ldxdw r1, [r4+0x168]
  ldxdw r2, [r10-0x110]
  jeq r1, r2, jmp_22968

jmp_22958:
  mov64 r1, 0x1
  ja jmp_229b8

jmp_22968:
  ldxdw r1, [r4+0x170]
  ldxdw r2, [r10-0x108]
  jne r1, r2, jmp_22958
  ldxdw r1, [r4+0x178]
  ldxdw r2, [r10-0x100]
  jne r1, r2, jmp_22958
  mov64 r1, 0x0
  ldxdw r2, [r4+0x180]
  ldxdw r3, [r10-0xf8]
  jne r2, r3, jmp_22958

jmp_229b8:
  jeq r1, 0x0, jmp_22c90
  ldxdw r1, [r4+0x188]
  ldxdw r2, [r10-0x110]
  jeq r1, r2, jmp_229e8

jmp_229d8:
  mov64 r1, 0x1
  ja jmp_22a38

jmp_229e8:
  ldxdw r1, [r4+0x190]
  ldxdw r2, [r10-0x108]
  jne r1, r2, jmp_229d8
  ldxdw r1, [r4+0x198]
  ldxdw r2, [r10-0x100]
  jne r1, r2, jmp_229d8
  mov64 r1, 0x0
  ldxdw r2, [r4+0x1a0]
  ldxdw r3, [r10-0xf8]
  jne r2, r3, jmp_229d8

jmp_22a38:
  jeq r1, 0x0, jmp_22c90
  ldxdw r1, [r4+0x1a8]
  ldxdw r2, [r10-0x110]
  jeq r1, r2, jmp_22a68

jmp_22a58:
  mov64 r1, 0x1
  ja jmp_22ab8

jmp_22a68:
  ldxdw r1, [r4+0x1b0]
  ldxdw r2, [r10-0x108]
  jne r1, r2, jmp_22a58
  ldxdw r1, [r4+0x1b8]
  ldxdw r2, [r10-0x100]
  jne r1, r2, jmp_22a58
  mov64 r1, 0x0
  ldxdw r2, [r4+0x1c0]
  ldxdw r3, [r10-0xf8]
  jne r2, r3, jmp_22a58

jmp_22ab8:
  jeq r1, 0x0, jmp_22c90
  ldxdw r1, [r4+0x1c8]
  ldxdw r2, [r10-0x110]
  jeq r1, r2, jmp_22ae8

jmp_22ad8:
  mov64 r1, 0x1
  ja jmp_22b38

jmp_22ae8:
  ldxdw r1, [r4+0x1d0]
  ldxdw r2, [r10-0x108]
  jne r1, r2, jmp_22ad8
  ldxdw r1, [r4+0x1d8]
  ldxdw r2, [r10-0x100]
  jne r1, r2, jmp_22ad8
  mov64 r1, 0x0
  ldxdw r2, [r4+0x1e0]
  ldxdw r3, [r10-0xf8]
  jne r2, r3, jmp_22ad8

jmp_22b38:
  jeq r1, 0x0, jmp_22c90
  ldxdw r1, [r4+0x1e8]
  ldxdw r2, [r10-0x110]
  jeq r1, r2, jmp_22b68

jmp_22b58:
  mov64 r1, 0x1
  ja jmp_22bb8

jmp_22b68:
  ldxdw r1, [r4+0x1f0]
  ldxdw r2, [r10-0x108]
  jne r1, r2, jmp_22b58
  ldxdw r1, [r4+0x1f8]
  ldxdw r2, [r10-0x100]
  jne r1, r2, jmp_22b58
  mov64 r1, 0x0
  ldxdw r2, [r4+0x200]
  ldxdw r3, [r10-0xf8]
  jne r2, r3, jmp_22b58

jmp_22bb8:
  jeq r1, 0x0, jmp_22c90

jmp_22bc0:
  mov64 r2, 0x0
  ldxdw r1, [r10-0x160]
  ldxdw r6, [r10-0x158]
  mov64 r3, r6
  lsh64 r3, 0x5

jmp_22be8:
  jeq r3, r2, jmp_22ca8
  mov64 r4, r1
  add64 r4, r2
  ldxdw r5, [r4+0x0]
  ldxdw r0, [r10-0x110]
  jeq r5, r0, jmp_22c28

jmp_22c18:
  mov64 r5, 0x1
  ja jmp_22c78

jmp_22c28:
  ldxdw r5, [r4+0x8]
  ldxdw r0, [r10-0x108]
  jne r5, r0, jmp_22c18
  ldxdw r5, [r4+0x10]
  ldxdw r0, [r10-0x100]
  jne r5, r0, jmp_22c18
  mov64 r5, 0x0
  ldxdw r4, [r4+0x18]
  ldxdw r0, [r10-0xf8]
  jne r4, r0, jmp_22c18

jmp_22c78:
  add64 r2, 0x20
  jeq r5, 0x0, jmp_22d40
  ja jmp_22be8

jmp_22c90:
  mov64 r1, 0x1
  stxb [r10-0x148], r1
  ja jmp_22bc0

jmp_22ca8:
  ldxdw r2, [r10-0x168]
  jne r6, r2, jmp_22cd0
  ldxdw r1, [r10-0x230]
  call fn_35c0
  ldxdw r1, [r10-0x160]

jmp_22cd0:
  mov64 r2, r6
  lsh64 r2, 0x5
  add64 r1, r2
  ldxdw r3, [r10-0x220]
  ldxdw r2, [r3+0x18]
  stxdw [r1+0x18], r2
  ldxdw r2, [r3+0x10]
  stxdw [r1+0x10], r2
  ldxdw r2, [r3+0x8]
  stxdw [r1+0x8], r2
  ldxdw r2, [r3+0x0]
  stxdw [r1+0x0], r2
  add64 r6, 0x1
  stxdw [r10-0x158], r6

jmp_22d40:
  ldxdw r1, [r10-0x218]
  jne r7, r1, jmp_22e28
  ldxdw r1, [r10-0x110]
  lddw r2, 0x6ec031f25bd57904
  jeq r1, r2, jmp_22db0

jmp_22d70:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_23760

jmp_22d80:
  ldxdw r1, [r10-0x110]
  lddw r2, -0x38625489832a86fc
  jeq r1, r2, jmp_23010

jmp_22da0:
  mov64 r1, 0x1
  ja jmp_23078

jmp_22db0:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x71568ce6ec574ee
  jne r1, r2, jmp_22d70
  ldxdw r1, [r10-0x100]
  lddw r2, 0x518ef4a3deb2b1fd
  jne r1, r2, jmp_22d70
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x70ec43a95d324efe
  jne r2, r3, jmp_22d70
  jeq r1, 0x0, jmp_23760
  ja jmp_22d80

jmp_22e28:
  ldxdw r1, [r10-0x110]
  jeq r1, 0x0, jmp_22e48

jmp_22e38:
  mov64 r1, 0x1
  ja jmp_22e80

jmp_22e48:
  ldxdw r1, [r10-0x108]
  jne r1, 0x0, jmp_22e38
  ldxdw r1, [r10-0x100]
  jne r1, 0x0, jmp_22e38
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  jne r2, 0x0, jmp_22e38

jmp_22e80:
  jeq r1, 0x0, jmp_24550
  ldxdw r1, [r10-0x110]
  lddw r2, 0x6ec031f25bd57904
  jeq r1, r2, jmp_22ee8

jmp_22ea8:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_22f60

jmp_22eb8:
  ldxdw r1, [r10-0x110]
  lddw r2, -0x38625489832a86fc
  jeq r1, r2, jmp_23d20

jmp_22ed8:
  mov64 r1, 0x1
  ja jmp_23d88

jmp_22ee8:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x71568ce6ec574ee
  jne r1, r2, jmp_22ea8
  ldxdw r1, [r10-0x100]
  lddw r2, 0x518ef4a3deb2b1fd
  jne r1, r2, jmp_22ea8
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x70ec43a95d324efe
  jne r2, r3, jmp_22ea8
  jeq r1, 0x0, jmp_22f60
  ja jmp_22eb8

jmp_22f60:
  ldxdw r1, [r10-0x110]
  lddw r2, 0x6ec031f25bd57904
  jeq r1, r2, jmp_22f98

jmp_22f80:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_22508
  ja jmp_22548

jmp_22f98:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x71568ce6ec574ee
  jne r1, r2, jmp_22f80
  ldxdw r1, [r10-0x100]
  lddw r2, 0x518ef4a3deb2b1fd
  jne r1, r2, jmp_22f80
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x70ec43a95d324efe
  jne r2, r3, jmp_22f80
  jeq r1, 0x0, jmp_22508
  ja jmp_22548

jmp_23010:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x32dbcd2cc93ecb37
  jne r1, r2, jmp_22da0
  ldxdw r1, [r10-0x100]
  lddw r2, -0x20850e0aea6e1dba
  jne r1, r2, jmp_22da0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x28fe08ce4be51842
  jne r2, r3, jmp_22da0

jmp_23078:
  jeq r1, 0x0, jmp_23760
  ldxdw r1, [r10-0x110]
  lddw r2, -0x7af703e2864bdf4
  jeq r1, r2, jmp_230b0

jmp_230a0:
  mov64 r1, 0x1
  ja jmp_23118

jmp_230b0:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x2de7dd1cfc9a6d15
  jne r1, r2, jmp_230a0
  ldxdw r1, [r10-0x100]
  lddw r2, 0x6bafec3babd968f6
  jne r1, r2, jmp_230a0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x3726a59b99a8f2a9
  jne r2, r3, jmp_230a0

jmp_23118:
  jeq r1, 0x0, jmp_23760
  ldxdw r1, [r10-0x110]
  lddw r2, 0xb48ca18236f420c
  jeq r1, r2, jmp_23150

jmp_23140:
  mov64 r1, 0x1
  ja jmp_231b8

jmp_23150:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x52ab3db29ac463f4
  jne r1, r2, jmp_23140
  ldxdw r1, [r10-0x100]
  lddw r2, 0x68fcd43410bae3c2
  jne r1, r2, jmp_23140
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x56482f6dedea5cb3
  jne r2, r3, jmp_23140

jmp_231b8:
  jeq r1, 0x0, jmp_23760
  ldxdw r1, [r10-0x110]
  lddw r2, -0x44f118ed916356fa
  jeq r1, r2, jmp_231f0

jmp_231e0:
  mov64 r1, 0x1
  ja jmp_23258

jmp_231f0:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x6e904b4c145c1835
  jne r1, r2, jmp_231e0
  ldxdw r1, [r10-0x100]
  lddw r2, 0x2a2f74470ab0ff18
  jne r1, r2, jmp_231e0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x2b367796f4eefba2
  jne r2, r3, jmp_231e0

jmp_23258:
  jeq r1, 0x0, jmp_23760
  ldxdw r1, [r10-0x110]
  lddw r2, 0x4873bce2144ae3b5
  jeq r1, r2, jmp_23290

jmp_23280:
  mov64 r1, 0x1
  ja jmp_232f8

jmp_23290:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x2911a2500a1ef197
  jne r1, r2, jmp_23280
  ldxdw r1, [r10-0x100]
  lddw r2, 0x60b8aa6da3403855
  jne r1, r2, jmp_23280
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x103cc0bd736050b0
  jne r2, r3, jmp_23280

jmp_232f8:
  jeq r1, 0x0, jmp_23760
  ldxdw r1, [r10-0x110]
  lddw r2, -0x2d9d51bf92ab29f4
  jeq r1, r2, jmp_23330

jmp_23320:
  mov64 r1, 0x1
  ja jmp_23398

jmp_23330:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x45eefdfe7495b816
  jne r1, r2, jmp_23320
  ldxdw r1, [r10-0x100]
  lddw r2, 0xbb5f49c7d946b85
  jne r1, r2, jmp_23320
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x115c61a060bb5829
  jne r2, r3, jmp_23320

jmp_23398:
  jeq r1, 0x0, jmp_23760
  ldxdw r1, [r10-0x110]
  lddw r2, 0x1be9073efd071895
  jeq r1, r2, jmp_233d0

jmp_233c0:
  mov64 r1, 0x1
  ja jmp_23438

jmp_233d0:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x103eb598830568a5
  jne r1, r2, jmp_233c0
  ldxdw r1, [r10-0x100]
  lddw r2, -0x6f5cf633300ceda6
  jne r1, r2, jmp_233c0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x5ca0aa4a02280026
  jne r2, r3, jmp_233c0

jmp_23438:
  jeq r1, 0x0, jmp_23760
  ldxdw r1, [r10-0x110]
  lddw r2, -0x6cfdb2c5338ed405
  jeq r1, r2, jmp_23470

jmp_23460:
  mov64 r1, 0x1
  ja jmp_234d8

jmp_23470:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x4c074d88762a69e0
  jne r1, r2, jmp_23460
  ldxdw r1, [r10-0x100]
  lddw r2, -0x2683b942c0b69164
  jne r1, r2, jmp_23460
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x3b2e2ea5c1e49d56
  jne r2, r3, jmp_23460

jmp_234d8:
  jeq r1, 0x0, jmp_23760
  ldxdw r1, [r10-0x110]
  lddw r2, -0x19b0adb248570d07
  jeq r1, r2, jmp_23510

jmp_23500:
  mov64 r1, 0x1
  ja jmp_23578

jmp_23510:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x784933501fbfcbb2
  jne r1, r2, jmp_23500
  ldxdw r1, [r10-0x100]
  lddw r2, -0x478a299fccb4d92b
  jne r1, r2, jmp_23500
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x2084fb9cb8f6de1
  jne r2, r3, jmp_23500

jmp_23578:
  jeq r1, 0x0, jmp_23760
  ldxdw r1, [r10-0x110]
  lddw r2, -0x241f8dfce1a16dfa
  jeq r1, r2, jmp_235b0

jmp_235a0:
  mov64 r1, 0x1
  ja jmp_23618

jmp_235b0:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x77ca68769172b20b
  jne r1, r2, jmp_235a0
  ldxdw r1, [r10-0x100]
  lddw r2, 0x533f7524d0ace446
  jne r1, r2, jmp_235a0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x6567b74b076d7538
  jne r2, r3, jmp_235a0

jmp_23618:
  jeq r1, 0x0, jmp_23760
  ldxdw r1, [r10-0x110]
  lddw r2, -0x44d7cc1eac2706ef
  jeq r1, r2, jmp_23650

jmp_23640:
  mov64 r1, 0x1
  ja jmp_236b8

jmp_23650:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x5a4fb0c8a136bcb6
  jne r1, r2, jmp_23640
  ldxdw r1, [r10-0x100]
  lddw r2, -0x1fcafa0034a350e1
  jne r1, r2, jmp_23640
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x4f0a4cdd57c97b27
  jne r2, r3, jmp_23640

jmp_236b8:
  jeq r1, 0x0, jmp_23760
  ldxdw r1, [r10-0x110]
  lddw r2, 0x5604139b3fa9380b
  jeq r1, r2, jmp_236f0

jmp_236e0:
  mov64 r1, 0x1
  ja jmp_23758

jmp_236f0:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x56aac1cb52f447c1
  jne r1, r2, jmp_236e0
  ldxdw r1, [r10-0x100]
  lddw r2, 0x2e309496daab11d2
  jne r1, r2, jmp_236e0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x43a648b48d2fdac4
  jne r2, r3, jmp_236e0

jmp_23758:
  jne r1, 0x0, jmp_23770

jmp_23760:
  mov64 r1, 0x1
  stxb [r10-0x147], r1

jmp_23770:
  ldxdw r1, [r10-0x110]
  lddw r2, 0x6ec031f25bd57904
  jeq r1, r2, jmp_237a0

jmp_23790:
  mov64 r1, 0x1
  ja jmp_23808

jmp_237a0:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x71568ce6ec574ee
  jne r1, r2, jmp_23790
  ldxdw r1, [r10-0x100]
  lddw r2, 0x518ef4a3deb2b1fd
  jne r1, r2, jmp_23790
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x70ec43a95d324efe
  jne r2, r3, jmp_23790

jmp_23808:
  jne r1, 0x0, jmp_22e28
  ldxdw r1, [r10-0x210]
  jne r1, 0x0, jmp_23840

jmp_23820:
  mov64 r1, 0xffff
  ldxdw r2, [r10-0x228]
  stxdw [r2+0x8], r1
  ja jmp_25b78

jmp_23840:
  ldxdw r1, [r10-0x1f8]
  add64 r8, r1
  ldxdw r1, [r8-0xa]
  stxdw [r10-0x60], r1
  ldxdw r1, [r8-0x12]
  stxdw [r10-0x68], r1
  ldxdw r1, [r8-0x1a]
  stxdw [r10-0x70], r1
  ldxdw r1, [r8-0x22]
  stxdw [r10-0x78], r1
  mov64 r1, 0x1
  stxdw [r10-0x20], r1
  mov64 r2, 0x0
  stxdw [r10-0x18], r2
  stxdw [r10-0x28], r2
  mov64 r1, 0x3
  stxb [r10-0xb8], r1
  mov64 r1, 0x20
  stxdw [r10-0xc0], r1
  lddw r1, data_2b20
  stxdw [r10-0xc8], r1
  mov64 r1, r10
  add64 r1, -0x28
  stxdw [r10-0xd0], r1
  stxdw [r10-0xe0], r2
  stxdw [r10-0xf0], r2
  mov64 r1, r10
  add64 r1, -0x78
  mov64 r2, r10
  add64 r2, -0xf0
  call fn_34458
  jeq r0, 0x0, jmp_23998
  mov64 r3, r10
  add64 r3, -0x38
  lddw r1, str_01a8
  mov64 r2, 0x37
  lddw r4, data_2b50
  lddw r5, data_2b70
  call fn_40400

jmp_23998:
  mov64 r1, 0x0
  ldxdw r2, [r10-0x18]
  mov64 r3, 0xd
  ldxdw r0, [r10-0x1f8]
  jgt r3, r2, jmp_23a38
  ldxdw r1, [r10-0x20]
  ldxdw r2, [r1+0x0]
  lddw r3, 0x746e6f646f74696a
  jeq r2, r3, jmp_239f8

jmp_239e8:
  mov64 r2, 0x1
  ja jmp_23a20

jmp_239f8:
  ldxw r2, [r1+0x8]
  jne r2, 0x6e6f7266, jmp_239e8
  mov64 r2, 0x0
  ldxb r1, [r1+0xc]
  jne r1, 0x74, jmp_239e8

jmp_23a20:
  mov64 r1, 0x1
  jeq r2, 0x0, jmp_23a38
  mov64 r1, 0x0

jmp_23a38:
  ldxdw r2, [r10-0x118]
  mov64 r3, 0x8
  jgt r3, r2, jmp_22e28
  ldxdw r3, [r10-0x120]
  ldxdw r2, [r3+0x0]
  lddw r4, 0x5ced2b7b97ef33d0
  jeq r2, r4, jmp_23b88
  ldxdw r2, [r3+0x0]
  lddw r4, 0x2aade37a97cb17e5
  jeq r2, r4, jmp_23b88
  ldxdw r2, [r3+0x0]
  lddw r4, 0x680e5da774475696
  jeq r2, r4, jmp_23b88
  ldxdw r2, [r3+0x0]
  lddw r4, 0x3e457d9aa869d1b0
  jeq r2, r4, jmp_23bb8
  ldxdw r2, [r3+0x0]
  lddw r4, -0x7e6329becc64df3f
  jeq r2, r4, jmp_23bb8
  ldxdw r2, [r3+0x0]
  lddw r4, -0x55956088af70861a
  jeq r2, r4, jmp_23bb8
  ldxdw r2, [r3+0x0]
  lddw r4, 0x14afc431ccfa64bb
  jeq r2, r4, jmp_23be8
  mov64 r2, 0x8
  ldxdw r4, [r10-0x210]
  jgt r2, r4, jmp_22e28
  mov64 r2, 0x7
  mov64 r4, 0x6
  ldxdw r3, [r3+0x0]
  lddw r5, -0x162701836cac672f
  jne r3, r5, jmp_22e28
  ja jmp_23c10

jmp_23b88:
  mov64 r2, 0x3
  mov64 r4, 0x2
  mov64 r3, 0x4
  ldxdw r5, [r10-0x210]
  jgt r3, r5, jmp_22e28
  ja jmp_23c10

jmp_23bb8:
  mov64 r2, 0x8
  mov64 r4, 0x7
  mov64 r3, 0x9
  ldxdw r5, [r10-0x210]
  jgt r3, r5, jmp_22e28
  ja jmp_23c10

jmp_23be8:
  mov64 r2, 0x2
  mov64 r4, 0x1
  mov64 r3, 0x3
  ldxdw r5, [r10-0x210]
  jgt r3, r5, jmp_22e28

jmp_23c10:
  mul64 r4, 0x22
  mov64 r3, r0
  add64 r3, r4
  mul64 r2, 0x22
  add64 r0, r2
  ldxdw r2, [r0+0x0]
  ldxdw r4, [r3+0x0]
  jeq r4, r2, jmp_23c60

jmp_23c50:
  mov64 r2, 0x1
  ja jmp_23cb0

jmp_23c60:
  ldxdw r2, [r0+0x8]
  ldxdw r4, [r3+0x8]
  jne r4, r2, jmp_23c50
  ldxdw r2, [r0+0x10]
  ldxdw r4, [r3+0x10]
  jne r4, r2, jmp_23c50
  mov64 r2, 0x0
  ldxdw r4, [r0+0x18]
  ldxdw r3, [r3+0x18]
  jne r3, r4, jmp_23c50

jmp_23cb0:
  mov64 r3, 0x0
  ldxdw r4, [r10-0x240]
  jne r4, 0x0, jmp_23cf0
  ldxdw r3, [r10-0x238]
  ldxb r4, [r3+0x0]
  mov64 r3, 0x1
  jeq r4, 0x1, jmp_23cf0
  mov64 r3, 0x0

jmp_23cf0:
  stxb [r10-0x144], r2
  and64 r1, 0x1
  stxb [r10-0x142], r1
  and64 r3, 0x1
  stxb [r10-0x143], r3
  ja jmp_22e28

jmp_23d20:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x32dbcd2cc93ecb37
  jne r1, r2, jmp_22ed8
  ldxdw r1, [r10-0x100]
  lddw r2, -0x20850e0aea6e1dba
  jne r1, r2, jmp_22ed8
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x28fe08ce4be51842
  jne r2, r3, jmp_22ed8

jmp_23d88:
  jeq r1, 0x0, jmp_22f60
  ldxdw r1, [r10-0x110]
  lddw r2, -0x7af703e2864bdf4
  jeq r1, r2, jmp_23dc0

jmp_23db0:
  mov64 r1, 0x1
  ja jmp_23e28

jmp_23dc0:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x2de7dd1cfc9a6d15
  jne r1, r2, jmp_23db0
  ldxdw r1, [r10-0x100]
  lddw r2, 0x6bafec3babd968f6
  jne r1, r2, jmp_23db0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x3726a59b99a8f2a9
  jne r2, r3, jmp_23db0

jmp_23e28:
  jeq r1, 0x0, jmp_22f60
  ldxdw r1, [r10-0x110]
  lddw r2, 0xb48ca18236f420c
  jeq r1, r2, jmp_23e60

jmp_23e50:
  mov64 r1, 0x1
  ja jmp_23ec8

jmp_23e60:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x52ab3db29ac463f4
  jne r1, r2, jmp_23e50
  ldxdw r1, [r10-0x100]
  lddw r2, 0x68fcd43410bae3c2
  jne r1, r2, jmp_23e50
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x56482f6dedea5cb3
  jne r2, r3, jmp_23e50

jmp_23ec8:
  jeq r1, 0x0, jmp_22f60
  ldxdw r1, [r10-0x110]
  lddw r2, -0x44f118ed916356fa
  jeq r1, r2, jmp_23f00

jmp_23ef0:
  mov64 r1, 0x1
  ja jmp_23f68

jmp_23f00:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x6e904b4c145c1835
  jne r1, r2, jmp_23ef0
  ldxdw r1, [r10-0x100]
  lddw r2, 0x2a2f74470ab0ff18
  jne r1, r2, jmp_23ef0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x2b367796f4eefba2
  jne r2, r3, jmp_23ef0

jmp_23f68:
  jeq r1, 0x0, jmp_22f60
  ldxdw r1, [r10-0x110]
  lddw r2, 0x4873bce2144ae3b5
  jeq r1, r2, jmp_23fa0

jmp_23f90:
  mov64 r1, 0x1
  ja jmp_24008

jmp_23fa0:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x2911a2500a1ef197
  jne r1, r2, jmp_23f90
  ldxdw r1, [r10-0x100]
  lddw r2, 0x60b8aa6da3403855
  jne r1, r2, jmp_23f90
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x103cc0bd736050b0
  jne r2, r3, jmp_23f90

jmp_24008:
  jeq r1, 0x0, jmp_22f60
  ldxdw r1, [r10-0x110]
  lddw r2, -0x2d9d51bf92ab29f4
  jeq r1, r2, jmp_24040

jmp_24030:
  mov64 r1, 0x1
  ja jmp_240a8

jmp_24040:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x45eefdfe7495b816
  jne r1, r2, jmp_24030
  ldxdw r1, [r10-0x100]
  lddw r2, 0xbb5f49c7d946b85
  jne r1, r2, jmp_24030
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x115c61a060bb5829
  jne r2, r3, jmp_24030

jmp_240a8:
  jeq r1, 0x0, jmp_22f60
  ldxdw r1, [r10-0x110]
  lddw r2, 0x1be9073efd071895
  jeq r1, r2, jmp_240e0

jmp_240d0:
  mov64 r1, 0x1
  ja jmp_24148

jmp_240e0:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x103eb598830568a5
  jne r1, r2, jmp_240d0
  ldxdw r1, [r10-0x100]
  lddw r2, -0x6f5cf633300ceda6
  jne r1, r2, jmp_240d0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x5ca0aa4a02280026
  jne r2, r3, jmp_240d0

jmp_24148:
  jeq r1, 0x0, jmp_22f60
  ldxdw r1, [r10-0x110]
  lddw r2, -0x6cfdb2c5338ed405
  jeq r1, r2, jmp_24180

jmp_24170:
  mov64 r1, 0x1
  ja jmp_241e8

jmp_24180:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x4c074d88762a69e0
  jne r1, r2, jmp_24170
  ldxdw r1, [r10-0x100]
  lddw r2, -0x2683b942c0b69164
  jne r1, r2, jmp_24170
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x3b2e2ea5c1e49d56
  jne r2, r3, jmp_24170

jmp_241e8:
  jeq r1, 0x0, jmp_22f60
  ldxdw r1, [r10-0x110]
  lddw r2, -0x19b0adb248570d07
  jeq r1, r2, jmp_24220

jmp_24210:
  mov64 r1, 0x1
  ja jmp_24288

jmp_24220:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x784933501fbfcbb2
  jne r1, r2, jmp_24210
  ldxdw r1, [r10-0x100]
  lddw r2, -0x478a299fccb4d92b
  jne r1, r2, jmp_24210
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x2084fb9cb8f6de1
  jne r2, r3, jmp_24210

jmp_24288:
  jeq r1, 0x0, jmp_22f60
  ldxdw r1, [r10-0x110]
  lddw r2, -0x241f8dfce1a16dfa
  jeq r1, r2, jmp_242c0

jmp_242b0:
  mov64 r1, 0x1
  ja jmp_24328

jmp_242c0:
  ldxdw r1, [r10-0x108]
  lddw r2, 0x77ca68769172b20b
  jne r1, r2, jmp_242b0
  ldxdw r1, [r10-0x100]
  lddw r2, 0x533f7524d0ace446
  jne r1, r2, jmp_242b0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x6567b74b076d7538
  jne r2, r3, jmp_242b0

jmp_24328:
  jeq r1, 0x0, jmp_22f60
  ldxdw r1, [r10-0x110]
  lddw r2, -0x44d7cc1eac2706ef
  jeq r1, r2, jmp_24360

jmp_24350:
  mov64 r1, 0x1
  ja jmp_243c8

jmp_24360:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x5a4fb0c8a136bcb6
  jne r1, r2, jmp_24350
  ldxdw r1, [r10-0x100]
  lddw r2, -0x1fcafa0034a350e1
  jne r1, r2, jmp_24350
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x4f0a4cdd57c97b27
  jne r2, r3, jmp_24350

jmp_243c8:
  jeq r1, 0x0, jmp_22f60
  ldxdw r1, [r10-0x110]
  lddw r2, 0x5604139b3fa9380b
  jeq r1, r2, jmp_24460

jmp_243f0:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_22f60

jmp_24400:
  ldxdw r1, [r10-0x110]
  lddw r2, 0x321721e56f460603
  jeq r1, r2, jmp_244d8

jmp_24420:
  mov64 r1, 0x1
  jeq r1, 0x0, jmp_22258

jmp_24430:
  ldxdw r1, [r10-0x110]
  lddw r2, -0xe76dbb170da6874
  jeq r1, r2, jmp_257c0

jmp_24450:
  mov64 r1, 0x1
  ja jmp_25828

jmp_24460:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x56aac1cb52f447c1
  jne r1, r2, jmp_243f0
  ldxdw r1, [r10-0x100]
  lddw r2, 0x2e309496daab11d2
  jne r1, r2, jmp_243f0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x43a648b48d2fdac4
  jne r2, r3, jmp_243f0
  jeq r1, 0x0, jmp_22f60
  ja jmp_24400

jmp_244d8:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x18643c8d45521301
  jne r1, r2, jmp_24420
  ldxdw r1, [r10-0x100]
  lddw r2, 0x6b12f7c5bbe58cbc
  jne r1, r2, jmp_24420
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x403a9b432c
  jne r2, r3, jmp_24420
  jeq r1, 0x0, jmp_22258
  ja jmp_24430

jmp_24550:
  ldxdw r1, [r10-0x120]
  ldxdw r4, [r10-0x118]
  mov64 r2, 0xe4
  stxdw [r10-0x50], r2
  mov64 r2, 0x1
  stxdw [r10-0x70], r2
  mov64 r2, 0x0
  stxdw [r10-0x68], r2
  stxdw [r10-0x78], r2
  jgt r4, 0x3, jmp_246e0

jmp_245a0:
  lddw r1, data_2af0
  call fn_33928

jmp_245b8:
  stxdw [r10-0x88], r0

jmp_245c0:
  lddw r9, -0x7ffffffffffffff3

jmp_245d0:
  lddw r1, -0x7ffffffffffffff3
  jne r9, r1, jmp_24630
  ldxdw r1, [r10-0x88]
  ldxdw r2, [r1+0x0]
  lddw r3, -0x8000000000000000
  xor64 r2, r3
  mov64 r3, 0x8
  jgt r3, r2, jmp_26410
  mov64 r2, 0x8
  ja jmp_26410

jmp_24630:
  mov64 r1, r9
  lddw r2, -0x8000000000000000
  xor64 r1, r2
  mov64 r2, 0xd
  jgt r2, r1, jmp_24668
  mov64 r1, 0x3

jmp_24668:
  stxh [r10-0xd2], r7
  ldxdw r2, [r10-0x80]
  stxdw [r10-0xe0], r2
  ldxdw r2, [r10-0x88]
  stxdw [r10-0xe8], r2
  stxdw [r10-0xf0], r9
  stxw [r10-0xd8], r8
  rsh64 r8, 0x20
  stxh [r10-0xd4], r8
  jsgt r1, 0x8, jmp_25a10
  ldxdw r9, [r10-0x200]
  ldxdw r7, [r10-0x1e8]
  jeq r1, 0x2, jmp_25a40
  jeq r1, 0x3, jmp_25a38
  ja jmp_25a38

jmp_246e0:
  mov64 r2, r4
  add64 r2, -0x4
  ldxw r3, [r1+0x0]
  stxdw [r10-0x58], r2
  mov64 r5, r1
  add64 r5, 0x4
  stxdw [r10-0x60], r5
  jsgt r3, 0x5, jmp_24780
  mov64 r0, 0x8
  jsgt r3, 0x2, jmp_24940
  jeq r3, 0x0, jmp_24d90
  jeq r3, 0x1, jmp_250a0
  jeq r3, 0x2, jmp_24750
  ja jmp_249b8

jmp_24750:
  jgt r0, r2, jmp_245a0
  ldxdw r1, [r5+0x0]
  stxdw [r10-0x88], r1
  lddw r9, -0x7ffffffffffffffe
  ja jmp_245d0

jmp_24780:
  mov64 r0, 0x8
  jsgt r3, 0x8, jmp_247e0
  jeq r3, 0x6, jmp_24ce8
  jeq r3, 0x7, jmp_25190
  jeq r3, 0x8, jmp_247b0
  ja jmp_249b8

jmp_247b0:
  jgt r0, r2, jmp_245a0
  ldxdw r1, [r5+0x0]
  stxdw [r10-0x88], r1
  lddw r9, -0x7ffffffffffffff8
  ja jmp_245d0

jmp_247e0:
  jsgt r3, 0xa, jmp_249a8
  jeq r3, 0x9, jmp_249f0
  jeq r3, 0xa, jmp_24800
  ja jmp_249b8

jmp_24800:
  mov64 r1, 0x2
  stxdw [r10-0x30], r1
  mov64 r2, r10
  add64 r2, -0x78
  stxdw [r10-0x38], r2
  mov64 r1, r10
  add64 r1, -0x28
  call fn_8038
  ldxb r1, [r10-0x28]
  jne r1, 0x0, jmp_251c8
  ldxw r7, [r10-0x27]
  ldxh r6, [r10-0x23]
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0x38
  call fn_0270
  ldxdw r0, [r10-0x20]
  ldxdw r9, [r10-0x28]
  lddw r1, -0x7fffffffffffffff
  jeq r9, r1, jmp_245b8
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_256a0
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_256f0
  stxdw [r10-0x1f8], r0
  ldxh r1, [r10-0x14]
  stxdw [r10-0x250], r1
  ldxw r8, [r10-0x18]
  ldxh r1, [r10-0x12]
  stxdw [r10-0x210], r1
  ldxdw r2, [r10-0x38]
  mov64 r1, r10
  add64 r1, -0x28
  call fn_8038
  ldxb r1, [r10-0x28]
  jeq r1, 0x0, jmp_254d8
  ja jmp_255c0

jmp_24940:
  jeq r3, 0x3, jmp_24ed8
  lddw r9, -0x7ffffffffffffffc
  jeq r3, 0x4, jmp_245d0
  mov64 r1, 0x8
  jeq r3, 0x5, jmp_24978
  ja jmp_249b8

jmp_24978:
  jgt r1, r2, jmp_245a0
  ldxdw r1, [r5+0x0]
  stxdw [r10-0x88], r1
  lddw r9, -0x7ffffffffffffffb
  ja jmp_245d0

jmp_249a8:
  jeq r3, 0xb, jmp_24b80
  jeq r3, 0xc, jmp_24cd0

jmp_249b8:
  mov64 r1, 0x1
  stxb [r10-0x28], r1
  stxdw [r10-0x20], r3
  mov64 r1, r10
  add64 r1, -0x28
  call fn_0088
  ja jmp_245b8

jmp_249f0:
  mov64 r1, 0x3
  stxdw [r10-0x30], r1
  mov64 r2, r10
  add64 r2, -0x78
  stxdw [r10-0x38], r2
  mov64 r1, r10
  add64 r1, -0x28
  call fn_8038
  ldxb r1, [r10-0x28]
  jne r1, 0x0, jmp_251c8
  ldxw r7, [r10-0x27]
  ldxh r6, [r10-0x23]
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0x38
  call fn_0270
  ldxdw r0, [r10-0x20]
  ldxdw r9, [r10-0x28]
  lddw r1, -0x7fffffffffffffff
  jeq r9, r1, jmp_245b8
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_25680
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_256d0
  ldxdw r2, [r10-0x38]
  ldxdw r3, [r2+0x28]
  jgt r3, 0x7, jmp_25248
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, -0x18
  mov64 r2, 0x0
  mov64 r4, 0x1
  jgt r3, r1, jmp_24b28
  mov64 r4, 0x0

jmp_24b28:
  jne r4, 0x0, jmp_24b38
  mov64 r2, r3

jmp_24b38:
  lddw r0, 0x300007fe8
  jeq r1, 0x0, jmp_24b60
  and64 r2, -0x8
  mov64 r0, r2

jmp_24b60:
  lddw r1, 0x300000007
  jgt r0, r1, jmp_254a0
  ja jmp_25088

jmp_24b80:
  mov64 r3, 0x2
  stxdw [r10-0x30], r3
  mov64 r3, r10
  add64 r3, -0x78
  stxdw [r10-0x38], r3
  mov64 r3, 0xdc
  stxdw [r10-0x50], r3
  jgt r0, r2, jmp_245a0
  add64 r4, -0xc
  ldxw r7, [r1+0x4]
  ldxh r6, [r1+0x8]
  stxdw [r10-0x58], r4
  add64 r1, 0xc
  stxdw [r10-0x60], r1
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0x38
  call fn_0270
  ldxdw r0, [r10-0x20]
  ldxdw r9, [r10-0x28]
  lddw r1, -0x7fffffffffffffff
  jeq r9, r1, jmp_245b8
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_255d0
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_25660
  stxdw [r10-0x1f8], r0
  ldxh r1, [r10-0x14]
  stxdw [r10-0x250], r1
  ldxw r8, [r10-0x18]
  ldxh r1, [r10-0x12]
  stxdw [r10-0x210], r1
  ldxdw r2, [r10-0x38]
  mov64 r1, r10
  add64 r1, -0x28
  call fn_8038
  ldxb r1, [r10-0x28]
  jeq r1, 0x0, jmp_25300
  ja jmp_255c0

jmp_24cd0:
  lddw r9, -0x7ffffffffffffff4
  ja jmp_245d0

jmp_24ce8:
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0x78
  call fn_8038
  ldxb r1, [r10-0x28]
  jeq r1, 0x0, jmp_24d28
  ja jmp_251c8

jmp_24d28:
  ldxdw r2, [r10-0x248]
  ldxdw r1, [r2+0x8]
  stxdw [r10-0x80], r1
  ldxdw r1, [r2+0x0]
  stxdw [r10-0x88], r1
  ldxh r1, [r10-0x13]
  lsh64 r1, 0x20
  ldxw r8, [r10-0x17]
  or64 r8, r1
  lddw r9, -0x7ffffffffffffffa
  ldxdw r7, [r10-0x11]
  ja jmp_245d0

jmp_24d90:
  jgt r0, r2, jmp_245a0
  mov64 r2, 0xd4
  stxdw [r10-0x50], r2
  mov64 r2, r4
  add64 r2, -0xc
  jgt r0, r2, jmp_245a0
  add64 r4, -0x14
  stxdw [r10-0x58], r4
  add64 r1, 0x14
  stxdw [r10-0x60], r1
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0x78
  call fn_8038
  ldxb r1, [r10-0x28]
  jeq r1, 0x0, jmp_24e20
  ja jmp_251c8

jmp_24e20:
  ldxdw r2, [r10-0x248]
  ldxw r1, [r2+0x0]
  ldxh r2, [r2+0x4]
  ldxb r3, [r10-0x21]
  stxb [r10-0x38], r3
  stxh [r10-0x84], r2
  stxw [r10-0x88], r1
  ldxb r1, [r10-0x18]
  stxb [r10-0x79], r1
  ldxdw r1, [r10-0x20]
  stxdw [r10-0x37], r1
  rsh64 r1, 0x38
  stxb [r10-0x7a], r1
  ldxdw r1, [r10-0x38]
  stxdw [r10-0x82], r1
  ldxh r1, [r10-0x13]
  lsh64 r1, 0x20
  ldxw r8, [r10-0x17]
  or64 r8, r1
  lddw r9, -0x8000000000000000
  ldxdw r7, [r10-0x11]
  ja jmp_245d0

jmp_24ed8:
  mov64 r1, 0x4
  stxdw [r10-0x30], r1
  mov64 r2, r10
  add64 r2, -0x78
  stxdw [r10-0x38], r2
  mov64 r1, r10
  add64 r1, -0x28
  call fn_8038
  ldxb r1, [r10-0x28]
  jne r1, 0x0, jmp_251c8
  ldxb r1, [r10-0x21]
  stxb [r10-0x48], r1
  ldxdw r1, [r10-0x20]
  stxdw [r10-0x47], r1
  ldxw r8, [r10-0x27]
  ldxh r6, [r10-0x23]
  ldxdw r7, [r10-0x48]
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0x38
  call fn_0270
  ldxdw r0, [r10-0x20]
  ldxdw r9, [r10-0x28]
  lddw r1, -0x7fffffffffffffff
  jeq r9, r1, jmp_245b8
  lddw r1, -0x8000000000000000
  jeq r9, r1, jmp_256c0
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_25710
  ldxdw r2, [r10-0x38]
  ldxdw r3, [r2+0x28]
  jgt r3, 0x7, jmp_25370
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, -0x18
  mov64 r2, 0x0
  mov64 r4, 0x1
  jgt r3, r1, jmp_25038
  mov64 r4, 0x0

jmp_25038:
  jne r4, 0x0, jmp_25048
  mov64 r2, r3

jmp_25048:
  lddw r0, 0x300007fe8
  jeq r1, 0x0, jmp_25070
  and64 r2, -0x8
  mov64 r0, r2

jmp_25070:
  lddw r1, 0x300000007
  jgt r0, r1, jmp_254a0

jmp_25088:
  mov64 r1, 0x8
  mov64 r2, 0x18
  call fn_37a08

jmp_250a0:
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0x78
  call fn_8038
  ldxb r1, [r10-0x28]
  jne r1, 0x0, jmp_251c8
  ldxdw r2, [r10-0x248]
  ldxw r1, [r2+0x0]
  ldxh r2, [r2+0x4]
  ldxb r3, [r10-0x21]
  stxb [r10-0x38], r3
  stxh [r10-0x84], r2
  stxw [r10-0x88], r1
  ldxb r1, [r10-0x18]
  stxb [r10-0x79], r1
  ldxdw r1, [r10-0x20]
  stxdw [r10-0x37], r1
  rsh64 r1, 0x38
  stxb [r10-0x7a], r1
  ldxdw r1, [r10-0x38]
  stxdw [r10-0x82], r1
  ldxh r1, [r10-0x13]
  lsh64 r1, 0x20
  ldxw r8, [r10-0x17]
  or64 r8, r1
  lddw r9, -0x7fffffffffffffff
  ldxdw r7, [r10-0x11]
  ja jmp_245d0

jmp_25190:
  mov64 r1, r10
  add64 r1, -0x28
  mov64 r2, r10
  add64 r2, -0x78
  call fn_8038
  ldxb r1, [r10-0x28]
  jeq r1, 0x0, jmp_251e0

jmp_251c8:
  ldxdw r1, [r10-0x20]
  stxdw [r10-0x88], r1
  ja jmp_245c0

jmp_251e0:
  ldxdw r2, [r10-0x248]
  ldxdw r1, [r2+0x8]
  stxdw [r10-0x80], r1
  ldxdw r1, [r2+0x0]
  stxdw [r10-0x88], r1
  ldxh r1, [r10-0x13]
  lsh64 r1, 0x20
  ldxw r8, [r10-0x17]
  or64 r8, r1
  lddw r9, -0x7ffffffffffffff9
  ldxdw r7, [r10-0x11]
  ja jmp_245d0

jmp_25248:
  ldxh r4, [r10-0x14]
  stxdw [r10-0x1f8], r4
  ldxw r8, [r10-0x18]
  ldxh r5, [r10-0x12]
  add64 r3, -0x8
  stxdw [r2+0x28], r3
  ldxdw r3, [r2+0x20]
  mov64 r4, 0x8
  jgt r4, r3, jmp_245a0
  stxdw [r10-0x250], r5
  stxdw [r10-0x210], r0
  add64 r3, -0x8
  stxdw [r2+0x20], r3
  ldxdw r3, [r2+0x18]
  add64 r3, 0x8
  stxdw [r2+0x18], r3
  jeq r1, 0x1, jmp_25780
  mov64 r1, r10
  add64 r1, -0x28
  call fn_8038
  ldxb r1, [r10-0x28]
  jeq r1, 0x0, jmp_255f0
  ja jmp_255c0

jmp_25300:
  lsh64 r6, 0x20
  or64 r7, r6
  ldxdw r1, [r10-0x250]
  lsh64 r1, 0x20
  or64 r8, r1
  ldxdw r1, [r10-0x1f8]
  stxdw [r10-0x80], r1
  stxdw [r10-0x88], r9
  lsh64 r7, 0x10
  ldxdw r1, [r10-0x210]
  or64 r7, r1
  lddw r9, -0x7ffffffffffffff5
  ja jmp_245d0

jmp_25370:
  stxdw [r10-0x1f8], r0
  ldxdw r4, [r10-0x18]
  stxdw [r10-0x210], r4
  mov64 r0, r3
  add64 r0, -0x8
  stxdw [r2+0x28], r0
  ldxdw r5, [r2+0x20]
  mov64 r4, 0x8
  jgt r4, r5, jmp_245a0
  ldxdw r4, [r2+0x18]
  stxdw [r10-0x250], r4
  add64 r4, 0x8
  stxdw [r2+0x18], r4
  mov64 r4, r5
  add64 r4, -0x8
  stxdw [r2+0x20], r4
  jeq r1, 0x1, jmp_257a0
  jgt r0, 0x7, jmp_25548
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, -0x18
  mov64 r2, 0x0
  mov64 r4, 0x1
  jgt r3, r1, jmp_25448
  mov64 r4, 0x0

jmp_25448:
  jne r4, 0x0, jmp_25458
  mov64 r2, r3

jmp_25458:
  lddw r0, 0x300007fe8
  jeq r1, 0x0, jmp_25480
  and64 r2, -0x8
  mov64 r0, r2

jmp_25480:
  lddw r1, 0x300000007
  jgt r0, r1, jmp_254a0
  ja jmp_25088

jmp_254a0:
  lddw r1, 0x300000000
  stxdw [r1+0x0], r0
  lddw r1, -0x7ffffffffffffffa
  stxdw [r0+0x0], r1
  ja jmp_245b8

jmp_254d8:
  lsh64 r6, 0x20
  or64 r7, r6
  ldxdw r1, [r10-0x250]
  lsh64 r1, 0x20
  or64 r8, r1
  ldxdw r1, [r10-0x1f8]
  stxdw [r10-0x80], r1
  stxdw [r10-0x88], r9
  lsh64 r7, 0x10
  ldxdw r1, [r10-0x210]
  or64 r7, r1
  lddw r9, -0x7ffffffffffffff6
  ja jmp_245d0

jmp_25548:
  add64 r3, -0x10
  stxdw [r2+0x28], r3
  mov64 r3, 0x8
  jgt r3, r4, jmp_245a0
  add64 r5, -0x10
  stxdw [r2+0x20], r5
  ldxdw r3, [r10-0x250]
  add64 r3, 0x10
  stxdw [r2+0x18], r3
  jeq r1, 0x2, jmp_257b0
  mov64 r1, r10
  add64 r1, -0x28
  call fn_8038
  ldxb r1, [r10-0x28]
  jeq r1, 0x0, jmp_25748

jmp_255c0:
  ldxdw r0, [r10-0x20]
  ja jmp_245b8

jmp_255d0:
  mov64 r1, 0x1
  lddw r2, data_2ae0
  ja jmp_25728

jmp_255f0:
  lsh64 r6, 0x20
  or64 r7, r6
  ldxdw r1, [r10-0x1f8]
  lsh64 r1, 0x20
  or64 r8, r1
  ldxdw r1, [r10-0x210]
  stxdw [r10-0x80], r1
  stxdw [r10-0x88], r9
  lsh64 r7, 0x10
  ldxdw r1, [r10-0x250]
  or64 r7, r1
  lddw r9, -0x7ffffffffffffff7
  ja jmp_245d0

jmp_25660:
  mov64 r1, 0x2
  lddw r2, data_2ae0
  ja jmp_25728

jmp_25680:
  mov64 r1, 0x1
  lddw r2, data_2ab0
  ja jmp_25728

jmp_256a0:
  mov64 r1, 0x1
  lddw r2, data_2ac0
  ja jmp_25728

jmp_256c0:
  mov64 r1, 0x1
  ja jmp_25718

jmp_256d0:
  mov64 r1, 0x2
  lddw r2, data_2ab0
  ja jmp_25728

jmp_256f0:
  mov64 r1, 0x2
  lddw r2, data_2ac0
  ja jmp_25728

jmp_25710:
  mov64 r1, 0x2

jmp_25718:
  lddw r2, data_2ad0

jmp_25728:
  lddw r3, data_2a90
  call fn_0180
  ja jmp_245b8

jmp_25748:
  lsh64 r6, 0x20
  or64 r8, r6
  ldxdw r1, [r10-0x210]
  stxdw [r10-0x80], r1
  ldxdw r1, [r10-0x1f8]
  stxdw [r10-0x88], r1
  ja jmp_245d0

jmp_25780:
  mov64 r1, 0x3
  lddw r2, data_2ab0
  ja jmp_25728

jmp_257a0:
  mov64 r1, 0x3
  ja jmp_25718

jmp_257b0:
  mov64 r1, 0x4
  ja jmp_25718

jmp_257c0:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x7cf271ebd6efc245
  jne r1, r2, jmp_24450
  ldxdw r1, [r10-0x100]
  lddw r2, -0x7bef002566eca5f5
  jne r1, r2, jmp_24450
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, 0x59f8e9dbd87b8e04
  jne r2, r3, jmp_24450

jmp_25828:
  jeq r1, 0x0, jmp_22258
  ldxdw r1, [r10-0x110]
  lddw r2, -0x6c5e9a281e0922fa
  jeq r1, r2, jmp_25860

jmp_25850:
  mov64 r1, 0x1
  ja jmp_258c8

jmp_25860:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x53861431b91e3427
  jne r1, r2, jmp_25850
  ldxdw r1, [r10-0x100]
  lddw r2, -0x6ec8a4a0127a4be4
  jne r1, r2, jmp_25850
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x56ff00817a0a73c6
  jne r2, r3, jmp_25850

jmp_258c8:
  jeq r1, 0x0, jmp_25970
  ldxdw r1, [r10-0x110]
  lddw r2, -0x21708a111e0922fa
  jeq r1, r2, jmp_25900

jmp_258f0:
  mov64 r1, 0x1
  ja jmp_25968

jmp_25900:
  ldxdw r1, [r10-0x108]
  lddw r2, -0x2532931b43a2bde8
  jne r1, r2, jmp_258f0
  ldxdw r1, [r10-0x100]
  lddw r2, 0x270db9834dfc1ab6
  jne r1, r2, jmp_258f0
  mov64 r1, 0x0
  ldxdw r2, [r10-0xf8]
  lddw r3, -0x3745e27d7064202
  jne r2, r3, jmp_258f0

jmp_25968:
  jne r1, 0x0, jmp_259f8

jmp_25970:
  ldxdw r2, [r10-0x120]
  ldxdw r3, [r10-0x118]
  mov64 r1, r10
  add64 r1, -0xf0
  call fn_2a118
  ldxw r1, [r10-0xf0]
  jeq r1, 0x2d, jmp_23820
  jgt r1, 0x11, jmp_259d0
  mov64 r2, 0x1
  lsh64 r2, r1
  and64 r2, 0x20202
  jne r2, 0x0, jmp_22258

jmp_259d0:
  mov64 r2, 0x1
  stxb [r10-0x146], r2
  jeq r1, 0x1d, jmp_22258
  jne r1, 0x15, jmp_22258
  ja jmp_22258

jmp_259f8:
  mov64 r1, 0x1
  stxb [r10-0x146], r1
  ja jmp_22258

jmp_25a10:
  ldxdw r9, [r10-0x200]
  ldxdw r7, [r10-0x1e8]
  jeq r1, 0x9, jmp_25a38
  jeq r1, 0xa, jmp_25a38
  jeq r1, 0xb, jmp_25a40

jmp_25a38:
  ja jmp_22258

jmp_25a40:
  mov64 r2, 0x1
  stxb [r10-0x145], r2
  jsgt r1, 0x9, jmp_25a70
  jeq r1, 0x3, jmp_25a38
  jeq r1, 0x9, jmp_25a38
  ja jmp_25a38

jmp_25a70:
  jeq r1, 0xa, jmp_25a38
  jeq r1, 0xb, jmp_25a38
  ja jmp_25a38

jmp_25a88:
  lddw r1, -0x7fffffffffffffff
  ldxdw r2, [r10-0xe8]
  jeq r2, r1, jmp_25ab0
  ja jmp_25b60

jmp_25ab0:
  ldxdw r1, [r10-0x170]
  ldxdw r4, [r10-0x228]
  jeq r1, 0x0, jmp_25ed8
  ldxdw r9, [r10-0x178]
  ldxdw r2, [r10-0x208]
  ldxdw r6, [r2+0x28]
  jne r6, 0x0, jmp_25b98

jmp_25ae8:
  ldxw r1, [r9+0x0]
  ldxw r2, [r9+0xe]
  ldxw r3, [r9+0x1c]
  stxw [r10-0x138], r3
  stxw [r10-0x13c], r2
  stxw [r10-0x140], r1

jmp_25b18:
  mov64 r1, r10
  add64 r1, -0xf0
  mov64 r2, r10
  add64 r2, -0x140
  mov64 r3, 0xc
  call fn_34528
  lddw r1, data_3540
  call fn_47a70

jmp_25b60:
  mov64 r1, 0xffff
  ldxdw r2, [r10-0x228]
  stxw [r2+0x8], r1

jmp_25b78:
  lddw r1, -0x8000000000000000
  stxdw [r2+0x0], r1
  ja jmp_26818

jmp_25b98:
  ldxdw r8, [r2+0x20]
  ldxdw r3, [r2+0x10]
  stxdw [r10-0x1e8], r3
  jeq r3, 0x0, jmp_264a8
  lsh64 r1, 0x5
  mov64 r7, r9
  add64 r7, r1
  ldxdw r1, [r2+0x8]
  stxdw [r10-0x1f0], r1
  stxdw [r10-0x1f8], r8

jmp_25be8:
  ldxw r1, [r9+0x0]
  ldxw r2, [r9+0xe]
  ldxw r3, [r9+0x1c]
  stxw [r10-0x138], r3
  stxw [r10-0x13c], r2
  stxw [r10-0x140], r1
  mov64 r1, r10
  add64 r1, -0xf0
  mov64 r2, r10
  add64 r2, -0x140
  mov64 r3, 0xc
  call fn_34528
  ldxdw r2, [r10-0xe8]
  be64 r2
  ldxdw r3, [r10-0xf0]
  be64 r3
  mov64 r1, r10
  add64 r1, -0x190
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4bd50
  ldxdw r1, [r10-0x190]
  jgt r6, r1, jmp_25ca8
  ja jmp_26860

jmp_25ca8:
  add64 r9, 0x20
  mul64 r1, 0x18
  mov64 r2, r8
  add64 r2, r1
  ldxw r3, [r10-0x138]
  ldxdw r4, [r10-0x140]
  ldxdw r5, [r2+0x8]
  ldxdw r0, [r2+0x10]
  mul64 r0, 0xc

jmp_25cf0:
  jeq r0, 0x0, jmp_25d68
  ldxdw r8, [r5+0x0]
  xor64 r8, r4
  ldxw r1, [r5+0x8]
  xor64 r1, r3
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  or64 r8, r1
  lddw r2, -0x8000000000000000
  mov64 r1, 0xff
  add64 r0, -0xc
  add64 r5, 0xc
  jeq r8, 0x0, jmp_26778
  ja jmp_25cf0

jmp_25d68:
  mov64 r1, r10
  add64 r1, -0xf0
  mov64 r2, r10
  add64 r2, -0x140
  mov64 r3, 0xc
  call fn_34528
  ldxdw r2, [r10-0xe8]
  be64 r2
  ldxdw r3, [r10-0xf0]
  be64 r3
  mov64 r1, r10
  add64 r1, -0x1a0
  ldxdw r8, [r10-0x1e8]
  mov64 r4, r8
  mov64 r5, 0x0
  call fn_4bd50
  ldxdw r1, [r10-0x1a0]
  jgt r8, r1, jmp_25e00
  ja jmp_26170

jmp_25e00:
  mul64 r1, 0x18
  ldxdw r2, [r10-0x1f0]
  add64 r2, r1
  ldxw r3, [r10-0x138]
  ldxdw r4, [r10-0x140]
  ldxdw r5, [r2+0x8]
  ldxdw r0, [r2+0x10]
  mul64 r0, 0xc

jmp_25e40:
  jeq r0, 0x0, jmp_25eb8
  ldxdw r8, [r5+0x0]
  xor64 r8, r4
  ldxw r1, [r5+0x8]
  xor64 r1, r3
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  or64 r8, r1
  lddw r2, -0x7fffffffffffffe6
  mov64 r1, 0x1
  add64 r0, -0xc
  add64 r5, 0xc
  jeq r8, 0x0, jmp_26778
  ja jmp_25e40

jmp_25eb8:
  ldxdw r4, [r10-0x228]
  ldxdw r8, [r10-0x1f8]
  jeq r9, r7, jmp_25ed8
  ja jmp_25be8

jmp_25ed8:
  ldxdw r1, [r10-0x158]
  jeq r1, 0x0, jmp_26268
  ldxdw r9, [r10-0x160]
  ldxdw r2, [r10-0x208]
  ldxdw r6, [r2+0x28]
  jne r6, 0x0, jmp_25f10
  ja jmp_25ae8

jmp_25f10:
  ldxdw r8, [r2+0x20]
  ldxdw r3, [r2+0x10]
  stxdw [r10-0x1e8], r3
  jeq r3, 0x0, jmp_26610
  lsh64 r1, 0x5
  mov64 r7, r9
  add64 r7, r1
  ldxdw r1, [r2+0x8]
  stxdw [r10-0x1f0], r1
  stxdw [r10-0x1f8], r8

jmp_25f60:
  ldxw r1, [r9+0x0]
  ldxw r2, [r9+0xe]
  ldxw r3, [r9+0x1c]
  stxw [r10-0x138], r3
  stxw [r10-0x13c], r2
  stxw [r10-0x140], r1
  mov64 r1, r10
  add64 r1, -0xf0
  mov64 r2, r10
  add64 r2, -0x140
  mov64 r3, 0xc
  call fn_34528
  ldxdw r2, [r10-0xe8]
  be64 r2
  ldxdw r3, [r10-0xf0]
  be64 r3
  mov64 r1, r10
  add64 r1, -0x1c0
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4bd50
  ldxdw r1, [r10-0x1c0]
  jgt r6, r1, jmp_26020
  ja jmp_26860

jmp_26020:
  add64 r9, 0x20
  mul64 r1, 0x18
  mov64 r2, r8
  add64 r2, r1
  ldxw r3, [r10-0x138]
  ldxdw r4, [r10-0x140]
  ldxdw r5, [r2+0x8]
  ldxdw r0, [r2+0x10]
  mul64 r0, 0xc

jmp_26068:
  jeq r0, 0x0, jmp_260e0
  ldxdw r8, [r5+0x0]
  xor64 r8, r4
  ldxw r1, [r5+0x8]
  xor64 r1, r3
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  or64 r8, r1
  lddw r2, -0x8000000000000000
  mov64 r1, 0xff
  add64 r0, -0xc
  add64 r5, 0xc
  jeq r8, 0x0, jmp_26778
  ja jmp_26068

jmp_260e0:
  mov64 r1, r10
  add64 r1, -0xf0
  mov64 r2, r10
  add64 r2, -0x140
  mov64 r3, 0xc
  call fn_34528
  ldxdw r2, [r10-0xe8]
  be64 r2
  ldxdw r3, [r10-0xf0]
  be64 r3
  mov64 r1, r10
  add64 r1, -0x1d0
  ldxdw r8, [r10-0x1e8]
  mov64 r4, r8
  mov64 r5, 0x0
  call fn_4bd50
  ldxdw r1, [r10-0x1d0]
  jgt r8, r1, jmp_26190

jmp_26170:
  ldxdw r2, [r10-0x1e8]
  lddw r3, data_3528
  call fn_3ffc8

jmp_26190:
  mul64 r1, 0x18
  ldxdw r2, [r10-0x1f0]
  add64 r2, r1
  ldxw r3, [r10-0x138]
  ldxdw r4, [r10-0x140]
  ldxdw r5, [r2+0x8]
  ldxdw r0, [r2+0x10]
  mul64 r0, 0xc

jmp_261d0:
  jeq r0, 0x0, jmp_26248
  ldxdw r8, [r5+0x0]
  xor64 r8, r4
  ldxw r1, [r5+0x8]
  xor64 r1, r3
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  or64 r8, r1
  lddw r2, -0x7fffffffffffffe6
  mov64 r1, 0x1
  add64 r0, -0xc
  add64 r5, 0xc
  jeq r8, 0x0, jmp_26778
  ja jmp_261d0

jmp_26248:
  ldxdw r4, [r10-0x228]
  ldxdw r8, [r10-0x1f8]
  jeq r9, r7, jmp_26268
  ja jmp_25f60

jmp_26268:
  ldxb r2, [r10-0x148]
  mov64 r1, 0x0
  jeq r2, 0x0, jmp_26288
  ja jmp_26798

jmp_26288:
  ldxb r2, [r10-0x147]
  mov64 r1, 0x1
  jeq r2, 0x0, jmp_26798
  ldxdw r1, [r10-0x208]
  ldxb r1, [r1+0x20a]
  jeq r1, 0x0, jmp_262d0
  ldxdw r2, [r10-0x150]
  mov64 r1, 0x1
  jgt r2, 0x1, jmp_26798

jmp_262d0:
  ldxb r1, [r10-0x144]
  jeq r1, 0x2, jmp_26380
  jne r1, 0x0, jmp_26310
  ldxdw r1, [r10-0x208]
  ldxb r1, [r1+0x20b]
  mov64 r2, r1
  mov64 r1, 0x1
  jne r2, 0x0, jmp_26798

jmp_26310:
  ldxdw r1, [r10-0x208]
  ldxb r1, [r1+0x20c]
  jeq r1, 0x0, jmp_26348
  ldxb r1, [r10-0x142]
  mov64 r2, r1
  mov64 r1, 0x1
  jeq r2, 0x0, jmp_26798

jmp_26348:
  ldxdw r1, [r10-0x208]
  ldxb r1, [r1+0x20d]
  jeq r1, 0x0, jmp_26380
  ldxb r1, [r10-0x143]
  mov64 r2, r1
  mov64 r1, 0x1
  jeq r2, 0x0, jmp_26798

jmp_26380:
  ldxdw r1, [r10-0x208]
  ldxb r1, [r1+0x208]
  jeq r1, 0x0, jmp_263c0
  ldxb r1, [r10-0x146]
  mov64 r2, r1
  mov64 r1, 0x1
  jeq r2, 0x0, jmp_263c0
  ja jmp_26798

jmp_263c0:
  ldxdw r1, [r10-0x208]
  ldxb r2, [r1+0x209]
  mov64 r1, 0x0
  jeq r2, 0x0, jmp_26798
  ldxb r1, [r10-0x145]
  mov64 r2, r1
  mov64 r1, 0x0
  jeq r2, 0x0, jmp_26798
  mov64 r1, 0x1
  ja jmp_26798

jmp_26410:
  mov64 r3, r2
  add64 r3, -0x1
  mov64 r4, 0x7
  jgt r4, r3, jmp_23820
  jeq r2, 0x0, jmp_26440
  ja jmp_23820

jmp_26440:
  ldxdw r2, [r1+0x8]
  mov64 r1, r2
  and64 r1, 0x3
  mov64 r3, r1
  add64 r3, -0x2
  mov64 r4, 0x2
  jgt r4, r3, jmp_23820
  jeq r1, 0x0, jmp_23820
  ldxdw r1, [r2-0x1]
  ldxdw r2, [r2+0x7]
  ldxdw r2, [r2+0x0]
  callx r2
  ja jmp_23820

jmp_264a8:
  ldxw r1, [r9+0x0]
  ldxw r2, [r9+0xe]
  ldxw r3, [r9+0x1c]
  stxw [r10-0x138], r3
  stxw [r10-0x13c], r2
  stxw [r10-0x140], r1
  mov64 r1, r10
  add64 r1, -0xf0
  mov64 r2, r10
  add64 r2, -0x140
  mov64 r3, 0xc
  call fn_34528
  ldxdw r2, [r10-0xe8]
  be64 r2
  ldxdw r3, [r10-0xf0]
  be64 r3
  mov64 r1, r10
  add64 r1, -0x1b0
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4bd50
  ldxdw r1, [r10-0x1b0]
  jge r1, r6, jmp_26860
  mul64 r1, 0x18
  add64 r8, r1
  ldxw r3, [r10-0x138]
  ldxdw r4, [r10-0x140]
  ldxdw r5, [r8+0x8]
  ldxdw r0, [r8+0x10]
  mul64 r0, 0xc
  lddw r2, -0x8000000000000000

jmp_265a8:
  jeq r0, 0x0, jmp_25b18
  ldxdw r6, [r5+0x0]
  xor64 r6, r4
  ldxw r1, [r5+0x8]
  xor64 r1, r3
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  or64 r6, r1
  mov64 r1, 0xff
  add64 r0, -0xc
  add64 r5, 0xc
  jeq r6, 0x0, jmp_26778
  ja jmp_265a8

jmp_26610:
  ldxw r1, [r9+0x0]
  ldxw r2, [r9+0xe]
  ldxw r3, [r9+0x1c]
  stxw [r10-0x138], r3
  stxw [r10-0x13c], r2
  stxw [r10-0x140], r1
  mov64 r1, r10
  add64 r1, -0xf0
  mov64 r2, r10
  add64 r2, -0x140
  mov64 r3, 0xc
  call fn_34528
  ldxdw r2, [r10-0xe8]
  be64 r2
  ldxdw r3, [r10-0xf0]
  be64 r3
  mov64 r1, r10
  add64 r1, -0x1e0
  mov64 r4, r6
  mov64 r5, 0x0
  call fn_4bd50
  ldxdw r1, [r10-0x1e0]
  jge r1, r6, jmp_26860
  mul64 r1, 0x18
  add64 r8, r1
  ldxw r3, [r10-0x138]
  ldxdw r4, [r10-0x140]
  ldxdw r5, [r8+0x8]
  ldxdw r0, [r8+0x10]
  mul64 r0, 0xc
  lddw r2, -0x8000000000000000

jmp_26710:
  jeq r0, 0x0, jmp_25b18
  ldxdw r6, [r5+0x0]
  xor64 r6, r4
  ldxw r1, [r5+0x8]
  xor64 r1, r3
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  or64 r6, r1
  mov64 r1, 0xff
  add64 r0, -0xc
  add64 r5, 0xc
  jeq r6, 0x0, jmp_26778
  ja jmp_26710

jmp_26778:
  lddw r3, -0x7fffffffffffffe6
  ldxdw r4, [r10-0x228]
  jne r2, r3, jmp_267e8

jmp_26798:
  ldxb r3, [r10-0x144]
  mov64 r2, 0x0
  jeq r3, 0x2, jmp_267b8
  ja jmp_26820

jmp_267b8:
  stxb [r4+0x9], r2
  stxb [r4+0x8], r1
  lddw r1, -0x7fffffffffffffe6
  stxdw [r4+0x0], r1
  ja jmp_26818

jmp_267e8:
  mov64 r3, 0x0
  stxb [r4+0xb], r3
  mov64 r3, 0xff
  stxh [r4+0x9], r3
  stxb [r4+0x8], r1
  stxdw [r4+0x0], r2

jmp_26818:
  exit

jmp_26820:
  ldxb r3, [r10-0x143]
  mov64 r2, 0x1
  jne r3, 0x0, jmp_267b8
  ldxb r3, [r10-0x142]
  mov64 r2, 0x0
  jeq r3, 0x0, jmp_267b8
  mov64 r2, 0x1
  ja jmp_267b8

jmp_26860:
  mov64 r2, r6
  lddw r3, data_3528
  call fn_3ffc8

fn_26880:
  mov64 r6, r1
  ldxdw r1, [r2+0x8]
  mov64 r5, 0x2
  jgt r5, r1, jmp_26930
  ldxdw r4, [r2+0x0]
  ldxh r3, [r4+0x0]
  mov64 r0, r4
  add64 r0, 0x2
  stxdw [r2+0x0], r0
  mov64 r0, r1
  add64 r0, -0x2
  stxdw [r2+0x8], r0
  jgt r5, r0, jmp_26930
  add64 r1, -0x4
  ldxh r5, [r4+0x2]
  stxdw [r2+0x8], r1
  add64 r4, 0x4
  stxdw [r2+0x0], r4
  stxh [r6+0x4], r5
  stxh [r6+0x2], r3
  mov64 r1, 0x0
  ja jmp_26958

jmp_26930:
  lddw r1, data_2af0
  call fn_35778
  stxdw [r6+0x8], r0
  mov64 r1, 0x1

jmp_26958:
  stxh [r6+0x0], r1
  exit

fn_26968:
  mov64 r6, r1
  ldxdw r1, [r2+0x8]
  mov64 r4, 0x20
  jgt r4, r1, jmp_26f98
  mov64 r0, r1
  add64 r0, -0x20
  stxdw [r2+0x8], r0
  ldxdw r3, [r2+0x0]
  mov64 r5, r3
  add64 r5, 0x20
  stxdw [r2+0x0], r5
  ldxdw r8, [r3+0x6]
  ldxb r7, [r3+0xe]
  stxb [r10-0x148], r7
  ldxw r7, [r3+0x0]
  stxw [r10-0x310], r7
  ldxh r7, [r3+0x4]
  stxh [r10-0x30c], r7
  stxdw [r10-0x150], r8
  ldxdw r9, [r10-0x14f]
  ldxdw r7, [r3+0xf]
  stxdw [r10-0x328], r7
  ldxdw r7, [r3+0x17]
  stxdw [r10-0x320], r7
  ldxb r7, [r3+0x1f]
  stxb [r10-0x318], r7
  jgt r4, r0, jmp_26f98
  stxdw [r10-0x338], r9
  mov64 r0, r1
  add64 r0, -0x40
  stxdw [r2+0x8], r0
  mov64 r4, r3
  add64 r4, 0x40
  stxdw [r2+0x0], r4
  ldxdw r7, [r3+0x26]
  ldxb r9, [r3+0x2e]
  stxb [r10-0x148], r9
  ldxw r9, [r5+0x0]
  stxw [r10-0x2f0], r9
  ldxh r5, [r5+0x4]
  stxh [r10-0x2ec], r5
  stxdw [r10-0x150], r7
  ldxdw r9, [r10-0x14f]
  ldxdw r5, [r3+0x2f]
  stxdw [r10-0x308], r5
  ldxdw r5, [r3+0x37]
  stxdw [r10-0x300], r5
  ldxb r5, [r3+0x3f]
  stxb [r10-0x2f8], r5
  mov64 r5, 0x20
  jgt r5, r0, jmp_26f98
  stxdw [r10-0x348], r9
  mov64 r5, r3
  add64 r5, 0x60
  stxdw [r2+0x0], r5
  mov64 r5, r1
  add64 r5, -0x60
  stxdw [r2+0x8], r5
  ldxdw r9, [r3+0x46]
  ldxb r0, [r3+0x4e]
  stxb [r10-0x148], r0
  ldxw r0, [r4+0x0]
  stxw [r10-0x2d0], r0
  ldxh r4, [r4+0x4]
  stxh [r10-0x2cc], r4
  stxdw [r10-0x340], r9
  stxdw [r10-0x150], r9
  ldxdw r9, [r10-0x14f]
  ldxdw r4, [r3+0x4f]
  stxdw [r10-0x2e8], r4
  ldxdw r4, [r3+0x57]
  stxdw [r10-0x2e0], r4
  ldxb r4, [r3+0x5f]
  stxb [r10-0x2d8], r4
  jeq r5, 0x0, jmp_26f98
  ldxb r0, [r3+0x60]
  mov64 r4, r3
  add64 r4, 0x61
  stxdw [r2+0x0], r4
  mov64 r4, r1
  add64 r4, -0x61
  stxdw [r2+0x8], r4
  stxb [r10-0x1], r0
  mov64 r5, 0x2
  jgt r5, r0, jmp_26ce0

jmp_26c10:
  mov64 r1, 0x0
  stxdw [r10-0x130], r1
  lddw r1, data_2c58
  stxdw [r10-0x150], r1
  mov64 r1, 0x1
  stxdw [r10-0x148], r1
  stxdw [r10-0x138], r1
  mov64 r1, r10
  add64 r1, -0x2c0
  stxdw [r10-0x140], r1
  lddw r1, 0x8ae0
  stxdw [r10-0x2b8], r1
  mov64 r1, r10
  add64 r1, -0x1
  stxdw [r10-0x2c0], r1
  mov64 r7, r10
  add64 r7, -0x288
  mov64 r2, r10
  add64 r2, -0x150
  mov64 r1, r7
  call fn_37aa0
  mov64 r1, r7
  call fn_14d8
  ja jmp_26fb0

jmp_26ce0:
  jeq r4, 0x0, jmp_26f98
  stxdw [r10-0x358], r9
  ldxb r9, [r3+0x61]
  mov64 r4, r3
  add64 r4, 0x62
  stxdw [r2+0x0], r4
  mov64 r4, r1
  add64 r4, -0x62
  stxdw [r2+0x8], r4
  stxb [r10-0x1], r9
  stxdw [r10-0x350], r9
  jgt r5, r9, jmp_26d48
  ja jmp_26c10

jmp_26d48:
  jeq r4, 0x0, jmp_26f98
  ldxb r9, [r3+0x62]
  mov64 r4, r3
  add64 r4, 0x63
  stxdw [r2+0x0], r4
  mov64 r4, r1
  add64 r4, -0x63
  stxdw [r2+0x8], r4
  stxb [r10-0x1], r9
  jgt r5, r9, jmp_26da0
  ja jmp_26c10

jmp_26da0:
  jeq r4, 0x0, jmp_26f98
  stxdw [r10-0x368], r9
  ldxb r9, [r3+0x63]
  mov64 r4, r3
  add64 r4, 0x64
  stxdw [r2+0x0], r4
  mov64 r4, r1
  add64 r4, -0x64
  stxdw [r2+0x8], r4
  stxb [r10-0x1], r9
  stxdw [r10-0x360], r9
  jgt r5, r9, jmp_26e08
  ja jmp_26c10

jmp_26e08:
  jeq r4, 0x0, jmp_26f98
  ldxb r9, [r3+0x64]
  mov64 r4, r3
  add64 r4, 0x65
  stxdw [r2+0x0], r4
  mov64 r4, r1
  add64 r4, -0x65
  stxdw [r2+0x8], r4
  stxb [r10-0x1], r9
  jgt r5, r9, jmp_26e60
  ja jmp_26c10

jmp_26e60:
  jeq r4, 0x0, jmp_26f98
  stxdw [r10-0x378], r9
  ldxb r9, [r3+0x65]
  mov64 r4, r3
  add64 r4, 0x66
  stxdw [r2+0x0], r4
  mov64 r4, r1
  add64 r4, -0x66
  stxdw [r2+0x8], r4
  stxb [r10-0x1], r9
  stxdw [r10-0x370], r9
  jgt r5, r9, jmp_26ec8
  ja jmp_26c10

jmp_26ec8:
  stxdw [r10-0x380], r0
  jeq r4, 0x0, jmp_26f98
  ldxb r9, [r3+0x66]
  mov64 r4, r3
  add64 r4, 0x67
  stxdw [r2+0x0], r4
  mov64 r4, r1
  add64 r4, -0x67
  stxdw [r10-0x388], r2
  stxdw [r2+0x8], r4
  stxb [r10-0x1], r9
  mov64 r2, 0x2
  jgt r2, r9, jmp_26f38
  ja jmp_26c10

jmp_26f38:
  jeq r4, 0x0, jmp_26f98
  add64 r1, -0x68
  ldxb r4, [r3+0x67]
  ldxdw r2, [r10-0x388]
  stxdw [r2+0x8], r1
  add64 r3, 0x68
  stxdw [r2+0x0], r3
  stxb [r10-0x1], r4
  mov64 r1, 0x2
  stxdw [r10-0x390], r4
  jgt r1, r4, jmp_26fd8
  ja jmp_26c10

jmp_26f98:
  lddw r1, data_2af0
  call fn_35778

jmp_26fb0:
  lddw r1, -0x8000000000000000
  stxdw [r6+0x0], r1
  stxdw [r6+0x8], r0

jmp_26fd0:
  exit

jmp_26fd8:
  mov64 r1, r10
  add64 r1, -0x150
  ldxdw r2, [r10-0x388]
  call fn_26e8
  ldxb r1, [r10-0x150]
  jeq r1, 0x0, jmp_27038

jmp_27008:
  ldxdw r1, [r10-0x148]
  lddw r2, -0x8000000000000000
  stxdw [r6+0x0], r2

jmp_27028:
  stxdw [r6+0x8], r1
  ja jmp_26fd0

jmp_27038:
  ldxdw r1, [r10-0x388]
  ldxdw r1, [r1+0x8]
  mov64 r2, 0x5
  jgt r2, r1, jmp_27360
  ldxb r2, [r10-0x14f]
  stxdw [r10-0x398], r2
  ldxdw r2, [r10-0x388]
  ldxdw r3, [r2+0x0]
  mov64 r4, r3
  add64 r4, 0x5
  stxdw [r2+0x0], r4
  mov64 r4, r1
  add64 r4, -0x5
  stxdw [r2+0x8], r4
  ldxb r2, [r3+0x4]
  stxb [r10-0x2c4], r2
  ldxw r2, [r3+0x0]
  stxw [r10-0x2c8], r2
  jeq r4, 0x0, jmp_27360
  add64 r1, -0x6
  ldxb r2, [r3+0x5]
  stxdw [r10-0x3a0], r2
  ldxdw r2, [r10-0x388]
  stxdw [r2+0x8], r1
  add64 r3, 0x6
  stxdw [r2+0x0], r3
  mov64 r1, r10
  add64 r1, -0x150
  call fn_6fb0
  ldxb r1, [r10-0x150]
  jeq r1, 0x0, jmp_27138
  ja jmp_27008

jmp_27138:
  ldxw r1, [r10-0x14c]
  stxw [r10-0x28d], r1
  ldxw r1, [r10-0x14f]
  stxw [r10-0x290], r1
  ldxdw r1, [r10-0x148]
  stxdw [r10-0x3a8], r1
  mov64 r1, r10
  add64 r1, -0x2c0
  mov64 r2, r10
  add64 r2, -0x140
  mov64 r3, 0x29
  call fn_490d0
  ldxdw r1, [r10-0x388]
  ldxdw r1, [r1+0x8]
  mov64 r2, 0x2
  jgt r2, r1, jmp_27360
  ldxdw r4, [r10-0x388]
  ldxdw r3, [r4+0x0]
  ldxh r5, [r3+0x0]
  stxdw [r10-0x3b0], r5
  mov64 r5, r3
  add64 r5, 0x2
  stxdw [r4+0x0], r5
  mov64 r5, r1
  add64 r5, -0x2
  stxdw [r4+0x8], r5
  jgt r2, r5, jmp_27360
  add64 r1, -0x4
  ldxh r2, [r3+0x2]
  stxdw [r10-0x3b8], r2
  ldxdw r2, [r10-0x388]
  stxdw [r2+0x8], r1
  add64 r3, 0x4
  stxdw [r2+0x0], r3
  mov64 r1, r10
  add64 r1, -0x150
  call fn_70a8
  ldxb r1, [r10-0x150]
  jeq r1, 0x0, jmp_27278
  ja jmp_27008

jmp_27278:
  ldxw r1, [r10-0x14c]
  stxw [r10-0x5], r1
  ldxw r1, [r10-0x14f]
  stxw [r10-0x8], r1
  ldxdw r1, [r10-0x148]
  stxdw [r10-0x3c8], r1
  mov64 r1, r10
  add64 r1, -0x288
  mov64 r2, r10
  add64 r2, -0x140
  mov64 r3, 0x131
  call fn_490d0
  mov64 r1, r10
  add64 r1, -0x150
  ldxdw r2, [r10-0x388]
  call fn_28348
  ldxdw r1, [r10-0x148]
  stxdw [r10-0x3c0], r1
  ldxdw r1, [r10-0x150]
  lddw r2, -0x8000000000000000
  stxdw [r10-0x3d0], r1
  jeq r1, r2, jmp_27338
  ja jmp_273a0

jmp_27338:
  lddw r1, -0x8000000000000000
  stxdw [r6+0x0], r1
  ldxdw r1, [r10-0x3c0]
  ja jmp_27028

jmp_27360:
  lddw r1, data_2af0
  call fn_35778
  stxdw [r6+0x8], r0
  lddw r1, -0x8000000000000000
  stxdw [r6+0x0], r1
  ja jmp_26fd0

jmp_273a0:
  ldxdw r1, [r10-0x140]
  stxdw [r10-0x3d8], r1
  mov64 r1, r10
  add64 r1, -0x150
  ldxdw r2, [r10-0x388]
  call fn_28348
  ldxdw r1, [r10-0x148]
  stxdw [r10-0x388], r1
  ldxdw r1, [r10-0x150]
  stxdw [r10-0x3e0], r1
  lddw r2, -0x8000000000000000
  jeq r1, r2, jmp_27410
  ja jmp_27438

jmp_27410:
  lddw r1, -0x8000000000000000
  stxdw [r6+0x0], r1
  ldxdw r1, [r10-0x388]
  ja jmp_27028

jmp_27438:
  ldxdw r1, [r10-0x140]
  stxdw [r10-0x3e8], r1
  ldxh r1, [r10-0x30c]
  stxh [r6+0x34], r1
  ldxw r1, [r10-0x310]
  stxw [r6+0x30], r1
  ldxb r1, [r10-0x318]
  stxb [r6+0x4f], r1
  ldxdw r1, [r10-0x320]
  stxdw [r6+0x47], r1
  ldxdw r1, [r10-0x328]
  stxdw [r6+0x3f], r1
  ldxh r1, [r10-0x2ec]
  stxh [r6+0x54], r1
  ldxw r1, [r10-0x2f0]
  stxw [r6+0x50], r1
  ldxb r1, [r10-0x2f8]
  stxb [r6+0x6f], r1
  ldxdw r1, [r10-0x300]
  stxdw [r6+0x67], r1
  ldxdw r1, [r10-0x308]
  stxdw [r6+0x5f], r1
  ldxw r1, [r10-0x2d0]
  stxw [r6+0x70], r1
  ldxh r1, [r10-0x2cc]
  stxh [r6+0x74], r1
  ldxdw r1, [r10-0x2e8]
  stxdw [r6+0x7f], r1
  ldxdw r1, [r10-0x2e0]
  stxdw [r6+0x87], r1
  ldxb r1, [r10-0x2d8]
  stxb [r6+0x8f], r1
  ldxw r1, [r10-0x2c8]
  stxw [r6+0x215], r1
  ldxb r1, [r10-0x2c4]
  stxb [r6+0x219], r1
  ldxw r1, [r10-0x290]
  stxw [r6+0x90], r1
  ldxw r1, [r10-0x28d]
  stxw [r6+0x93], r1
  mov64 r1, r6
  add64 r1, 0x9f
  mov64 r2, r10
  add64 r2, -0x2c0
  mov64 r3, 0x29
  call fn_490d0
  ldxw r1, [r10-0x8]
  stxw [r6+0xc8], r1
  ldxw r1, [r10-0x5]
  stxw [r6+0xcb], r1
  mov64 r1, r6
  add64 r1, 0xd7
  mov64 r2, r10
  add64 r2, -0x288
  mov64 r3, 0x131
  call fn_490d0
  ldxdw r1, [r10-0x3a0]
  stxb [r6+0x21a], r1
  ldxdw r1, [r10-0x398]
  stxb [r6+0x214], r1
  ldxdw r1, [r10-0x350]
  stxb [r6+0x213], r1
  ldxdw r1, [r10-0x380]
  stxb [r6+0x212], r1
  ldxdw r1, [r10-0x3b8]
  stxh [r6+0x210], r1
  ldxdw r1, [r10-0x3b0]
  stxh [r6+0x20e], r1
  ldxdw r1, [r10-0x390]
  stxb [r6+0x20d], r1
  stxb [r6+0x20c], r9
  ldxdw r1, [r10-0x370]
  stxb [r6+0x20b], r1
  ldxdw r1, [r10-0x378]
  stxb [r6+0x20a], r1
  ldxdw r1, [r10-0x360]
  stxb [r6+0x209], r1
  ldxdw r1, [r10-0x368]
  stxb [r6+0x208], r1
  ldxdw r1, [r10-0x3c8]
  stxdw [r6+0xcf], r1
  ldxdw r1, [r10-0x3a8]
  stxdw [r6+0x97], r1
  ldxdw r1, [r10-0x358]
  stxdw [r6+0x77], r1
  ldxdw r1, [r10-0x340]
  stxb [r6+0x76], r1
  ldxdw r1, [r10-0x348]
  stxdw [r6+0x57], r1
  stxb [r6+0x56], r7
  ldxdw r1, [r10-0x338]
  stxdw [r6+0x37], r1
  stxb [r6+0x36], r8
  ldxdw r1, [r10-0x3e8]
  stxdw [r6+0x28], r1
  ldxdw r1, [r10-0x388]
  stxdw [r6+0x20], r1
  ldxdw r1, [r10-0x3e0]
  stxdw [r6+0x18], r1
  ldxdw r1, [r10-0x3d8]
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0x3c0]
  stxdw [r6+0x8], r1
  ldxdw r1, [r10-0x3d0]
  stxdw [r6+0x0], r1
  ldxb r1, [r10-0x329]
  stxb [r6+0x21f], r1
  ldxw r1, [r10-0x32d]
  stxw [r6+0x21b], r1
  ja jmp_26fd0

fn_277a8:
  ldxdw r8, [r2+0x0]
  stxdw [r10-0x10], r2
  ldxdw r6, [r2+0x8]
  stxdw [r10-0x18], r1
  mov64 r2, r1
  add64 r2, 0x30
  mov64 r1, 0x20
  mov64 r9, r6
  jgt r1, r6, jmp_277f8
  mov64 r9, 0x20

jmp_277f8:
  mov64 r1, r8
  mov64 r3, r9
  call fn_490d0
  add64 r8, r9
  mov64 r7, r6
  sub64 r7, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r7
  stxdw [r1+0x0], r8
  lddw r0, data_2b08
  mov64 r1, 0x20
  jgt r1, r6, jmp_27f30
  ldxdw r2, [r10-0x18]
  add64 r2, 0x50
  mov64 r9, r7
  jgt r1, r7, jmp_27888
  mov64 r9, 0x20

jmp_27888:
  mov64 r1, r8
  mov64 r3, r9
  call fn_490d0
  add64 r8, r9
  mov64 r6, r7
  sub64 r6, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r6
  stxdw [r1+0x0], r8
  lddw r0, data_2b08
  mov64 r1, 0x20
  jgt r1, r7, jmp_27f30
  ldxdw r2, [r10-0x18]
  add64 r2, 0x70
  mov64 r7, 0x20
  mov64 r9, r6
  jgt r7, r6, jmp_27920
  mov64 r9, 0x20

jmp_27920:
  mov64 r1, r8
  mov64 r3, r9
  call fn_490d0
  add64 r8, r9
  mov64 r2, r6
  sub64 r2, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r2
  stxdw [r1+0x0], r8
  lddw r0, data_2b08
  jgt r7, r6, jmp_27f30
  stxdw [r10-0x20], r2
  ldxdw r1, [r10-0x18]
  ldxb r1, [r1+0x212]
  stxb [r10-0x7], r1
  mov64 r9, 0x1
  jne r6, 0x20, jmp_279b8
  mov64 r9, 0x0

jmp_279b8:
  mov64 r2, r10
  add64 r2, -0x7
  mov64 r1, r8
  mov64 r3, r9
  call fn_490d0
  ldxdw r2, [r10-0x20]
  mov64 r7, r2
  sub64 r7, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r7
  add64 r8, r9
  stxdw [r1+0x0], r8
  lddw r0, data_2b08
  jeq r6, 0x20, jmp_27f30
  ldxdw r1, [r10-0x18]
  ldxb r1, [r1+0x213]
  stxb [r10-0x6], r1
  mov64 r6, 0x1
  jne r2, r9, jmp_27a60
  mov64 r6, 0x0

jmp_27a60:
  mov64 r2, r10
  add64 r2, -0x6
  mov64 r1, r8
  mov64 r3, r6
  call fn_490d0
  sub64 r7, r6
  ldxdw r2, [r10-0x10]
  stxdw [r2+0x8], r7
  add64 r8, r6
  stxdw [r2+0x0], r8
  lddw r0, data_2b08
  ldxdw r1, [r10-0x20]
  jeq r1, r9, jmp_27f30
  ldxdw r1, [r10-0x18]
  add64 r1, 0x208
  call fn_27f38
  ldxdw r2, [r10-0x10]
  jne r0, 0x0, jmp_27f30
  ldxdw r1, [r10-0x18]
  ldxb r1, [r1+0x214]
  stxb [r10-0x5], r1
  ldxdw r6, [r2+0x8]
  mov64 r9, 0x1
  jne r6, 0x0, jmp_27b30
  mov64 r9, 0x0

jmp_27b30:
  ldxdw r8, [r2+0x0]
  mov64 r2, r10
  add64 r2, -0x5
  mov64 r1, r8
  mov64 r3, r9
  call fn_490d0
  ldxdw r1, [r10-0x10]
  add64 r8, r9
  mov64 r7, r6
  sub64 r7, r9
  stxdw [r1+0x8], r7
  stxdw [r1+0x0], r8
  lddw r0, data_2b08
  jeq r6, 0x0, jmp_27f30
  ldxdw r2, [r10-0x18]
  add64 r2, 0x215
  mov64 r6, 0x5
  mov64 r9, r7
  jgt r6, r7, jmp_27bd8
  mov64 r9, 0x5

jmp_27bd8:
  mov64 r1, r8
  mov64 r3, r9
  call fn_490d0
  add64 r8, r9
  mov64 r2, r7
  sub64 r2, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r2
  stxdw [r1+0x0], r8
  lddw r0, data_2b08
  jgt r6, r7, jmp_27f30
  mov64 r6, r2
  mov64 r9, 0x1
  jne r7, 0x5, jmp_27c58
  mov64 r9, 0x0

jmp_27c58:
  ldxdw r2, [r10-0x18]
  add64 r2, 0x21a
  mov64 r1, r8
  mov64 r3, r9
  call fn_490d0
  add64 r8, r9
  sub64 r6, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r6
  stxdw [r1+0x0], r8
  lddw r0, data_2b08
  jeq r7, 0x5, jmp_27f30
  ldxdw r2, [r10-0x18]
  add64 r2, 0x90
  mov64 r1, 0x38
  mov64 r9, r6
  mov64 r7, r6
  jgt r1, r6, jmp_27cf8
  mov64 r9, 0x38

jmp_27cf8:
  mov64 r1, r8
  mov64 r3, r9
  call fn_490d0
  add64 r8, r9
  mov64 r6, r7
  sub64 r6, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r6
  stxdw [r1+0x0], r8
  lddw r0, data_2b08
  mov64 r1, 0x38
  jgt r1, r7, jmp_27f30
  ldxdw r1, [r10-0x18]
  ldxh r1, [r1+0x20e]
  stxh [r10-0x4], r1
  mov64 r1, 0x2
  mov64 r9, r6
  jgt r1, r6, jmp_27d98
  mov64 r9, 0x2

jmp_27d98:
  mov64 r2, r10
  add64 r2, -0x4
  mov64 r1, r8
  mov64 r3, r9
  call fn_490d0
  add64 r8, r9
  mov64 r7, r6
  sub64 r7, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r7
  stxdw [r1+0x0], r8
  lddw r0, data_2b08
  mov64 r1, 0x2
  jgt r1, r6, jmp_27f30
  ldxdw r1, [r10-0x18]
  ldxh r1, [r1+0x210]
  stxh [r10-0x2], r1
  mov64 r6, 0x2
  mov64 r9, r7
  jgt r6, r7, jmp_27e48
  mov64 r9, 0x2

jmp_27e48:
  mov64 r2, r10
  add64 r2, -0x2
  mov64 r1, r8
  mov64 r3, r9
  call fn_490d0
  mov64 r1, r7
  sub64 r1, r9
  ldxdw r2, [r10-0x10]
  stxdw [r2+0x8], r1
  add64 r8, r9
  stxdw [r2+0x0], r8
  lddw r0, data_2b08
  jgt r6, r7, jmp_27f30
  ldxdw r1, [r10-0x18]
  add64 r1, 0xc8
  call fn_6918
  jne r0, 0x0, jmp_27f30
  ldxdw r1, [r10-0x18]
  ldxdw r2, [r1+0x10]
  ldxdw r1, [r1+0x8]
  ldxdw r3, [r10-0x10]
  call fn_28a90
  ldxdw r3, [r10-0x10]
  jne r0, 0x0, jmp_27f30
  ldxdw r1, [r10-0x18]
  ldxdw r2, [r1+0x28]
  ldxdw r1, [r1+0x20]
  call fn_28a90

jmp_27f30:
  exit

fn_27f38:
  stxdw [r10-0x18], r1
  ldxb r1, [r1+0x0]
  stxb [r10-0x6], r1
  stxdw [r10-0x10], r2
  ldxdw r6, [r2+0x8]
  mov64 r8, 0x1
  jne r6, 0x0, jmp_27f78
  mov64 r8, 0x0

jmp_27f78:
  ldxdw r9, [r10-0x10]
  ldxdw r7, [r9+0x0]
  mov64 r2, r10
  add64 r2, -0x6
  mov64 r1, r7
  mov64 r3, r8
  call fn_490d0
  add64 r7, r8
  mov64 r2, r6
  sub64 r2, r8
  stxdw [r9+0x8], r2
  stxdw [r9+0x0], r7
  lddw r1, data_2b08
  stxdw [r10-0x20], r1
  jeq r6, 0x0, jmp_28338
  stxdw [r10-0x28], r2
  ldxdw r1, [r10-0x18]
  ldxb r1, [r1+0x1]
  stxb [r10-0x5], r1
  mov64 r8, 0x1
  jne r6, 0x1, jmp_28030
  mov64 r8, 0x0

jmp_28030:
  mov64 r2, r10
  add64 r2, -0x5
  mov64 r1, r7
  mov64 r3, r8
  call fn_490d0
  ldxdw r2, [r10-0x28]
  mov64 r9, r2
  sub64 r9, r8
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r9
  add64 r7, r8
  stxdw [r1+0x0], r7
  jeq r6, 0x1, jmp_28338
  ldxdw r1, [r10-0x18]
  ldxb r1, [r1+0x2]
  stxb [r10-0x4], r1
  mov64 r6, 0x1
  jne r2, r8, jmp_280c8
  mov64 r6, 0x0

jmp_280c8:
  mov64 r2, r10
  add64 r2, -0x4
  mov64 r1, r7
  mov64 r3, r6
  call fn_490d0
  mov64 r2, r9
  sub64 r2, r6
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r2
  add64 r7, r6
  stxdw [r1+0x0], r7
  ldxdw r1, [r10-0x28]
  jeq r1, r8, jmp_28338
  stxdw [r10-0x28], r2
  ldxdw r1, [r10-0x18]
  ldxb r1, [r1+0x3]
  stxb [r10-0x3], r1
  mov64 r1, r9
  mov64 r9, 0x1
  stxdw [r10-0x30], r1
  mov64 r8, r6
  jne r1, r6, jmp_28180
  mov64 r9, 0x0

jmp_28180:
  mov64 r2, r10
  add64 r2, -0x3
  mov64 r1, r7
  mov64 r3, r9
  call fn_490d0
  add64 r7, r9
  ldxdw r2, [r10-0x28]
  mov64 r6, r2
  sub64 r6, r9
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r6
  stxdw [r1+0x0], r7
  ldxdw r1, [r10-0x30]
  jeq r1, r8, jmp_28338
  ldxdw r1, [r10-0x18]
  ldxb r1, [r1+0x4]
  stxb [r10-0x2], r1
  mov64 r8, 0x1
  jne r2, 0x1, jmp_28220
  mov64 r8, 0x0

jmp_28220:
  mov64 r2, r10
  add64 r2, -0x2
  mov64 r1, r7
  mov64 r3, r8
  call fn_490d0
  mov64 r9, r6
  sub64 r9, r8
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r9
  add64 r7, r8
  stxdw [r1+0x0], r7
  ldxdw r1, [r10-0x28]
  jeq r1, 0x1, jmp_28338
  ldxdw r1, [r10-0x18]
  ldxb r1, [r1+0x5]
  stxb [r10-0x1], r1
  mov64 r3, 0x1
  jne r6, r8, jmp_282b8
  mov64 r3, 0x0

jmp_282b8:
  mov64 r2, r10
  add64 r2, -0x1
  mov64 r1, r7
  stxdw [r10-0x18], r3
  call fn_490d0
  lddw r1, data_2b08
  jeq r6, r8, jmp_28300
  mov64 r1, 0x0

jmp_28300:
  stxdw [r10-0x20], r1
  ldxdw r2, [r10-0x18]
  sub64 r9, r2
  ldxdw r1, [r10-0x10]
  stxdw [r1+0x8], r9
  add64 r7, r2
  stxdw [r1+0x0], r7

jmp_28338:
  ldxdw r0, [r10-0x20]
  exit

fn_28348:
  mov64 r8, r1
  ldxdw r6, [r2+0x8]
  mov64 r1, 0x4
  jgt r1, r6, jmp_289b0
  ldxdw r1, [r2+0x0]
  ldxw r3, [r1+0x0]
  add64 r1, 0x4
  add64 r6, -0x4
  stxdw [r2+0x8], r6
  stxdw [r10-0x40], r1
  stxdw [r2+0x0], r1
  mov64 r1, 0x8
  mov64 r5, 0x0
  mov64 r4, 0x0
  stxdw [r10-0x70], r3
  jeq r3, 0x0, jmp_28a50
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  lddw r4, 0x300008000
  jeq r1, 0x0, jmp_28400
  mov64 r4, r1

jmp_28400:
  mov64 r9, r6
  stxdw [r10-0x60], r2
  mov64 r2, 0xaa
  ldxdw r3, [r10-0x70]
  mov64 r1, r3
  jgt r2, r3, jmp_28438
  mov64 r1, 0xaa

jmp_28438:
  mov64 r2, r1
  mul64 r2, 0x18
  mov64 r5, r4
  sub64 r5, r2
  mov64 r3, 0x0
  mov64 r0, 0x1
  jgt r5, r4, jmp_28478
  mov64 r0, 0x0

jmp_28478:
  jne r0, 0x0, jmp_28488
  mov64 r3, r5

jmp_28488:
  and64 r3, -0x8
  lddw r4, 0x300000008
  jgt r4, r3, jmp_28a80
  lddw r2, 0x300000000
  stxdw [r2+0x0], r3
  stxdw [r10-0x30], r3
  stxdw [r10-0x38], r1
  mov64 r2, 0x0
  mov64 r1, 0x0
  stxdw [r10-0x58], r1
  stxdw [r10-0x28], r2
  mov64 r0, 0x4
  mov64 r7, 0x0
  mov64 r4, r8
  stxdw [r10-0x78], r8
  ldxdw r5, [r10-0x60]
  mov64 r8, r9

jmp_28520:
  jgt r0, r8, jmp_289d0
  add64 r8, -0x4
  ldxdw r1, [r10-0x40]
  ldxw r2, [r1+0x0]
  stxdw [r5+0x8], r8
  add64 r1, 0x4
  stxdw [r5+0x0], r1
  stxdw [r10-0x48], r2
  stxdw [r10-0x68], r7
  jne r2, 0x0, jmp_286a0
  stxdw [r10-0x50], r8
  mov64 r0, 0x1
  mov64 r9, 0x0
  stxdw [r10-0x40], r1
  mov64 r8, 0x0
  ldxdw r6, [r10-0x58]

jmp_285a0:
  ldxdw r1, [r10-0x38]
  ldxdw r7, [r10-0x68]
  jne r6, r1, jmp_28600
  mov64 r1, r10
  add64 r1, -0x38
  stxdw [r10-0x58], r6
  mov64 r6, r0
  call fn_3458
  ldxdw r5, [r10-0x60]
  mov64 r0, r6
  ldxdw r6, [r10-0x58]
  ldxdw r4, [r10-0x78]

jmp_28600:
  add64 r7, 0x1
  mov64 r2, r6
  mul64 r2, 0x18
  ldxdw r1, [r10-0x30]
  mov64 r3, r1
  add64 r3, r2
  stxdw [r3+0x10], r9
  stxdw [r3+0x8], r0
  stxdw [r3+0x0], r8
  add64 r6, 0x1
  stxdw [r10-0x58], r6
  stxdw [r10-0x28], r6
  mov64 r2, r7
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  ldxdw r8, [r10-0x50]
  ldxdw r3, [r10-0x70]
  mov64 r0, 0x4
  jgt r3, r2, jmp_28520
  ja jmp_28a18

jmp_286a0:
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  lddw r4, 0x300008000
  jeq r1, 0x0, jmp_286d8
  mov64 r4, r1

jmp_286d8:
  mov64 r6, r8
  mov64 r1, 0x155
  ldxdw r2, [r10-0x48]
  mov64 r3, r2
  jgt r1, r2, jmp_28708
  mov64 r3, 0x155

jmp_28708:
  mov64 r2, r3
  mul64 r2, 0xc
  mov64 r5, r4
  sub64 r5, r2
  mov64 r1, 0x0
  mov64 r0, 0x1
  jgt r5, r4, jmp_28748
  mov64 r0, 0x0

jmp_28748:
  jne r0, 0x0, jmp_28758
  mov64 r1, r5

jmp_28758:
  lddw r4, 0x300000008
  jgt r4, r1, jmp_28a70
  lddw r2, 0x300000000
  stxdw [r2+0x0], r1
  stxdw [r10-0x20], r3
  mov64 r7, 0x0
  stxdw [r10-0x10], r7
  stxdw [r10-0x18], r1
  mov64 r9, 0x0
  ldxdw r5, [r10-0x60]
  mov64 r0, r6
  ja jmp_288c0

jmp_287c8:
  add64 r9, 0x1
  lsh64 r6, 0x20
  or64 r8, r6
  mov64 r2, r1
  add64 r2, r7
  ldxh r3, [r10-0x4]
  stxh [r2+0x4], r3
  ldxw r3, [r10-0x8]
  stxw [r2+0x0], r3
  mov64 r3, r8
  rsh64 r3, 0x20
  stxb [r2+0xb], r3
  stxw [r2+0x7], r8
  stxb [r2+0x6], r4
  stxdw [r10-0x10], r9
  add64 r7, 0xc
  ldxdw r2, [r10-0x48]
  jgt r2, r9, jmp_288c0
  stxdw [r10-0x50], r0
  ldxdw r0, [r10-0x18]
  ldxdw r8, [r10-0x20]
  lddw r1, -0x8000000000000000
  jeq r8, r1, jmp_289e8
  ldxdw r1, [r10-0x40]
  add64 r1, r7
  add64 r1, 0x4
  stxdw [r10-0x40], r1
  ldxdw r6, [r10-0x28]
  ldxdw r4, [r10-0x78]
  ja jmp_285a0

jmp_288c0:
  mov64 r2, 0xc
  jgt r2, r0, jmp_289d0
  ldxdw r2, [r10-0x40]
  add64 r2, r7
  mov64 r3, r2
  add64 r3, 0x4
  mov64 r4, r2
  add64 r4, 0x10
  stxdw [r5+0x0], r4
  add64 r0, -0xc
  stxdw [r5+0x8], r0
  ldxb r4, [r2+0xa]
  ldxw r8, [r2+0xb]
  ldxb r6, [r2+0xf]
  ldxw r2, [r3+0x0]
  stxw [r10-0x8], r2
  ldxh r2, [r3+0x4]
  stxh [r10-0x4], r2
  ldxdw r2, [r10-0x20]
  jne r9, r2, jmp_287c8
  mov64 r1, r10
  add64 r1, -0x20
  stxdw [r10-0x50], r0
  stxdw [r10-0x58], r4
  call fn_3720
  ldxdw r4, [r10-0x58]
  ldxdw r0, [r10-0x50]
  ldxdw r5, [r10-0x60]
  ldxdw r1, [r10-0x18]
  ja jmp_287c8

jmp_289b0:
  lddw r1, data_2af0
  call fn_35778
  ja jmp_289f0

jmp_289d0:
  lddw r1, data_2af0
  call fn_35778

jmp_289e8:
  ldxdw r8, [r10-0x78]

jmp_289f0:
  lddw r1, -0x8000000000000000
  stxdw [r8+0x0], r1
  stxdw [r8+0x8], r0

jmp_28a10:
  exit

jmp_28a18:
  ldxdw r5, [r10-0x38]
  lddw r3, -0x8000000000000000
  mov64 r0, r1
  mov64 r8, r4
  ldxdw r4, [r10-0x58]
  jeq r5, r3, jmp_289f0

jmp_28a50:
  stxdw [r8+0x10], r4
  stxdw [r8+0x8], r1
  stxdw [r8+0x0], r5
  ja jmp_28a10

jmp_28a70:
  mov64 r1, 0x1
  call fn_379f0

jmp_28a80:
  mov64 r1, 0x8
  call fn_379f0

fn_28a90:
  mov64 r9, r2
  lddw r0, 0x1500000003
  lddw r2, 0xffffffff
  jgt r9, r2, jmp_28d80
  stxdw [r10-0x18], r1
  stxw [r10-0x8], r9
  ldxdw r1, [r3+0x0]
  stxdw [r10-0x20], r3
  ldxdw r8, [r3+0x8]
  mov64 r2, 0x4
  mov64 r7, r8
  jgt r2, r8, jmp_28b08
  mov64 r7, 0x4

jmp_28b08:
  mov64 r2, r10
  add64 r2, -0x8
  mov64 r3, r7
  mov64 r6, r1
  call fn_490d0
  mov64 r1, r6
  add64 r1, r7
  mov64 r6, r8
  sub64 r6, r7
  ldxdw r2, [r10-0x20]
  stxdw [r2+0x8], r6
  stxdw [r2+0x0], r1
  lddw r0, data_2b08
  ldxdw r2, [r10-0x18]
  mov64 r3, 0x4
  jgt r3, r8, jmp_28d80
  mov64 r0, 0x0
  jeq r9, 0x0, jmp_28d80
  mul64 r9, 0x18
  mov64 r3, r2
  add64 r3, r9
  stxdw [r10-0x28], r3
  ja jmp_28be0

jmp_28bc8:
  mov64 r0, 0x0
  ldxdw r3, [r10-0x28]
  jeq r2, r3, jmp_28d80

jmp_28be0:
  lddw r0, 0x1500000003
  ldxdw r8, [r2+0x10]
  lddw r3, 0xffffffff
  jgt r8, r3, jmp_28d80
  stxdw [r10-0x18], r2
  ldxdw r9, [r2+0x8]
  stxw [r10-0x4], r8
  mov64 r2, 0x4
  mov64 r7, r6
  jgt r2, r6, jmp_28c48
  mov64 r7, 0x4

jmp_28c48:
  mov64 r2, r10
  add64 r2, -0x4
  mov64 r3, r7
  stxdw [r10-0x10], r1
  call fn_490d0
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  mov64 r3, r6
  sub64 r3, r7
  ldxdw r2, [r10-0x20]
  stxdw [r2+0x8], r3
  stxdw [r2+0x0], r1
  lddw r0, data_2b08
  ldxdw r2, [r10-0x18]
  mov64 r4, 0x4
  jgt r4, r6, jmp_28d80
  add64 r2, 0x18
  mul64 r8, 0xc
  stxdw [r10-0x18], r2
  ja jmp_28d88

jmp_28cf0:
  mov64 r2, r9
  mov64 r3, r7
  mov64 r6, r1
  call fn_490d0
  mov64 r1, r6
  add64 r1, r7
  ldxdw r4, [r10-0x10]
  mov64 r3, r4
  sub64 r3, r7
  ldxdw r2, [r10-0x20]
  stxdw [r2+0x8], r3
  stxdw [r2+0x0], r1
  lddw r0, data_2b08
  add64 r8, -0xc
  add64 r9, 0xc
  ldxdw r2, [r10-0x18]
  jgt r4, 0xb, jmp_28d88

jmp_28d80:
  exit

jmp_28d88:
  mov64 r6, r3
  jeq r8, 0x0, jmp_28bc8
  mov64 r2, 0xc
  mov64 r7, r6
  stxdw [r10-0x10], r6
  jgt r2, r6, jmp_28cf0
  mov64 r7, 0xc
  ja jmp_28cf0

entrypoint:
  mov64 r6, r1
  ldxdw r1, [r6+0x0]
  jne r1, 0x2, jmp_29280
  ldxdw r1, [r6+0x10]
  lddw r2, -0x3c1cb4130349c29
  jeq r1, r2, jmp_28e10

jmp_28e00:
  mov64 r1, 0x1
  ja jmp_28e78

jmp_28e10:
  ldxdw r1, [r6+0x18]
  lddw r2, -0xb6a3785afba3445
  jne r1, r2, jmp_28e00
  ldxdw r1, [r6+0x20]
  lddw r2, -0x182dbcdd20a11484
  jne r1, r2, jmp_28e00
  mov64 r1, 0x0
  ldxdw r2, [r6+0x28]
  lddw r3, -0x309924488b6719d5
  jne r2, r3, jmp_28e00

jmp_28e78:
  jne r1, 0x0, jmp_29280
  ldxb r1, [r6+0x9]
  jne r1, 0x0, jmp_28eb8
  lddw r1, -0x8000000000000000
  stxdw [r10-0x208], r1
  mov64 r1, 0x0
  ja jmp_28f58

jmp_28eb8:
  ldxdw r1, [r6+0x28b8]
  jne r1, 0x4f0, jmp_28f38
  mov64 r3, r6
  add64 r3, 0x28c0
  ldxdw r1, [r6+0x55b8]
  jeq r1, 0x310, jmp_29248
  jeq r1, 0x320, jmp_28ef8
  ja jmp_28f80

jmp_28ef8:
  ldxb r1, [r6+0x55c0]
  jeq r1, 0x13, jmp_28f10
  ja jmp_29280

jmp_28f10:
  ldxdw r1, [r6+0x2890]
  ldxdw r2, [r6+0x58e0]
  jeq r2, r1, jmp_28fa0

jmp_28f28:
  mov64 r1, 0x1
  ja jmp_28ff0

jmp_28f38:
  lddw r1, -0x8000000000000000
  stxdw [r10-0x208], r1
  mov64 r1, 0x19

jmp_28f58:
  stxw [r10-0x200], r1

jmp_28f60:
  mov64 r1, r10
  add64 r1, -0x208
  call fn_30478
  ja jmp_29800

jmp_28f80:
  lddw r1, -0x7ffffffffffffffe
  stxdw [r10-0x208], r1
  ja jmp_28f60

jmp_28fa0:
  ldxdw r1, [r6+0x2898]
  ldxdw r2, [r6+0x58e8]
  jne r2, r1, jmp_28f28
  ldxdw r1, [r6+0x28a0]
  ldxdw r2, [r6+0x58f0]
  jne r2, r1, jmp_28f28
  mov64 r1, 0x0
  ldxdw r2, [r6+0x28a8]
  ldxdw r4, [r6+0x58f8]
  jne r4, r2, jmp_28f28

jmp_28ff0:
  jne r1, 0x0, jmp_296f8
  ldxh r1, [r6+0x28d4]
  ldxh r2, [r6+0x55c1]
  jeq r2, r1, jmp_29018
  ja jmp_296d0

jmp_29018:
  ldxdw r1, [r6+0x55c8]
  ldxdw r2, [r6+0x2930]
  jge r2, r1, jmp_29890
  ldxdw r2, [r6+0x55e0]
  ldxdw r7, [r6+0x2948]
  mov64 r1, 0x1
  stxdw [r10-0x240], r1
  mov64 r5, 0x1
  jgt r7, r2, jmp_29068
  mov64 r5, 0x0

jmp_29068:
  ldxdw r4, [r6+0x55d8]
  ldxdw r0, [r6+0x2940]
  mov64 r9, 0x1
  jgt r0, r4, jmp_29090
  mov64 r9, 0x0

jmp_29090:
  mov64 r8, r9
  jeq r2, r7, jmp_290a8
  mov64 r8, r5

jmp_290a8:
  mov64 r5, r7
  sub64 r5, r2
  jgt r4, r0, jmp_290c8
  mov64 r1, 0x0

jmp_290c8:
  sub64 r5, r1
  jne r8, 0x0, jmp_290f0
  sub64 r2, r7
  sub64 r2, r9
  mov64 r5, r2

jmp_290f0:
  mov64 r7, r0
  sub64 r7, r4
  jne r8, 0x0, jmp_29118
  sub64 r4, r0
  mov64 r7, r4

jmp_29118:
  ldxdw r1, [r6+0x58c8]
  mov64 r2, 0x1
  jgt r1, r7, jmp_29138
  mov64 r2, 0x0

jmp_29138:
  ldxdw r4, [r6+0x58d0]
  jgt r4, r5, jmp_29158
  mov64 r1, 0x0
  stxdw [r10-0x240], r1

jmp_29158:
  jeq r5, r4, jmp_29168
  ldxdw r2, [r10-0x240]

jmp_29168:
  and64 r2, 0x1
  jne r2, 0x0, jmp_29180
  ja jmp_291a8

jmp_29180:
  lddw r1, -0x8000000000000000
  stxdw [r10-0x208], r1
  mov64 r1, 0x1f
  ja jmp_28f58

jmp_291a8:
  mov64 r1, r6
  add64 r1, 0x2930
  mov64 r2, r6
  add64 r2, 0x55c8
  ldxb r4, [r6+0x55c3]
  jeq r4, 0x0, jmp_291f8
  mov64 r4, 0x0
  stxdw [r3+0x8], r4
  stxdw [r3+0x0], r4
  stxdw [r6+0x2d78], r4

jmp_291f8:
  mov64 r3, 0x198
  call fn_490d0
  mov64 r1, r6
  add64 r1, 0x2b40
  mov64 r2, r6
  add64 r2, 0x5760
  mov64 r3, 0x168
  call fn_490d0
  ldxdw r1, [r6+0x58d8]
  ja jmp_297d0

jmp_29248:
  ldxb r1, [r6+0x55c0]
  jne r1, 0xd, jmp_29280
  ldxdw r1, [r6+0x2890]
  ldxdw r2, [r6+0x58d0]
  jeq r2, r1, jmp_29660

jmp_29270:
  mov64 r1, 0x1
  ja jmp_296b0

jmp_29280:
  mov64 r1, r10
  add64 r1, -0x208
  mov64 r2, r6
  call fn_2f4b0
  ldxdw r9, [r10-0x1e0]
  jne r9, 0x0, jmp_292d8
  mov64 r1, 0x1
  mov64 r2, 0x0
  lddw r3, data_3570
  call fn_45270

jmp_292d8:
  ldxdw r2, [r10-0x1e8]
  ldxdw r6, [r10-0x1f8]
  ldxdw r7, [r10-0x200]
  ldxb r1, [r2+0x0]
  jeq r1, 0x13, jmp_29318
  ldxdw r3, [r10-0x1f0]
  jeq r1, 0x10, jmp_29348
  jne r1, 0xd, jmp_29430

jmp_29318:
  mov64 r1, 0x3
  stxw [r10-0x230], r1
  lddw r1, -0x8000000000000000
  stxdw [r10-0x238], r1
  ja jmp_295d8

jmp_29348:
  mov64 r1, r2
  add64 r1, 0x12
  jgt r9, 0x12, jmp_29368
  mov64 r1, 0x0

jmp_29368:
  stxdw [r10-0x248], r1
  stxdw [r10-0x240], r3
  mov64 r1, 0x12
  jgt r1, r9, jmp_29718
  mov64 r1, r10
  add64 r1, -0x208
  mov64 r3, 0x12
  call fn_3880
  ldxb r8, [r10-0x208]
  jeq r8, 0x18, jmp_29470
  add64 r9, -0x12
  ldxw r1, [r10-0x204]
  stxw [r10-0x5], r1
  ldxw r1, [r10-0x207]
  stxw [r10-0x8], r1
  ldxdw r1, [r10-0x200]
  stxdw [r10-0x250], r1
  mov64 r1, r10
  add64 r1, -0x100
  mov64 r2, r10
  add64 r2, -0x1f8
  mov64 r3, 0xf8
  call fn_490d0
  ldxdw r1, [r10-0x248]
  ja jmp_29508

jmp_29430:
  stxdw [r10-0x240], r3
  mov64 r1, r10
  add64 r1, -0x208
  mov64 r3, r9
  call fn_3880
  ldxb r8, [r10-0x208]
  jeq r8, 0x18, jmp_29470
  ja jmp_29498

jmp_29470:
  ldxdw r2, [r10-0x200]
  mov64 r1, r10
  add64 r1, -0x238
  call fn_30d48
  ja jmp_295d8

jmp_29498:
  ldxw r1, [r10-0x204]
  stxw [r10-0x5], r1
  ldxw r1, [r10-0x207]
  stxw [r10-0x8], r1
  ldxdw r1, [r10-0x200]
  stxdw [r10-0x250], r1
  mov64 r1, r10
  add64 r1, -0x100
  mov64 r2, r10
  add64 r2, -0x1f8
  mov64 r3, 0xf8
  call fn_490d0
  mov64 r1, 0x0
  stxdw [r10-0x248], r1

jmp_29508:
  stxb [r10-0x208], r8
  ldxw r1, [r10-0x8]
  stxw [r10-0x207], r1
  ldxw r1, [r10-0x5]
  stxw [r10-0x204], r1
  ldxdw r1, [r10-0x250]
  stxdw [r10-0x200], r1
  mov64 r1, r10
  add64 r1, -0x1f8
  mov64 r2, r10
  add64 r2, -0x100
  mov64 r3, 0xf8
  call fn_490d0
  ldxdw r1, [r10-0x248]
  stxdw [r10-0xff8], r1
  stxdw [r10-0xff0], r9
  mov64 r1, r10
  add64 r1, -0x208
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0x238
  mov64 r5, r10
  ldxdw r2, [r10-0x240]
  mov64 r3, r7
  mov64 r4, r6
  call fn_98b0

jmp_295d8:
  mov64 r0, 0x0
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0x238]
  jeq r2, r1, jmp_29648
  ldxdw r1, [r10-0x228]
  stxdw [r10-0x210], r1
  ldxdw r1, [r10-0x230]
  stxdw [r10-0x218], r1
  ldxdw r1, [r10-0x238]
  stxdw [r10-0x220], r1
  mov64 r1, r10
  add64 r1, -0x220
  call fn_30478

jmp_29648:
  jeq r6, 0x0, jmp_29800
  add64 r7, 0x10
  ja jmp_29808

jmp_29660:
  ldxdw r1, [r6+0x2898]
  ldxdw r2, [r6+0x58d8]
  jne r2, r1, jmp_29270
  ldxdw r1, [r6+0x28a0]
  ldxdw r2, [r6+0x58e0]
  jne r2, r1, jmp_29270
  mov64 r1, 0x0
  ldxdw r2, [r6+0x28a8]
  ldxdw r4, [r6+0x58e8]
  jne r4, r2, jmp_29270

jmp_296b0:
  jne r1, 0x0, jmp_296f8
  ldxh r1, [r6+0x28d4]
  ldxh r2, [r6+0x55c1]
  jeq r2, r1, jmp_29738

jmp_296d0:
  lddw r1, -0x8000000000000000
  stxdw [r10-0x208], r1
  mov64 r1, 0x1a
  ja jmp_28f58

jmp_296f8:
  lddw r1, -0x7fffffffffffffea
  stxdw [r10-0x208], r1
  ja jmp_28f60

jmp_29718:
  mov64 r2, r9
  lddw r3, data_3588
  call fn_45270

jmp_29738:
  ldxb r1, [r6+0x55c3]
  jne r1, 0x0, jmp_298b8

jmp_29748:
  ldxdw r1, [r6+0x2930]
  ldxdw r2, [r6+0x55c8]
  jgt r2, r1, jmp_29768
  ja jmp_29890

jmp_29768:
  mov64 r1, r6
  add64 r1, 0x2930
  mov64 r2, r6
  add64 r2, 0x55c8
  mov64 r3, 0x198
  call fn_490d0
  mov64 r1, r6
  add64 r1, 0x2b40
  mov64 r2, r6
  add64 r2, 0x5760
  mov64 r3, 0x168
  call fn_490d0
  ldxdw r1, [r6+0x58c8]

jmp_297d0:
  stxdw [r6+0x2d80], r1
  mov64 r0, 0x0
  ja jmp_29800

jmp_297e8:
  add64 r7, 0x30
  add64 r6, -0x1
  jne r6, 0x0, jmp_29808

jmp_29800:
  exit

jmp_29808:
  ldxdw r1, [r7+0x0]
  ldxdw r2, [r7-0x8]
  ldxdw r3, [r2+0x0]
  add64 r3, -0x1
  stxdw [r2+0x0], r3
  jne r3, 0x0, jmp_29850
  ldxdw r3, [r2+0x8]
  add64 r3, -0x1
  stxdw [r2+0x8], r3

jmp_29850:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  jne r2, 0x0, jmp_297e8
  ldxdw r2, [r1+0x8]
  add64 r2, -0x1
  stxdw [r1+0x8], r2
  ja jmp_297e8

jmp_29890:
  lddw r1, -0x8000000000000000
  stxdw [r10-0x208], r1
  mov64 r1, 0x14
  ja jmp_28f58

jmp_298b8:
  mov64 r1, 0x0
  stxdw [r3+0x8], r1
  stxdw [r3+0x0], r1
  stxdw [r6+0x2d78], r1
  ja jmp_29748

fn_298e0:
  lddw r3, 0x300000000
  ldxdw r3, [r3+0x0]
  lddw r4, 0x300008000
  jeq r3, 0x0, jmp_29918
  mov64 r4, r3

jmp_29918:
  mov64 r3, r4
  sub64 r3, r1
  mov64 r0, 0x0
  mov64 r5, 0x1
  jgt r3, r4, jmp_29948
  mov64 r5, 0x0

jmp_29948:
  mov64 r1, 0x0
  jne r5, 0x0, jmp_29960
  mov64 r1, r3

jmp_29960:
  neg64 r2
  and64 r1, r2
  lddw r2, 0x300000008
  jgt r2, r1, jmp_299a8
  lddw r2, 0x300000000
  stxdw [r2+0x0], r1
  mov64 r0, r1

jmp_299a8:
  exit

fn_299b0:
  exit

fn_299b8:
  mov64 r5, r2
  mov64 r2, r1
  lddw r1, 0x300000000
  ldxdw r1, [r1+0x0]
  lddw r6, 0x300008000
  jeq r1, 0x0, jmp_29a00
  mov64 r6, r1

jmp_29a00:
  mov64 r1, r6
  sub64 r1, r4
  mov64 r0, 0x0
  mov64 r7, 0x1
  jgt r1, r6, jmp_29a30
  mov64 r7, 0x0

jmp_29a30:
  mov64 r6, 0x0
  jne r7, 0x0, jmp_29a48
  mov64 r6, r1

jmp_29a48:
  neg64 r3
  and64 r6, r3
  lddw r1, 0x300000008
  jgt r1, r6, jmp_29ab8
  lddw r1, 0x300000000
  stxdw [r1+0x0], r6
  jgt r4, r5, jmp_29a98
  mov64 r5, r4

jmp_29a98:
  mov64 r1, r6
  mov64 r3, r5
  call fn_490d0
  mov64 r0, r6

jmp_29ab8:
  exit
  stxdw [r10-0x60], r1
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  lddw r1, data_0468
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x38], r1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x309
  stxdw [r10-0x8], r1
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x58
  mov64 r2, r10
  add64 r2, -0x40
  call fn_37aa0
  ldxdw r1, [r10-0x50]
  ldxdw r2, [r10-0x48]
  call sol_log_
  exit

fn_29b98:
  call fn_374f8
  exit

fn_29ba8:
  mov64 r7, r3
  mov64 r8, r2
  mov64 r6, r1
  jeq r8, 0x0, jmp_29c00
  ldxdw r1, [r4+0x8]
  jeq r1, 0x0, jmp_29c88
  ldxdw r2, [r4+0x10]
  jne r2, 0x0, jmp_29c18
  jne r7, 0x0, jmp_29c98

jmp_29bf0:
  mov64 r0, r8
  ja jmp_29cb0

jmp_29c00:
  mov64 r1, 0x0
  stxdw [r6+0x8], r1
  ja jmp_29c78

jmp_29c18:
  ldxdw r1, [r4+0x0]
  mov64 r3, r8
  mov64 r4, r7
  call fn_299b8
  mov64 r1, r6
  add64 r1, 0x10
  mov64 r2, r6
  add64 r2, 0x8
  jeq r0, 0x0, jmp_29c68
  ja jmp_29cd8

jmp_29c68:
  stxdw [r2+0x0], r8
  stxdw [r1+0x0], r7

jmp_29c78:
  mov64 r1, 0x1
  ja jmp_29cf0

jmp_29c88:
  jne r7, 0x0, jmp_29c98
  ja jmp_29bf0

jmp_29c98:
  mov64 r1, r7
  mov64 r2, r8
  call fn_298e0

jmp_29cb0:
  mov64 r1, r6
  add64 r1, 0x10
  mov64 r2, r6
  add64 r2, 0x8
  jeq r0, 0x0, jmp_29c68

jmp_29cd8:
  stxdw [r2+0x0], r0
  stxdw [r1+0x0], r7
  mov64 r1, 0x0

jmp_29cf0:
  stxdw [r6+0x0], r1
  exit

fn_29d00:
  mov64 r6, r1
  mov64 r4, r2
  add64 r4, r3
  mov64 r1, 0x0
  mov64 r3, 0x1
  jgt r2, r4, jmp_29d38
  mov64 r3, 0x0

jmp_29d38:
  and64 r3, 0x1
  jne r3, 0x0, jmp_29e20
  ldxdw r1, [r6+0x0]
  mov64 r7, r1
  lsh64 r7, 0x1
  jgt r7, r4, jmp_29d70
  mov64 r7, r4

jmp_29d70:
  jgt r7, 0x8, jmp_29d80
  mov64 r7, 0x8

jmp_29d80:
  mov64 r3, 0x0
  mov64 r2, r7
  xor64 r2, -0x1
  rsh64 r2, 0x3f
  jeq r1, 0x0, jmp_29dc8
  ldxdw r3, [r6+0x8]
  stxdw [r10-0x8], r1
  stxdw [r10-0x18], r3
  mov64 r3, 0x1

jmp_29dc8:
  stxdw [r10-0x10], r3
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  mov64 r3, r7
  call fn_29ba8
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_29e28
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_29e20:
  call fn_379f0

jmp_29e28:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_29e48:
  mov64 r6, r1
  ldxdw r4, [r6+0x0]
  mov64 r3, r4
  add64 r3, 0x1
  mov64 r1, 0x0
  mov64 r5, 0x1
  jeq r3, 0x0, jmp_29e88
  mov64 r5, 0x0

jmp_29e88:
  and64 r5, 0x1
  jne r5, 0x0, jmp_29f80
  mov64 r7, r4
  lsh64 r7, 0x1
  jgt r7, r3, jmp_29eb8
  mov64 r7, r3

jmp_29eb8:
  mov64 r2, 0x1
  lddw r3, 0x3c3c3c3c3c3c3c4
  jgt r3, r7, jmp_29ee0
  mov64 r2, 0x0

jmp_29ee0:
  jgt r7, 0x4, jmp_29ef0
  mov64 r7, 0x4

jmp_29ef0:
  mov64 r3, r7
  mul64 r3, 0x22
  jeq r4, 0x0, jmp_29f30
  ldxdw r1, [r6+0x8]
  mul64 r4, 0x22
  stxdw [r10-0x8], r4
  stxdw [r10-0x18], r1
  mov64 r1, 0x1

jmp_29f30:
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  call fn_29ba8
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_29f88
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_29f80:
  call fn_379f0

jmp_29f88:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_29fa8:
  mov64 r6, r1
  ldxdw r4, [r6+0x0]
  mov64 r3, r4
  add64 r3, 0x1
  mov64 r1, 0x0
  mov64 r5, 0x1
  jeq r3, 0x0, jmp_29fe8
  mov64 r5, 0x0

jmp_29fe8:
  and64 r5, 0x1
  jne r5, 0x0, jmp_2a0f0
  mov64 r1, r4
  lsh64 r1, 0x1
  mov64 r7, r1
  jgt r1, r3, jmp_2a020
  mov64 r7, r3

jmp_2a020:
  mov64 r5, 0x0
  mov64 r2, 0x1
  lddw r3, 0x4000000000000000
  jgt r3, r7, jmp_2a050
  mov64 r2, 0x0

jmp_2a050:
  jgt r7, 0x4, jmp_2a060
  mov64 r7, 0x4

jmp_2a060:
  lsh64 r2, 0x1
  mov64 r3, r7
  lsh64 r3, 0x1
  jeq r4, 0x0, jmp_2a0a0
  ldxdw r4, [r6+0x8]
  stxdw [r10-0x8], r1
  stxdw [r10-0x18], r4
  mov64 r5, 0x2

jmp_2a0a0:
  stxdw [r10-0x10], r5
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  call fn_29ba8
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_2a0f8
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_2a0f0:
  call fn_379f0

jmp_2a0f8:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_2a118:
  jne r3, 0x0, jmp_2a160

jmp_2a120:
  mov64 r2, 0xc
  stxw [r1+0x10], r2

jmp_2a130:
  lddw r2, -0x8000000000000000
  stxdw [r1+0x8], r2

jmp_2a148:
  mov64 r2, 0x2d
  stxw [r1+0x0], r2
  ja jmp_2af30

jmp_2a160:
  mov64 r4, 0x0
  mov64 r7, r3
  add64 r7, -0x1
  mov64 r6, r2
  add64 r6, 0x1
  ldxb r0, [r2+0x0]
  jsgt r0, 0x15, jmp_2a1f0
  jsgt r0, 0xa, jmp_2a310
  jsgt r0, 0x4, jmp_2a508
  jsgt r0, 0x2, jmp_2a6a8
  jeq r0, 0x0, jmp_2aa70
  mov64 r3, 0x1
  jeq r0, 0x1, jmp_2ae48
  jeq r0, 0x2, jmp_2a1d8
  ja jmp_2a958

jmp_2a1d8:
  jeq r7, 0x0, jmp_2a120
  mov64 r3, 0x2
  ja jmp_2acb0

jmp_2a1f0:
  jsgt r0, 0x20, jmp_2a248
  jsgt r0, 0x1a, jmp_2a390
  jsgt r0, 0x17, jmp_2a720
  jeq r0, 0x16, jmp_2acc0
  jeq r0, 0x17, jmp_2a220
  ja jmp_2a958

jmp_2a220:
  mov64 r2, 0x9
  jgt r2, r3, jmp_2ac88
  mov64 r3, 0x17
  ldxdw r5, [r6+0x0]
  ja jmp_2b128

jmp_2a248:
  jsgt r0, 0x26, jmp_2a358
  jsgt r0, 0x23, jmp_2a6f0
  jeq r0, 0x21, jmp_2a9a0
  jeq r0, 0x22, jmp_2ac30
  jeq r0, 0x23, jmp_2a278
  ja jmp_2a958

jmp_2a278:
  mov64 r4, 0x21
  jgt r4, r3, jmp_2ac88
  ldxh r3, [r2+0x6]
  lsh64 r3, 0x20
  ldxb r4, [r2+0x8]
  lsh64 r4, 0x30
  or64 r4, r3
  ldxh r3, [r2+0x1e]
  lsh64 r3, 0x20
  ldxb r5, [r2+0x20]
  lsh64 r5, 0x30
  or64 r5, r3
  ldxw r3, [r2+0x1a]
  or64 r3, r5
  stxdw [r10-0xa0], r3
  ldxw r9, [r2+0x2]
  or64 r9, r4
  mov64 r3, 0x23
  ja jmp_2b1c0

jmp_2a310:
  jsgt r0, 0xf, jmp_2a5a0
  jsgt r0, 0xc, jmp_2a760
  jeq r0, 0xb, jmp_2ada0
  jeq r0, 0xc, jmp_2a338
  ja jmp_2a958

jmp_2a338:
  mov64 r5, 0xa
  jgt r5, r3, jmp_2adc8
  mov64 r3, 0xc
  ja jmp_2b2e8

jmp_2a358:
  jsgt r0, 0x29, jmp_2a940
  jeq r0, 0x27, jmp_2a9b0
  jeq r0, 0x28, jmp_2ac40
  jeq r0, 0x29, jmp_2a380
  ja jmp_2a958

jmp_2a380:
  mov64 r3, 0x29
  ja jmp_2ae48

jmp_2a390:
  jsgt r0, 0x1d, jmp_2a7a0
  jeq r0, 0x1b, jmp_2ac10
  jeq r0, 0x1c, jmp_2ae00
  jeq r0, 0x1d, jmp_2a3b8
  ja jmp_2a958

jmp_2a3b8:
  mov64 r8, 0x2
  stxdw [r10-0x40], r8
  mov64 r0, 0x0
  stxdw [r10-0x38], r0
  stxdw [r10-0x48], r0
  mov64 r5, 0x0
  jeq r7, 0x0, jmp_2b4f8
  mov64 r8, 0x0
  mov64 r3, 0x2
  stxdw [r10-0xb0], r1
  ja jmp_2a460

jmp_2a410:
  add64 r6, r9
  sub64 r7, r9
  mov64 r2, r3
  add64 r2, r8
  ldxdw r4, [r10-0x98]
  stxh [r2+0x0], r4
  add64 r8, 0x2
  add64 r0, 0x1
  stxdw [r10-0x38], r0
  jeq r7, 0x0, jmp_2b4e8

jmp_2a460:
  mov64 r9, r7
  mov64 r5, 0x2
  jgt r5, r7, jmp_2a480
  mov64 r9, 0x2

jmp_2a480:
  jne r7, 0x1, jmp_2a498
  ldxdw r2, [r10-0x48]
  ja jmp_2b310

jmp_2a498:
  ldxdw r2, [r10-0x48]
  ldxh r5, [r6+0x0]
  stxdw [r10-0x98], r5
  jgt r5, 0x1b, jmp_2b310
  jne r0, r2, jmp_2a410
  mov64 r2, r10
  add64 r2, -0x48
  mov64 r1, r2
  stxdw [r10-0x90], r0
  call fn_29fa8
  ldxdw r0, [r10-0x90]
  ldxdw r1, [r10-0xb0]
  ldxdw r3, [r10-0x40]
  ja jmp_2a410

jmp_2a508:
  jsgt r0, 0x6, jmp_2a660
  jeq r0, 0x5, jmp_2ae30
  jeq r0, 0x6, jmp_2a528
  ja jmp_2a958

jmp_2a528:
  jeq r7, 0x0, jmp_2a550
  add64 r3, -0x2
  ldxb r7, [r6+0x0]
  mov64 r4, 0x11
  jgt r4, r7, jmp_2b3f8

jmp_2a550:
  mov64 r2, 0x80
  stxb [r1+0xf], r2
  stxdw [r1+0x18], r3
  mov64 r2, 0xc
  stxdw [r1+0x10], r2
  mov64 r2, 0x0
  stxh [r1+0xd], r2
  stxw [r1+0x9], r2
  stxb [r1+0x8], r2
  ja jmp_2a148

jmp_2a5a0:
  jsgt r0, 0x12, jmp_2a7d0
  jeq r0, 0x10, jmp_2ac70
  jeq r0, 0x11, jmp_2ae40
  jeq r0, 0x12, jmp_2a5c8
  ja jmp_2a958

jmp_2a5c8:
  mov64 r4, 0x21
  jgt r4, r3, jmp_2ac88
  ldxh r3, [r2+0x6]
  lsh64 r3, 0x20
  ldxb r4, [r2+0x8]
  lsh64 r4, 0x30
  or64 r4, r3
  ldxh r3, [r2+0x1e]
  lsh64 r3, 0x20
  ldxb r5, [r2+0x20]
  lsh64 r5, 0x30
  or64 r5, r3
  ldxw r3, [r2+0x1a]
  or64 r3, r5
  stxdw [r10-0xa0], r3
  ldxw r9, [r2+0x2]
  or64 r9, r4
  mov64 r3, 0x12
  ja jmp_2b1c0

jmp_2a660:
  mov64 r2, r0
  add64 r2, -0x7
  mov64 r5, 0x2
  jgt r5, r2, jmp_2a6a8
  jeq r0, 0x9, jmp_2ae20
  jeq r0, 0xa, jmp_2a698
  ja jmp_2a958

jmp_2a698:
  mov64 r3, 0xa
  ja jmp_2ae48

jmp_2a6a8:
  mov64 r2, 0x9
  jgt r2, r3, jmp_2a120
  ldxdw r5, [r6+0x0]
  jsgt r0, 0x6, jmp_2a960
  jeq r0, 0x3, jmp_2b100
  jeq r0, 0x4, jmp_2a6e0
  ja jmp_2a970

jmp_2a6e0:
  mov64 r3, 0x4
  ja jmp_2b128

jmp_2a6f0:
  jeq r0, 0x24, jmp_2a9c0
  jeq r0, 0x25, jmp_2ac50
  jeq r0, 0x26, jmp_2a710
  ja jmp_2a958

jmp_2a710:
  mov64 r3, 0x26
  ja jmp_2ae48

jmp_2a720:
  stxdw [r10-0xb0], r1
  jeq r0, 0x18, jmp_2a9e0
  jeq r0, 0x19, jmp_2acd0
  ldxdw r1, [r10-0xb0]
  jeq r0, 0x1a, jmp_2a750
  ja jmp_2a958

jmp_2a750:
  mov64 r3, 0x1a
  ja jmp_2ae48

jmp_2a760:
  jeq r0, 0xd, jmp_2abf0
  jeq r0, 0xe, jmp_2adb0
  jeq r0, 0xf, jmp_2a780
  ja jmp_2a958

jmp_2a780:
  mov64 r5, 0xa
  jgt r5, r3, jmp_2adc8
  mov64 r3, 0xf
  ja jmp_2b2e8

jmp_2a7a0:
  jeq r0, 0x1e, jmp_2ac20
  jeq r0, 0x1f, jmp_2ae10
  jeq r0, 0x20, jmp_2a7c0
  ja jmp_2a958

jmp_2a7c0:
  mov64 r3, 0x20
  ja jmp_2ae48

jmp_2a7d0:
  jeq r0, 0x13, jmp_2aca0
  jeq r0, 0x14, jmp_2af38
  jeq r0, 0x15, jmp_2a7f0
  ja jmp_2a958

jmp_2a7f0:
  mov64 r8, 0x2
  stxdw [r10-0x40], r8
  mov64 r0, 0x0
  stxdw [r10-0x38], r0
  stxdw [r10-0x48], r0
  mov64 r5, 0x0
  jeq r7, 0x0, jmp_2b520
  mov64 r8, 0x0
  mov64 r3, 0x2
  stxdw [r10-0xb0], r1
  ja jmp_2a898

jmp_2a848:
  add64 r6, r9
  sub64 r7, r9
  mov64 r2, r3
  add64 r2, r8
  ldxdw r4, [r10-0x98]
  stxh [r2+0x0], r4
  add64 r8, 0x2
  add64 r0, 0x1
  stxdw [r10-0x38], r0
  jeq r7, 0x0, jmp_2b510

jmp_2a898:
  mov64 r9, r7
  mov64 r5, 0x2
  jgt r5, r7, jmp_2a8b8
  mov64 r9, 0x2

jmp_2a8b8:
  jne r7, 0x1, jmp_2a8d0
  ldxdw r2, [r10-0x48]
  ja jmp_2b350

jmp_2a8d0:
  ldxdw r2, [r10-0x48]
  ldxh r5, [r6+0x0]
  stxdw [r10-0x98], r5
  jgt r5, 0x1b, jmp_2b350
  jne r0, r2, jmp_2a848
  mov64 r2, r10
  add64 r2, -0x48
  mov64 r1, r2
  stxdw [r10-0x90], r0
  call fn_29fa8
  ldxdw r0, [r10-0x90]
  ldxdw r1, [r10-0xb0]
  ldxdw r3, [r10-0x40]
  ja jmp_2a848

jmp_2a940:
  jeq r0, 0x2a, jmp_2a9d0
  jeq r0, 0x2b, jmp_2ac60
  jeq r0, 0x2c, jmp_2aa60

jmp_2a958:
  ja jmp_2a120

jmp_2a960:
  jeq r0, 0x7, jmp_2b110
  jeq r0, 0x8, jmp_2b120

jmp_2a970:
  lddw r1, data_099a
  mov64 r2, 0x28
  lddw r3, data_35b0
  call fn_3ff48

jmp_2a9a0:
  mov64 r3, 0x21
  ja jmp_2ae48

jmp_2a9b0:
  mov64 r3, 0x27
  ja jmp_2ae48

jmp_2a9c0:
  mov64 r3, 0x24
  ja jmp_2ae48

jmp_2a9d0:
  mov64 r3, 0x2a
  ja jmp_2ae48

jmp_2a9e0:
  mov64 r1, r10
  add64 r1, -0x48
  mov64 r2, r6
  mov64 r3, r7
  call fn_45510
  ldxdw r1, [r10-0x48]
  jeq r1, 0x0, jmp_2b3b0
  mov64 r1, 0xc
  ldxdw r2, [r10-0xb0]
  stxw [r2+0x10], r1
  lddw r1, -0x8000000000000000
  stxdw [r2+0x8], r1
  mov64 r1, 0x2d
  stxw [r2+0x0], r1
  ja jmp_2af30

jmp_2aa60:
  mov64 r3, 0x2c
  ja jmp_2ae48

jmp_2aa70:
  jeq r7, 0x0, jmp_2a120
  mov64 r4, r3
  add64 r4, -0x2
  mov64 r5, 0x20
  jgt r5, r4, jmp_2b0a0
  stxdw [r10-0xb0], r1
  ldxb r1, [r6+0x0]
  stxdw [r10-0xb8], r1
  ldxb r1, [r2+0x2]
  ldxdw r4, [r2+0x9]
  stxdw [r10-0x41], r4
  ldxdw r4, [r2+0x3]
  stxdw [r10-0x47], r4
  ldxdw r4, [r2+0x11]
  stxdw [r10-0x90], r4
  ldxb r4, [r2+0x19]
  stxdw [r10-0x98], r4
  ldxdw r4, [r2+0x1a]
  stxdw [r10-0xa0], r4
  stxb [r10-0x48], r1
  ldxdw r8, [r10-0x41]
  ldxw r9, [r10-0x48]
  ldxb r6, [r10-0x42]
  ldxh r7, [r10-0x44]
  add64 r2, 0x22
  add64 r3, -0x22
  mov64 r1, r10
  add64 r1, -0x48
  call fn_2c1a8
  ldxw r2, [r10-0x48]
  jeq r2, 0x2, jmp_2b038
  lsh64 r7, 0x20
  lsh64 r6, 0x30
  or64 r6, r7
  or64 r9, r6
  ldxdw r1, [r10-0x44]
  stxdw [r10-0x88], r1
  ldxdw r1, [r10-0x3c]
  stxdw [r10-0x60], r1
  stxdw [r10-0x80], r1
  ldxdw r1, [r10-0x34]
  stxdw [r10-0x58], r1
  stxdw [r10-0x78], r1
  ldxw r1, [r10-0x2c]
  stxw [r10-0x50], r1
  stxw [r10-0x70], r1
  mov64 r3, 0x0
  ja jmp_2b648

jmp_2abf0:
  mov64 r5, 0xa
  jgt r5, r3, jmp_2adc8
  mov64 r3, 0xd
  ja jmp_2b2e8

jmp_2ac10:
  mov64 r3, 0x1b
  ja jmp_2ae48

jmp_2ac20:
  mov64 r3, 0x1e
  ja jmp_2ae48

jmp_2ac30:
  mov64 r3, 0x22
  ja jmp_2ae48

jmp_2ac40:
  mov64 r3, 0x28
  ja jmp_2ae48

jmp_2ac50:
  mov64 r3, 0x25
  ja jmp_2ae48

jmp_2ac60:
  mov64 r3, 0x2b
  ja jmp_2ae48

jmp_2ac70:
  mov64 r4, 0x21
  jgt r4, r3, jmp_2ac88
  ja jmp_2b140

jmp_2ac88:
  mov64 r2, 0xc
  stxdw [r1+0x10], r2
  ja jmp_2a130

jmp_2aca0:
  jeq r7, 0x0, jmp_2a120
  mov64 r3, 0x13

jmp_2acb0:
  ldxb r5, [r6+0x0]
  ja jmp_2ae48

jmp_2acc0:
  mov64 r3, 0x16
  ja jmp_2ae48

jmp_2acd0:
  mov64 r1, r10
  add64 r1, -0x48
  mov64 r2, r6
  mov64 r3, r7
  call fn_2c1a8
  ldxw r5, [r10-0x48]
  jeq r5, 0x2, jmp_2ad10
  ja jmp_2b208

jmp_2ad10:
  ldxw r1, [r10-0x2f]
  stxw [r10-0x68], r1
  ldxw r1, [r10-0x2c]
  stxw [r10-0x65], r1
  ldxdw r1, [r10-0x40]
  ldxdw r2, [r10-0x38]
  ldxb r3, [r10-0x30]
  ldxw r4, [r10-0x65]
  ldxdw r5, [r10-0xb0]
  stxw [r5+0x1c], r4
  ldxw r4, [r10-0x68]
  stxw [r5+0x19], r4
  stxb [r5+0x18], r3
  stxdw [r5+0x10], r2
  stxdw [r5+0x8], r1
  mov64 r1, 0x2d
  stxw [r5+0x0], r1
  ja jmp_2af30

jmp_2ada0:
  mov64 r3, 0xb
  ja jmp_2ae48

jmp_2adb0:
  mov64 r5, 0xa
  jgt r5, r3, jmp_2adc8
  ja jmp_2b2e0

jmp_2adc8:
  mov64 r2, 0x0
  stxb [r1+0x17], r2
  stxh [r1+0x15], r2
  stxw [r1+0x11], r2
  mov64 r2, 0xc
  stxb [r1+0x10], r2
  ja jmp_2a130

jmp_2ae00:
  mov64 r3, 0x1c
  ja jmp_2ae48

jmp_2ae10:
  mov64 r3, 0x1f
  ja jmp_2ae48

jmp_2ae20:
  mov64 r3, 0x9
  ja jmp_2ae48

jmp_2ae30:
  mov64 r3, 0x5
  ja jmp_2ae48

jmp_2ae40:
  mov64 r3, 0x11

jmp_2ae48:
  and64 r8, 0xff
  or64 r4, r8
  ldxdw r0, [r10-0xa0]
  stxdw [r1+0x21], r0
  ldxdw r0, [r10-0x98]
  stxb [r1+0x20], r0
  ldxdw r0, [r10-0x90]
  stxdw [r1+0x18], r0
  stxw [r1+0x0], r3
  stxdw [r1+0x10], r4
  and64 r5, 0xff
  lsh64 r9, 0x8
  or64 r9, r5
  stxdw [r1+0x8], r9
  ldxh r3, [r10-0x6c]
  stxh [r1+0x29], r3
  ldxb r3, [r10-0x6a]
  stxb [r1+0x2b], r3
  stxw [r1+0x2c], r2
  ldxdw r2, [r10-0x88]
  stxdw [r1+0x30], r2
  ldxdw r2, [r10-0x80]
  stxdw [r1+0x38], r2
  ldxdw r2, [r10-0x78]
  stxdw [r1+0x40], r2
  ldxw r2, [r10-0x70]
  stxw [r1+0x48], r2
  ldxdw r2, [r10-0xa8]
  stxw [r1+0x4c], r2

jmp_2af30:
  exit

jmp_2af38:
  jeq r7, 0x0, jmp_2a120
  mov64 r4, r3
  add64 r4, -0x2
  mov64 r5, 0x20
  jgt r5, r4, jmp_2b0a0
  stxdw [r10-0xb0], r1
  ldxb r1, [r6+0x0]
  stxdw [r10-0xb8], r1
  ldxb r1, [r2+0x2]
  ldxdw r4, [r2+0x9]
  stxdw [r10-0x41], r4
  ldxdw r4, [r2+0x3]
  stxdw [r10-0x47], r4
  ldxdw r4, [r2+0x11]
  stxdw [r10-0x90], r4
  ldxb r4, [r2+0x19]
  stxdw [r10-0x98], r4
  ldxdw r4, [r2+0x1a]
  stxdw [r10-0xa0], r4
  stxb [r10-0x48], r1
  ldxdw r8, [r10-0x41]
  ldxw r9, [r10-0x48]
  ldxb r6, [r10-0x42]
  ldxh r7, [r10-0x44]
  add64 r2, 0x22
  add64 r3, -0x22
  mov64 r1, r10
  add64 r1, -0x48
  call fn_2c1a8
  ldxw r2, [r10-0x48]
  jeq r2, 0x2, jmp_2b038
  ja jmp_2b5c8

jmp_2b038:
  ldxdw r1, [r10-0x30]
  stxdw [r10-0x54], r1
  ldxdw r2, [r10-0x38]
  stxdw [r10-0x5c], r2
  ldxdw r3, [r10-0x40]
  stxdw [r10-0x64], r3
  ldxdw r4, [r10-0xb0]
  stxdw [r4+0x18], r1
  stxdw [r4+0x10], r2
  stxdw [r4+0x8], r3
  mov64 r1, 0x2d
  stxw [r4+0x0], r1
  ja jmp_2af30

jmp_2b0a0:
  mov64 r2, 0xc
  stxw [r10-0x40], r2
  lddw r2, -0x8000000000000000
  stxdw [r10-0x48], r2
  ldxdw r2, [r10-0x41]
  mov64 r3, 0x0
  stxb [r1+0xe], r3
  stxh [r1+0xc], r3
  stxw [r1+0x8], r3
  stxdw [r1+0xf], r2
  ja jmp_2a148

jmp_2b100:
  mov64 r3, 0x3
  ja jmp_2b128

jmp_2b110:
  mov64 r3, 0x7
  ja jmp_2b128

jmp_2b120:
  mov64 r3, 0x8

jmp_2b128:
  mov64 r9, r5
  rsh64 r9, 0x8
  ja jmp_2ae48

jmp_2b140:
  ldxh r3, [r2+0x6]
  lsh64 r3, 0x20
  ldxb r4, [r2+0x8]
  lsh64 r4, 0x30
  or64 r4, r3
  ldxh r3, [r2+0x1e]
  lsh64 r3, 0x20
  ldxb r5, [r2+0x20]
  lsh64 r5, 0x30
  or64 r5, r3
  ldxw r3, [r2+0x1a]
  or64 r3, r5
  stxdw [r10-0xa0], r3
  ldxw r9, [r2+0x2]
  or64 r9, r4
  mov64 r3, 0x10

jmp_2b1c0:
  ldxb r4, [r2+0x19]
  stxdw [r10-0x98], r4
  ldxdw r4, [r2+0x11]
  stxdw [r10-0x90], r4
  ldxb r5, [r2+0x1]
  ldxdw r8, [r2+0x9]
  mov64 r4, r8
  and64 r4, -0x100
  ja jmp_2ae48

jmp_2b208:
  ldxw r1, [r10-0x2c]
  stxw [r10-0x65], r1
  ldxw r1, [r10-0x2f]
  stxw [r10-0x68], r1
  ldxdw r1, [r10-0x28]
  stxw [r10-0x9], r1
  ldxw r1, [r10-0x65]
  stxw [r10-0xd], r1
  ldxw r1, [r10-0x68]
  stxw [r10-0x10], r1
  ldxb r1, [r10-0x30]
  stxdw [r10-0x98], r1
  ldxdw r1, [r10-0x38]
  stxdw [r10-0x90], r1
  ldxw r9, [r10-0x44]
  ldxdw r8, [r10-0x40]
  ldxdw r1, [r10-0x10]
  stxdw [r10-0xa0], r1
  ldxb r1, [r10-0x6]
  stxb [r10-0x6a], r1
  ldxh r1, [r10-0x8]
  stxh [r10-0x6c], r1
  mov64 r3, 0x19
  mov64 r4, r8
  and64 r4, -0x100
  lsh64 r9, 0x18
  ja jmp_2b3e8

jmp_2b2e0:
  mov64 r3, 0xe

jmp_2b2e8:
  ldxb r8, [r2+0x9]
  ldxdw r5, [r2+0x1]
  mov64 r9, r5
  rsh64 r9, 0x8
  ja jmp_2b550

jmp_2b310:
  stxh [r1+0x10], r4
  lddw r3, -0x7ffffffffffffffd
  stxdw [r1+0x8], r3
  mov64 r3, 0x2d
  stxw [r1+0x0], r3
  jeq r2, 0x0, jmp_2af30
  ja jmp_2b388

jmp_2b350:
  stxh [r1+0x10], r4
  lddw r3, -0x7ffffffffffffffd
  stxdw [r1+0x8], r3
  mov64 r3, 0x2d
  stxw [r1+0x0], r3
  jeq r2, 0x0, jmp_2af30

jmp_2b388:
  lsh64 r2, 0x1
  ldxdw r1, [r10-0x40]
  mov64 r3, 0x2
  call fn_299b0
  ja jmp_2af30

jmp_2b3b0:
  mov64 r3, 0x18
  ldxdw r8, [r10-0x38]
  mov64 r4, r8
  and64 r4, -0x100
  ldxdw r5, [r10-0x40]
  mov64 r9, r5
  rsh64 r9, 0x8

jmp_2b3e8:
  ldxdw r1, [r10-0xb0]
  ja jmp_2ae48

jmp_2b3f8:
  mov64 r6, r1
  add64 r2, 0x2
  mov64 r1, r10
  add64 r1, -0x48
  call fn_2c1a8
  mov64 r1, r10
  add64 r1, -0x2b
  ldxdw r5, [r10-0x33]
  ldxb r4, [r10-0x34]
  ldxdw r0, [r10-0x3c]
  ldxw r9, [r10-0x48]
  jeq r9, 0x2, jmp_2b558
  ldxh r2, [r1+0x0]
  ldxb r1, [r1+0x2]
  stxb [r10-0x6a], r1
  stxh [r10-0x6c], r2
  mov64 r3, 0x6
  ldxdw r2, [r10-0x28]
  ldxdw r8, [r10-0x44]
  stxdw [r10-0x98], r4
  mov64 r4, r8
  and64 r4, -0x100
  lsh64 r9, 0x18
  lsh64 r9, 0x20
  rsh64 r9, 0x20
  mov64 r1, r6
  stxdw [r10-0x90], r0
  stxdw [r10-0xa0], r5
  mov64 r5, r7
  ja jmp_2ae48

jmp_2b4e8:
  ldxdw r8, [r10-0x40]
  ldxdw r5, [r10-0x48]

jmp_2b4f8:
  stxdw [r10-0x90], r0
  mov64 r3, 0x1d
  ja jmp_2b530

jmp_2b510:
  ldxdw r8, [r10-0x40]
  ldxdw r5, [r10-0x48]

jmp_2b520:
  stxdw [r10-0x90], r0
  mov64 r3, 0x15

jmp_2b530:
  mov64 r4, r8
  and64 r4, -0x100
  mov64 r9, r5
  rsh64 r9, 0x8

jmp_2b550:
  ja jmp_2ae48

jmp_2b558:
  ldxh r2, [r1+0x0]
  stxh [r10-0x68], r2
  ldxb r1, [r1+0x2]
  stxb [r10-0x66], r1
  ldxw r3, [r10-0x40]
  stxb [r6+0x1f], r1
  stxh [r6+0x1d], r2
  stxdw [r6+0x15], r5
  stxb [r6+0x14], r4
  stxdw [r6+0xc], r0
  stxw [r6+0x8], r3
  mov64 r1, 0x2d
  stxw [r6+0x0], r1
  ja jmp_2af30

jmp_2b5c8:
  lsh64 r7, 0x20
  lsh64 r6, 0x30
  or64 r6, r7
  or64 r9, r6
  ldxdw r1, [r10-0x44]
  stxdw [r10-0x88], r1
  ldxdw r1, [r10-0x3c]
  stxdw [r10-0x60], r1
  stxdw [r10-0x80], r1
  ldxdw r1, [r10-0x34]
  stxdw [r10-0x58], r1
  stxdw [r10-0x78], r1
  ldxw r1, [r10-0x2c]
  stxw [r10-0x50], r1
  stxw [r10-0x70], r1
  mov64 r3, 0x14

jmp_2b648:
  ldxdw r1, [r10-0x28]
  stxdw [r10-0xa8], r1
  mov64 r4, r8
  and64 r4, -0x100
  ldxdw r1, [r10-0xb0]
  ldxdw r5, [r10-0x90]
  ldxdw r5, [r10-0xb8]
  ldxdw r0, [r10-0x98]
  ldxdw r0, [r10-0xa0]
  ja jmp_2ae48

fn_2b698:
  mov64 r7, r2
  mov64 r6, r1
  mov64 r8, 0x50
  mov64 r1, 0x50
  mov64 r2, 0x1
  call fn_298e0
  jeq r0, 0x0, jmp_2c190
  stxdw [r10-0x10], r0
  stxdw [r10-0x18], r8
  ldxw r1, [r7+0x0]
  jsgt r1, 0x15, jmp_2b728
  jsgt r1, 0xa, jmp_2b798
  jsgt r1, 0x4, jmp_2b7e0
  jsgt r1, 0x1, jmp_2b958
  jeq r1, 0x0, jmp_2beb0
  mov64 r8, 0x1
  stxb [r0+0x0], r8
  ja jmp_2c090

jmp_2b728:
  jsgt r1, 0x20, jmp_2b768
  jsgt r1, 0x1a, jmp_2b840
  jsgt r1, 0x17, jmp_2bad0
  jeq r1, 0x16, jmp_2c018
  ldxdw r1, [r7+0x8]
  stxdw [r0+0x1], r1
  mov64 r1, 0x17
  ja jmp_2bd38

jmp_2b768:
  jsgt r1, 0x26, jmp_2b930
  jsgt r1, 0x23, jmp_2bb10
  jeq r1, 0x21, jmp_2bf98
  jeq r1, 0x22, jmp_2c048
  mov64 r1, 0x23
  ja jmp_2bbc0

jmp_2b798:
  jsgt r1, 0xf, jmp_2b818
  jsgt r1, 0xc, jmp_2b988
  jeq r1, 0xb, jmp_2bd90
  ldxdw r1, [r7+0x8]
  ldxb r2, [r7+0x10]
  stxb [r0+0x9], r2
  stxdw [r0+0x1], r1
  mov64 r1, 0xc
  ja jmp_2bd78

jmp_2b7e0:
  jsgt r1, 0x7, jmp_2b9c8
  jeq r1, 0x5, jmp_2bba8
  jeq r1, 0x6, jmp_2bdc0
  ldxdw r1, [r7+0x8]
  stxdw [r0+0x1], r1
  mov64 r1, 0x7
  ja jmp_2bd38

jmp_2b818:
  jsgt r1, 0x12, jmp_2b9e8
  jeq r1, 0x10, jmp_2bbb8
  jeq r1, 0x11, jmp_2be10
  mov64 r1, 0x12
  ja jmp_2bbc0

jmp_2b840:
  jsgt r1, 0x1d, jmp_2baf0
  jeq r1, 0x1b, jmp_2bda0
  jeq r1, 0x1c, jmp_2c028
  mov64 r1, 0x1d
  stxb [r0+0x0], r1
  mov64 r2, 0x1
  stxdw [r10-0x8], r2
  ldxdw r8, [r7+0x18]
  jeq r8, 0x0, jmp_2c098
  ldxdw r7, [r7+0x10]
  lsh64 r8, 0x1
  ja jmp_2b8e0

jmp_2b8a0:
  add64 r7, 0x2
  ldxdw r1, [r10-0x10]
  add64 r1, r2
  stxh [r1+0x0], r9
  add64 r2, 0x2
  stxdw [r10-0x8], r2
  add64 r8, -0x2
  jeq r8, 0x0, jmp_2c098

jmp_2b8e0:
  ldxdw r1, [r10-0x18]
  sub64 r1, r2
  ldxh r9, [r7+0x0]
  jgt r1, 0x1, jmp_2b8a0
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x2
  call fn_29d00
  ldxdw r2, [r10-0x8]
  ja jmp_2b8a0

jmp_2b930:
  jsgt r1, 0x29, jmp_2bb30
  jeq r1, 0x27, jmp_2bfa8
  jeq r1, 0x28, jmp_2c058
  mov64 r1, 0x29
  ja jmp_2c080

jmp_2b958:
  jeq r1, 0x2, jmp_2bb50
  jeq r1, 0x3, jmp_2bd20
  ldxdw r1, [r7+0x8]
  stxdw [r0+0x1], r1
  mov64 r1, 0x4
  ja jmp_2bd38

jmp_2b988:
  jeq r1, 0xd, jmp_2bb78
  jeq r1, 0xe, jmp_2bd50
  ldxdw r1, [r7+0x8]
  ldxb r2, [r7+0x10]
  stxb [r0+0x9], r2
  stxdw [r0+0x1], r1
  mov64 r1, 0xf
  ja jmp_2bd78

jmp_2b9c8:
  jeq r1, 0x8, jmp_2bc18
  jeq r1, 0x9, jmp_2be20
  mov64 r1, 0xa
  ja jmp_2c080

jmp_2b9e8:
  jeq r1, 0x13, jmp_2bc38
  jeq r1, 0x14, jmp_2be30
  mov64 r1, 0x15
  stxb [r0+0x0], r1
  mov64 r2, 0x1
  stxdw [r10-0x8], r2
  ldxdw r8, [r7+0x18]
  jeq r8, 0x0, jmp_2c098
  ldxdw r7, [r7+0x10]
  lsh64 r8, 0x1
  ja jmp_2ba80

jmp_2ba40:
  add64 r7, 0x2
  ldxdw r1, [r10-0x10]
  add64 r1, r2
  stxh [r1+0x0], r9
  add64 r2, 0x2
  stxdw [r10-0x8], r2
  add64 r8, -0x2
  jeq r8, 0x0, jmp_2c098

jmp_2ba80:
  ldxdw r1, [r10-0x18]
  sub64 r1, r2
  ldxh r9, [r7+0x0]
  jgt r1, 0x1, jmp_2ba40
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x2
  call fn_29d00
  ldxdw r2, [r10-0x8]
  ja jmp_2ba40

jmp_2bad0:
  jeq r1, 0x18, jmp_2bc68
  jeq r1, 0x19, jmp_2bfd8
  mov64 r1, 0x1a
  ja jmp_2c080

jmp_2baf0:
  jeq r1, 0x1e, jmp_2bdb0
  jeq r1, 0x1f, jmp_2c038
  mov64 r1, 0x20
  ja jmp_2c080

jmp_2bb10:
  jeq r1, 0x24, jmp_2bfb8
  jeq r1, 0x25, jmp_2c068
  mov64 r1, 0x26
  ja jmp_2c080

jmp_2bb30:
  jeq r1, 0x2a, jmp_2bfc8
  jeq r1, 0x2b, jmp_2c078
  mov64 r1, 0x2c
  ja jmp_2c080

jmp_2bb50:
  ldxb r1, [r7+0x8]
  stxb [r0+0x1], r1
  mov64 r8, 0x2
  stxb [r0+0x0], r8
  ja jmp_2c090

jmp_2bb78:
  ldxdw r1, [r7+0x8]
  ldxb r2, [r7+0x10]
  stxb [r0+0x9], r2
  stxdw [r0+0x1], r1
  mov64 r1, 0xd
  ja jmp_2bd78

jmp_2bba8:
  mov64 r1, 0x5
  ja jmp_2c080

jmp_2bbb8:
  mov64 r1, 0x10

jmp_2bbc0:
  stxb [r0+0x0], r1
  ldxdw r1, [r7+0x8]
  stxdw [r0+0x1], r1
  ldxdw r1, [r7+0x10]
  stxdw [r0+0x9], r1
  ldxdw r1, [r7+0x18]
  stxdw [r0+0x11], r1
  ldxdw r1, [r7+0x20]
  stxdw [r0+0x19], r1
  mov64 r8, 0x21
  ja jmp_2c090

jmp_2bc18:
  ldxdw r1, [r7+0x8]
  stxdw [r0+0x1], r1
  mov64 r1, 0x8
  ja jmp_2bd38

jmp_2bc38:
  ldxb r1, [r7+0x8]
  stxb [r0+0x1], r1
  mov64 r1, 0x13
  stxb [r0+0x0], r1
  mov64 r8, 0x2
  ja jmp_2c090

jmp_2bc68:
  mov64 r1, 0x18
  stxb [r0+0x0], r1
  mov64 r8, 0x1
  stxdw [r10-0x8], r8
  ldxdw r2, [r7+0x8]
  ldxdw r7, [r7+0x10]
  mov64 r1, 0x50
  jgt r1, r7, jmp_2bcf0
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r8, r2
  mov64 r2, 0x1
  mov64 r3, r7
  call fn_29d00
  mov64 r2, r8
  ldxdw r0, [r10-0x10]
  ldxdw r8, [r10-0x8]

jmp_2bcf0:
  add64 r0, r8
  mov64 r1, r0
  mov64 r3, r7
  call fn_490d0
  add64 r8, r7
  ja jmp_2c090

jmp_2bd20:
  ldxdw r1, [r7+0x8]
  stxdw [r0+0x1], r1
  mov64 r1, 0x3

jmp_2bd38:
  stxb [r0+0x0], r1
  mov64 r8, 0x9
  ja jmp_2c090

jmp_2bd50:
  ldxdw r1, [r7+0x8]
  ldxb r2, [r7+0x10]
  stxb [r0+0x9], r2
  stxdw [r0+0x1], r1
  mov64 r1, 0xe

jmp_2bd78:
  stxb [r0+0x0], r1
  mov64 r8, 0xa
  ja jmp_2c090

jmp_2bd90:
  mov64 r1, 0xb
  ja jmp_2c080

jmp_2bda0:
  mov64 r1, 0x1b
  ja jmp_2c080

jmp_2bdb0:
  mov64 r1, 0x1e
  ja jmp_2c080

jmp_2bdc0:
  mov64 r1, 0x6
  stxb [r0+0x0], r1
  ldxb r1, [r7+0x8]
  stxb [r0+0x1], r1
  ldxw r1, [r7+0xc]
  jne r1, 0x0, jmp_2c0d0
  mov64 r1, 0x0
  stxb [r0+0x2], r1
  mov64 r8, 0x3
  ja jmp_2c090

jmp_2be10:
  mov64 r1, 0x11
  ja jmp_2c080

jmp_2be20:
  mov64 r1, 0x9
  ja jmp_2c080

jmp_2be30:
  ldxb r1, [r7+0x8]
  stxb [r0+0x1], r1
  mov64 r1, 0x14
  stxb [r0+0x0], r1
  ldxdw r1, [r7+0x21]
  stxdw [r0+0x1a], r1
  ldxdw r1, [r7+0x19]
  stxdw [r0+0x12], r1
  ldxdw r1, [r7+0x11]
  stxdw [r0+0xa], r1
  ldxdw r1, [r7+0x9]
  stxdw [r0+0x2], r1
  ldxw r1, [r7+0x2c]
  jne r1, 0x0, jmp_2bf38
  mov64 r1, 0x0
  ja jmp_2bf20

jmp_2beb0:
  ldxb r1, [r7+0x8]
  stxb [r0+0x1], r1
  mov64 r1, 0x0
  stxb [r0+0x0], r1
  ldxdw r2, [r7+0x21]
  stxdw [r0+0x1a], r2
  ldxdw r2, [r7+0x19]
  stxdw [r0+0x12], r2
  ldxdw r2, [r7+0x11]
  stxdw [r0+0xa], r2
  ldxdw r2, [r7+0x9]
  stxdw [r0+0x2], r2
  ldxw r2, [r7+0x2c]
  jne r2, 0x0, jmp_2bf38

jmp_2bf20:
  stxb [r0+0x22], r1
  mov64 r8, 0x23
  ja jmp_2c090

jmp_2bf38:
  mov64 r1, 0x1
  stxb [r0+0x22], r1
  ldxdw r1, [r7+0x30]
  stxdw [r0+0x23], r1
  ldxdw r1, [r7+0x38]
  stxdw [r0+0x2b], r1
  ldxdw r1, [r7+0x40]
  stxdw [r0+0x33], r1
  ldxdw r1, [r7+0x48]
  stxdw [r0+0x3b], r1
  mov64 r8, 0x43
  ja jmp_2c090

jmp_2bf98:
  mov64 r1, 0x21
  ja jmp_2c080

jmp_2bfa8:
  mov64 r1, 0x27
  ja jmp_2c080

jmp_2bfb8:
  mov64 r1, 0x24
  ja jmp_2c080

jmp_2bfc8:
  mov64 r1, 0x2a
  ja jmp_2c080

jmp_2bfd8:
  mov64 r1, 0x19
  stxb [r0+0x0], r1
  ldxw r1, [r7+0x8]
  jne r1, 0x0, jmp_2c130
  mov64 r1, 0x0
  stxb [r0+0x1], r1
  mov64 r8, 0x2
  ja jmp_2c090

jmp_2c018:
  mov64 r1, 0x16
  ja jmp_2c080

jmp_2c028:
  mov64 r1, 0x1c
  ja jmp_2c080

jmp_2c038:
  mov64 r1, 0x1f
  ja jmp_2c080

jmp_2c048:
  mov64 r1, 0x22
  ja jmp_2c080

jmp_2c058:
  mov64 r1, 0x28
  ja jmp_2c080

jmp_2c068:
  mov64 r1, 0x25
  ja jmp_2c080

jmp_2c078:
  mov64 r1, 0x2b

jmp_2c080:
  stxb [r0+0x0], r1
  mov64 r8, 0x1

jmp_2c090:
  stxdw [r10-0x8], r8

jmp_2c098:
  ldxdw r1, [r10-0x8]
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0x10]
  stxdw [r6+0x8], r1
  ldxdw r1, [r10-0x18]
  stxdw [r6+0x0], r1
  exit

jmp_2c0d0:
  mov64 r1, 0x1
  stxb [r0+0x2], r1
  ldxdw r1, [r7+0x10]
  stxdw [r0+0x3], r1
  ldxdw r1, [r7+0x18]
  stxdw [r0+0xb], r1
  ldxdw r1, [r7+0x20]
  stxdw [r0+0x13], r1
  ldxdw r1, [r7+0x28]
  stxdw [r0+0x1b], r1
  mov64 r8, 0x23
  ja jmp_2c090

jmp_2c130:
  mov64 r1, 0x1
  stxb [r0+0x1], r1
  ldxdw r1, [r7+0xc]
  stxdw [r0+0x2], r1
  ldxdw r1, [r7+0x14]
  stxdw [r0+0xa], r1
  ldxdw r1, [r7+0x1c]
  stxdw [r0+0x12], r1
  ldxdw r1, [r7+0x24]
  stxdw [r0+0x1a], r1
  mov64 r8, 0x22
  ja jmp_2c090

jmp_2c190:
  mov64 r1, 0x1
  mov64 r2, 0x50
  call fn_379f0

fn_2c1a8:
  jeq r3, 0x0, jmp_2c1c8
  ldxb r4, [r2+0x0]
  jeq r4, 0x0, jmp_2c2a0
  jeq r4, 0x1, jmp_2c208

jmp_2c1c8:
  mov64 r2, 0xc
  stxw [r1+0x10], r2
  lddw r2, -0x8000000000000000
  stxdw [r1+0x8], r2
  mov64 r2, 0x2
  stxw [r1+0x0], r2
  ja jmp_2c2d0

jmp_2c208:
  mov64 r4, 0x21
  jgt r4, r3, jmp_2c1c8
  add64 r3, -0x21
  ldxdw r4, [r2+0x1]
  ldxdw r5, [r2+0xd]
  ldxdw r0, [r2+0x15]
  ldxw r6, [r2+0x1d]
  ldxw r7, [r2+0x9]
  stxdw [r1+0x30], r3
  add64 r2, 0x21
  stxdw [r1+0x28], r2
  stxw [r1+0xc], r7
  mov64 r2, 0x1
  stxw [r1+0x0], r2
  stxw [r1+0x20], r6
  stxdw [r1+0x18], r0
  stxdw [r1+0x10], r5
  stxdw [r1+0x4], r4
  ja jmp_2c2d0

jmp_2c2a0:
  add64 r2, 0x1
  stxdw [r1+0x28], r2
  mov64 r2, 0x0
  stxw [r1+0x0], r2
  add64 r3, -0x1
  stxdw [r1+0x30], r3

jmp_2c2d0:
  exit

fn_2c2d8:
  mov64 r9, r4
  mov64 r8, r3
  mov64 r7, r2
  mov64 r6, r1
  ldxdw r1, [r7+0x0]
  lddw r2, -0x21708a111e0922fa
  jeq r1, r2, jmp_2c328

jmp_2c318:
  mov64 r1, 0x1
  ja jmp_2c390

jmp_2c328:
  ldxdw r1, [r7+0x8]
  lddw r2, -0x2532931b43a2bde8
  jne r1, r2, jmp_2c318
  ldxdw r1, [r7+0x10]
  lddw r2, 0x270db9834dfc1ab6
  jne r1, r2, jmp_2c318
  mov64 r1, 0x0
  ldxdw r2, [r7+0x18]
  lddw r3, -0x3745e27d7064202
  jne r2, r3, jmp_2c318

jmp_2c390:
  jeq r1, 0x0, jmp_2c438
  ldxdw r1, [r7+0x0]
  lddw r2, -0x6c5e9a281e0922fa
  jeq r1, r2, jmp_2c3c8

jmp_2c3b8:
  mov64 r1, 0x1
  ja jmp_2c430

jmp_2c3c8:
  ldxdw r1, [r7+0x8]
  lddw r2, -0x53861431b91e3427
  jne r1, r2, jmp_2c3b8
  ldxdw r1, [r7+0x10]
  lddw r2, -0x6ec8a4a0127a4be4
  jne r1, r2, jmp_2c3b8
  mov64 r1, 0x0
  ldxdw r2, [r7+0x18]
  lddw r3, -0x56ff00817a0a73c6
  jne r2, r3, jmp_2c3b8

jmp_2c430:
  jne r1, 0x0, jmp_2c690

jmp_2c438:
  stxdw [r10-0x20], r5
  mov64 r1, r10
  add64 r1, -0x18
  lddw r2, data_09d8
  call fn_2b698
  mov64 r1, 0x88
  mov64 r2, 0x1
  call fn_298e0
  jne r0, 0x0, jmp_2c4a0
  mov64 r1, 0x1
  mov64 r2, 0x88
  call fn_37a08

jmp_2c4a0:
  ldxdw r1, [r8+0x18]
  stxdw [r0+0x18], r1
  ldxdw r1, [r8+0x10]
  stxdw [r0+0x10], r1
  ldxdw r1, [r8+0x8]
  stxdw [r0+0x8], r1
  ldxdw r1, [r8+0x0]
  stxdw [r0+0x0], r1
  mov64 r1, 0x100
  stxh [r0+0x20], r1
  ldxdw r1, [r9+0x0]
  stxdw [r0+0x22], r1
  ldxdw r1, [r9+0x8]
  stxdw [r0+0x2a], r1
  ldxdw r1, [r9+0x10]
  stxdw [r0+0x32], r1
  ldxdw r1, [r9+0x18]
  stxdw [r0+0x3a], r1
  mov64 r1, 0x0
  stxh [r0+0x42], r1
  ldxdw r3, [r10-0x20]
  ldxdw r2, [r3+0x0]
  stxdw [r0+0x44], r2
  ldxdw r2, [r3+0x8]
  stxdw [r0+0x4c], r2
  ldxdw r2, [r3+0x10]
  stxdw [r0+0x54], r2
  ldxdw r2, [r3+0x18]
  stxdw [r0+0x5c], r2
  lddw r2, 0x8ad9dbe3
  stxdw [r0+0x7e], r2
  lddw r2, 0x44fda19b08eeda58
  stxdw [r0+0x76], r2
  lddw r2, 0x7ff14a3d4cc98c21
  stxdw [r0+0x6e], r2
  lddw r2, 0x515c2c1917d5a706
  stxdw [r0+0x66], r2
  stxh [r0+0x64], r1
  stxh [r0+0x86], r1
  ldxdw r1, [r7+0x18]
  stxdw [r6+0x48], r1
  ldxdw r1, [r7+0x10]
  stxdw [r6+0x40], r1
  ldxdw r1, [r7+0x8]
  stxdw [r6+0x38], r1
  ldxdw r1, [r7+0x0]
  stxdw [r6+0x30], r1
  ldxdw r1, [r10-0x18]
  stxdw [r6+0x18], r1
  ldxdw r1, [r10-0x10]
  stxdw [r6+0x20], r1
  ldxdw r1, [r10-0x8]
  stxdw [r6+0x28], r1
  stxdw [r6+0x8], r0
  mov64 r1, 0x4
  stxdw [r6+0x10], r1
  stxdw [r6+0x0], r1
  ja jmp_2c6c0

jmp_2c690:
  lddw r1, -0x8000000000000000
  stxdw [r6+0x0], r1
  lddw r1, -0x7ffffffffffffffa
  stxdw [r6+0x8], r1

jmp_2c6c0:
  exit

fn_2c6c8:
  mov64 r9, r4
  stxdw [r10-0x98], r3
  ldxdw r3, [r2+0x0]
  lddw r4, -0x21708a111e0922fa
  jeq r3, r4, jmp_2c708

jmp_2c6f8:
  mov64 r3, 0x1
  ja jmp_2c770

jmp_2c708:
  ldxdw r3, [r2+0x8]
  lddw r4, -0x2532931b43a2bde8
  jne r3, r4, jmp_2c6f8
  ldxdw r3, [r2+0x10]
  lddw r4, 0x270db9834dfc1ab6
  jne r3, r4, jmp_2c6f8
  mov64 r3, 0x0
  ldxdw r4, [r2+0x18]
  lddw r0, -0x3745e27d7064202
  jne r4, r0, jmp_2c6f8

jmp_2c770:
  ldxdw r6, [r5-0xfd8]
  ldxdw r0, [r5-0xfe0]
  ldxdw r8, [r5-0xfe8]
  ldxdw r7, [r5-0xff0]
  ldxdw r4, [r5-0xff8]
  stxdw [r10-0x88], r4
  ldxdw r4, [r5-0x1000]
  stxdw [r10-0x90], r4
  jeq r3, 0x0, jmp_2c858
  ldxdw r3, [r2+0x0]
  lddw r4, -0x6c5e9a281e0922fa
  jeq r3, r4, jmp_2c7e8

jmp_2c7d8:
  mov64 r3, 0x1
  ja jmp_2c850

jmp_2c7e8:
  ldxdw r3, [r2+0x8]
  lddw r4, -0x53861431b91e3427
  jne r3, r4, jmp_2c7d8
  ldxdw r3, [r2+0x10]
  lddw r4, -0x6ec8a4a0127a4be4
  jne r3, r4, jmp_2c7d8
  mov64 r3, 0x0
  ldxdw r4, [r2+0x18]
  lddw r5, -0x56ff00817a0a73c6
  jne r4, r5, jmp_2c7d8

jmp_2c850:
  jne r3, 0x0, jmp_2c9a0

jmp_2c858:
  stxdw [r10-0xa8], r2
  stxdw [r10-0xa0], r1
  stxb [r10-0x40], r6
  stxdw [r10-0x48], r0
  mov64 r1, 0xc
  stxw [r10-0x50], r1
  mov64 r1, r10
  add64 r1, -0x80
  mov64 r2, r10
  add64 r2, -0x50
  call fn_2b698
  mov64 r6, r8
  add64 r6, 0x4
  jeq r6, 0x0, jmp_2c9d8
  stxdw [r10-0xb8], r9
  mov64 r1, 0x0
  stxdw [r10-0xb0], r1
  mov64 r9, r6
  mul64 r9, 0x22
  lddw r1, 0x3c3c3c3c3c3c3c3
  jgt r6, r1, jmp_2ceb0
  mov64 r1, 0x1
  stxdw [r10-0xb0], r1
  mov64 r1, r9
  mov64 r2, 0x1
  call fn_298e0
  jeq r0, 0x0, jmp_2ceb0
  stxdw [r10-0x60], r0
  stxdw [r10-0x68], r6
  ldxdw r2, [r10-0x98]
  ldxdw r1, [r2+0x18]
  stxdw [r10-0x38], r1
  ldxdw r1, [r2+0x10]
  stxdw [r10-0x40], r1
  ldxdw r1, [r2+0x8]
  stxdw [r10-0x48], r1
  ldxdw r1, [r2+0x0]
  stxdw [r10-0x50], r1
  ldxdw r9, [r10-0xb8]
  ja jmp_2ca70

jmp_2c9a0:
  lddw r2, -0x8000000000000000
  stxdw [r1+0x0], r2
  lddw r2, -0x7ffffffffffffffa
  stxdw [r1+0x8], r2
  ja jmp_2cea8

jmp_2c9d8:
  mov64 r1, 0x1
  stxdw [r10-0x60], r1
  mov64 r1, 0x0
  stxdw [r10-0x58], r1
  stxdw [r10-0x68], r1
  ldxdw r2, [r10-0x98]
  ldxdw r1, [r2+0x18]
  stxdw [r10-0x38], r1
  ldxdw r1, [r2+0x10]
  stxdw [r10-0x40], r1
  ldxdw r1, [r2+0x8]
  stxdw [r10-0x48], r1
  ldxdw r1, [r2+0x0]
  stxdw [r10-0x50], r1
  mov64 r1, r10
  add64 r1, -0x68
  call fn_29e48
  ldxdw r6, [r10-0x68]
  ldxdw r0, [r10-0x60]

jmp_2ca70:
  ldxdw r1, [r10-0x38]
  stxdw [r0+0x18], r1
  ldxdw r1, [r10-0x40]
  stxdw [r0+0x10], r1
  ldxdw r1, [r10-0x48]
  stxdw [r0+0x8], r1
  ldxdw r1, [r10-0x50]
  stxdw [r0+0x0], r1
  mov64 r1, 0x100
  stxh [r0+0x20], r1
  mov64 r1, 0x1
  stxdw [r10-0x58], r1
  jne r6, 0x1, jmp_2cb00
  mov64 r1, r10
  add64 r1, -0x68
  call fn_29e48
  ldxdw r6, [r10-0x68]
  ldxdw r0, [r10-0x60]

jmp_2cb00:
  ldxdw r1, [r9+0x18]
  stxdw [r0+0x3a], r1
  ldxdw r1, [r9+0x10]
  stxdw [r0+0x32], r1
  ldxdw r1, [r9+0x8]
  stxdw [r0+0x2a], r1
  ldxdw r1, [r9+0x0]
  stxdw [r0+0x22], r1
  mov64 r1, 0x0
  stxh [r0+0x42], r1
  mov64 r1, 0x2
  stxdw [r10-0x58], r1
  jne r6, 0x2, jmp_2cb90
  mov64 r1, r10
  add64 r1, -0x68
  call fn_29e48
  ldxdw r6, [r10-0x68]
  ldxdw r0, [r10-0x60]

jmp_2cb90:
  ldxdw r2, [r10-0x90]
  ldxdw r1, [r2+0x18]
  stxdw [r0+0x5c], r1
  ldxdw r1, [r2+0x10]
  stxdw [r0+0x54], r1
  ldxdw r1, [r2+0x8]
  stxdw [r0+0x4c], r1
  ldxdw r1, [r2+0x0]
  stxdw [r0+0x44], r1
  mov64 r1, 0x100
  stxh [r0+0x64], r1
  mov64 r9, 0x1
  jeq r8, 0x0, jmp_2cc00
  mov64 r9, 0x0

jmp_2cc00:
  mov64 r1, 0x3
  stxdw [r10-0x58], r1
  jne r6, 0x3, jmp_2cc38
  mov64 r1, r10
  add64 r1, -0x68
  call fn_29e48
  ldxdw r0, [r10-0x60]

jmp_2cc38:
  ldxdw r2, [r10-0x88]
  ldxdw r1, [r2+0x18]
  stxdw [r0+0x7e], r1
  ldxdw r1, [r2+0x10]
  stxdw [r0+0x76], r1
  ldxdw r1, [r2+0x8]
  stxdw [r0+0x6e], r1
  ldxdw r1, [r2+0x0]
  stxdw [r0+0x66], r1
  mov64 r6, 0x0
  stxb [r0+0x87], r6
  stxb [r0+0x86], r9
  mov64 r9, 0x4
  stxdw [r10-0x58], r9
  jeq r8, 0x0, jmp_2cdd8
  lsh64 r8, 0x3
  mov64 r3, 0x1
  ja jmp_2cd50

jmp_2ccc8:
  add64 r7, 0x8
  mov64 r1, r0
  add64 r1, r6
  ldxdw r2, [r10-0x38]
  stxdw [r1+0xa0], r2
  ldxdw r2, [r10-0x40]
  stxdw [r1+0x98], r2
  ldxdw r2, [r10-0x48]
  stxdw [r1+0x90], r2
  ldxdw r2, [r10-0x50]
  stxdw [r1+0x88], r2
  stxh [r1+0xa8], r3
  add64 r6, 0x22
  add64 r9, 0x1
  stxdw [r10-0x58], r9
  add64 r8, -0x8
  jeq r8, 0x0, jmp_2cdd8

jmp_2cd50:
  ldxdw r1, [r7+0x0]
  ldxdw r2, [r1+0x18]
  stxdw [r10-0x38], r2
  ldxdw r2, [r1+0x10]
  stxdw [r10-0x40], r2
  ldxdw r2, [r1+0x8]
  stxdw [r10-0x48], r2
  ldxdw r1, [r1+0x0]
  stxdw [r10-0x50], r1
  ldxdw r1, [r10-0x68]
  jne r9, r1, jmp_2ccc8
  mov64 r1, r10
  add64 r1, -0x68
  call fn_29e48
  mov64 r3, 0x1
  ldxdw r0, [r10-0x60]
  ja jmp_2ccc8

jmp_2cdd8:
  ldxdw r2, [r10-0xa8]
  ldxdw r1, [r2+0x18]
  stxdw [r10-0x8], r1
  ldxdw r1, [r2+0x10]
  stxdw [r10-0x10], r1
  ldxdw r1, [r2+0x8]
  stxdw [r10-0x18], r1
  ldxdw r1, [r2+0x0]
  stxdw [r10-0x20], r1
  ldxdw r1, [r10-0x68]
  stxdw [r10-0x50], r1
  ldxdw r1, [r10-0x60]
  stxdw [r10-0x48], r1
  ldxdw r1, [r10-0x58]
  stxdw [r10-0x40], r1
  ldxdw r1, [r10-0x80]
  stxdw [r10-0x38], r1
  ldxdw r1, [r10-0x78]
  stxdw [r10-0x30], r1
  ldxdw r1, [r10-0x70]
  stxdw [r10-0x28], r1
  mov64 r2, r10
  add64 r2, -0x50
  ldxdw r1, [r10-0xa0]
  mov64 r3, 0x50
  call fn_490d0

jmp_2cea8:
  exit

jmp_2ceb0:
  ldxdw r1, [r10-0xb0]
  mov64 r2, r9
  call fn_379f0

fn_2cec8:
  mov64 r9, r3
  mov64 r8, r2
  mov64 r0, r1
  ldxdw r1, [r8+0x0]
  lddw r2, -0x21708a111e0922fa
  jeq r1, r2, jmp_2cf10

jmp_2cf00:
  mov64 r1, 0x1
  ja jmp_2cf78

jmp_2cf10:
  ldxdw r1, [r8+0x8]
  lddw r2, -0x2532931b43a2bde8
  jne r1, r2, jmp_2cf00
  ldxdw r1, [r8+0x10]
  lddw r2, 0x270db9834dfc1ab6
  jne r1, r2, jmp_2cf00
  mov64 r1, 0x0
  ldxdw r2, [r8+0x18]
  lddw r3, -0x3745e27d7064202
  jne r2, r3, jmp_2cf00

jmp_2cf78:
  jeq r1, 0x0, jmp_2d020
  ldxdw r1, [r8+0x0]
  lddw r2, -0x6c5e9a281e0922fa
  jeq r1, r2, jmp_2cfb0

jmp_2cfa0:
  mov64 r1, 0x1
  ja jmp_2d018

jmp_2cfb0:
  ldxdw r1, [r8+0x8]
  lddw r2, -0x53861431b91e3427
  jne r1, r2, jmp_2cfa0
  ldxdw r1, [r8+0x10]
  lddw r2, -0x6ec8a4a0127a4be4
  jne r1, r2, jmp_2cfa0
  mov64 r1, 0x0
  ldxdw r2, [r8+0x18]
  lddw r3, -0x56ff00817a0a73c6
  jne r2, r3, jmp_2cfa0

jmp_2d018:
  jne r1, 0x0, jmp_2d250

jmp_2d020:
  stxdw [r10-0x60], r4
  stxdw [r10-0x58], r0
  mov64 r7, r5
  mov64 r1, 0x22
  mov64 r2, 0x1
  call fn_298e0
  mov64 r6, r0
  jne r6, 0x0, jmp_2d078
  mov64 r1, 0x1
  mov64 r2, 0x22
  call fn_37a08

jmp_2d078:
  stxdw [r10-0x68], r8
  ldxdw r1, [r9+0x18]
  stxdw [r6+0x18], r1
  ldxdw r1, [r9+0x10]
  stxdw [r6+0x10], r1
  ldxdw r1, [r9+0x8]
  stxdw [r6+0x8], r1
  ldxdw r1, [r9+0x0]
  stxdw [r6+0x0], r1
  mov64 r9, 0x0
  stxh [r6+0x20], r9
  mov64 r0, 0x2
  jeq r7, 0x0, jmp_2d150
  mov64 r8, 0x0
  mov64 r9, r7
  lsh64 r9, 0x1
  lddw r1, 0x3fffffffffffffff
  jgt r7, r1, jmp_2d138
  mov64 r8, 0x2
  mov64 r1, r9
  mov64 r2, 0x2
  call fn_298e0
  jne r0, 0x0, jmp_2d150

jmp_2d138:
  mov64 r1, r8
  mov64 r2, r9
  call fn_379f0

jmp_2d150:
  mov64 r8, r0
  mov64 r1, r8
  ldxdw r2, [r10-0x60]
  mov64 r3, r9
  call fn_490d0
  stxdw [r10-0x60], r8
  stxdw [r10-0x40], r8
  mov64 r1, 0x15
  stxw [r10-0x50], r1
  stxdw [r10-0x38], r7
  stxdw [r10-0x48], r7
  ldxdw r9, [r10-0x58]
  mov64 r1, r9
  add64 r1, 0x18
  mov64 r2, r10
  add64 r2, -0x50
  call fn_2b698
  ldxdw r2, [r10-0x68]
  ldxdw r1, [r2+0x18]
  stxdw [r9+0x48], r1
  ldxdw r1, [r2+0x10]
  stxdw [r9+0x40], r1
  ldxdw r1, [r2+0x8]
  stxdw [r9+0x38], r1
  ldxdw r1, [r2+0x0]
  stxdw [r9+0x30], r1
  stxdw [r9+0x8], r6
  mov64 r1, 0x1
  stxdw [r9+0x10], r1
  stxdw [r9+0x0], r1
  jne r7, 0x0, jmp_2d288
  ja jmp_2d2b0

jmp_2d250:
  lddw r1, -0x8000000000000000
  stxdw [r0+0x0], r1
  lddw r1, -0x7ffffffffffffffa
  stxdw [r0+0x8], r1
  ja jmp_2d2b0

jmp_2d288:
  lsh64 r7, 0x1
  ldxdw r1, [r10-0x60]
  mov64 r2, r7
  mov64 r3, 0x2
  call fn_299b0

jmp_2d2b0:
  exit

fn_2d2b8:
  jgt r3, 0x51, jmp_2d2e8
  mov64 r1, 0x52
  mov64 r2, r3
  lddw r3, data_35c8
  call fn_45270

jmp_2d2e8:
  ldxb r3, [r2+0x0]
  jeq r3, 0x1, jmp_2d348
  jne r3, 0x0, jmp_2d3e8
  ldxb r3, [r2+0x1]
  jne r3, 0x0, jmp_2d3e8
  ldxb r3, [r2+0x2]
  jne r3, 0x0, jmp_2d3e8
  mov64 r4, 0x0
  ldxb r3, [r2+0x3]
  mov64 r5, r3
  jeq r5, 0x0, jmp_2d3b8
  ja jmp_2d3e8

jmp_2d348:
  ldxb r3, [r2+0x1]
  jne r3, 0x0, jmp_2d3e8
  ldxb r3, [r2+0x2]
  jne r3, 0x0, jmp_2d3e8
  ldxb r3, [r2+0x3]
  jne r3, 0x0, jmp_2d3e8
  ldxdw r3, [r2+0x4]
  ldxdw r4, [r2+0x1c]
  stxdw [r10-0x20], r4
  ldxdw r4, [r2+0x14]
  stxdw [r10-0x28], r4
  ldxdw r4, [r2+0xc]
  stxdw [r10-0x30], r4
  mov64 r4, 0x1

jmp_2d3b8:
  mov64 r6, 0x0
  ldxb r0, [r2+0x2c]
  ldxdw r5, [r2+0x24]
  ldxb r7, [r2+0x2d]
  jeq r7, 0x0, jmp_2d420
  jeq r7, 0x1, jmp_2d418

jmp_2d3e8:
  mov64 r2, 0x2
  stxw [r1+0x0], r2
  lddw r2, -0x7ffffffffffffffd
  stxdw [r1+0x8], r2

jmp_2d410:
  exit

jmp_2d418:
  mov64 r6, 0x1

jmp_2d420:
  ldxb r7, [r2+0x2e]
  jeq r7, 0x1, jmp_2d478
  jne r7, 0x0, jmp_2d3e8
  ldxb r7, [r2+0x2f]
  jne r7, 0x0, jmp_2d3e8
  ldxb r7, [r2+0x30]
  jne r7, 0x0, jmp_2d3e8
  mov64 r8, 0x0
  ldxb r2, [r2+0x31]
  jeq r2, 0x0, jmp_2d4e8
  ja jmp_2d3e8

jmp_2d478:
  ldxb r7, [r2+0x2f]
  jne r7, 0x0, jmp_2d3e8
  ldxb r7, [r2+0x30]
  jne r7, 0x0, jmp_2d3e8
  ldxb r7, [r2+0x31]
  jne r7, 0x0, jmp_2d3e8
  ldxdw r7, [r2+0x32]
  ldxdw r8, [r2+0x4a]
  stxdw [r10-0x8], r8
  ldxdw r8, [r2+0x42]
  stxdw [r10-0x10], r8
  ldxdw r2, [r2+0x3a]
  stxdw [r10-0x18], r2
  mov64 r8, 0x1

jmp_2d4e8:
  ldxdw r2, [r10-0x20]
  stxdw [r1+0x1c], r2
  ldxdw r2, [r10-0x28]
  stxdw [r1+0x14], r2
  ldxdw r2, [r10-0x30]
  stxdw [r1+0xc], r2
  stxdw [r1+0x38], r7
  stxw [r1+0x34], r8
  stxb [r1+0x31], r6
  stxb [r1+0x30], r0
  stxdw [r1+0x28], r5
  stxdw [r1+0x4], r3
  stxw [r1+0x0], r4
  ldxdw r2, [r10-0x18]
  stxdw [r1+0x40], r2
  ldxdw r2, [r10-0x10]
  stxdw [r1+0x48], r2
  ldxdw r2, [r10-0x8]
  stxdw [r1+0x50], r2
  ja jmp_2d410

fn_2d588:
  jgt r3, 0xa4, jmp_2d5b8
  mov64 r1, 0xa5
  mov64 r2, r3
  lddw r3, data_35e0
  call fn_45270

jmp_2d5b8:
  ldxdw r7, [r2+0x40]
  ldxb r3, [r2+0x48]
  jeq r3, 0x1, jmp_2d698
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x49]
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x4a]
  jne r3, 0x0, jmp_2d740
  mov64 r9, 0x0
  ldxb r3, [r2+0x4b]
  jeq r3, 0x0, jmp_2d618
  ja jmp_2d740

jmp_2d618:
  ldxb r8, [r2+0x6c]
  mov64 r3, 0x3
  jgt r3, r8, jmp_2d638
  ja jmp_2d720

jmp_2d638:
  ldxb r3, [r2+0x6d]
  jeq r3, 0x1, jmp_2d770
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x6e]
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x6f]
  jne r3, 0x0, jmp_2d740
  mov64 r5, 0x0
  ldxb r3, [r2+0x70]
  mov64 r0, 0x0
  jeq r3, 0x0, jmp_2d7b0
  ja jmp_2d740

jmp_2d698:
  ldxb r3, [r2+0x49]
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x4a]
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x4b]
  jne r3, 0x0, jmp_2d740
  ldxdw r4, [r2+0x4c]
  ldxdw r3, [r2+0x64]
  stxdw [r10-0x20], r3
  ldxdw r3, [r2+0x5c]
  stxdw [r10-0x28], r3
  ldxdw r3, [r2+0x54]
  stxdw [r10-0x30], r3
  mov64 r9, 0x1
  ldxb r8, [r2+0x6c]
  mov64 r3, 0x3
  jgt r3, r8, jmp_2d638

jmp_2d720:
  mov64 r2, 0x0
  stxb [r1+0xf], r2
  stxh [r1+0xd], r2
  stxw [r1+0x9], r2

jmp_2d740:
  mov64 r2, 0x2
  stxw [r1+0x88], r2
  lddw r2, -0x7ffffffffffffffd
  stxdw [r1+0x0], r2

jmp_2d768:
  exit

jmp_2d770:
  ldxb r3, [r2+0x6e]
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x6f]
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x70]
  jne r3, 0x0, jmp_2d740
  mov64 r5, 0x1
  ldxdw r0, [r2+0x71]

jmp_2d7b0:
  ldxdw r3, [r2+0x79]
  stxdw [r10-0x78], r3
  ldxb r3, [r2+0x81]
  jeq r3, 0x1, jmp_2d820
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x82]
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x83]
  jne r3, 0x0, jmp_2d740
  mov64 r3, 0x0
  stxdw [r10-0x80], r3
  ldxb r3, [r2+0x84]
  jeq r3, 0x0, jmp_2d8a0
  ja jmp_2d740

jmp_2d820:
  ldxb r3, [r2+0x82]
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x83]
  jne r3, 0x0, jmp_2d740
  ldxb r3, [r2+0x84]
  jne r3, 0x0, jmp_2d740
  ldxdw r3, [r2+0x85]
  stxdw [r10-0xa0], r3
  ldxdw r3, [r2+0x9d]
  stxdw [r10-0x8], r3
  ldxdw r3, [r2+0x95]
  stxdw [r10-0x10], r3
  ldxdw r3, [r2+0x8d]
  stxdw [r10-0x18], r3
  mov64 r3, 0x1
  stxdw [r10-0x80], r3

jmp_2d8a0:
  mov64 r3, r2
  add64 r3, 0x20
  stxdw [r10-0x88], r4
  ldxdw r4, [r2+0x18]
  stxdw [r10-0x58], r4
  ldxdw r4, [r2+0x10]
  stxdw [r10-0x60], r4
  ldxdw r4, [r2+0x8]
  stxdw [r10-0x68], r4
  ldxdw r2, [r2+0x0]
  stxdw [r10-0x70], r2
  ldxdw r2, [r3+0x0]
  stxdw [r10-0x50], r2
  ldxdw r2, [r3+0x8]
  stxdw [r10-0x48], r2
  ldxdw r2, [r3+0x10]
  stxdw [r10-0x40], r2
  ldxdw r2, [r3+0x18]
  stxdw [r10-0x38], r2
  ldxdw r2, [r10-0x20]
  stxdw [r1+0x64], r2
  ldxdw r2, [r10-0x28]
  stxdw [r1+0x5c], r2
  ldxdw r2, [r10-0x30]
  stxdw [r1+0x54], r2
  mov64 r2, r10
  add64 r2, -0x70
  mov64 r6, r1
  mov64 r3, 0x40
  stxdw [r10-0x90], r5
  stxdw [r10-0x98], r0
  call fn_490d0
  ldxdw r1, [r10-0xa0]
  stxdw [r6+0x8c], r1
  ldxdw r1, [r10-0x80]
  stxw [r6+0x88], r1
  ldxdw r1, [r10-0x78]
  stxdw [r6+0x80], r1
  ldxdw r1, [r10-0x98]
  stxdw [r6+0x78], r1
  ldxdw r1, [r10-0x90]
  stxw [r6+0x70], r1
  stxb [r6+0x6c], r8
  ldxdw r1, [r10-0x88]
  stxdw [r6+0x4c], r1
  stxw [r6+0x48], r9
  stxdw [r6+0x40], r7
  ldxdw r1, [r10-0x18]
  stxdw [r6+0x94], r1
  ldxdw r1, [r10-0x10]
  stxdw [r6+0x9c], r1
  ldxdw r1, [r10-0x8]
  stxdw [r6+0xa4], r1
  ja jmp_2d768

fn_2da50:
  mov64 r5, 0x8
  stxdw [r10-0x1000], r5
  mov64 r5, 0x0
  stxdw [r10-0xff8], r5
  mov64 r5, r10
  call fn_2da88
  exit

fn_2da88:
  stxdw [r10-0x28], r4
  stxdw [r10-0x30], r3
  stxdw [r10-0x40], r1
  stxdw [r10-0x38], r2
  ldxdw r1, [r2+0x10]
  ldxdw r2, [r5-0xff8]
  stxdw [r10-0x48], r2
  ldxdw r2, [r5-0x1000]
  stxdw [r10-0x50], r2
  jeq r1, 0x0, jmp_2dde0
  ldxdw r2, [r10-0x38]
  ldxdw r8, [r2+0x8]
  mul64 r1, 0x22
  mov64 r9, r8
  add64 r9, r1
  ldxdw r0, [r10-0x28]
  mul64 r0, 0x30
  ldxdw r6, [r10-0x30]
  add64 r6, -0x30
  stxdw [r10-0x20], r6
  ja jmp_2db60

jmp_2db30:
  ldxdw r3, [r1+0x0]
  add64 r3, r2
  stxdw [r1+0x0], r3
  mov64 r0, r6
  ldxdw r6, [r10-0x20]

jmp_2db58:
  jeq r8, r9, jmp_2dde0

jmp_2db60:
  mov64 r1, r8
  add64 r8, 0x22
  mov64 r2, r0
  mov64 r7, r6

jmp_2db80:
  jeq r2, 0x0, jmp_2db58
  ldxdw r3, [r1+0x0]
  ldxdw r4, [r7+0x30]
  ldxdw r5, [r4+0x0]
  jeq r3, r5, jmp_2dbb8

jmp_2dba8:
  mov64 r3, 0x1
  ja jmp_2dc08

jmp_2dbb8:
  ldxdw r3, [r4+0x8]
  ldxdw r5, [r1+0x8]
  jne r5, r3, jmp_2dba8
  ldxdw r3, [r4+0x10]
  ldxdw r5, [r1+0x10]
  jne r5, r3, jmp_2dba8
  mov64 r3, 0x0
  ldxdw r4, [r4+0x18]
  ldxdw r5, [r1+0x18]
  jne r5, r4, jmp_2dba8

jmp_2dc08:
  add64 r2, -0x30
  add64 r7, 0x30
  jne r3, 0x0, jmp_2db80
  mov64 r6, r0
  ldxb r1, [r1+0x21]
  jne r1, 0x0, jmp_2dd20
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  call fn_30258
  ldxdw r1, [r10-0x8]
  ldxdw r2, [r10-0x18]
  lddw r3, -0x7fffffffffffffe6
  jeq r2, r3, jmp_2dc88
  ja jmp_2de38

jmp_2dc88:
  ldxdw r2, [r1+0x0]
  add64 r2, -0x1
  stxdw [r1+0x0], r2
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  call fn_30368
  lddw r4, -0x7fffffffffffffe6
  mov64 r2, -0x1
  ldxdw r1, [r10-0x8]
  ldxdw r3, [r10-0x18]
  jeq r3, r4, jmp_2db30

jmp_2dcf0:
  ldxdw r2, [r10-0x10]
  ldxdw r4, [r10-0x40]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r2
  stxdw [r4+0x0], r3
  ja jmp_2de30

jmp_2dd20:
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  call fn_302e8
  ldxdw r1, [r10-0x8]
  ldxdw r2, [r10-0x18]
  lddw r3, -0x7fffffffffffffe6
  jeq r2, r3, jmp_2dd70
  ja jmp_2de38

jmp_2dd70:
  ldxdw r2, [r1+0x0]
  add64 r2, 0x1
  stxdw [r1+0x0], r2
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  call fn_303f8
  lddw r4, -0x7fffffffffffffe6
  mov64 r2, 0x1
  ldxdw r1, [r10-0x8]
  ldxdw r3, [r10-0x18]
  jeq r3, r4, jmp_2db30
  ja jmp_2dcf0

jmp_2dde0:
  ldxdw r1, [r10-0x50]
  stxdw [r10-0x1000], r1
  ldxdw r1, [r10-0x48]
  stxdw [r10-0xff8], r1
  mov64 r5, r10
  ldxdw r1, [r10-0x40]
  ldxdw r2, [r10-0x38]
  ldxdw r3, [r10-0x30]
  ldxdw r4, [r10-0x28]
  call fn_2fbb8

jmp_2de30:
  exit

jmp_2de38:
  ldxdw r3, [r10-0x10]
  ldxdw r4, [r10-0x40]
  stxdw [r4+0x10], r1
  stxdw [r4+0x8], r3
  stxdw [r4+0x0], r2
  ja jmp_2de30

fn_2de68:
  call fn_2ff90
  exit

fn_2de78:
  mov64 r7, r3
  mov64 r6, r1
  jeq r2, 0x0, jmp_2def8
  ldxdw r1, [r4+0x8]
  jeq r1, 0x0, jmp_2df70
  ldxdw r2, [r4+0x10]
  jne r2, 0x0, jmp_2df18
  mov64 r1, 0x0
  mov64 r0, 0x1
  jeq r7, 0x0, jmp_2dfb0
  mov64 r1, r7
  mov64 r2, 0x1
  call fn_298e0
  mov64 r1, r7
  jeq r0, 0x0, jmp_2df50
  ja jmp_2dfb0

jmp_2def8:
  mov64 r1, 0x0
  stxdw [r6+0x8], r1
  mov64 r1, 0x1
  ja jmp_2dfc8

jmp_2df18:
  ldxdw r1, [r4+0x0]
  mov64 r3, 0x1
  mov64 r4, r7
  call fn_299b8
  mov64 r1, r7
  jeq r0, 0x0, jmp_2df50
  ja jmp_2dfb0

jmp_2df50:
  stxdw [r6+0x10], r7
  mov64 r1, 0x1
  stxdw [r6+0x8], r1
  ja jmp_2dfc8

jmp_2df70:
  mov64 r1, 0x0
  mov64 r0, 0x1
  jeq r7, 0x0, jmp_2dfb0
  mov64 r1, r7
  mov64 r2, 0x1
  call fn_298e0
  mov64 r1, r7
  jeq r0, 0x0, jmp_2df50

jmp_2dfb0:
  stxdw [r6+0x10], r1
  stxdw [r6+0x8], r0
  mov64 r1, 0x0

jmp_2dfc8:
  stxdw [r6+0x0], r1
  exit

fn_2dfd8:
  mov64 r6, r1
  ldxdw r4, [r6+0x0]
  mov64 r3, r4
  add64 r3, 0x1
  mov64 r1, 0x0
  mov64 r5, 0x1
  jeq r3, 0x0, jmp_2e018
  mov64 r5, 0x0

jmp_2e018:
  and64 r5, 0x1
  jne r5, 0x0, jmp_2e110
  mov64 r7, r4
  lsh64 r7, 0x1
  jgt r7, r3, jmp_2e048
  mov64 r7, r3

jmp_2e048:
  mov64 r2, 0x1
  lddw r3, 0x3c3c3c3c3c3c3c4
  jgt r3, r7, jmp_2e070
  mov64 r2, 0x0

jmp_2e070:
  jgt r7, 0x4, jmp_2e080
  mov64 r7, 0x4

jmp_2e080:
  mov64 r3, r7
  mul64 r3, 0x22
  jeq r4, 0x0, jmp_2e0c0
  ldxdw r1, [r6+0x8]
  mul64 r4, 0x22
  stxdw [r10-0x8], r4
  stxdw [r10-0x18], r1
  mov64 r1, 0x1

jmp_2e0c0:
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  call fn_2de78
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_2e118
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_2e110:
  call fn_379f0

jmp_2e118:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_2e138:
  mov64 r7, r2
  mov64 r6, r1
  ldxdw r1, [r7+0x0]
  call fn_33990
  jne r0, 0x0, jmp_2e178
  lddw r1, -0x7ffffffffffffff0
  ja jmp_2e218

jmp_2e178:
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  call fn_30368
  ldxdw r3, [r10-0x8]
  ldxdw r4, [r10-0x10]
  ldxdw r1, [r10-0x18]
  lddw r2, -0x7fffffffffffffe6
  jeq r1, r2, jmp_2e1d0
  ja jmp_2e208

jmp_2e1d0:
  ldxdw r2, [r4+0x8]
  mov64 r1, r2
  add64 r1, -0x2
  jgt r2, 0x1, jmp_2e228
  lddw r3, data_35f8
  call fn_45350

jmp_2e208:
  stxdw [r6+0x10], r3
  stxdw [r6+0x8], r4

jmp_2e218:
  stxdw [r6+0x0], r1
  ja jmp_2e278

jmp_2e228:
  ldxdw r2, [r4+0x0]
  add64 r2, r1
  ldxh r1, [r2+0x0]
  lddw r2, -0x7fffffffffffffe6
  stxdw [r6+0x0], r2
  stxh [r6+0x8], r1
  ldxdw r1, [r3+0x0]
  add64 r1, -0x1
  stxdw [r3+0x0], r1

jmp_2e278:
  exit

fn_2e280:
  mov64 r8, r4
  mov64 r6, r3
  mov64 r9, r2
  mov64 r7, r1
  mov64 r1, 0x0
  stxdw [r10-0x68], r1
  mov64 r1, r10
  add64 r1, -0x68
  mov64 r2, r6
  mov64 r3, r8
  call fn_2ede8
  mov64 r1, r0
  and64 r1, 0x1
  jne r1, 0x0, jmp_2e4e0
  lddw r1, 0xffff0000
  and64 r0, r1
  rsh64 r0, 0x10
  jgt r0, r9, jmp_2e320
  ja jmp_2e748

jmp_2e320:
  lsh64 r9, 0x1
  ldxdw r1, [r10-0x68]
  add64 r1, r9
  stxdw [r10-0x68], r1
  mov64 r1, r10
  add64 r1, -0x68
  mov64 r2, r6
  mov64 r3, r8
  call fn_2ede8
  mov64 r1, r0
  and64 r1, 0x1
  jeq r1, 0x0, jmp_2e388
  ja jmp_2e4e0

jmp_2e388:
  mov64 r2, r6
  lddw r6, 0xffff0000
  and64 r0, r6
  rsh64 r0, 0x10
  stxdw [r10-0x68], r0
  mov64 r1, r10
  add64 r1, -0x68
  stxdw [r10-0x88], r2
  mov64 r3, r8
  call fn_2ede8
  mov64 r1, r0
  and64 r1, 0x1
  jeq r1, 0x0, jmp_2e400
  ja jmp_2e4e0

jmp_2e400:
  mov64 r9, r0
  and64 r9, r6
  rsh64 r9, 0x10
  mov64 r4, 0x1
  lsh64 r0, 0x20
  rsh64 r0, 0x20
  mov64 r1, 0x10000
  jgt r1, r0, jmp_2e478
  mov64 r6, r9
  mul64 r6, 0x22
  mov64 r1, r6
  mov64 r2, 0x1
  call fn_298e0
  mov64 r4, r0
  jeq r4, 0x0, jmp_2ea58

jmp_2e478:
  stxdw [r10-0x90], r8
  stxdw [r10-0xa8], r7
  mov64 r5, 0x0
  stxdw [r10-0x50], r5
  stxdw [r10-0x58], r4
  stxdw [r10-0x60], r9
  jeq r9, 0x0, jmp_2e778
  mov64 r3, 0x1
  mov64 r1, r10
  add64 r1, -0x46
  stxdw [r10-0xa0], r1
  stxdw [r10-0x98], r9
  ja jmp_2e5e8

jmp_2e4e0:
  lddw r1, -0x8000000000000000
  stxdw [r7+0x0], r1
  rsh64 r0, 0x8
  stxb [r7+0x8], r0
  ja jmp_2e770

jmp_2e510:
  mov64 r1, r9
  and64 r1, 0x1
  rsh64 r9, 0x1
  and64 r9, 0x1
  mov64 r2, r4
  ldxdw r5, [r10-0x78]
  add64 r2, r5
  stxb [r2+0x0], r7
  ldxdw r3, [r10-0x20]
  stxdw [r2+0x1], r3
  ldxdw r3, [r10-0x18]
  stxdw [r2+0x9], r3
  ldxdw r3, [r10-0x10]
  stxdw [r2+0x11], r3
  ldxdw r3, [r10-0x9]
  stxdw [r2+0x18], r3
  stxb [r2+0x21], r9
  stxb [r2+0x20], r1
  add64 r5, 0x22
  mov64 r1, r8
  add64 r1, 0x1
  stxdw [r10-0x50], r8
  and64 r8, 0xffff
  mov64 r3, r1
  ldxdw r9, [r10-0x98]
  jgt r9, r8, jmp_2e5e8
  ja jmp_2e778

jmp_2e5e8:
  stxdw [r10-0x80], r4
  mov64 r8, r3
  stxdw [r10-0x78], r5
  mov64 r1, r10
  add64 r1, -0x70
  mov64 r2, r10
  add64 r2, -0x68
  ldxdw r6, [r10-0x88]
  mov64 r3, r6
  ldxdw r7, [r10-0x90]
  mov64 r4, r7
  call fn_2ec60
  ldxb r9, [r10-0x6f]
  ldxb r1, [r10-0x70]
  jne r1, 0x0, jmp_2e940
  mov64 r1, r10
  add64 r1, -0x48
  mov64 r2, r10
  add64 r2, -0x68
  mov64 r3, r6
  mov64 r4, r7
  call fn_2ed08
  ldxb r1, [r10-0x48]
  jne r1, 0x0, jmp_2e908
  mov64 r1, r8
  add64 r1, -0x1
  ldxb r7, [r10-0x47]
  ldxdw r3, [r10-0xa0]
  ldxdw r2, [r3+0x17]
  stxdw [r10-0x9], r2
  ldxdw r2, [r3+0x10]
  stxdw [r10-0x10], r2
  ldxdw r2, [r3+0x8]
  stxdw [r10-0x18], r2
  ldxdw r2, [r3+0x0]
  stxdw [r10-0x20], r2
  ldxdw r2, [r10-0x60]
  ldxdw r4, [r10-0x80]
  jne r1, r2, jmp_2e510
  mov64 r1, r10
  add64 r1, -0x60
  call fn_2dfd8
  ldxdw r4, [r10-0x58]
  ja jmp_2e510

jmp_2e748:
  lddw r1, -0x8000000000000000
  stxdw [r7+0x0], r1
  mov64 r1, 0x0
  stxb [r7+0x8], r1

jmp_2e770:
  exit

jmp_2e778:
  mov64 r1, r10
  add64 r1, -0x48
  mov64 r2, r10
  add64 r2, -0x68
  ldxdw r7, [r10-0x88]
  mov64 r3, r7
  ldxdw r6, [r10-0x90]
  mov64 r4, r6
  call fn_2ed08
  ldxb r9, [r10-0x47]
  ldxb r1, [r10-0x48]
  jeq r1, 0x0, jmp_2e7e0
  ja jmp_2e940

jmp_2e7e0:
  ldxdw r1, [r10-0x2f]
  stxdw [r10-0x9], r1
  ldxdw r1, [r10-0x36]
  stxdw [r10-0x10], r1
  ldxdw r1, [r10-0x3e]
  stxdw [r10-0x18], r1
  ldxdw r1, [r10-0x46]
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x68
  mov64 r2, r7
  mov64 r3, r6
  call fn_2ede8
  mov64 r1, r0
  and64 r1, 0x1
  jeq r1, 0x0, jmp_2e868
  ja jmp_2e918

jmp_2e868:
  lddw r1, 0xffff0000
  and64 r0, r1
  rsh64 r0, 0x10
  mov64 r1, r10
  add64 r1, -0x48
  mov64 r2, r10
  add64 r2, -0x68
  mov64 r3, r7
  mov64 r4, r6
  mov64 r5, r0
  call fn_2ee70
  ldxb r1, [r10-0x40]
  ldxdw r2, [r10-0x48]
  lddw r3, -0x8000000000000000
  jeq r2, r3, jmp_2e8f8
  ja jmp_2e9a0

jmp_2e8f8:
  mov64 r9, r1
  ja jmp_2e940

jmp_2e908:
  ldxb r9, [r10-0x47]
  ja jmp_2e940

jmp_2e918:
  lddw r1, 0xffffff00
  and64 r0, r1
  rsh64 r0, 0x8
  mov64 r9, r0

jmp_2e940:
  lddw r1, -0x8000000000000000
  ldxdw r2, [r10-0xa8]
  stxdw [r2+0x0], r1
  stxb [r2+0x8], r9
  ldxdw r2, [r10-0x60]
  jeq r2, 0x0, jmp_2e770
  mul64 r2, 0x22
  ldxdw r1, [r10-0x58]
  mov64 r3, 0x1
  call fn_299b0
  ja jmp_2e770

jmp_2e9a0:
  ldxdw r3, [r10-0x38]
  ldxdw r4, [r10-0xa8]
  stxdw [r4+0x28], r3
  ldxdw r3, [r10-0x3f]
  stxdw [r4+0x21], r3
  ldxdw r3, [r10-0x50]
  stxdw [r4+0x10], r3
  ldxdw r3, [r10-0x58]
  stxdw [r4+0x8], r3
  ldxdw r3, [r10-0x60]
  stxdw [r4+0x0], r3
  ldxdw r3, [r10-0x18]
  stxdw [r4+0x39], r3
  ldxdw r3, [r10-0x10]
  stxdw [r4+0x41], r3
  ldxdw r3, [r10-0x9]
  stxdw [r4+0x48], r3
  ldxdw r3, [r10-0x20]
  stxb [r4+0x20], r1
  stxb [r4+0x30], r9
  stxdw [r4+0x18], r2
  stxdw [r4+0x31], r3
  ja jmp_2e770

jmp_2ea58:
  mov64 r1, 0x1
  mov64 r2, r6
  call fn_379f0

fn_2ea70:
  mov64 r8, r3
  mov64 r7, r2
  mov64 r6, r1
  ldxdw r1, [r8+0x0]
  call fn_33990
  jne r0, 0x0, jmp_2ead8
  lddw r1, -0x8000000000000000
  stxdw [r6+0x0], r1
  lddw r1, -0x7ffffffffffffff0
  stxdw [r6+0x8], r1
  ja jmp_2ec58

jmp_2ead8:
  mov64 r1, r10
  add64 r1, -0x50
  mov64 r2, r8
  call fn_30368
  ldxdw r8, [r10-0x40]
  ldxdw r1, [r10-0x48]
  ldxdw r2, [r10-0x50]
  lddw r3, -0x7fffffffffffffe6
  jeq r2, r3, jmp_2eb30
  ja jmp_2ebe0

jmp_2eb30:
  ldxdw r4, [r1+0x8]
  ldxdw r3, [r1+0x0]
  mov64 r1, r10
  add64 r1, -0x50
  mov64 r2, r7
  call fn_2e280
  lddw r1, -0x8000000000000000
  ldxdw r2, [r10-0x50]
  jeq r2, r1, jmp_2eb88
  ja jmp_2ec18

jmp_2eb88:
  lddw r1, -0x7fffffffffffffff
  ldxb r2, [r10-0x48]
  jeq r2, 0x0, jmp_2ebb8
  lddw r1, -0x7ffffffffffffffe

jmp_2ebb8:
  lddw r2, -0x8000000000000000
  stxdw [r6+0x0], r2
  stxdw [r6+0x8], r1
  ja jmp_2ec40

jmp_2ebe0:
  stxdw [r6+0x18], r8
  stxdw [r6+0x10], r1
  stxdw [r6+0x8], r2
  lddw r1, -0x8000000000000000
  stxdw [r6+0x0], r1
  ja jmp_2ec58

jmp_2ec18:
  mov64 r2, r10
  add64 r2, -0x50
  mov64 r1, r6
  mov64 r3, 0x50
  call fn_490d0

jmp_2ec40:
  ldxdw r1, [r8+0x0]
  add64 r1, -0x1
  stxdw [r8+0x0], r1

jmp_2ec58:
  exit

fn_2ec60:
  ldxdw r5, [r2+0x0]
  mov64 r0, r5
  add64 r0, 0x1
  mov64 r6, 0x0
  jgt r0, r4, jmp_2eca8
  jge r5, r4, jmp_2ece0
  add64 r3, r5
  ldxb r6, [r3+0x0]
  stxdw [r2+0x0], r0

jmp_2eca8:
  mov64 r2, 0x1
  jgt r0, r4, jmp_2ecc0
  mov64 r2, 0x0

jmp_2ecc0:
  stxb [r1+0x1], r6
  and64 r2, 0x1
  stxb [r1+0x0], r2
  exit

jmp_2ece0:
  mov64 r1, r5
  mov64 r2, r4
  lddw r3, data_3610
  call fn_3ffc8

fn_2ed08:
  mov64 r7, 0x1
  mov64 r6, 0x0
  ldxdw r5, [r2+0x0]
  mov64 r0, r5
  add64 r0, 0x20
  jgt r0, r4, jmp_2edd0
  mov64 r4, -0x20
  jgt r4, r5, jmp_2ed70
  mov64 r1, r5
  mov64 r2, r0
  lddw r3, data_3628
  call fn_45350

jmp_2ed70:
  add64 r3, r5
  ldxb r6, [r3+0x0]
  ldxdw r4, [r3+0x18]
  stxdw [r1+0x19], r4
  ldxdw r4, [r3+0x11]
  stxdw [r1+0x12], r4
  ldxdw r4, [r3+0x9]
  stxdw [r1+0xa], r4
  ldxdw r3, [r3+0x1]
  stxdw [r1+0x2], r3
  stxdw [r2+0x0], r0
  mov64 r7, 0x0

jmp_2edd0:
  stxb [r1+0x0], r7
  stxb [r1+0x1], r6
  exit

fn_2ede8:
  mov64 r5, r2
  mov64 r0, 0x1
  ldxdw r4, [r1+0x0]
  mov64 r2, r4
  add64 r2, 0x2
  jgt r2, r3, jmp_2ee68
  mov64 r3, -0x2
  jgt r3, r4, jmp_2ee48
  mov64 r1, r4
  lddw r3, data_3640
  call fn_45350

jmp_2ee48:
  add64 r5, r4
  ldxh r0, [r5+0x0]
  stxdw [r1+0x0], r2
  lsh64 r0, 0x10

jmp_2ee68:
  exit

fn_2ee70:
  mov64 r6, r5
  mov64 r7, r1
  ldxdw r9, [r2+0x0]
  mov64 r8, r9
  add64 r8, r6
  jgt r8, r4, jmp_2eed0
  jge r8, r9, jmp_2ef00
  mov64 r1, r9
  mov64 r2, r8
  lddw r3, data_3658
  call fn_45350

jmp_2eed0:
  lddw r1, -0x8000000000000000
  stxdw [r7+0x0], r1
  mov64 r1, 0x0
  stxb [r7+0x8], r1
  ja jmp_2efd0

jmp_2ef00:
  stxdw [r10-0x8], r2
  mov64 r0, 0x1
  jeq r6, 0x0, jmp_2ef78
  stxdw [r10-0x18], r3
  mov64 r2, 0x0
  mov64 r1, 0x0
  stxdw [r10-0x10], r1
  jsgt r2, r6, jmp_2efd8
  mov64 r1, 0x1
  stxdw [r10-0x10], r1
  mov64 r1, r6
  mov64 r2, 0x1
  call fn_298e0
  jeq r0, 0x0, jmp_2efd8
  ldxdw r3, [r10-0x18]

jmp_2ef78:
  add64 r3, r9
  mov64 r9, r0
  mov64 r1, r9
  mov64 r2, r3
  mov64 r3, r6
  call fn_490d0
  ldxdw r1, [r10-0x8]
  stxdw [r1+0x0], r8
  stxdw [r7+0x8], r9
  stxdw [r7+0x0], r6
  stxdw [r7+0x10], r6

jmp_2efd0:
  exit

jmp_2efd8:
  ldxdw r1, [r10-0x10]
  mov64 r2, r6
  call fn_379f0

fn_2eff0:
  mov64 r6, r1
  mov64 r7, r10
  add64 r7, -0x28
  mov64 r8, 0x0
  mov64 r1, r7
  mov64 r2, 0x0
  mov64 r3, 0x28
  call fn_493f8
  mov64 r1, r7
  call sol_get_clock_sysvar
  mov64 r1, r6
  add64 r1, 0x8
  jne r0, 0x0, jmp_2f080
  mov64 r2, r10
  add64 r2, -0x28
  mov64 r3, 0x28
  call fn_490d0
  ja jmp_2f098

jmp_2f080:
  mov64 r2, r0
  call fn_30880
  mov64 r8, 0x1

jmp_2f098:
  stxdw [r6+0x0], r8
  exit

fn_2f0a8:
  mov64 r6, r1
  mov64 r1, 0x0
  stxdw [r10-0x8], r1
  mov64 r1, r10
  add64 r1, -0x8
  call sol_get_last_restart_slot
  jne r0, 0x0, jmp_2f110
  ldxdw r1, [r10-0x8]
  lddw r2, -0x7fffffffffffffe6
  stxdw [r6+0x0], r2
  stxdw [r6+0x8], r1
  ja jmp_2f128

jmp_2f110:
  mov64 r1, r6
  mov64 r2, r0
  call fn_30880

jmp_2f128:
  exit

fn_2f130:
  mov64 r6, r1
  mov64 r1, 0x32
  stxb [r10-0x8], r1
  lddw r1, 0x4000000000000000
  stxdw [r10-0x10], r1
  mov64 r1, 0xd98
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x18
  call sol_get_rent_sysvar
  mov64 r1, r6
  add64 r1, 0x8
  jne r0, 0x0, jmp_2f1e0
  ldxdw r2, [r10-0x8]
  stxdw [r1+0x10], r2
  ldxdw r2, [r10-0x10]
  stxdw [r1+0x8], r2
  ldxdw r2, [r10-0x18]
  stxdw [r1+0x0], r2
  mov64 r1, 0x0
  ja jmp_2f1f8

jmp_2f1e0:
  mov64 r2, r0
  call fn_30880
  mov64 r1, 0x1

jmp_2f1f8:
  stxdw [r6+0x0], r1
  exit

fn_2f208:
  mov64 r7, r3
  mov64 r8, r2
  mov64 r6, r1
  jeq r8, 0x0, jmp_2f278
  ldxdw r1, [r4+0x8]
  jeq r1, 0x0, jmp_2f2c8
  ldxdw r2, [r4+0x10]
  jne r2, 0x0, jmp_2f298
  jeq r7, 0x0, jmp_2f310
  mov64 r1, r7
  mov64 r2, r8
  call fn_298e0
  jeq r0, 0x0, jmp_2f2f0
  ja jmp_2f320

jmp_2f278:
  mov64 r1, 0x0
  stxdw [r6+0x8], r1
  mov64 r1, 0x1
  ja jmp_2f338

jmp_2f298:
  ldxdw r1, [r4+0x0]
  mov64 r3, r8
  mov64 r4, r7
  call fn_299b8
  jeq r0, 0x0, jmp_2f2f0
  ja jmp_2f320

jmp_2f2c8:
  jeq r7, 0x0, jmp_2f310
  mov64 r1, r7
  mov64 r2, r8
  call fn_298e0
  jne r0, 0x0, jmp_2f320

jmp_2f2f0:
  stxdw [r6+0x10], r7
  stxdw [r6+0x8], r8
  mov64 r1, 0x1
  ja jmp_2f338

jmp_2f310:
  mov64 r7, 0x0
  mov64 r0, r8

jmp_2f320:
  stxdw [r6+0x10], r7
  stxdw [r6+0x8], r0
  mov64 r1, 0x0

jmp_2f338:
  stxdw [r6+0x0], r1
  exit

fn_2f348:
  mov64 r6, r1
  ldxdw r4, [r6+0x0]
  mov64 r3, r4
  add64 r3, 0x1
  mov64 r1, 0x0
  mov64 r5, 0x1
  jeq r3, 0x0, jmp_2f388
  mov64 r5, 0x0

jmp_2f388:
  and64 r5, 0x1
  jne r5, 0x0, jmp_2f488
  mov64 r7, r4
  lsh64 r7, 0x1
  jgt r7, r3, jmp_2f3b8
  mov64 r7, r3

jmp_2f3b8:
  mov64 r2, 0x1
  lddw r3, 0x2aaaaaaaaaaaaab
  jgt r3, r7, jmp_2f3e0
  mov64 r2, 0x0

jmp_2f3e0:
  jgt r7, 0x4, jmp_2f3f0
  mov64 r7, 0x4

jmp_2f3f0:
  lsh64 r2, 0x3
  mov64 r3, r7
  mul64 r3, 0x30
  jeq r4, 0x0, jmp_2f438
  ldxdw r1, [r6+0x8]
  mul64 r4, 0x30
  stxdw [r10-0x8], r4
  stxdw [r10-0x18], r1
  mov64 r1, 0x8

jmp_2f438:
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  call fn_2f208
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_2f490
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_2f488:
  call fn_379f0

jmp_2f490:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_2f4b0:
  stxdw [r10-0x70], r1
  stxdw [r10-0x38], r2
  ldxdw r2, [r2+0x0]
  jne r2, 0x0, jmp_2f578
  mov64 r1, 0x0
  stxdw [r10-0x10], r1
  stxdw [r10-0x20], r2
  mov64 r6, 0x8
  stxdw [r10-0x18], r6

jmp_2f4f8:
  ldxdw r3, [r10-0x38]
  add64 r3, r6
  ldxdw r1, [r3+0x0]
  ldxdw r2, [r10-0x10]
  ldxdw r4, [r10-0x70]
  stxdw [r4+0x10], r2
  ldxdw r2, [r10-0x18]
  stxdw [r4+0x8], r2
  ldxdw r2, [r10-0x20]
  stxdw [r4+0x0], r2
  stxdw [r4+0x28], r1
  add64 r3, 0x8
  stxdw [r4+0x20], r3
  add64 r3, r1
  stxdw [r4+0x18], r3
  exit

jmp_2f578:
  mov64 r8, 0x0
  mov64 r7, r2
  mul64 r7, 0x30
  lddw r1, 0x2aaaaaaaaaaaaaa
  stxdw [r10-0x60], r2
  jgt r2, r1, jmp_2fba0
  mov64 r8, 0x8
  mov64 r1, r7
  mov64 r2, 0x8
  call fn_298e0
  jeq r0, 0x0, jmp_2fba0
  stxdw [r10-0x18], r0
  ldxdw r4, [r10-0x60]
  stxdw [r10-0x20], r4
  mov64 r6, 0x8
  mov64 r1, 0x0
  stxdw [r10-0x10], r1
  mov64 r2, 0x0
  mov64 r3, 0x0
  ja jmp_2f6f8

jmp_2f620:
  mov64 r1, r2
  mul64 r1, 0x30
  mov64 r3, r0
  add64 r3, r1
  ldxdw r1, [r10-0x58]
  stxb [r3+0x2a], r1
  ldxdw r1, [r10-0x50]
  stxb [r3+0x29], r1
  ldxdw r1, [r10-0x48]
  stxb [r3+0x28], r1
  ldxdw r1, [r10-0x40]
  stxdw [r3+0x20], r1
  stxdw [r3+0x18], r5
  stxdw [r3+0x10], r9
  stxdw [r3+0x8], r7
  stxdw [r3+0x0], r8
  ldxw r1, [r10-0x5]
  stxw [r3+0x2b], r1
  ldxb r1, [r10-0x1]
  stxb [r3+0x2f], r1

jmp_2f6c0:
  add64 r2, 0x1
  stxdw [r10-0x10], r2
  ldxdw r3, [r10-0x28]
  add64 r3, 0x1
  add64 r6, 0x8
  jgt r4, r3, jmp_2f6f8
  ja jmp_2f4f8

jmp_2f6f8:
  ldxdw r8, [r10-0x38]
  add64 r8, r6
  ldxb r1, [r8+0x0]
  stxdw [r10-0x28], r3
  jeq r1, 0xff, jmp_2f898
  jgt r2, r1, jmp_2f740
  lddw r3, data_3670
  call fn_3ffc8

jmp_2f740:
  mul64 r1, 0x30
  mov64 r5, r0
  add64 r5, r1
  ldxdw r7, [r5+0x8]
  ldxdw r1, [r7+0x0]
  add64 r1, 0x1
  mov64 r3, 0x1
  jeq r1, 0x0, jmp_2f788
  mov64 r3, 0x0

jmp_2f788:
  ldxdw r8, [r5+0x0]
  stxdw [r7+0x0], r1
  jne r3, 0x1, jmp_2f7a8

jmp_2f7a0:
  call abort

jmp_2f7a8:
  ldxdw r9, [r5+0x10]
  ldxdw r1, [r9+0x0]
  add64 r1, 0x1
  mov64 r3, 0x1
  jeq r1, 0x0, jmp_2f7d8
  mov64 r3, 0x0

jmp_2f7d8:
  stxdw [r9+0x0], r1
  jne r3, 0x1, jmp_2f7f0
  ja jmp_2f7a0

jmp_2f7f0:
  ldxb r1, [r5+0x2a]
  stxdw [r10-0x58], r1
  ldxb r1, [r5+0x29]
  stxdw [r10-0x50], r1
  ldxb r1, [r5+0x28]
  stxdw [r10-0x48], r1
  ldxdw r1, [r5+0x20]
  stxdw [r10-0x40], r1
  ldxdw r5, [r5+0x18]
  ldxdw r1, [r10-0x20]
  jne r2, r1, jmp_2f620
  mov64 r1, r10
  add64 r1, -0x20
  stxdw [r10-0x30], r2
  stxdw [r10-0x68], r5
  call fn_2f348
  ldxdw r5, [r10-0x68]
  ldxdw r2, [r10-0x30]
  ldxdw r4, [r10-0x60]
  ldxdw r0, [r10-0x18]
  ja jmp_2f620

jmp_2f898:
  stxdw [r10-0x30], r2
  ldxb r1, [r8+0x3]
  stxdw [r10-0x50], r1
  ldxb r1, [r8+0x2]
  stxdw [r10-0x40], r1
  ldxb r1, [r8+0x1]
  stxdw [r10-0x48], r1
  mov64 r1, 0x20
  mov64 r2, 0x8
  call fn_298e0
  jne r0, 0x0, jmp_2f908
  mov64 r1, 0x8
  mov64 r2, 0x20
  call fn_37a08

jmp_2f908:
  mov64 r1, 0x0
  stxdw [r0+0x10], r1
  mov64 r1, 0x1
  stxdw [r0+0x8], r1
  stxdw [r0+0x0], r1
  mov64 r1, r8
  add64 r1, 0x48
  stxdw [r10-0x58], r0
  stxdw [r0+0x18], r1
  ldxdw r9, [r8+0x50]
  stxw [r8+0x4], r9
  mov64 r1, 0x28
  mov64 r2, 0x8
  call fn_298e0
  mov64 r7, r0
  jne r7, 0x0, jmp_2f9a0
  mov64 r1, 0x8
  mov64 r2, 0x28
  call fn_37a08

jmp_2f9a0:
  ldxdw r1, [r10-0x50]
  mov64 r3, r1
  mov64 r1, 0x1
  mov64 r0, 0x1
  ldxdw r4, [r10-0x60]
  ldxdw r2, [r10-0x30]
  jne r3, 0x0, jmp_2f9e0
  mov64 r0, 0x0

jmp_2f9e0:
  ldxdw r3, [r10-0x40]
  mov64 r5, 0x1
  stxdw [r10-0x40], r5
  jne r3, 0x0, jmp_2fa10
  mov64 r3, 0x0
  stxdw [r10-0x40], r3

jmp_2fa10:
  ldxdw r3, [r10-0x48]
  mov64 r5, 0x0
  stxdw [r7+0x10], r5
  mov64 r5, 0x1
  jne r3, 0x0, jmp_2fa40
  mov64 r5, 0x0

jmp_2fa40:
  stxdw [r10-0x48], r0
  stxdw [r7+0x8], r1
  stxdw [r7+0x0], r1
  mov64 r1, r8
  add64 r1, 0x58
  stxdw [r7+0x18], r1
  stxdw [r7+0x20], r9
  add64 r6, r9
  mov64 r9, r8
  add64 r9, 0x8
  add64 r8, 0x28
  add64 r6, 0x285f
  and64 r6, -0x8
  ldxdw r1, [r10-0x38]
  add64 r1, r6
  ldxdw r1, [r1+0x0]
  stxdw [r10-0x50], r1
  ldxdw r1, [r10-0x20]
  jne r2, r1, jmp_2fb10
  mov64 r1, r10
  add64 r1, -0x20
  stxdw [r10-0x68], r5
  call fn_2f348
  ldxdw r5, [r10-0x68]
  ldxdw r2, [r10-0x30]
  ldxdw r4, [r10-0x60]

jmp_2fb10:
  mov64 r1, r2
  mul64 r1, 0x30
  ldxdw r0, [r10-0x18]
  mov64 r3, r0
  add64 r3, r1
  ldxdw r1, [r10-0x48]
  stxb [r3+0x2a], r1
  ldxdw r1, [r10-0x40]
  stxb [r3+0x29], r1
  stxb [r3+0x28], r5
  ldxdw r1, [r10-0x50]
  stxdw [r3+0x20], r1
  stxdw [r3+0x18], r8
  stxdw [r3+0x10], r7
  ldxdw r1, [r10-0x58]
  stxdw [r3+0x8], r1
  stxdw [r3+0x0], r9
  ja jmp_2f6c0

jmp_2fba0:
  mov64 r1, r8
  mov64 r2, r7
  call fn_379f0

fn_2fbb8:
  mov64 r9, r4
  stxdw [r10-0x78], r3
  mov64 r3, r1
  mov64 r0, 0x1
  ldxdw r1, [r5-0xff8]
  stxdw [r10-0x80], r1
  ldxdw r1, [r5-0x1000]
  stxdw [r10-0x88], r1
  stxdw [r10-0x58], r2
  ldxdw r1, [r2+0x10]
  mov64 r2, 0x1
  stxdw [r10-0x70], r2
  stxdw [r10-0x60], r1
  stxdw [r10-0x68], r3
  jeq r1, 0x0, jmp_2fd70
  stxdw [r10-0x90], r9
  mov64 r7, 0x0
  ldxdw r2, [r10-0x60]
  mov64 r6, r2
  mul64 r6, 0x22
  lddw r1, 0x3c3c3c3c3c3c3c3
  jgt r2, r1, jmp_2ff60
  ldxdw r1, [r10-0x58]
  ldxdw r8, [r1+0x8]
  mov64 r7, 0x1
  mov64 r1, r6
  mov64 r2, 0x1
  call fn_298e0
  jeq r0, 0x0, jmp_2ff60
  stxdw [r10-0x70], r0
  mov64 r1, r0
  add64 r1, 0x21
  ldxdw r2, [r10-0x60]

jmp_2fcc8:
  jeq r6, 0x0, jmp_2fd58
  ldxdw r3, [r8+0x0]
  ldxdw r4, [r8+0x8]
  ldxdw r5, [r8+0x10]
  ldxdw r0, [r8+0x18]
  ldxb r9, [r8+0x21]
  ldxb r7, [r8+0x20]
  stxb [r1-0x1], r7
  stxb [r1+0x0], r9
  stxdw [r1-0x9], r0
  stxdw [r1-0x11], r5
  stxdw [r1-0x19], r4
  stxdw [r1-0x21], r3
  add64 r1, 0x22
  add64 r6, -0x22
  add64 r8, 0x22
  add64 r2, -0x1
  jne r2, 0x0, jmp_2fcc8

jmp_2fd58:
  ldxdw r3, [r10-0x68]
  ldxdw r9, [r10-0x90]
  mov64 r0, 0x1

jmp_2fd70:
  ldxdw r1, [r10-0x58]
  ldxdw r7, [r1+0x20]
  ldxdw r6, [r1+0x28]
  jeq r6, 0x0, jmp_2fdc8
  mov64 r8, 0x0
  jsgt r8, r6, jmp_2ff78
  mov64 r8, 0x1
  mov64 r1, r6
  mov64 r2, 0x1
  call fn_298e0
  jeq r0, 0x0, jmp_2ff78

jmp_2fdc8:
  ldxdw r8, [r10-0x58]
  add64 r8, 0x30
  mov64 r1, r0
  mov64 r2, r7
  mov64 r3, r6
  mov64 r7, r0
  call fn_490d0
  stxdw [r10-0x28], r6
  stxdw [r10-0x30], r6
  stxdw [r10-0x38], r7
  ldxdw r1, [r10-0x60]
  stxdw [r10-0x40], r1
  stxdw [r10-0x48], r1
  ldxdw r1, [r10-0x70]
  stxdw [r10-0x50], r1
  ldxdw r1, [r8+0x0]
  stxdw [r10-0x20], r1
  ldxdw r1, [r8+0x8]
  stxdw [r10-0x18], r1
  ldxdw r1, [r8+0x10]
  stxdw [r10-0x10], r1
  ldxdw r1, [r8+0x18]
  stxdw [r10-0x8], r1
  mov64 r1, r10
  add64 r1, -0x50
  ldxdw r2, [r10-0x78]
  mov64 r3, r9
  ldxdw r4, [r10-0x88]
  ldxdw r5, [r10-0x80]
  call sol_invoke_signed_rust
  jne r0, 0x0, jmp_2fee8
  lddw r1, -0x7fffffffffffffe6
  ldxdw r2, [r10-0x68]
  stxdw [r2+0x0], r1
  ja jmp_2ff00

jmp_2fee8:
  ldxdw r1, [r10-0x68]
  mov64 r2, r0
  call fn_30880

jmp_2ff00:
  ldxdw r2, [r10-0x48]
  jeq r2, 0x0, jmp_2ff30
  ldxdw r1, [r10-0x50]
  mul64 r2, 0x22
  mov64 r3, 0x1
  call fn_299b0

jmp_2ff30:
  ldxdw r2, [r10-0x30]
  jeq r2, 0x0, jmp_2ff58
  ldxdw r1, [r10-0x38]
  mov64 r3, 0x1
  call fn_299b0

jmp_2ff58:
  exit

jmp_2ff60:
  mov64 r1, r7
  mov64 r2, r6
  call fn_379f0

jmp_2ff78:
  mov64 r1, r8
  mov64 r2, r6
  call fn_379f0

fn_2ff90:
  mov64 r6, r1
  mov64 r7, r10
  add64 r7, -0x440
  mov64 r9, 0x0
  mov64 r8, 0x400
  mov64 r1, r7
  mov64 r2, 0x0
  mov64 r3, 0x400
  call fn_493f8
  stxdw [r10-0x28], r9
  stxdw [r10-0x30], r9
  stxdw [r10-0x38], r9
  stxdw [r10-0x40], r9
  mov64 r3, r10
  add64 r3, -0x40
  mov64 r1, r7
  mov64 r2, 0x400
  call sol_get_return_data
  mov64 r7, r0
  lddw r2, -0x8000000000000000
  mov64 r1, 0x20
  jeq r7, 0x0, jmp_30160
  ldxdw r1, [r10-0x28]
  stxdw [r10-0x8], r1
  ldxdw r1, [r10-0x30]
  stxdw [r10-0x10], r1
  ldxdw r1, [r10-0x38]
  stxdw [r10-0x18], r1
  ldxdw r1, [r10-0x40]
  stxdw [r10-0x20], r1
  jgt r8, r7, jmp_30098
  mov64 r7, 0x400

jmp_30098:
  mov64 r1, r7
  mov64 r2, 0x1
  call fn_298e0
  mov64 r8, r0
  jne r8, 0x0, jmp_300d8
  mov64 r1, 0x1
  mov64 r2, r7
  call fn_379f0

jmp_300d8:
  mov64 r2, r10
  add64 r2, -0x440
  mov64 r1, r8
  mov64 r3, r7
  call fn_490d0
  ldxdw r1, [r10-0x20]
  stxdw [r6+0x0], r1
  ldxdw r1, [r10-0x18]
  stxdw [r6+0x8], r1
  ldxdw r1, [r10-0x10]
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0x8]
  stxdw [r6+0x18], r1
  stxdw [r6+0x28], r8
  stxdw [r6+0x20], r7
  mov64 r1, 0x30
  mov64 r2, r7

jmp_30160:
  add64 r6, r1
  stxdw [r6+0x0], r2
  exit

fn_30178:
  ldxdw r1, [r1+0x8]
  ldxdw r2, [r1+0x10]
  lddw r3, 0x7ffffffffffffffe
  jgt r2, r3, jmp_301d8
  mov64 r3, r2
  add64 r3, 0x1
  stxdw [r1+0x10], r3
  ldxdw r3, [r1+0x18]
  ldxdw r0, [r3+0x0]
  stxdw [r1+0x10], r2
  exit

jmp_301d8:
  lddw r1, data_3688
  call fn_3f090

fn_301f0:
  ldxdw r1, [r1+0x10]
  ldxdw r2, [r1+0x10]
  lddw r3, 0x7ffffffffffffffe
  jgt r2, r3, jmp_30240
  ldxdw r1, [r1+0x20]
  mov64 r0, 0x1
  jeq r1, 0x0, jmp_30238
  mov64 r0, 0x0

jmp_30238:
  exit

jmp_30240:
  lddw r1, data_36a0
  call fn_3f090

fn_30258:
  lddw r3, -0x7ffffffffffffff5
  ldxdw r2, [r2+0x8]
  ldxdw r4, [r2+0x10]
  lddw r5, 0x7ffffffffffffffe
  jgt r4, r5, jmp_302d8
  mov64 r3, r2
  add64 r3, 0x10
  add64 r4, 0x1
  stxdw [r2+0x10], r4
  stxdw [r1+0x10], r3
  add64 r2, 0x18
  stxdw [r1+0x8], r2
  lddw r3, -0x7fffffffffffffe6

jmp_302d8:
  stxdw [r1+0x0], r3
  exit

fn_302e8:
  lddw r3, -0x7ffffffffffffff5
  ldxdw r2, [r2+0x8]
  ldxdw r4, [r2+0x10]
  jne r4, 0x0, jmp_30358
  mov64 r3, r2
  add64 r3, 0x10
  mov64 r4, -0x1
  stxdw [r2+0x10], r4
  stxdw [r1+0x10], r3
  add64 r2, 0x18
  stxdw [r1+0x8], r2
  lddw r3, -0x7fffffffffffffe6

jmp_30358:
  stxdw [r1+0x0], r3
  exit

fn_30368:
  lddw r3, -0x7ffffffffffffff5
  ldxdw r2, [r2+0x10]
  ldxdw r4, [r2+0x10]
  lddw r5, 0x7ffffffffffffffe
  jgt r4, r5, jmp_303e8
  mov64 r3, r2
  add64 r3, 0x10
  add64 r4, 0x1
  stxdw [r2+0x10], r4
  stxdw [r1+0x10], r3
  add64 r2, 0x18
  stxdw [r1+0x8], r2
  lddw r3, -0x7fffffffffffffe6

jmp_303e8:
  stxdw [r1+0x0], r3
  exit

fn_303f8:
  lddw r3, -0x7ffffffffffffff5
  ldxdw r2, [r2+0x10]
  ldxdw r4, [r2+0x10]
  jne r4, 0x0, jmp_30468
  mov64 r3, r2
  add64 r3, 0x10
  mov64 r4, -0x1
  stxdw [r2+0x10], r4
  stxdw [r1+0x10], r3
  add64 r2, 0x18
  stxdw [r1+0x8], r2
  lddw r3, -0x7fffffffffffffe6

jmp_30468:
  stxdw [r1+0x0], r3
  exit

fn_30478:
  ldxdw r2, [r1+0x0]
  lddw r4, -0x8000000000000000
  mov64 r3, r2
  xor64 r3, r4
  mov64 r5, 0x1a
  mov64 r4, r3
  jgt r5, r3, jmp_304c0
  mov64 r4, 0xe

jmp_304c0:
  jsgt r4, 0xc, jmp_30510
  jsgt r4, 0x5, jmp_30548
  jsgt r4, 0x2, jmp_305f8
  jeq r4, 0x0, jmp_306b8
  lddw r6, 0x200000000
  jeq r4, 0x1, jmp_30800
  lddw r6, 0x300000000
  ja jmp_30800

jmp_30510:
  jsgt r4, 0x12, jmp_30578
  jsgt r4, 0xf, jmp_30620
  jeq r4, 0xd, jmp_306e8
  jeq r4, 0xe, jmp_307c0
  lddw r6, 0x1000000000
  ja jmp_30800

jmp_30548:
  jsgt r4, 0x8, jmp_305a8
  jeq r4, 0x6, jmp_30688
  jeq r4, 0x7, jmp_30730
  lddw r6, 0x900000000
  ja jmp_30800

jmp_30578:
  jsgt r4, 0x15, jmp_305d0
  jeq r4, 0x13, jmp_306a0
  jeq r4, 0x14, jmp_30748
  lddw r6, 0x1600000000
  ja jmp_30800

jmp_305a8:
  jsgt r4, 0xa, jmp_30648
  jeq r4, 0x9, jmp_30760
  lddw r6, 0xb00000000
  ja jmp_30800

jmp_305d0:
  jsgt r4, 0x17, jmp_30668
  jeq r4, 0x16, jmp_30778
  lddw r6, 0x1800000000
  ja jmp_30800

jmp_305f8:
  jeq r4, 0x3, jmp_30700
  jeq r4, 0x4, jmp_307d8
  lddw r6, 0x600000000
  ja jmp_30800

jmp_30620:
  jeq r4, 0x10, jmp_30718
  jeq r4, 0x11, jmp_307f0
  lddw r6, 0x1300000000
  ja jmp_30800

jmp_30648:
  jeq r4, 0xb, jmp_30790
  lddw r6, 0xd00000000
  ja jmp_30800

jmp_30668:
  jeq r4, 0x18, jmp_307a8
  lddw r6, 0x1a00000000
  ja jmp_30800

jmp_30688:
  lddw r6, 0x700000000
  ja jmp_30800

jmp_306a0:
  lddw r6, 0x1400000000
  ja jmp_30800

jmp_306b8:
  lddw r6, 0x100000000
  ldxw r4, [r1+0x8]
  jeq r4, 0x0, jmp_30800
  mov64 r6, r4
  ja jmp_30800

jmp_306e8:
  lddw r6, 0xe00000000
  ja jmp_30800

jmp_30700:
  lddw r6, 0x400000000
  ja jmp_30800

jmp_30718:
  lddw r6, 0x1100000000
  ja jmp_30800

jmp_30730:
  lddw r6, 0x800000000
  ja jmp_30800

jmp_30748:
  lddw r6, 0x1500000000
  ja jmp_30800

jmp_30760:
  lddw r6, 0xa00000000
  ja jmp_30800

jmp_30778:
  lddw r6, 0x1700000000
  ja jmp_30800

jmp_30790:
  lddw r6, 0xc00000000
  ja jmp_30800

jmp_307a8:
  lddw r6, 0x1900000000
  ja jmp_30800

jmp_307c0:
  lddw r6, 0xf00000000
  ja jmp_30800

jmp_307d8:
  lddw r6, 0x500000000
  ja jmp_30800

jmp_307f0:
  lddw r6, 0x1200000000

jmp_30800:
  mov64 r5, 0x1
  mov64 r0, 0x1a
  mov64 r4, 0x1
  jgt r0, r3, jmp_30828
  mov64 r4, 0x0

jmp_30828:
  jne r3, 0xe, jmp_30838
  mov64 r5, 0x0

jmp_30838:
  jeq r2, 0x0, jmp_30870
  and64 r4, r5
  and64 r4, 0x1
  jne r4, 0x0, jmp_30870
  ldxdw r1, [r1+0x8]
  mov64 r3, 0x1
  call fn_299b0

jmp_30870:
  mov64 r0, r6
  exit

fn_30880:
  lddw r4, -0x100000000
  mov64 r3, r2
  add64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x20
  lsh64 r3, 0x20
  or64 r3, r4
  jsgt r3, 0xc, jmp_30910
  jsgt r3, 0x5, jmp_30958
  jsgt r3, 0x2, jmp_30a48
  jeq r3, 0x0, jmp_30bc8
  jeq r3, 0x1, jmp_30c70
  jeq r3, 0x2, jmp_308f8
  ja jmp_30af8

jmp_308f8:
  lddw r2, -0x7ffffffffffffffe
  ja jmp_30cf8

jmp_30910:
  jsgt r3, 0x12, jmp_30998
  jsgt r3, 0xf, jmp_30a80
  jeq r3, 0xd, jmp_30bf8
  jeq r3, 0xe, jmp_30c88
  jeq r3, 0xf, jmp_30940
  ja jmp_30af8

jmp_30940:
  lddw r2, -0x7ffffffffffffff1
  ja jmp_30cf8

jmp_30958:
  jsgt r3, 0x8, jmp_309d8
  jeq r3, 0x6, jmp_30b98
  jeq r3, 0x7, jmp_30c40
  jeq r3, 0x8, jmp_30980
  ja jmp_30af8

jmp_30980:
  lddw r2, -0x7ffffffffffffff8
  ja jmp_30cf8

jmp_30998:
  jsgt r3, 0x15, jmp_30a10
  jeq r3, 0x13, jmp_30bb0
  jeq r3, 0x14, jmp_30c58
  jeq r3, 0x15, jmp_309c0
  ja jmp_30af8

jmp_309c0:
  lddw r2, -0x7fffffffffffffeb
  ja jmp_30cf8

jmp_309d8:
  jsgt r3, 0xa, jmp_30ab8
  jeq r3, 0x9, jmp_30b20
  jeq r3, 0xa, jmp_309f8
  ja jmp_30af8

jmp_309f8:
  lddw r2, -0x7ffffffffffffff6
  ja jmp_30cf8

jmp_30a10:
  jsgt r3, 0x17, jmp_30ae8
  jeq r3, 0x16, jmp_30b38
  jeq r3, 0x17, jmp_30a30
  ja jmp_30af8

jmp_30a30:
  lddw r2, -0x7fffffffffffffe9
  ja jmp_30cf8

jmp_30a48:
  jeq r3, 0x3, jmp_30c10
  jeq r3, 0x4, jmp_30cd0
  jeq r3, 0x5, jmp_30a68
  ja jmp_30af8

jmp_30a68:
  lddw r2, -0x7ffffffffffffffb
  ja jmp_30cf8

jmp_30a80:
  jeq r3, 0x10, jmp_30c28
  jeq r3, 0x11, jmp_30ce8
  jeq r3, 0x12, jmp_30aa0
  ja jmp_30af8

jmp_30aa0:
  lddw r2, -0x7fffffffffffffee
  ja jmp_30cf8

jmp_30ab8:
  jeq r3, 0xb, jmp_30b50
  jeq r3, 0xc, jmp_30ad0
  ja jmp_30af8

jmp_30ad0:
  lddw r2, -0x7ffffffffffffff4
  ja jmp_30cf8

jmp_30ae8:
  jeq r3, 0x18, jmp_30b68
  jeq r3, 0x19, jmp_30b80

jmp_30af8:
  lddw r3, -0x8000000000000000
  stxdw [r1+0x0], r3
  stxw [r1+0x8], r2
  ja jmp_30d00

jmp_30b20:
  lddw r2, -0x7ffffffffffffff7
  ja jmp_30cf8

jmp_30b38:
  lddw r2, -0x7fffffffffffffea
  ja jmp_30cf8

jmp_30b50:
  lddw r2, -0x7ffffffffffffff5
  ja jmp_30cf8

jmp_30b68:
  lddw r2, -0x7fffffffffffffe8
  ja jmp_30cf8

jmp_30b80:
  lddw r2, -0x7fffffffffffffe7
  ja jmp_30cf8

jmp_30b98:
  lddw r2, -0x7ffffffffffffffa
  ja jmp_30cf8

jmp_30bb0:
  lddw r2, -0x7fffffffffffffed
  ja jmp_30cf8

jmp_30bc8:
  lddw r2, -0x8000000000000000
  stxdw [r1+0x0], r2
  mov64 r2, 0x0
  stxw [r1+0x8], r2
  ja jmp_30d00

jmp_30bf8:
  lddw r2, -0x7ffffffffffffff3
  ja jmp_30cf8

jmp_30c10:
  lddw r2, -0x7ffffffffffffffd
  ja jmp_30cf8

jmp_30c28:
  lddw r2, -0x7ffffffffffffff0
  ja jmp_30cf8

jmp_30c40:
  lddw r2, -0x7ffffffffffffff9
  ja jmp_30cf8

jmp_30c58:
  lddw r2, -0x7fffffffffffffec
  ja jmp_30cf8

jmp_30c70:
  lddw r2, -0x7fffffffffffffff
  ja jmp_30cf8

jmp_30c88:
  mov64 r7, r1
  mov64 r6, 0x7
  mov64 r1, 0x7
  mov64 r2, 0x1
  call fn_298e0
  jne r0, 0x0, jmp_30d08
  mov64 r1, 0x1
  mov64 r2, 0x7
  call fn_379f0

jmp_30cd0:
  lddw r2, -0x7ffffffffffffffc
  ja jmp_30cf8

jmp_30ce8:
  lddw r2, -0x7fffffffffffffef

jmp_30cf8:
  stxdw [r1+0x0], r2

jmp_30d00:
  exit

jmp_30d08:
  mov64 r1, 0x6e776f6e
  stxw [r0+0x3], r1
  mov64 r1, 0x6e6b6e55
  stxw [r0+0x0], r1
  stxdw [r7+0x8], r0
  stxdw [r7+0x10], r6
  stxdw [r7+0x0], r6
  ja jmp_30d00

fn_30d48:
  stxdw [r10-0x48], r2
  mov64 r2, 0x0
  stxdw [r10-0x20], r2
  lddw r2, data_0468
  stxdw [r10-0x40], r2
  mov64 r2, 0x1
  stxdw [r10-0x38], r2
  stxdw [r10-0x28], r2
  mov64 r2, r10
  add64 r2, -0x10
  stxdw [r10-0x30], r2
  lddw r2, 0x6835
  stxdw [r10-0x8], r2
  mov64 r2, r10
  add64 r2, -0x48
  stxdw [r10-0x10], r2
  mov64 r2, r10
  add64 r2, -0x40
  call fn_37aa0
  ldxdw r6, [r10-0x48]
  mov64 r1, r6
  and64 r1, 0x3
  mov64 r2, r1
  add64 r2, -0x2
  mov64 r3, 0x2
  jgt r3, r2, jmp_30ea8
  jeq r1, 0x0, jmp_30ea8
  ldxdw r7, [r6-0x1]
  ldxdw r8, [r6+0x7]
  ldxdw r2, [r8+0x0]
  mov64 r1, r7
  callx r2
  add64 r6, -0x1
  ldxdw r2, [r8+0x8]
  jeq r2, 0x0, jmp_30e88
  ldxdw r3, [r8+0x10]
  mov64 r1, r7
  call fn_299b0

jmp_30e88:
  mov64 r1, r6
  mov64 r2, 0x18
  mov64 r3, 0x8
  call fn_299b0

jmp_30ea8:
  exit

fn_30eb0:
  mov64 r9, r1
  ldxdw r6, [r3+0x0]
  lddw r1, -0x8000000000000000
  xor64 r6, r1
  mov64 r1, 0xd
  jgt r1, r6, jmp_30ef0
  mov64 r6, 0x3

jmp_30ef0:
  stxdw [r10-0x20], r3
  stxdw [r10-0x28], r4
  stxdw [r10-0x30], r2
  jsgt r6, 0x5, jmp_30f40
  jsgt r6, 0x2, jmp_30f90
  mov64 r7, 0x34
  jeq r6, 0x0, jmp_31030
  jeq r6, 0x1, jmp_30f80

jmp_30f30:
  mov64 r7, 0xc
  ja jmp_31030

jmp_30f40:
  jsgt r6, 0x8, jmp_30f60
  jeq r6, 0x6, jmp_30f80
  jeq r6, 0x7, jmp_30f80
  ja jmp_30f30

jmp_30f60:
  jsgt r6, 0xa, jmp_30fb8
  jeq r6, 0x9, jmp_30fd0
  mov64 r1, 0x4c
  ja jmp_30fe8

jmp_30f80:
  mov64 r7, 0x24
  ja jmp_31030

jmp_30f90:
  mov64 r1, 0x5c
  mov64 r5, 0x10
  jeq r6, 0x3, jmp_30ff0
  jeq r6, 0x4, jmp_30fc0
  ja jmp_30f30

jmp_30fb8:
  jeq r6, 0xb, jmp_30fe0

jmp_30fc0:
  mov64 r7, 0x4
  ja jmp_31030

jmp_30fd0:
  mov64 r1, 0x54
  ja jmp_30fe8

jmp_30fe0:
  mov64 r1, 0x34

jmp_30fe8:
  mov64 r5, 0x18

jmp_30ff0:
  add64 r3, r5
  ldxdw r7, [r3+0x0]
  add64 r7, r1
  mov64 r0, 0x1
  mov64 r1, 0x0
  jeq r7, 0x0, jmp_31060
  mov64 r8, 0x0
  jsgt r8, r7, jmp_32870

jmp_31030:
  mov64 r8, 0x1
  mov64 r1, r7
  mov64 r2, 0x1
  call fn_298e0
  jeq r0, 0x0, jmp_32870
  mov64 r1, r7

jmp_31060:
  mov64 r2, 0x0
  stxdw [r10-0x8], r2
  stxdw [r10-0x10], r0
  stxdw [r10-0x18], r1
  jsgt r6, 0x5, jmp_31188
  jsgt r6, 0x2, jmp_313c8
  jeq r6, 0x0, jmp_315e0
  jeq r6, 0x1, jmp_32510
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_310e0
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_310e0:
  add64 r0, r7
  mov64 r1, 0x2
  stxw [r0+0x0], r1
  add64 r7, 0x4
  stxdw [r10-0x8], r7
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  ldxdw r2, [r10-0x20]
  ldxdw r6, [r2+0x8]
  jgt r1, 0x7, jmp_31160

jmp_31130:
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x8
  call fn_32ee0
  ldxdw r7, [r10-0x8]

jmp_31160:
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxdw [r1+0x0], r6
  add64 r7, 0x8
  ja jmp_326a0

jmp_31188:
  jsgt r6, 0x8, jmp_31238
  jeq r6, 0x6, jmp_314b0
  jeq r6, 0x7, jmp_31c50
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_311e0
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_311e0:
  add64 r0, r7
  mov64 r1, 0x8
  stxw [r0+0x0], r1
  add64 r7, 0x4
  stxdw [r10-0x8], r7
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  ldxdw r2, [r10-0x20]
  ldxdw r6, [r2+0x8]
  jgt r1, 0x7, jmp_31160
  ja jmp_31130

jmp_31238:
  jsgt r6, 0xa, jmp_31478
  stxdw [r10-0x38], r9
  jeq r6, 0x9, jmp_31d80
  mov64 r6, 0x0
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_31270
  ja jmp_32768

jmp_31270:
  add64 r0, r7
  mov64 r1, 0xa
  stxw [r0+0x0], r1
  ldxdw r2, [r10-0x20]
  mov64 r8, r2
  add64 r8, 0x20
  add64 r7, 0x4
  stxdw [r10-0x8], r7
  ja jmp_31360

jmp_312b8:
  add64 r6, 0x1
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxb [r1+0x0], r9
  add64 r7, 0x1
  stxdw [r10-0x8], r7
  jne r6, 0x20, jmp_31360
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  ldxdw r8, [r2+0x18]
  ldxdw r2, [r2+0x10]
  jgt r1, 0x7, jmp_31f20
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r6, r2
  mov64 r2, r7
  mov64 r3, 0x8
  call fn_32ee0
  mov64 r2, r6
  ldxdw r7, [r10-0x8]
  ja jmp_31f20

jmp_31360:
  mov64 r1, r8
  add64 r1, r6
  ldxb r9, [r1+0x0]
  ldxdw r1, [r10-0x18]
  jne r1, r7, jmp_312b8
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x1
  call fn_32ee0
  ldxdw r2, [r10-0x20]
  ldxdw r7, [r10-0x8]
  ja jmp_312b8

jmp_313c8:
  jeq r6, 0x3, jmp_31810
  jeq r6, 0x4, jmp_32640
  mov64 r7, 0x0
  ldxdw r2, [r10-0x20]
  ldxdw r6, [r2+0x8]
  jgt r1, 0x3, jmp_31430
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, 0x0
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_31430:
  add64 r0, r7
  mov64 r1, 0x5
  stxw [r0+0x0], r1
  add64 r7, 0x4
  stxdw [r10-0x8], r7
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  jgt r1, 0x7, jmp_31160
  ja jmp_31130

jmp_31478:
  jeq r6, 0xb, jmp_32068
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_31498
  ja jmp_327a0

jmp_31498:
  add64 r0, r7
  mov64 r1, 0xc
  ja jmp_32690

jmp_314b0:
  mov64 r6, 0x0
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_314f8
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_314f8:
  ldxdw r4, [r10-0x20]
  add64 r4, 0x8
  add64 r0, r7
  mov64 r1, 0x6
  stxw [r0+0x0], r1
  add64 r7, 0x4
  stxdw [r10-0x8], r7
  ja jmp_31570

jmp_31538:
  add64 r6, 0x1
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxb [r1+0x0], r8
  add64 r7, 0x1
  stxdw [r10-0x8], r7
  jeq r6, 0x20, jmp_326a0

jmp_31570:
  mov64 r1, r4
  add64 r1, r6
  ldxb r8, [r1+0x0]
  ldxdw r1, [r10-0x18]
  jne r1, r7, jmp_31538
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x1
  mov64 r7, r4
  call fn_32ee0
  mov64 r4, r7
  ldxdw r7, [r10-0x8]
  ja jmp_31538

jmp_315e0:
  mov64 r6, 0x0
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_31628
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_31628:
  add64 r0, r7
  stxw [r0+0x0], r6
  add64 r7, 0x4
  stxdw [r10-0x8], r7
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  ldxdw r4, [r10-0x20]
  ldxdw r6, [r4+0x28]
  jgt r1, 0x7, jmp_316a8
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x8
  call fn_32ee0
  ldxdw r4, [r10-0x20]
  ldxdw r7, [r10-0x8]

jmp_316a8:
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxdw [r1+0x0], r6
  add64 r7, 0x8
  stxdw [r10-0x8], r7
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  ldxdw r6, [r4+0x30]
  jgt r1, 0x7, jmp_31728
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x8
  call fn_32ee0
  ldxdw r4, [r10-0x20]
  ldxdw r7, [r10-0x8]

jmp_31728:
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxdw [r1+0x0], r6
  mov64 r6, 0x0
  add64 r4, 0x8
  add64 r7, 0x8
  stxdw [r10-0x8], r7
  ja jmp_317a0

jmp_31768:
  add64 r6, 0x1
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxb [r1+0x0], r8
  add64 r7, 0x1
  stxdw [r10-0x8], r7
  jeq r6, 0x20, jmp_326a0

jmp_317a0:
  mov64 r1, r4
  add64 r1, r6
  ldxb r8, [r1+0x0]
  ldxdw r1, [r10-0x18]
  jne r1, r7, jmp_31768
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x1
  mov64 r7, r4
  call fn_32ee0
  mov64 r4, r7
  ldxdw r7, [r10-0x8]
  ja jmp_31768

jmp_31810:
  stxdw [r10-0x38], r9
  mov64 r6, 0x0
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_31860
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_31860:
  add64 r0, r7
  mov64 r1, 0x3
  stxw [r0+0x0], r1
  ldxdw r2, [r10-0x20]
  mov64 r8, r2
  add64 r8, 0x18
  add64 r7, 0x4
  stxdw [r10-0x8], r7
  ja jmp_31950

jmp_318a8:
  add64 r6, 0x1
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxb [r1+0x0], r9
  add64 r7, 0x1
  stxdw [r10-0x8], r7
  jne r6, 0x20, jmp_31950
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  ldxdw r6, [r2+0x10]
  ldxdw r2, [r2+0x8]
  jgt r1, 0x7, jmp_319b8
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r8, r2
  mov64 r2, r7
  mov64 r3, 0x8
  call fn_32ee0
  mov64 r2, r8
  ldxdw r7, [r10-0x8]
  ja jmp_319b8

jmp_31950:
  mov64 r1, r8
  add64 r1, r6
  ldxb r9, [r1+0x0]
  ldxdw r1, [r10-0x18]
  jne r1, r7, jmp_318a8
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x1
  call fn_32ee0
  ldxdw r2, [r10-0x20]
  ldxdw r7, [r10-0x8]
  ja jmp_318a8

jmp_319b8:
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxdw [r1+0x0], r6
  add64 r7, 0x8
  stxdw [r10-0x8], r7
  ldxdw r8, [r10-0x18]
  mov64 r1, r8
  sub64 r1, r7
  ldxdw r9, [r10-0x38]
  jge r1, r6, jmp_31a50
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r8, r2
  mov64 r2, r7
  mov64 r3, r6
  call fn_32ee0
  mov64 r2, r8
  ldxdw r8, [r10-0x18]
  ldxdw r7, [r10-0x8]

jmp_31a50:
  ldxdw r1, [r10-0x10]
  stxdw [r10-0x40], r1
  add64 r1, r7
  mov64 r3, r6
  call fn_490d0
  ldxdw r1, [r10-0x40]
  add64 r7, r6
  stxdw [r10-0x8], r7
  sub64 r8, r7
  ldxdw r4, [r10-0x20]
  ldxdw r6, [r4+0x38]
  jgt r8, 0x7, jmp_31af0
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x8
  call fn_32ee0
  ldxdw r4, [r10-0x20]
  ldxdw r1, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_31af0:
  add64 r1, r7
  stxdw [r1+0x0], r6
  add64 r7, 0x8
  stxdw [r10-0x8], r7
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  ldxdw r6, [r4+0x40]
  jgt r1, 0x7, jmp_31b68
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x8
  call fn_32ee0
  ldxdw r4, [r10-0x20]
  ldxdw r7, [r10-0x8]

jmp_31b68:
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxdw [r1+0x0], r6
  mov64 r6, 0x0
  add64 r4, 0x48
  add64 r7, 0x8
  stxdw [r10-0x8], r7
  ja jmp_31be0

jmp_31ba8:
  add64 r6, 0x1
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxb [r1+0x0], r8
  add64 r7, 0x1
  stxdw [r10-0x8], r7
  jeq r6, 0x20, jmp_326a0

jmp_31be0:
  mov64 r1, r4
  add64 r1, r6
  ldxb r8, [r1+0x0]
  ldxdw r1, [r10-0x18]
  jne r1, r7, jmp_31ba8
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x1
  mov64 r7, r4
  call fn_32ee0
  mov64 r4, r7
  ldxdw r7, [r10-0x8]
  ja jmp_31ba8

jmp_31c50:
  mov64 r6, 0x0
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_31c98
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_31c98:
  ldxdw r4, [r10-0x20]
  add64 r4, 0x8
  add64 r0, r7
  mov64 r1, 0x7
  stxw [r0+0x0], r1
  add64 r7, 0x4
  stxdw [r10-0x8], r7
  ja jmp_31d10

jmp_31cd8:
  add64 r6, 0x1
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxb [r1+0x0], r8
  add64 r7, 0x1
  stxdw [r10-0x8], r7
  jeq r6, 0x20, jmp_326a0

jmp_31d10:
  mov64 r1, r4
  add64 r1, r6
  ldxb r8, [r1+0x0]
  ldxdw r1, [r10-0x18]
  jne r1, r7, jmp_31cd8
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x1
  mov64 r7, r4
  call fn_32ee0
  mov64 r4, r7
  ldxdw r7, [r10-0x8]
  ja jmp_31cd8

jmp_31d80:
  mov64 r6, 0x0
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_31dc8
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_31dc8:
  add64 r0, r7
  mov64 r1, 0x9
  stxw [r0+0x0], r1
  ldxdw r2, [r10-0x20]
  mov64 r8, r2
  add64 r8, 0x20
  add64 r7, 0x4
  stxdw [r10-0x8], r7
  ja jmp_31eb8

jmp_31e10:
  add64 r6, 0x1
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxb [r1+0x0], r9
  add64 r7, 0x1
  stxdw [r10-0x8], r7
  jne r6, 0x20, jmp_31eb8
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  ldxdw r6, [r2+0x18]
  ldxdw r2, [r2+0x10]
  jgt r1, 0x7, jmp_32338
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r8, r2
  mov64 r2, r7
  mov64 r3, 0x8
  call fn_32ee0
  mov64 r2, r8
  ldxdw r7, [r10-0x8]
  ja jmp_32338

jmp_31eb8:
  mov64 r1, r8
  add64 r1, r6
  ldxb r9, [r1+0x0]
  ldxdw r1, [r10-0x18]
  jne r1, r7, jmp_31e10
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x1
  call fn_32ee0
  ldxdw r2, [r10-0x20]
  ldxdw r7, [r10-0x8]
  ja jmp_31e10

jmp_31f20:
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxdw [r1+0x0], r8
  add64 r7, 0x8
  stxdw [r10-0x8], r7
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  ldxdw r9, [r10-0x38]
  jge r1, r8, jmp_31f70
  ja jmp_327d8

jmp_31f70:
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  mov64 r3, r8
  call fn_490d0
  add64 r7, r8
  mov64 r6, 0x0
  ldxdw r4, [r10-0x20]
  add64 r4, 0x40
  stxdw [r10-0x8], r7
  ja jmp_31ff8

jmp_31fc0:
  add64 r6, 0x1
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxb [r1+0x0], r8
  add64 r7, 0x1
  stxdw [r10-0x8], r7
  jeq r6, 0x20, jmp_326a0

jmp_31ff8:
  mov64 r1, r4
  add64 r1, r6
  ldxb r8, [r1+0x0]
  ldxdw r1, [r10-0x18]
  jne r1, r7, jmp_31fc0
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x1
  mov64 r7, r4
  call fn_32ee0
  mov64 r4, r7
  ldxdw r7, [r10-0x8]
  ja jmp_31fc0

jmp_32068:
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_320a8
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_320a8:
  add64 r0, r7
  mov64 r1, 0xb
  stxw [r0+0x0], r1
  add64 r7, 0x4
  stxdw [r10-0x8], r7
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  ldxdw r2, [r10-0x20]
  ldxdw r6, [r2+0x20]
  jgt r1, 0x7, jmp_32130
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x8
  call fn_32ee0
  ldxdw r2, [r10-0x20]
  ldxdw r7, [r10-0x8]

jmp_32130:
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxdw [r1+0x0], r6
  add64 r7, 0x8
  stxdw [r10-0x8], r7
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  ldxdw r8, [r2+0x18]
  ldxdw r2, [r2+0x10]
  jgt r1, 0x7, jmp_321c0
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r6, r2
  mov64 r2, r7
  mov64 r3, 0x8
  call fn_32ee0
  mov64 r2, r6
  ldxdw r7, [r10-0x8]

jmp_321c0:
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxdw [r1+0x0], r8
  add64 r7, 0x8
  stxdw [r10-0x8], r7
  ldxdw r1, [r10-0x18]
  sub64 r1, r7
  jge r1, r8, jmp_32240
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r6, r2
  mov64 r2, r7
  mov64 r3, r8
  call fn_32ee0
  mov64 r2, r6
  ldxdw r7, [r10-0x8]

jmp_32240:
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  mov64 r3, r8
  call fn_490d0
  add64 r7, r8
  mov64 r6, 0x0
  ldxdw r4, [r10-0x20]
  add64 r4, 0x28
  stxdw [r10-0x8], r7
  ja jmp_322c8

jmp_32290:
  add64 r6, 0x1
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxb [r1+0x0], r8
  add64 r7, 0x1
  stxdw [r10-0x8], r7
  jeq r6, 0x20, jmp_326a0

jmp_322c8:
  mov64 r1, r4
  add64 r1, r6
  ldxb r8, [r1+0x0]
  ldxdw r1, [r10-0x18]
  jne r1, r7, jmp_32290
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x1
  mov64 r7, r4
  call fn_32ee0
  mov64 r4, r7
  ldxdw r7, [r10-0x8]
  ja jmp_32290

jmp_32338:
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxdw [r1+0x0], r6
  add64 r7, 0x8
  stxdw [r10-0x8], r7
  ldxdw r8, [r10-0x18]
  mov64 r1, r8
  sub64 r1, r7
  ldxdw r9, [r10-0x38]
  jge r1, r6, jmp_32390
  ja jmp_32820

jmp_32390:
  ldxdw r1, [r10-0x10]
  stxdw [r10-0x40], r1
  add64 r1, r7
  mov64 r3, r6
  call fn_490d0
  ldxdw r1, [r10-0x40]
  add64 r7, r6
  stxdw [r10-0x8], r7
  sub64 r8, r7
  ldxdw r4, [r10-0x20]
  ldxdw r6, [r4+0x40]
  jgt r8, 0x7, jmp_32430
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x8
  call fn_32ee0
  ldxdw r4, [r10-0x20]
  ldxdw r1, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_32430:
  add64 r1, r7
  stxdw [r1+0x0], r6
  mov64 r6, 0x0
  add64 r4, 0x48
  add64 r7, 0x8
  stxdw [r10-0x8], r7
  ja jmp_324a0

jmp_32468:
  add64 r6, 0x1
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxb [r1+0x0], r8
  add64 r7, 0x1
  stxdw [r10-0x8], r7
  jeq r6, 0x20, jmp_326a0

jmp_324a0:
  mov64 r1, r4
  add64 r1, r6
  ldxb r8, [r1+0x0]
  ldxdw r1, [r10-0x18]
  jne r1, r7, jmp_32468
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x1
  mov64 r7, r4
  call fn_32ee0
  mov64 r4, r7
  ldxdw r7, [r10-0x8]
  ja jmp_32468

jmp_32510:
  mov64 r6, 0x0
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_32558
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_32558:
  add64 r0, r7
  mov64 r1, 0x1
  stxw [r0+0x0], r1
  ldxdw r4, [r10-0x20]
  add64 r4, 0x8
  add64 r7, 0x4
  stxdw [r10-0x8], r7
  ja jmp_325d0

jmp_32598:
  add64 r6, 0x1
  ldxdw r1, [r10-0x10]
  add64 r1, r7
  stxb [r1+0x0], r8
  add64 r7, 0x1
  stxdw [r10-0x8], r7
  jeq r6, 0x20, jmp_326a0

jmp_325d0:
  mov64 r1, r4
  add64 r1, r6
  ldxb r8, [r1+0x0]
  ldxdw r1, [r10-0x18]
  jne r1, r7, jmp_32598
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, 0x1
  mov64 r7, r4
  call fn_32ee0
  mov64 r4, r7
  ldxdw r7, [r10-0x8]
  ja jmp_32598

jmp_32640:
  mov64 r7, 0x0
  jgt r1, 0x3, jmp_32680
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]

jmp_32680:
  add64 r0, r7
  mov64 r1, 0x4

jmp_32690:
  stxw [r0+0x0], r1
  add64 r7, 0x4

jmp_326a0:
  ldxdw r1, [r10-0x10]
  ldxdw r2, [r10-0x18]
  lddw r3, -0x8000000000000000
  jeq r2, r3, jmp_32888
  ldxdw r4, [r10-0x30]
  ldxdw r3, [r4+0x18]
  stxdw [r9+0x48], r3
  ldxdw r3, [r4+0x10]
  stxdw [r9+0x40], r3
  ldxdw r3, [r4+0x8]
  stxdw [r9+0x38], r3
  ldxdw r3, [r4+0x0]
  stxdw [r9+0x30], r3
  ldxdw r4, [r10-0x28]
  ldxdw r3, [r4+0x0]
  stxdw [r9+0x0], r3
  ldxdw r3, [r4+0x8]
  stxdw [r9+0x8], r3
  ldxdw r3, [r4+0x10]
  stxdw [r9+0x10], r3
  stxdw [r9+0x28], r7
  stxdw [r9+0x20], r1
  stxdw [r9+0x18], r2
  exit

jmp_32768:
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]
  ja jmp_31270

jmp_327a0:
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r3, 0x4
  call fn_32ee0
  ldxdw r0, [r10-0x10]
  ldxdw r7, [r10-0x8]
  ja jmp_31498

jmp_327d8:
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r6, r2
  mov64 r2, r7
  mov64 r3, r8
  call fn_32ee0
  mov64 r2, r6
  ldxdw r7, [r10-0x8]
  ja jmp_31f70

jmp_32820:
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r8, r2
  mov64 r2, r7
  mov64 r3, r6
  call fn_32ee0
  mov64 r2, r8
  ldxdw r8, [r10-0x18]
  ldxdw r7, [r10-0x8]
  ja jmp_32390

jmp_32870:
  mov64 r1, r8
  mov64 r2, r7
  call fn_379f0

jmp_32888:
  stxdw [r10-0x18], r1
  mov64 r3, r10
  add64 r3, -0x18
  lddw r1, str_0a5c
  mov64 r2, 0x2b
  lddw r4, data_36b8
  lddw r5, data_36d8
  call fn_40400
  ldxdw r1, [r1+0x0]
  ldxb r3, [r1+0x0]
  jne r3, 0x0, jmp_32928
  mov64 r1, r2
  lddw r2, str_0317
  mov64 r3, 0x4
  call fn_43d50
  ja jmp_32980

jmp_32928:
  add64 r1, 0x1
  stxdw [r10-0x8], r1
  mov64 r4, r10
  add64 r4, -0x8
  mov64 r1, r2
  lddw r2, str_0307
  mov64 r3, 0x4
  lddw r5, data_3730
  call fn_44028

jmp_32980:
  exit
  ldxdw r1, [r1+0x0]
  call fn_35f30
  exit
  mov64 r3, r2
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x10]
  ldxdw r1, [r1+0x8]
  call fn_44300
  exit
  ldxdw r1, [r1+0x0]
  ldxw r3, [r2+0x34]
  mov64 r4, r3
  and64 r4, 0x10
  jne r4, 0x0, jmp_32a20
  and64 r3, 0x20
  jeq r3, 0x0, jmp_32a10
  ja jmp_32a30

jmp_32a10:
  call fn_48c10
  ja jmp_32a38

jmp_32a20:
  call fn_47b50
  ja jmp_32a38

jmp_32a30:
  call fn_47cc8

jmp_32a38:
  exit
  ldxdw r1, [r1+0x0]
  ldxw r3, [r2+0x34]
  mov64 r4, r3
  and64 r4, 0x10
  jne r4, 0x0, jmp_32a90
  and64 r3, 0x20
  jeq r3, 0x0, jmp_32a80
  ja jmp_32aa0

jmp_32a80:
  call fn_48d28
  ja jmp_32aa8

jmp_32a90:
  call fn_48140
  ja jmp_32aa8

jmp_32aa0:
  call fn_482b0

jmp_32aa8:
  exit
  ldxdw r1, [r1+0x0]
  mov64 r3, r1
  add64 r3, 0x8
  stxdw [r10-0x8], r3
  mov64 r3, r10
  add64 r3, -0x8
  stxdw [r10-0xfd8], r3
  lddw r3, data_37b0
  stxdw [r10-0xfd0], r3
  lddw r3, str_0b31
  stxdw [r10-0xfe8], r3
  lddw r3, data_3790
  stxdw [r10-0xff0], r3
  stxdw [r10-0xff8], r1
  mov64 r1, 0xb
  stxdw [r10-0x1000], r1
  mov64 r1, 0x9
  stxdw [r10-0xfe0], r1
  mov64 r5, r10
  mov64 r1, r2
  lddw r2, str_0b1d
  mov64 r3, 0x9
  lddw r4, str_0b26
  call fn_43de8
  exit
  ldxw r3, [r2+0x34]
  mov64 r4, r3
  and64 r4, 0x10
  jne r4, 0x0, jmp_32be8
  and64 r3, 0x20
  jeq r3, 0x0, jmp_32bd8
  ja jmp_32bf8

jmp_32bd8:
  call fn_48d28
  ja jmp_32c00

jmp_32be8:
  call fn_48140
  ja jmp_32c00

jmp_32bf8:
  call fn_482b0

jmp_32c00:
  exit
  exit
  ldxdw r1, [r1+0x0]
  ldxdw r2, [r1+0x0]
  lddw r4, -0x8000000000000000
  mov64 r3, r2
  xor64 r3, r4
  mov64 r4, 0x8
  jgt r4, r3, jmp_32c58
  mov64 r3, 0x8

jmp_32c58:
  mov64 r4, r3
  add64 r4, -0x1
  mov64 r5, 0x7
  jgt r5, r4, jmp_32d80
  ldxdw r6, [r1+0x8]
  jeq r3, 0x0, jmp_32cc0
  jeq r2, 0x0, jmp_32d80
  mov64 r7, r1
  mov64 r1, r6
  mov64 r3, 0x1
  call fn_299b0
  mov64 r1, r7
  ja jmp_32d80

jmp_32cc0:
  mov64 r2, r6
  and64 r2, 0x3
  mov64 r3, r2
  add64 r3, -0x2
  mov64 r4, 0x2
  jgt r4, r3, jmp_32d80
  jeq r2, 0x0, jmp_32d80
  mov64 r8, r1
  ldxdw r7, [r6-0x1]
  ldxdw r9, [r6+0x7]
  ldxdw r2, [r9+0x0]
  mov64 r1, r7
  callx r2
  add64 r6, -0x1
  ldxdw r2, [r9+0x8]
  jeq r2, 0x0, jmp_32d58
  ldxdw r3, [r9+0x10]
  mov64 r1, r7
  call fn_299b0

jmp_32d58:
  mov64 r1, r6
  mov64 r2, 0x18
  mov64 r3, 0x8
  call fn_299b0
  mov64 r1, r8

jmp_32d80:
  mov64 r2, 0x18
  mov64 r3, 0x8
  call fn_299b0
  exit

fn_32da0:
  mov64 r7, r3
  mov64 r8, r2
  mov64 r6, r1
  jeq r8, 0x0, jmp_32e10
  ldxdw r1, [r4+0x8]
  jeq r1, 0x0, jmp_32e60
  ldxdw r2, [r4+0x10]
  jne r2, 0x0, jmp_32e30
  jeq r7, 0x0, jmp_32ea8
  mov64 r1, r7
  mov64 r2, r8
  call fn_298e0
  jeq r0, 0x0, jmp_32e88
  ja jmp_32eb8

jmp_32e10:
  mov64 r1, 0x0
  stxdw [r6+0x8], r1
  mov64 r1, 0x1
  ja jmp_32ed0

jmp_32e30:
  ldxdw r1, [r4+0x0]
  mov64 r3, r8
  mov64 r4, r7
  call fn_299b8
  jeq r0, 0x0, jmp_32e88
  ja jmp_32eb8

jmp_32e60:
  jeq r7, 0x0, jmp_32ea8
  mov64 r1, r7
  mov64 r2, r8
  call fn_298e0
  jne r0, 0x0, jmp_32eb8

jmp_32e88:
  stxdw [r6+0x10], r7
  stxdw [r6+0x8], r8
  mov64 r1, 0x1
  ja jmp_32ed0

jmp_32ea8:
  mov64 r7, 0x0
  mov64 r0, r8

jmp_32eb8:
  stxdw [r6+0x10], r7
  stxdw [r6+0x8], r0
  mov64 r1, 0x0

jmp_32ed0:
  stxdw [r6+0x0], r1
  exit

fn_32ee0:
  mov64 r6, r1
  mov64 r4, r2
  add64 r4, r3
  mov64 r1, 0x0
  mov64 r3, 0x1
  jgt r2, r4, jmp_32f18
  mov64 r3, 0x0

jmp_32f18:
  and64 r3, 0x1
  jne r3, 0x0, jmp_33000
  ldxdw r1, [r6+0x0]
  mov64 r7, r1
  lsh64 r7, 0x1
  jgt r7, r4, jmp_32f50
  mov64 r7, r4

jmp_32f50:
  jgt r7, 0x8, jmp_32f60
  mov64 r7, 0x8

jmp_32f60:
  mov64 r3, 0x0
  mov64 r2, r7
  xor64 r2, -0x1
  rsh64 r2, 0x3f
  jeq r1, 0x0, jmp_32fa8
  ldxdw r3, [r6+0x8]
  stxdw [r10-0x8], r1
  stxdw [r10-0x18], r3
  mov64 r3, 0x1

jmp_32fa8:
  stxdw [r10-0x10], r3
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  mov64 r3, r7
  call fn_32da0
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_33008
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_33000:
  call fn_379f0

jmp_33008:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit
  ldxdw r1, [r1+0x0]
  ldxdw r3, [r1+0x0]
  lddw r4, -0x8000000000000000
  xor64 r3, r4
  mov64 r4, 0x8
  jgt r4, r3, jmp_33068
  mov64 r3, 0x8

jmp_33068:
  jsgt r3, 0x3, jmp_330e0
  jsgt r3, 0x1, jmp_33180
  jeq r3, 0x0, jmp_331d8
  add64 r1, 0x8
  stxdw [r10-0x8], r1
  mov64 r4, r10
  add64 r4, -0x8
  mov64 r1, r2
  lddw r2, str_0a93
  mov64 r3, 0x13
  lddw r5, data_3710
  call fn_44028
  ja jmp_332c0

jmp_330e0:
  jsgt r3, 0x5, jmp_33118
  jeq r3, 0x4, jmp_332c8
  mov64 r1, r2
  lddw r2, str_0ade
  mov64 r3, 0x1a
  ja jmp_332b8

jmp_33118:
  jeq r3, 0x6, jmp_331b0
  jeq r3, 0x7, jmp_33298
  stxdw [r10-0x8], r1
  mov64 r4, r10
  add64 r4, -0x8
  mov64 r1, r2
  lddw r2, str_0b17
  mov64 r3, 0x6
  lddw r5, data_3770
  call fn_44028
  ja jmp_332c0

jmp_33180:
  jeq r3, 0x2, jmp_33238
  mov64 r1, r2
  lddw r2, str_0ab9
  mov64 r3, 0x13
  ja jmp_332b8

jmp_331b0:
  mov64 r1, r2
  lddw r2, str_0af8
  mov64 r3, 0x9
  ja jmp_332b8

jmp_331d8:
  add64 r1, 0x8
  stxdw [r10-0x8], r1
  mov64 r4, r10
  add64 r4, -0x8
  mov64 r1, r2
  lddw r2, str_0a91
  mov64 r3, 0x2
  lddw r5, data_36f0
  call fn_44028
  ja jmp_332c0

jmp_33238:
  add64 r1, 0x8
  stxdw [r10-0x8], r1
  mov64 r4, r10
  add64 r4, -0x8
  mov64 r1, r2
  lddw r2, str_0aa6
  mov64 r3, 0x13
  lddw r5, data_3730
  call fn_44028
  ja jmp_332c0

jmp_33298:
  mov64 r1, r2
  lddw r2, str_0b01
  mov64 r3, 0x16

jmp_332b8:
  call fn_43d50

jmp_332c0:
  exit

jmp_332c8:
  add64 r1, 0x8
  stxdw [r10-0x8], r1
  mov64 r4, r10
  add64 r4, -0x8
  mov64 r1, r2
  lddw r2, str_0acc
  mov64 r3, 0x12
  lddw r5, data_3750
  call fn_44028
  ja jmp_332c0

fn_33328:
  mov64 r6, r5
  mov64 r7, r4
  mov64 r8, r3
  mov64 r9, r2
  stxdw [r10-0x88], r1
  mov64 r1, 0x44
  mov64 r2, 0x1
  call fn_298e0
  jne r0, 0x0, jmp_33388
  mov64 r1, 0x1
  mov64 r2, 0x44
  call fn_37a08

jmp_33388:
  ldxdw r1, [r6-0xff8]
  ldxdw r2, [r6-0x1000]
  ldxdw r3, [r9+0x18]
  stxdw [r0+0x18], r3
  ldxdw r3, [r9+0x10]
  stxdw [r0+0x10], r3
  ldxdw r3, [r9+0x8]
  stxdw [r0+0x8], r3
  ldxdw r3, [r9+0x0]
  stxdw [r0+0x0], r3
  mov64 r3, 0x101
  stxh [r0+0x20], r3
  ldxdw r4, [r8+0x0]
  stxdw [r0+0x22], r4
  ldxdw r4, [r8+0x8]
  stxdw [r0+0x2a], r4
  ldxdw r4, [r8+0x10]
  stxdw [r0+0x32], r4
  ldxdw r4, [r8+0x18]
  stxdw [r0+0x3a], r4
  stxh [r0+0x42], r3
  stxdw [r10-0x78], r0
  mov64 r3, 0x2
  stxdw [r10-0x70], r3
  stxdw [r10-0x80], r3
  stxdw [r10-0x38], r2
  stxdw [r10-0x40], r7
  ldxdw r2, [r1+0x0]
  stxdw [r10-0x60], r2
  ldxdw r2, [r1+0x8]
  stxdw [r10-0x58], r2
  ldxdw r2, [r1+0x10]
  stxdw [r10-0x50], r2
  ldxdw r1, [r1+0x18]
  stxdw [r10-0x48], r1
  lddw r1, -0x8000000000000000
  stxdw [r10-0x68], r1
  mov64 r3, r10
  add64 r3, -0x68
  mov64 r4, r10
  add64 r4, -0x80
  ldxdw r1, [r10-0x88]
  lddw r2, data_0390
  call fn_30eb0
  exit

fn_33500:
  mov64 r7, r3
  mov64 r8, r2
  mov64 r6, r1
  mov64 r9, 0x1
  mov64 r1, 0x22
  mov64 r2, 0x1
  call fn_298e0
  jne r0, 0x0, jmp_33558
  mov64 r1, 0x1
  mov64 r2, 0x22
  call fn_37a08

jmp_33558:
  ldxdw r1, [r8+0x18]
  stxdw [r0+0x18], r1
  ldxdw r1, [r8+0x10]
  stxdw [r0+0x10], r1
  ldxdw r1, [r8+0x8]
  stxdw [r0+0x8], r1
  ldxdw r1, [r8+0x0]
  stxdw [r0+0x0], r1
  mov64 r1, 0x101
  stxh [r0+0x20], r1
  stxdw [r10-0x78], r0
  stxdw [r10-0x70], r9
  stxdw [r10-0x80], r9
  ldxdw r1, [r7+0x18]
  stxdw [r10-0x48], r1
  ldxdw r1, [r7+0x10]
  stxdw [r10-0x50], r1
  ldxdw r1, [r7+0x8]
  stxdw [r10-0x58], r1
  ldxdw r1, [r7+0x0]
  stxdw [r10-0x60], r1
  lddw r1, -0x7fffffffffffffff
  stxdw [r10-0x68], r1
  mov64 r3, r10
  add64 r3, -0x68
  mov64 r4, r10
  add64 r4, -0x80
  mov64 r1, r6
  lddw r2, data_0390
  call fn_30eb0
  exit

fn_33660:
  mov64 r7, r4
  mov64 r8, r3
  mov64 r9, r2
  mov64 r6, r1
  mov64 r1, 0x44
  mov64 r2, 0x1
  call fn_298e0
  jne r0, 0x0, jmp_336b8
  mov64 r1, 0x1
  mov64 r2, 0x44
  call fn_37a08

jmp_336b8:
  ldxdw r1, [r9+0x18]
  stxdw [r0+0x18], r1
  ldxdw r1, [r9+0x10]
  stxdw [r0+0x10], r1
  ldxdw r1, [r9+0x8]
  stxdw [r0+0x8], r1
  ldxdw r1, [r9+0x0]
  stxdw [r0+0x0], r1
  mov64 r1, 0x101
  stxh [r0+0x20], r1
  ldxdw r1, [r8+0x0]
  stxdw [r0+0x22], r1
  ldxdw r1, [r8+0x8]
  stxdw [r0+0x2a], r1
  ldxdw r1, [r8+0x10]
  stxdw [r0+0x32], r1
  ldxdw r1, [r8+0x18]
  stxdw [r0+0x3a], r1
  mov64 r1, 0x100
  stxh [r0+0x42], r1
  stxdw [r10-0x78], r0
  mov64 r1, 0x2
  stxdw [r10-0x70], r1
  stxdw [r10-0x80], r1
  lddw r1, -0x7ffffffffffffffe
  stxdw [r10-0x68], r1
  stxdw [r10-0x60], r7
  mov64 r3, r10
  add64 r3, -0x68
  mov64 r4, r10
  add64 r4, -0x80
  mov64 r1, r6
  lddw r2, data_0390
  call fn_30eb0
  exit

fn_337e0:
  mov64 r7, r3
  mov64 r8, r2
  mov64 r6, r1
  mov64 r9, 0x1
  mov64 r1, 0x22
  mov64 r2, 0x1
  call fn_298e0
  jne r0, 0x0, jmp_33838
  mov64 r1, 0x1
  mov64 r2, 0x22
  call fn_37a08

jmp_33838:
  ldxdw r1, [r8+0x18]
  stxdw [r0+0x18], r1
  ldxdw r1, [r8+0x10]
  stxdw [r0+0x10], r1
  ldxdw r1, [r8+0x8]
  stxdw [r0+0x8], r1
  ldxdw r1, [r8+0x0]
  stxdw [r0+0x0], r1
  mov64 r1, 0x101
  stxh [r0+0x20], r1
  stxdw [r10-0x78], r0
  stxdw [r10-0x70], r9
  stxdw [r10-0x80], r9
  lddw r1, -0x7ffffffffffffff8
  stxdw [r10-0x68], r1
  stxdw [r10-0x60], r7
  mov64 r3, r10
  add64 r3, -0x68
  mov64 r4, r10
  add64 r4, -0x80
  mov64 r1, r6
  lddw r2, data_0390
  call fn_30eb0
  exit

fn_33908:
  stxdw [r1+0x8], r2
  mov64 r2, 0x0
  stxdw [r1+0x0], r2
  exit

fn_33928:
  mov64 r6, r1
  mov64 r1, 0x18
  mov64 r2, 0x8
  call fn_298e0
  jne r0, 0x0, jmp_33968
  mov64 r1, 0x8
  mov64 r2, 0x18
  call fn_37a08

jmp_33968:
  stxdw [r0+0x8], r6
  lddw r1, -0x8000000000000000
  stxdw [r0+0x0], r1
  exit

fn_33990:
  ldxdw r2, [r1+0x0]
  lddw r3, 0x66d17b1817d5a706
  jne r2, r3, jmp_33a38
  ldxdw r2, [r1+0x8]
  lddw r3, -0x3f3d02aafb2b25cb
  jne r2, r3, jmp_33a38
  ldxdw r2, [r1+0x10]
  lddw r3, -0x5a8aa9de7039db3f
  jne r2, r3, jmp_33a38
  mov64 r2, 0x0
  ldxdw r1, [r1+0x18]
  lddw r3, 0x85fcbbadb
  jne r1, r3, jmp_33a38

jmp_33a18:
  mov64 r0, 0x1
  jeq r2, 0x0, jmp_33a30
  mov64 r0, 0x0

jmp_33a30:
  exit

jmp_33a38:
  mov64 r2, 0x1
  ja jmp_33a18
  ldxdw r1, [r1+0x0]
  ldxw r3, [r2+0x34]
  mov64 r4, r3
  and64 r4, 0x10
  jne r4, 0x0, jmp_33a98
  and64 r3, 0x20
  jeq r3, 0x0, jmp_33a88
  ja jmp_33aa8

jmp_33a88:
  call fn_48c10
  ja jmp_33ab0

jmp_33a98:
  call fn_47b50
  ja jmp_33ab0

jmp_33aa8:
  call fn_47cc8

jmp_33ab0:
  exit
  ldxdw r1, [r1+0x0]
  ldxb r3, [r1+0x0]
  jne r3, 0x0, jmp_33b00
  mov64 r1, r2
  lddw r2, str_0317
  mov64 r3, 0x4
  call fn_43d50
  ja jmp_33b58

jmp_33b00:
  add64 r1, 0x1
  stxdw [r10-0x8], r1
  mov64 r4, r10
  add64 r4, -0x8
  mov64 r1, r2
  lddw r2, str_0307
  mov64 r3, 0x4
  lddw r5, data_3870
  call fn_44028

jmp_33b58:
  exit
  ldxw r3, [r2+0x34]
  mov64 r4, r3
  and64 r4, 0x10
  jne r4, 0x0, jmp_33ba8
  and64 r3, 0x20
  jeq r3, 0x0, jmp_33b98
  ja jmp_33bb8

jmp_33b98:
  call fn_48d28
  ja jmp_33bc0

jmp_33ba8:
  call fn_48140
  ja jmp_33bc0

jmp_33bb8:
  call fn_482b0

jmp_33bc0:
  exit
  exit
  exit
  mov64 r1, r2
  lddw r2, str_0b47
  mov64 r3, 0xe
  call fn_43d50
  exit
  mov64 r3, r1
  add64 r3, 0x8
  stxdw [r10-0x8], r3
  mov64 r3, r10
  add64 r3, -0x8
  stxdw [r10-0xfd8], r3
  lddw r3, data_3850
  stxdw [r10-0xfd0], r3
  lddw r3, str_0b69
  stxdw [r10-0xfe8], r3
  lddw r3, data_3830
  stxdw [r10-0xff0], r3
  stxdw [r10-0xff8], r1
  mov64 r1, 0xb
  stxdw [r10-0x1000], r1
  mov64 r1, 0x9
  stxdw [r10-0xfe0], r1
  mov64 r5, r10
  mov64 r1, r2
  lddw r2, str_0b55
  mov64 r3, 0x9
  lddw r4, str_0b5e
  call fn_43de8
  exit

fn_33cf0:
  mov64 r0, r4
  mov64 r6, r1
  mov64 r7, 0x0
  stxdw [r10-0x20], r7
  stxdw [r10-0x28], r7
  stxdw [r10-0x30], r7
  stxdw [r10-0x38], r7
  mov64 r1, 0xff
  stxb [r10-0x1], r1
  mov64 r4, r10
  add64 r4, -0x38
  mov64 r5, r10
  add64 r5, -0x1
  mov64 r1, r2
  mov64 r2, r3
  mov64 r3, r0
  call sol_try_find_program_address
  jeq r0, 0x0, jmp_33df0
  mov64 r1, 0x1
  stxdw [r10-0x30], r1
  lddw r1, data_3890
  stxdw [r10-0x38], r1
  stxdw [r10-0x18], r7
  stxdw [r10-0x20], r7
  mov64 r1, 0x8
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x38
  lddw r2, data_38a0
  call fn_3fef0

jmp_33df0:
  ldxdw r1, [r10-0x20]
  stxdw [r6+0x18], r1
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0x30]
  stxdw [r6+0x8], r1
  ldxdw r1, [r10-0x38]
  stxdw [r6+0x0], r1
  ldxb r1, [r10-0x1]
  stxb [r6+0x20], r1
  exit

fn_33e48:
  mov64 r8, r2
  mov64 r6, r1
  mov64 r1, r10
  add64 r1, -0x6c
  mov64 r7, 0x0
  mov64 r2, 0x0
  mov64 r3, 0x2c
  call fn_493f8
  ldxdw r1, [r8+0x18]
  stxdw [r10-0x20], r1
  ldxdw r1, [r8+0x10]
  stxdw [r10-0x28], r1
  ldxdw r1, [r8+0x8]
  stxdw [r10-0x30], r1
  ldxdw r1, [r8+0x0]
  stxdw [r10-0x38], r1
  lddw r1, data_0b7c
  stxdw [r10-0x40], r1
  mov64 r1, 0x8
  mov64 r2, r10
  add64 r2, -0x40
  mov64 r2, 0x2d
  mov64 r3, 0x3a
  ja jmp_33f60

jmp_33f10:
  add64 r1, 0x1
  jne r1, 0x28, jmp_33f60
  mov64 r2, r10
  add64 r2, -0x6c
  add64 r2, r7
  mov64 r4, 0x0
  mov64 r5, r10
  add64 r5, -0x38
  mov64 r3, 0x0
  ja jmp_340c8

jmp_33f60:
  jgt r2, r7, jmp_33f70
  ja jmp_343c0

jmp_33f70:
  mov64 r4, r10
  add64 r4, -0x40
  add64 r4, r1
  ldxb r4, [r4+0x0]
  jeq r7, 0x0, jmp_34018
  mov64 r5, r10
  add64 r5, -0x6c
  mov64 r0, r7

jmp_33fb0:
  ldxb r8, [r5+0x0]
  lsh64 r8, 0x8
  add64 r8, r4
  mov64 r4, r8
  div64 r4, 0x3a
  mov64 r9, r4
  mul64 r9, 0x3a
  sub64 r8, r9
  stxb [r5+0x0], r8
  add64 r5, 0x1
  add64 r0, -0x1
  jeq r0, 0x0, jmp_34018
  ja jmp_33fb0

jmp_34018:
  jeq r4, 0x0, jmp_33f10

jmp_34020:
  mov64 r5, r4
  jeq r7, 0x2c, jmp_34120
  mov64 r4, r5
  div64 r4, 0x3a
  mov64 r0, r4
  mul64 r0, 0x3a
  mov64 r8, r5
  sub64 r8, r0
  mov64 r0, r10
  add64 r0, -0x6c
  add64 r0, r7
  stxb [r0+0x0], r8
  add64 r7, 0x1
  jgt r3, r5, jmp_33f10
  ja jmp_34020

jmp_34098:
  jgt r1, 0x2b, jmp_34390
  mov64 r1, r2
  add64 r1, r3
  stxb [r1+0x0], r4
  add64 r3, 0x1
  jeq r3, 0x20, jmp_34220

jmp_340c8:
  mov64 r0, r5
  add64 r0, r3
  mov64 r1, r7
  add64 r1, r3
  ldxb r0, [r0+0x0]
  jeq r0, 0x0, jmp_34100
  ja jmp_34170

jmp_34100:
  mov64 r0, r1
  add64 r0, -0x2c
  jeq r0, 0x0, jmp_34120
  ja jmp_34098

jmp_34120:
  mov64 r3, r10
  add64 r3, -0x1
  lddw r1, str_0c67
  mov64 r2, 0x2b
  lddw r4, data_3908
  lddw r5, data_3928
  call fn_40400

jmp_34170:
  mov64 r2, 0x2d
  jgt r2, r1, jmp_341a0
  mov64 r2, 0x2c
  lddw r3, data_37d0
  call fn_45270

jmp_341a0:
  mov64 r3, 0x0
  jeq r1, 0x0, jmp_341b8
  ja jmp_34230

jmp_341b8:
  mov64 r1, r10
  add64 r1, -0x40
  mov64 r2, r10
  add64 r2, -0x6c
  call fn_45510
  ldxdw r1, [r10-0x40]
  jeq r1, 0x0, jmp_341f8
  ja jmp_343e8

jmp_341f8:
  ldxdw r3, [r10-0x30]
  ldxdw r2, [r10-0x38]
  mov64 r1, r6
  call fn_43d50
  exit

jmp_34220:
  add64 r7, r3
  mov64 r1, r7

jmp_34230:
  mov64 r3, 0x0

jmp_34238:
  mov64 r4, r10
  add64 r4, -0x6c
  add64 r4, r3
  ldxb r2, [r4+0x0]
  jgt r2, 0x39, jmp_34368
  lddw r5, data_0b7c
  add64 r5, r2
  ldxb r2, [r5+0x80]
  stxb [r4+0x0], r2
  add64 r3, 0x1
  jeq r1, r3, jmp_342a0
  ja jmp_34238

jmp_342a0:
  mov64 r3, 0x1
  jeq r1, 0x1, jmp_341b8
  mov64 r2, r1
  rsh64 r2, 0x1
  mov64 r3, r10
  add64 r3, -0x6c
  mov64 r4, r1
  add64 r4, r3
  add64 r4, -0x1

jmp_342e8:
  ldxb r5, [r3+0x0]
  ldxb r0, [r4+0x0]
  stxb [r3+0x0], r0
  stxb [r4+0x0], r5
  add64 r4, -0x1
  add64 r3, 0x1
  add64 r2, -0x1
  jeq r2, 0x0, jmp_34330
  ja jmp_342e8

jmp_34330:
  mov64 r2, 0x2d
  mov64 r3, r1
  jgt r2, r1, jmp_341b8
  mov64 r2, 0x2c
  lddw r3, data_38b8
  call fn_45270

jmp_34368:
  mov64 r1, r2
  mov64 r2, 0x3a
  lddw r3, data_37e8
  call fn_3ffc8

jmp_34390:
  add64 r7, r3
  mov64 r1, r7
  mov64 r2, 0x2c
  lddw r3, data_3800
  call fn_3ffc8

jmp_343c0:
  mov64 r1, r7
  mov64 r2, 0x2c
  lddw r3, data_3818
  call fn_45270

jmp_343e8:
  ldxdw r1, [r10-0x30]
  stxdw [r10-0x10], r1
  ldxdw r1, [r10-0x38]
  stxdw [r10-0x18], r1
  mov64 r3, r10
  add64 r3, -0x18
  lddw r1, str_0c67
  mov64 r2, 0x2b
  lddw r4, data_38d0
  lddw r5, data_38f0
  call fn_40400

fn_34458:
  mov64 r3, r1
  mov64 r1, r2
  mov64 r2, r3
  call fn_33e48
  exit

fn_34480:
  mov64 r4, r3
  mov64 r6, r1
  mov64 r1, 0x0
  stxdw [r10-0x8], r1
  stxdw [r10-0x10], r1
  stxdw [r10-0x18], r1
  stxdw [r10-0x20], r1
  mov64 r3, r10
  add64 r3, -0x20
  mov64 r1, r2
  mov64 r2, r4
  call sol_sha256
  ldxdw r1, [r10-0x20]
  stxdw [r6+0x0], r1
  ldxdw r1, [r10-0x18]
  stxdw [r6+0x8], r1
  ldxdw r1, [r10-0x10]
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0x8]
  stxdw [r6+0x18], r1
  exit

fn_34528:
  mov64 r6, r1
  stxdw [r10-0x28], r3
  stxdw [r10-0x30], r2
  mov64 r1, 0x0
  stxdw [r10-0x8], r1
  stxdw [r10-0x10], r1
  stxdw [r10-0x18], r1
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r3, r10
  add64 r3, -0x20
  mov64 r2, 0x1
  call sol_sha256
  ldxdw r1, [r10-0x20]
  stxdw [r6+0x0], r1
  ldxdw r1, [r10-0x18]
  stxdw [r6+0x8], r1
  ldxdw r1, [r10-0x10]
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0x8]
  stxdw [r6+0x18], r1
  exit
  mov64 r3, r2
  ldxdw r2, [r1+0x8]
  ldxdw r1, [r1+0x0]
  call fn_44300
  exit
  mov64 r3, r2
  lddw r2, data_3940
  call fn_42488
  exit
  exit
  ldxb r3, [r1+0x0]
  jsgt r3, 0x8, jmp_346e8
  jsgt r3, 0x3, jmp_34730
  jsgt r3, 0x1, jmp_34890
  jeq r3, 0x0, jmp_349d8
  ldxdw r1, [r1+0x8]
  stxdw [r10-0x50], r1
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  mov64 r1, 0x2
  stxdw [r10-0x38], r1
  lddw r1, data_3990
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x8b03
  ja jmp_34c28

jmp_346e8:
  jsgt r3, 0xc, jmp_347d0
  jsgt r3, 0xa, jmp_34940
  jeq r3, 0x9, jmp_34a60
  mov64 r1, r2
  lddw r2, str_0c92
  mov64 r3, 0x8
  call fn_43d50
  ja jmp_34c78

jmp_34730:
  jsgt r3, 0x5, jmp_34810
  jeq r3, 0x4, jmp_34ba8
  ldxdw r3, [r1+0x8]
  ldxdw r1, [r1+0x10]
  stxdw [r10-0x48], r1
  stxdw [r10-0x50], r3
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  lddw r1, data_39f0
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x38], r1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x63fd
  ja jmp_34c28

jmp_347d0:
  jsgt r3, 0xe, jmp_34850
  jeq r3, 0xd, jmp_34c80
  mov64 r1, r2
  lddw r2, str_0d24
  mov64 r3, 0xf
  call fn_43d50
  ja jmp_34c78

jmp_34810:
  jeq r3, 0x6, jmp_34978
  jeq r3, 0x7, jmp_34b48
  mov64 r1, r2
  lddw r2, str_0cfb
  mov64 r3, 0xc
  call fn_43d50
  ja jmp_34c78

jmp_34850:
  jeq r3, 0xf, jmp_349a8
  jeq r3, 0x10, jmp_34b78
  ldxdw r3, [r1+0x10]
  ldxdw r4, [r1+0x8]
  mov64 r1, r2
  mov64 r2, r4
  call fn_43d50
  ja jmp_34c78

jmp_34890:
  jeq r3, 0x2, jmp_34a90
  ldxdw r1, [r1+0x8]
  mov64 r3, 0x0
  stxdw [r10-0x20], r3
  mov64 r3, 0x2
  stxdw [r10-0x38], r3
  lddw r3, data_39b0
  stxdw [r10-0x40], r3
  mov64 r3, 0x1
  stxdw [r10-0x28], r3
  mov64 r3, r10
  add64 r3, -0x10
  stxdw [r10-0x30], r3
  lddw r3, 0x64c9
  stxdw [r10-0x8], r3
  mov64 r3, r10
  add64 r3, -0x50
  stxdw [r10-0x10], r3
  stxdw [r10-0x50], r1
  ja jmp_34c48

jmp_34940:
  jeq r3, 0xb, jmp_34b18
  mov64 r1, r2
  lddw r2, str_0313
  mov64 r3, 0x4
  call fn_43d50
  ja jmp_34c78

jmp_34978:
  mov64 r1, r2
  lddw r2, str_0cc2
  mov64 r3, 0xa
  call fn_43d50
  ja jmp_34c78

jmp_349a8:
  mov64 r1, r2
  lddw r2, str_0d33
  mov64 r3, 0xd
  call fn_43d50
  ja jmp_34c78

jmp_349d8:
  ldxb r1, [r1+0x1]
  stxb [r10-0x50], r1
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  mov64 r1, 0x2
  stxdw [r10-0x38], r1
  lddw r1, data_3970
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x81ff
  ja jmp_34c28

jmp_34a60:
  mov64 r1, r2
  lddw r2, str_0d07
  mov64 r3, 0xe
  call fn_43d50
  ja jmp_34c78

jmp_34a90:
  ldxdw r1, [r1+0x8]
  stxdw [r10-0x50], r1
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  mov64 r1, 0x2
  stxdw [r10-0x38], r1
  lddw r1, data_3990
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x8af8
  ja jmp_34c28

jmp_34b18:
  mov64 r1, r2
  lddw r2, str_0d15
  mov64 r3, 0x3
  call fn_43d50
  ja jmp_34c78

jmp_34b48:
  mov64 r1, r2
  lddw r2, str_0cf1
  mov64 r3, 0xa
  call fn_43d50
  ja jmp_34c78

jmp_34b78:
  mov64 r1, r2
  lddw r2, str_0d40
  mov64 r3, 0xe
  call fn_43d50
  ja jmp_34c78

jmp_34ba8:
  ldxw r1, [r1+0x4]
  stxw [r10-0x50], r1
  mov64 r1, 0x0
  stxdw [r10-0x20], r1
  mov64 r1, 0x2
  stxdw [r10-0x38], r1
  lddw r1, data_39d0
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x8345

jmp_34c28:
  stxdw [r10-0x8], r1
  mov64 r1, r10
  add64 r1, -0x50
  stxdw [r10-0x10], r1

jmp_34c48:
  ldxdw r4, [r2+0x28]
  ldxdw r1, [r2+0x20]
  mov64 r3, r10
  add64 r3, -0x40
  mov64 r2, r4
  call fn_42488

jmp_34c78:
  exit

jmp_34c80:
  mov64 r1, r2
  lddw r2, str_0d18
  mov64 r3, 0xc
  call fn_43d50
  ja jmp_34c78
  mov64 r4, r2
  ldxdw r3, [r1+0x8]
  ldxdw r2, [r1+0x0]
  mov64 r1, r4
  call fn_43d50
  exit

fn_34ce0:
  ldxdw r4, [r2+0x18]
  mov64 r2, r3
  callx r4
  exit
  mov64 r6, r2
  mov64 r7, r1
  ldxdw r1, [r7+0x0]
  lddw r2, 0x7fffffffffffffff
  and64 r1, r2
  lddw r2, 0x7ff0000000000000
  call fn_4c010
  mov64 r1, 0x0
  jsgt r1, r0, jmp_34df8
  stxdw [r10-0x20], r1
  lddw r1, data_0468
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x38], r1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x88ce
  stxdw [r10-0x8], r1
  stxdw [r10-0x10], r7
  ldxdw r2, [r6+0x28]
  ldxdw r1, [r6+0x20]
  mov64 r3, r10
  add64 r3, -0x40
  call fn_42488
  ja jmp_34f10

jmp_34df8:
  stxdw [r10-0x50], r6
  stxb [r10-0x48], r1
  stxdw [r10-0x20], r1
  lddw r1, data_0468
  stxdw [r10-0x40], r1
  mov64 r1, 0x1
  stxdw [r10-0x38], r1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x10
  stxdw [r10-0x30], r1
  lddw r1, 0x88ce
  stxdw [r10-0x8], r1
  stxdw [r10-0x10], r7
  mov64 r1, r10
  add64 r1, -0x50
  mov64 r3, r10
  add64 r3, -0x40
  lddw r2, data_3940
  call fn_42488
  jne r0, 0x0, jmp_34f08
  ldxb r1, [r10-0x48]
  jne r1, 0x0, jmp_34ef8
  mov64 r1, r6
  lddw r2, str_0d4e
  mov64 r3, 0x2
  call fn_43d50
  jne r0, 0x0, jmp_34f08

jmp_34ef8:
  mov64 r0, 0x0
  ja jmp_34f10

jmp_34f08:
  mov64 r0, 0x1

jmp_34f10:
  exit
  mov64 r6, r3
  mov64 r7, r2
  mov64 r8, r1
  mov64 r1, 0x10
  jgt r1, r6, jmp_34f98
  mov64 r1, r10
  add64 r1, -0x10
  mov64 r2, 0x2e
  mov64 r3, r7
  mov64 r4, r6
  call fn_44f38
  mov64 r1, 0x1
  ldxdw r2, [r10-0x10]
  jeq r2, 0x1, jmp_34fd0
  mov64 r1, 0x0
  ja jmp_34fd0

jmp_34f98:
  mov64 r1, 0x0
  jeq r6, 0x0, jmp_34fd0
  mov64 r2, 0x0
  ja jmp_34ff8

jmp_34fb8:
  jeq r3, 0x2e, jmp_34fd0
  add64 r2, 0x1
  jgt r6, r2, jmp_34ff8

jmp_34fd0:
  ldxb r3, [r8+0x8]
  mov64 r2, 0x1
  jne r3, 0x0, jmp_35030
  mov64 r2, 0x0
  ja jmp_35030

jmp_34ff8:
  mov64 r1, r7
  add64 r1, r2
  ldxb r3, [r1+0x0]
  mov64 r1, 0x1
  jeq r3, 0x2e, jmp_34fb8
  mov64 r1, 0x0
  ja jmp_34fb8

jmp_35030:
  or64 r1, r2
  and64 r1, 0x1
  stxb [r8+0x8], r1
  ldxdw r1, [r8+0x0]
  mov64 r2, r7
  mov64 r3, r6
  call fn_43d50
  exit
  ldxb r5, [r1+0x8]
  mov64 r3, 0x1
  mov64 r4, 0x1
  jne r5, 0x0, jmp_35098
  mov64 r4, 0x0

jmp_35098:
  mov64 r5, r2
  lsh64 r5, 0x20
  rsh64 r5, 0x20
  jeq r5, 0x2e, jmp_350c0
  mov64 r3, 0x0

jmp_350c0:
  or64 r3, r4
  stxb [r1+0x8], r3
  ldxdw r1, [r1+0x0]
  call fn_44268
  exit

fn_350e8:
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  jsgt r1, 0x13, jmp_35148
  jsgt r1, 0x9, jmp_351c0
  jsgt r1, 0x4, jmp_35260
  jsgt r1, 0x1, jmp_35380
  mov64 r0, 0x0
  jeq r1, 0x0, jmp_355c8
  jeq r1, 0x1, jmp_35138
  ja jmp_355c0

jmp_35138:
  mov64 r0, 0x1
  ja jmp_355c8

jmp_35148:
  jsgt r1, 0x1d, jmp_35188
  jsgt r1, 0x18, jmp_35230
  jsgt r1, 0x15, jmp_352c0
  jeq r1, 0x14, jmp_35440
  jeq r1, 0x15, jmp_35178
  ja jmp_355c0

jmp_35178:
  mov64 r0, 0x15
  ja jmp_355c8

jmp_35188:
  jsgt r1, 0x22, jmp_351f8
  jsgt r1, 0x1f, jmp_35350
  jeq r1, 0x1e, jmp_354a0
  jeq r1, 0x1f, jmp_351b0
  ja jmp_355c0

jmp_351b0:
  mov64 r0, 0x1f
  ja jmp_355c8

jmp_351c0:
  jsgt r1, 0xe, jmp_35290
  jsgt r1, 0xb, jmp_353b0
  jeq r1, 0xa, jmp_35500
  jeq r1, 0xb, jmp_351e8
  ja jmp_355c0

jmp_351e8:
  mov64 r0, 0xb
  ja jmp_355c8

jmp_351f8:
  jsgt r1, 0x25, jmp_35320
  jeq r1, 0x23, jmp_354e0
  jeq r1, 0x24, jmp_35480
  jeq r1, 0x25, jmp_35220
  ja jmp_355c0

jmp_35220:
  mov64 r0, 0x25
  ja jmp_355c8

jmp_35230:
  jsgt r1, 0x1a, jmp_352f0
  jeq r1, 0x19, jmp_35450
  jeq r1, 0x1a, jmp_35250
  ja jmp_355c0

jmp_35250:
  mov64 r0, 0x1a
  ja jmp_355c8

jmp_35260:
  jsgt r1, 0x6, jmp_353e0
  jeq r1, 0x5, jmp_35510
  jeq r1, 0x6, jmp_35280
  ja jmp_355c0

jmp_35280:
  mov64 r0, 0x6
  ja jmp_355c8

jmp_35290:
  jsgt r1, 0x10, jmp_35410
  jeq r1, 0xf, jmp_35520
  jeq r1, 0x10, jmp_352b0
  ja jmp_355c0

jmp_352b0:
  mov64 r0, 0x10
  ja jmp_355c8

jmp_352c0:
  jeq r1, 0x16, jmp_354b0
  jeq r1, 0x17, jmp_35460
  jeq r1, 0x18, jmp_352e0
  ja jmp_355c0

jmp_352e0:
  mov64 r0, 0x18
  ja jmp_355c8

jmp_352f0:
  jeq r1, 0x1b, jmp_354c0
  jeq r1, 0x1c, jmp_35470
  jeq r1, 0x1d, jmp_35310
  ja jmp_355c0

jmp_35310:
  mov64 r0, 0x1d
  ja jmp_355c8

jmp_35320:
  jeq r1, 0x26, jmp_354f0
  jeq r1, 0x27, jmp_35490
  jeq r1, 0x28, jmp_35340
  ja jmp_355c0

jmp_35340:
  mov64 r0, 0x28
  ja jmp_355c8

jmp_35350:
  jeq r1, 0x20, jmp_35570
  jeq r1, 0x21, jmp_354d0
  jeq r1, 0x22, jmp_35370
  ja jmp_355c0

jmp_35370:
  mov64 r0, 0x22
  ja jmp_355c8

jmp_35380:
  jeq r1, 0x2, jmp_35580
  jeq r1, 0x3, jmp_35530
  jeq r1, 0x4, jmp_353a0
  ja jmp_355c0

jmp_353a0:
  mov64 r0, 0x4
  ja jmp_355c8

jmp_353b0:
  jeq r1, 0xc, jmp_35590
  jeq r1, 0xd, jmp_35540
  jeq r1, 0xe, jmp_353d0
  ja jmp_355c0

jmp_353d0:
  mov64 r0, 0xe
  ja jmp_355c8

jmp_353e0:
  jeq r1, 0x7, jmp_355a0
  jeq r1, 0x8, jmp_35550
  jeq r1, 0x9, jmp_35400
  ja jmp_355c0

jmp_35400:
  mov64 r0, 0x9
  ja jmp_355c8

jmp_35410:
  jeq r1, 0x11, jmp_355b0
  jeq r1, 0x12, jmp_35560
  jeq r1, 0x13, jmp_35430
  ja jmp_355c0

jmp_35430:
  mov64 r0, 0x13
  ja jmp_355c8

jmp_35440:
  mov64 r0, 0x14
  ja jmp_355c8

jmp_35450:
  mov64 r0, 0x19
  ja jmp_355c8

jmp_35460:
  mov64 r0, 0x17
  ja jmp_355c8

jmp_35470:
  mov64 r0, 0x1c
  ja jmp_355c8

jmp_35480:
  mov64 r0, 0x24
  ja jmp_355c8

jmp_35490:
  mov64 r0, 0x27
  ja jmp_355c8

jmp_354a0:
  mov64 r0, 0x1e
  ja jmp_355c8

jmp_354b0:
  mov64 r0, 0x16
  ja jmp_355c8

jmp_354c0:
  mov64 r0, 0x1b
  ja jmp_355c8

jmp_354d0:
  mov64 r0, 0x21
  ja jmp_355c8

jmp_354e0:
  mov64 r0, 0x23
  ja jmp_355c8

jmp_354f0:
  mov64 r0, 0x26
  ja jmp_355c8

jmp_35500:
  mov64 r0, 0xa
  ja jmp_355c8

jmp_35510:
  mov64 r0, 0x5
  ja jmp_355c8

jmp_35520:
  mov64 r0, 0xf
  ja jmp_355c8

jmp_35530:
  mov64 r0, 0x3
  ja jmp_355c8

jmp_35540:
  mov64 r0, 0xd
  ja jmp_355c8

jmp_35550:
  mov64 r0, 0x8
  ja jmp_355c8

jmp_35560:
  mov64 r0, 0x12
  ja jmp_355c8

jmp_35570:
  mov64 r0, 0x20
  ja jmp_355c8

jmp_35580:
  mov64 r0, 0x2
  ja jmp_355c8

jmp_35590:
  mov64 r0, 0xc
  ja jmp_355c8

jmp_355a0:
  mov64 r0, 0x7
  ja jmp_355c8

jmp_355b0:
  mov64 r0, 0x11
  ja jmp_355c8

jmp_355c0:
  mov64 r0, 0x29

jmp_355c8:
  exit

fn_355d0:
  mov64 r1, 0x1a
  mov64 r2, 0x1
  call fn_298e0
  mov64 r6, r0
  jne r6, 0x0, jmp_35610
  mov64 r1, 0x1
  mov64 r2, 0x1a
  call fn_379f0

jmp_35610:
  mov64 r1, 0x7475
  stxh [r6+0x18], r1
  lddw r1, 0x706e6920666f2068
  stxdw [r6+0x10], r1
  lddw r1, 0x74676e656c206465
  stxdw [r6+0x8], r1
  lddw r1, 0x7463657078656e55
  stxdw [r6+0x0], r1
  mov64 r1, 0x18
  mov64 r2, 0x8
  call fn_298e0
  jne r0, 0x0, jmp_356a0
  mov64 r1, 0x8
  mov64 r2, 0x18
  call fn_37a08

jmp_356a0:
  stxdw [r0+0x8], r6
  mov64 r1, 0x1a
  stxdw [r0+0x10], r1
  stxdw [r0+0x0], r1
  mov64 r1, 0x15
  mov64 r2, r0
  lddw r3, data_3a20
  call fn_36580
  exit
  ldxdw r2, [r1+0x0]
  jeq r2, 0x0, jmp_35718
  ldxdw r1, [r1+0x8]
  mov64 r3, 0x1
  call fn_299b0

jmp_35718:
  exit
  mov64 r2, 0x0
  stxdw [r1+0x0], r2
  exit
  exit
  lddw r2, 0x1c4088621fee484b
  stxdw [r1+0x8], r2
  lddw r2, 0x2219183bd7fa6079
  stxdw [r1+0x0], r2
  exit

fn_35778:
  mov64 r6, r1
  mov64 r7, r6
  and64 r7, 0x3
  jsgt r7, 0x1, jmp_357b0
  jeq r7, 0x0, jmp_357e8
  ldxb r1, [r6+0xf]
  ja jmp_357f0

jmp_357b0:
  mov64 r0, r6
  jeq r7, 0x2, jmp_358c0
  mov64 r1, r6
  rsh64 r1, 0x20
  call fn_350e8
  mov64 r1, r0
  ja jmp_357f0

jmp_357e8:
  ldxb r1, [r6+0x10]

jmp_357f0:
  and64 r1, 0xff
  mov64 r0, r6
  jne r1, 0x25, jmp_358c0
  call fn_355d0
  mov64 r1, r7
  add64 r1, -0x2
  mov64 r2, 0x2
  jgt r2, r1, jmp_358c0
  jeq r7, 0x0, jmp_358c0
  mov64 r8, r0
  ldxdw r7, [r6-0x1]
  ldxdw r9, [r6+0x7]
  ldxdw r2, [r9+0x0]
  mov64 r1, r7
  callx r2
  add64 r6, -0x1
  ldxdw r2, [r9+0x8]
  jeq r2, 0x0, jmp_35898
  ldxdw r3, [r9+0x10]
  mov64 r1, r7
  call fn_299b0

jmp_35898:
  mov64 r1, r6
  mov64 r2, 0x18
  mov64 r3, 0x8
  call fn_299b0
  mov64 r0, r8

jmp_358c0:
  exit
  ldxdw r3, [r1+0x0]
  ldxdw r1, [r3+0x0]
  ldxdw r3, [r3+0x8]
  ldxdw r3, [r3+0x18]
  callx r3
  exit
  mov64 r3, r2
  ldxdw r2, [r1+0x8]
  ldxdw r1, [r1+0x0]
  call fn_44300
  exit
  mov64 r3, r2
  ldxdw r2, [r1+0x8]
  ldxdw r1, [r1+0x0]
  call fn_44a80
  exit
  ldxw r3, [r2+0x34]
  mov64 r4, r3
  and64 r4, 0x10
  jne r4, 0x0, jmp_35990
  and64 r3, 0x20
  jeq r3, 0x0, jmp_35980
  ja jmp_359a0

jmp_35980:
  call fn_48c38
  ja jmp_359a8

jmp_35990:
  call fn_47e40
  ja jmp_359a8

jmp_359a0:
  call fn_47fc0

jmp_359a8:
  exit
  exit
  exit
  exit
  ldxdw r2, [r1+0x0]
  jeq r2, 0x0, jmp_359f0
  ldxdw r1, [r1+0x8]
  mov64 r3, 0x1
  call fn_299b0

jmp_359f0:
  exit
  mov64 r3, r2
  ldxdw r2, [r1+0x10]
  ldxdw r1, [r1+0x8]
  call fn_44300
  exit
  mov64 r3, r2
  ldxdw r2, [r1+0x10]
  ldxdw r1, [r1+0x8]
  call fn_44a80
  exit

fn_35a48:
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  jsgt r1, 0x13, jmp_35aa8
  jsgt r1, 0x9, jmp_35b20
  jsgt r1, 0x4, jmp_35bc0
  jsgt r1, 0x1, jmp_35ce0
  mov64 r0, 0x0
  jeq r1, 0x0, jmp_35f28
  jeq r1, 0x1, jmp_35a98
  ja jmp_35f20

jmp_35a98:
  mov64 r0, 0x1
  ja jmp_35f28

jmp_35aa8:
  jsgt r1, 0x1d, jmp_35ae8
  jsgt r1, 0x18, jmp_35b90
  jsgt r1, 0x15, jmp_35c20
  jeq r1, 0x14, jmp_35da0
  jeq r1, 0x15, jmp_35ad8
  ja jmp_35f20

jmp_35ad8:
  mov64 r0, 0x15
  ja jmp_35f28

jmp_35ae8:
  jsgt r1, 0x22, jmp_35b58
  jsgt r1, 0x1f, jmp_35cb0
  jeq r1, 0x1e, jmp_35e00
  jeq r1, 0x1f, jmp_35b10
  ja jmp_35f20

jmp_35b10:
  mov64 r0, 0x1f
  ja jmp_35f28

jmp_35b20:
  jsgt r1, 0xe, jmp_35bf0
  jsgt r1, 0xb, jmp_35d10
  jeq r1, 0xa, jmp_35e60
  jeq r1, 0xb, jmp_35b48
  ja jmp_35f20

jmp_35b48:
  mov64 r0, 0xb
  ja jmp_35f28

jmp_35b58:
  jsgt r1, 0x25, jmp_35c80
  jeq r1, 0x23, jmp_35e40
  jeq r1, 0x24, jmp_35de0
  jeq r1, 0x25, jmp_35b80
  ja jmp_35f20

jmp_35b80:
  mov64 r0, 0x25
  ja jmp_35f28

jmp_35b90:
  jsgt r1, 0x1a, jmp_35c50
  jeq r1, 0x19, jmp_35db0
  jeq r1, 0x1a, jmp_35bb0
  ja jmp_35f20

jmp_35bb0:
  mov64 r0, 0x1a
  ja jmp_35f28

jmp_35bc0:
  jsgt r1, 0x6, jmp_35d40
  jeq r1, 0x5, jmp_35e70
  jeq r1, 0x6, jmp_35be0
  ja jmp_35f20

jmp_35be0:
  mov64 r0, 0x6
  ja jmp_35f28

jmp_35bf0:
  jsgt r1, 0x10, jmp_35d70
  jeq r1, 0xf, jmp_35e80
  jeq r1, 0x10, jmp_35c10
  ja jmp_35f20

jmp_35c10:
  mov64 r0, 0x10
  ja jmp_35f28

jmp_35c20:
  jeq r1, 0x16, jmp_35e10
  jeq r1, 0x17, jmp_35dc0
  jeq r1, 0x18, jmp_35c40
  ja jmp_35f20

jmp_35c40:
  mov64 r0, 0x18
  ja jmp_35f28

jmp_35c50:
  jeq r1, 0x1b, jmp_35e20
  jeq r1, 0x1c, jmp_35dd0
  jeq r1, 0x1d, jmp_35c70
  ja jmp_35f20

jmp_35c70:
  mov64 r0, 0x1d
  ja jmp_35f28

jmp_35c80:
  jeq r1, 0x26, jmp_35e50
  jeq r1, 0x27, jmp_35df0
  jeq r1, 0x28, jmp_35ca0
  ja jmp_35f20

jmp_35ca0:
  mov64 r0, 0x28
  ja jmp_35f28

jmp_35cb0:
  jeq r1, 0x20, jmp_35ed0
  jeq r1, 0x21, jmp_35e30
  jeq r1, 0x22, jmp_35cd0
  ja jmp_35f20

jmp_35cd0:
  mov64 r0, 0x22
  ja jmp_35f28

jmp_35ce0:
  jeq r1, 0x2, jmp_35ee0
  jeq r1, 0x3, jmp_35e90
  jeq r1, 0x4, jmp_35d00
  ja jmp_35f20

jmp_35d00:
  mov64 r0, 0x4
  ja jmp_35f28

jmp_35d10:
  jeq r1, 0xc, jmp_35ef0
  jeq r1, 0xd, jmp_35ea0
  jeq r1, 0xe, jmp_35d30
  ja jmp_35f20

jmp_35d30:
  mov64 r0, 0xe
  ja jmp_35f28

jmp_35d40:
  jeq r1, 0x7, jmp_35f00
  jeq r1, 0x8, jmp_35eb0
  jeq r1, 0x9, jmp_35d60
  ja jmp_35f20

jmp_35d60:
  mov64 r0, 0x9
  ja jmp_35f28

jmp_35d70:
  jeq r1, 0x11, jmp_35f10
  jeq r1, 0x12, jmp_35ec0
  jeq r1, 0x13, jmp_35d90
  ja jmp_35f20

jmp_35d90:
  mov64 r0, 0x13
  ja jmp_35f28

jmp_35da0:
  mov64 r0, 0x14
  ja jmp_35f28

jmp_35db0:
  mov64 r0, 0x19
  ja jmp_35f28

jmp_35dc0:
  mov64 r0, 0x17
  ja jmp_35f28

jmp_35dd0:
  mov64 r0, 0x1c
  ja jmp_35f28

jmp_35de0:
  mov64 r0, 0x24
  ja jmp_35f28

jmp_35df0:
  mov64 r0, 0x27
  ja jmp_35f28

jmp_35e00:
  mov64 r0, 0x1e
  ja jmp_35f28

jmp_35e10:
  mov64 r0, 0x16
  ja jmp_35f28

jmp_35e20:
  mov64 r0, 0x1b
  ja jmp_35f28

jmp_35e30:
  mov64 r0, 0x21
  ja jmp_35f28

jmp_35e40:
  mov64 r0, 0x23
  ja jmp_35f28

jmp_35e50:
  mov64 r0, 0x26
  ja jmp_35f28

jmp_35e60:
  mov64 r0, 0xa
  ja jmp_35f28

jmp_35e70:
  mov64 r0, 0x5
  ja jmp_35f28

jmp_35e80:
  mov64 r0, 0xf
  ja jmp_35f28

jmp_35e90:
  mov64 r0, 0x3
  ja jmp_35f28

jmp_35ea0:
  mov64 r0, 0xd
  ja jmp_35f28

jmp_35eb0:
  mov64 r0, 0x8
  ja jmp_35f28

jmp_35ec0:
  mov64 r0, 0x12
  ja jmp_35f28

jmp_35ed0:
  mov64 r0, 0x20
  ja jmp_35f28

jmp_35ee0:
  mov64 r0, 0x2
  ja jmp_35f28

jmp_35ef0:
  mov64 r0, 0xc
  ja jmp_35f28

jmp_35f00:
  mov64 r0, 0x7
  ja jmp_35f28

jmp_35f10:
  mov64 r0, 0x11
  ja jmp_35f28

jmp_35f20:
  mov64 r0, 0x29

jmp_35f28:
  exit

fn_35f30:
  call fn_365f8
  exit

fn_35f40:
  mov64 r3, 0x10
  and64 r2, 0xff
  jsgt r2, 0x13, jmp_35fa8
  jsgt r2, 0x9, jmp_36020
  jsgt r2, 0x4, jmp_360b8
  jsgt r2, 0x1, jmp_361a0
  lddw r4, str_0418
  jeq r2, 0x0, jmp_36568
  lddw r4, str_0d50
  mov64 r3, 0x11
  ja jmp_36568

jmp_35fa8:
  jsgt r2, 0x1d, jmp_35fe8
  jsgt r2, 0x18, jmp_36088
  jsgt r2, 0x15, jmp_36148
  jeq r2, 0x14, jmp_36498
  lddw r4, str_0ec7
  mov64 r3, 0xc
  ja jmp_36568

jmp_35fe8:
  jsgt r2, 0x22, jmp_36050
  jsgt r2, 0x1f, jmp_36118
  jeq r2, 0x1e, jmp_36478
  lddw r4, str_0f45
  mov64 r3, 0x1b
  ja jmp_36568

jmp_36020:
  jsgt r2, 0xe, jmp_360e8
  jsgt r2, 0xb, jmp_361c8
  jeq r2, 0xa, jmp_364d8
  lddw r4, str_0dd4
  ja jmp_36560

jmp_36050:
  jsgt r2, 0x25, jmp_36258
  jeq r2, 0x23, jmp_36368
  jeq r2, 0x24, jmp_36538
  lddw r4, str_0fa4
  mov64 r3, 0x16
  ja jmp_36568

jmp_36088:
  jsgt r2, 0x1a, jmp_36170
  jeq r2, 0x19, jmp_364b8
  lddw r4, str_0efd
  mov64 r3, 0x19
  ja jmp_36568

jmp_360b8:
  jsgt r2, 0x6, jmp_361f8
  jeq r2, 0x5, jmp_364f8
  lddw r4, str_0d86
  mov64 r3, 0x12
  ja jmp_36568

jmp_360e8:
  jsgt r2, 0x10, jmp_36228
  jeq r2, 0xf, jmp_36518
  lddw r4, str_0e26
  mov64 r3, 0x13
  ja jmp_36568

jmp_36118:
  jeq r2, 0x20, jmp_36288
  jeq r2, 0x21, jmp_363a8
  lddw r4, str_0f6e
  mov64 r3, 0x16
  ja jmp_36568

jmp_36148:
  jeq r2, 0x16, jmp_362a8
  jeq r2, 0x17, jmp_363c0
  lddw r4, str_0488
  ja jmp_36568

jmp_36170:
  jeq r2, 0x1b, jmp_362c8
  jeq r2, 0x1c, jmp_363e0
  lddw r4, str_0f31
  mov64 r3, 0x14
  ja jmp_36568

jmp_361a0:
  jeq r2, 0x2, jmp_362e8
  jeq r2, 0x3, jmp_36400
  lddw r4, str_0428
  ja jmp_36568

jmp_361c8:
  jeq r2, 0xc, jmp_36308
  jeq r2, 0xd, jmp_36418
  lddw r4, str_0e09
  mov64 r3, 0xf
  ja jmp_36568

jmp_361f8:
  jeq r2, 0x7, jmp_36328
  jeq r2, 0x8, jmp_36438
  lddw r4, str_0db3
  mov64 r3, 0x15
  ja jmp_36568

jmp_36228:
  jeq r2, 0x11, jmp_36348
  jeq r2, 0x12, jmp_36458
  lddw r4, str_0e97
  mov64 r3, 0x19
  ja jmp_36568

jmp_36258:
  jeq r2, 0x26, jmp_36388
  jeq r2, 0x27, jmp_36550
  lddw r4, str_0fd2
  mov64 r3, 0x13
  ja jmp_36568

jmp_36288:
  lddw r4, str_0f60
  mov64 r3, 0xe
  ja jmp_36568

jmp_362a8:
  lddw r4, str_0ed3
  mov64 r3, 0x9
  ja jmp_36568

jmp_362c8:
  lddw r4, str_0f16
  mov64 r3, 0xe
  ja jmp_36568

jmp_362e8:
  lddw r4, str_0d61
  mov64 r3, 0x12
  ja jmp_36568

jmp_36308:
  lddw r4, str_0ddf
  mov64 r3, 0x15
  ja jmp_36568

jmp_36328:
  lddw r4, str_0d98
  mov64 r3, 0xd
  ja jmp_36568

jmp_36348:
  lddw r4, str_0e39
  mov64 r3, 0x26
  ja jmp_36568

jmp_36368:
  lddw r4, str_0f84
  mov64 r3, 0x15
  ja jmp_36568

jmp_36388:
  lddw r4, str_0fba
  mov64 r3, 0xd
  ja jmp_36568

jmp_363a8:
  lddw r4, str_0438
  ja jmp_36568

jmp_363c0:
  lddw r4, str_0edc
  mov64 r3, 0xa
  ja jmp_36568

jmp_363e0:
  lddw r4, str_0f24
  mov64 r3, 0xd
  ja jmp_36568

jmp_36400:
  lddw r4, str_03d8
  ja jmp_36568

jmp_36418:
  lddw r4, str_0df4
  mov64 r3, 0x15
  ja jmp_36568

jmp_36438:
  lddw r4, str_0da5
  mov64 r3, 0xe
  ja jmp_36568

jmp_36458:
  lddw r4, str_0e5f
  mov64 r3, 0x38
  ja jmp_36568

jmp_36478:
  lddw r4, str_0cba
  mov64 r3, 0x8
  ja jmp_36568

jmp_36498:
  lddw r4, str_0eb0
  mov64 r3, 0x17
  ja jmp_36568

jmp_364b8:
  lddw r4, str_0ee6
  mov64 r3, 0x17
  ja jmp_36568

jmp_364d8:
  lddw r4, str_0dc8
  mov64 r3, 0xc
  ja jmp_36568

jmp_364f8:
  lddw r4, str_0d73
  mov64 r3, 0x13
  ja jmp_36568

jmp_36518:
  lddw r4, str_0e18
  mov64 r3, 0xe
  ja jmp_36568

jmp_36538:
  lddw r4, str_0f99
  ja jmp_36560

jmp_36550:
  lddw r4, str_0fc7

jmp_36560:
  mov64 r3, 0xb

jmp_36568:
  stxdw [r1+0x8], r3
  stxdw [r1+0x0], r4
  exit

fn_36580:
  mov64 r7, r3
  mov64 r6, r2
  mov64 r8, r1
  mov64 r1, 0x18
  mov64 r2, 0x8
  call fn_298e0
  jne r0, 0x0, jmp_365d0
  mov64 r1, 0x8
  mov64 r2, 0x18
  call fn_37a08

jmp_365d0:
  stxb [r0+0x10], r8
  stxdw [r0+0x8], r7
  stxdw [r0+0x0], r6
  add64 r0, 0x1
  exit

fn_365f8:
  ldxdw r6, [r1+0x0]
  mov64 r1, r6
  and64 r1, 0x3
  jsgt r1, 0x1, jmp_36710
  jeq r1, 0x0, jmp_367c8
  mov64 r1, r6
  add64 r1, -0x1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x18
  stxdw [r10-0xfd8], r1
  lddw r1, data_3af8
  stxdw [r10-0xfd0], r1
  mov64 r1, 0x5
  stxdw [r10-0xfe0], r1
  lddw r1, str_0ff9
  stxdw [r10-0xfe8], r1
  lddw r1, data_3a98
  stxdw [r10-0xff0], r1
  add64 r6, 0xf
  stxdw [r10-0xff8], r6
  mov64 r1, 0x4
  stxdw [r10-0x1000], r1
  mov64 r5, r10
  mov64 r1, r2
  lddw r2, str_0ff3
  mov64 r3, 0x6
  lddw r4, str_0303
  call fn_43de8
  ja jmp_36ab8

jmp_36710:
  jeq r1, 0x2, jmp_368a0
  mov64 r7, r2
  rsh64 r6, 0x20
  mov64 r1, r6
  call fn_35a48
  stxb [r10-0x30], r0
  mov64 r6, r10
  add64 r6, -0x18
  mov64 r1, r6
  mov64 r2, r7
  lddw r3, str_02ff
  mov64 r4, 0x4
  call fn_43f98
  mov64 r2, r10
  add64 r2, -0x30
  mov64 r1, r6
  lddw r3, data_3a98
  call fn_40fd8
  mov64 r1, r0
  call fn_412e8
  ja jmp_36ab8

jmp_367c8:
  mov64 r7, r10
  add64 r7, -0x18
  mov64 r1, r7
  lddw r3, str_0fee
  mov64 r4, 0x5
  call fn_43d80
  mov64 r4, r6
  add64 r4, 0x10
  mov64 r1, r7
  lddw r2, str_0303
  mov64 r3, 0x4
  lddw r5, data_3a98
  call fn_40ae8
  mov64 r1, r0
  lddw r2, str_0fe7
  mov64 r3, 0x7
  mov64 r4, r6
  lddw r5, data_3ad8
  call fn_40ae8
  mov64 r1, r0
  call fn_40ed0
  ja jmp_36ab8

jmp_368a0:
  rsh64 r6, 0x20
  stxw [r10-0x34], r6
  mov64 r6, r10
  add64 r6, -0x30
  mov64 r1, r6
  lddw r3, str_0fe5
  mov64 r4, 0x2
  call fn_43d80
  mov64 r4, r10
  add64 r4, -0x34
  mov64 r1, r6
  lddw r2, str_02fb
  mov64 r3, 0x4
  lddw r5, data_3a78
  call fn_40ae8
  mov64 r1, 0x27
  stxb [r10-0x19], r1
  mov64 r4, r10
  add64 r4, -0x19
  mov64 r1, r0
  lddw r2, str_0303
  mov64 r3, 0x4
  lddw r5, data_3a98
  call fn_40ae8
  mov64 r6, r0
  mov64 r7, 0x14
  mov64 r1, 0x14
  mov64 r2, 0x1
  call fn_298e0
  jne r0, 0x0, jmp_369d0
  mov64 r1, 0x1
  mov64 r2, 0x14
  call fn_379f0

jmp_369d0:
  mov64 r1, 0x6c756673
  stxw [r0+0x10], r1
  lddw r1, 0x736563637573206e
  stxdw [r0+0x8], r1
  lddw r1, 0x6f6974617265706f
  stxdw [r0+0x0], r1
  stxdw [r10-0x10], r0
  stxdw [r10-0x8], r7
  stxdw [r10-0x18], r7
  mov64 r4, r10
  add64 r4, -0x18
  mov64 r1, r6
  lddw r2, str_0fe7
  mov64 r3, 0x7
  lddw r5, data_3ab8
  call fn_40ae8
  mov64 r1, r0
  call fn_40ed0
  ldxdw r2, [r10-0x18]
  jeq r2, 0x0, jmp_36ab8
  ldxdw r1, [r10-0x10]
  mov64 r3, 0x1
  mov64 r6, r0
  call fn_299b0
  mov64 r0, r6

jmp_36ab8:
  exit
  mov64 r6, r2
  ldxdw r1, [r1+0x0]
  mov64 r2, r1
  and64 r2, 0x3
  jsgt r2, 0x1, jmp_36b28
  jeq r2, 0x0, jmp_36c38
  ldxdw r2, [r1-0x1]
  ldxdw r1, [r1+0x7]
  ldxdw r3, [r1+0x20]
  mov64 r1, r2
  mov64 r2, r6
  callx r3
  ja jmp_36e28

jmp_36b28:
  jeq r2, 0x2, jmp_36c60
  rsh64 r1, 0x20
  call fn_35a48
  mov64 r1, r10
  add64 r1, -0x80
  mov64 r2, r0
  call fn_35f40
  lddw r1, 0x663f
  stxdw [r10-0x60], r1
  mov64 r1, r10
  add64 r1, -0x50
  stxdw [r10-0x68], r1
  mov64 r1, 0x0
  stxdw [r10-0x10], r1
  lddw r1, data_0468
  stxdw [r10-0x30], r1
  mov64 r1, 0x1
  stxdw [r10-0x28], r1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x68
  stxdw [r10-0x20], r1
  ldxdw r1, [r10-0x78]
  stxdw [r10-0x48], r1
  ldxdw r1, [r10-0x80]
  stxdw [r10-0x50], r1
  ldxdw r2, [r6+0x28]
  ldxdw r1, [r6+0x20]
  mov64 r3, r10
  add64 r3, -0x30
  call fn_42488
  ja jmp_36e28

jmp_36c38:
  ldxdw r2, [r1+0x8]
  ldxdw r1, [r1+0x0]
  mov64 r3, r6
  call fn_44a80
  ja jmp_36e28

jmp_36c60:
  rsh64 r1, 0x20
  stxw [r10-0x6c], r1
  mov64 r7, 0x14
  mov64 r1, 0x14
  mov64 r2, 0x1
  call fn_298e0
  jne r0, 0x0, jmp_36cb0
  mov64 r1, 0x1
  mov64 r2, 0x14
  call fn_379f0

jmp_36cb0:
  mov64 r1, 0x6c756673
  stxw [r0+0x10], r1
  lddw r1, 0x736563637573206e
  stxdw [r0+0x8], r1
  lddw r1, 0x6f6974617265706f
  stxdw [r0+0x0], r1
  stxdw [r10-0x60], r0
  stxdw [r10-0x58], r7
  stxdw [r10-0x68], r7
  mov64 r1, 0x0
  stxdw [r10-0x10], r1
  mov64 r1, 0x3
  stxdw [r10-0x28], r1
  lddw r1, data_3b18
  stxdw [r10-0x30], r1
  mov64 r1, 0x2
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x50
  stxdw [r10-0x20], r1
  lddw r1, 0x8ae5
  stxdw [r10-0x38], r1
  mov64 r1, r10
  add64 r1, -0x6c
  stxdw [r10-0x40], r1
  lddw r1, 0x665f
  stxdw [r10-0x48], r1
  mov64 r1, r10
  add64 r1, -0x68
  stxdw [r10-0x50], r1
  ldxdw r2, [r6+0x28]
  ldxdw r1, [r6+0x20]
  mov64 r3, r10
  add64 r3, -0x30
  call fn_42488
  ldxdw r2, [r10-0x68]
  jeq r2, 0x0, jmp_36e28
  ldxdw r1, [r10-0x60]
  mov64 r3, 0x1
  mov64 r6, r0
  call fn_299b0
  mov64 r0, r6

jmp_36e28:
  exit

fn_36e30:
  call fn_374c8

fn_36e38:
  call fn_374b8
  mov64 r4, r2
  mov64 r3, 0x8
  ldxb r1, [r1+0x0]
  jsgt r1, 0x13, jmp_36eb0
  jsgt r1, 0x9, jmp_36f28
  jsgt r1, 0x4, jmp_36fc8
  jsgt r1, 0x1, jmp_370b8
  lddw r2, str_0c9a
  jeq r1, 0x0, jmp_37490
  lddw r2, str_0478
  mov64 r3, 0x10
  ja jmp_37490

jmp_36eb0:
  jsgt r1, 0x1d, jmp_36ef0
  jsgt r1, 0x18, jmp_36f98
  jsgt r1, 0x15, jmp_37058
  jeq r1, 0x14, jmp_373b8
  lddw r2, str_1109
  mov64 r3, 0xb
  ja jmp_37490

jmp_36ef0:
  jsgt r1, 0x22, jmp_36f60
  jsgt r1, 0x1f, jmp_37028
  jeq r1, 0x1e, jmp_373a0
  lddw r2, str_1174
  mov64 r3, 0xe
  ja jmp_37490

jmp_36f28:
  jsgt r1, 0xe, jmp_36ff8
  jsgt r1, 0xb, jmp_370e8
  jeq r1, 0xa, jmp_373f8
  lddw r2, str_107c
  mov64 r3, 0xa
  ja jmp_37490

jmp_36f60:
  jsgt r1, 0x25, jmp_37178
  jeq r1, 0x23, jmp_37280
  jeq r1, 0x24, jmp_37458
  lddw r2, str_11c6
  mov64 r3, 0xd
  ja jmp_37490

jmp_36f98:
  jsgt r1, 0x1a, jmp_37088
  jeq r1, 0x19, jmp_373d8
  lddw r2, str_1133
  mov64 r3, 0x17
  ja jmp_37490

jmp_36fc8:
  jsgt r1, 0x6, jmp_37118
  jeq r1, 0x5, jmp_37418
  lddw r2, str_104b
  mov64 r3, 0x11
  ja jmp_37490

jmp_36ff8:
  jsgt r1, 0x10, jmp_37148
  jeq r1, 0xf, jmp_37438
  lddw r2, str_10b6
  mov64 r3, 0x11
  ja jmp_37490

jmp_37028:
  jeq r1, 0x20, jmp_371a8
  jeq r1, 0x21, jmp_372c0
  lddw r2, str_119d
  mov64 r3, 0x13
  ja jmp_37490

jmp_37058:
  jeq r1, 0x16, jmp_371c8
  jeq r1, 0x17, jmp_372e0
  lddw r2, str_111d
  mov64 r3, 0xb
  ja jmp_37490

jmp_37088:
  jeq r1, 0x1b, jmp_371e0
  jeq r1, 0x1c, jmp_37300
  lddw r2, str_1162
  mov64 r3, 0x12
  ja jmp_37490

jmp_370b8:
  jeq r1, 0x2, jmp_37200
  jeq r1, 0x3, jmp_37320
  lddw r2, str_102a
  mov64 r3, 0xf
  ja jmp_37490

jmp_370e8:
  jeq r1, 0xc, jmp_37220
  jeq r1, 0xd, jmp_37340
  lddw r2, str_109d
  mov64 r3, 0xd
  ja jmp_37490

jmp_37118:
  jeq r1, 0x7, jmp_37240
  jeq r1, 0x8, jmp_37360
  lddw r2, str_0498
  mov64 r3, 0x10
  ja jmp_37490

jmp_37148:
  jeq r1, 0x11, jmp_37260
  jeq r1, 0x12, jmp_37380
  lddw r2, str_10e7
  mov64 r3, 0x16
  ja jmp_37490

jmp_37178:
  jeq r1, 0x26, jmp_372a0
  jeq r1, 0x27, jmp_37478
  lddw r2, str_11e3
  mov64 r3, 0xd
  ja jmp_37490

jmp_371a8:
  lddw r2, str_1182
  mov64 r3, 0xc
  ja jmp_37490

jmp_371c8:
  lddw r2, str_0ca2
  ja jmp_37490

jmp_371e0:
  lddw r2, str_114a
  mov64 r3, 0xc
  ja jmp_37490

jmp_37200:
  lddw r2, str_100a
  mov64 r3, 0x11
  ja jmp_37490

jmp_37220:
  lddw r2, str_1086
  mov64 r3, 0xd
  ja jmp_37490

jmp_37240:
  lddw r2, str_105c
  mov64 r3, 0xc
  ja jmp_37490

jmp_37260:
  lddw r2, str_10c7
  mov64 r3, 0x12
  ja jmp_37490

jmp_37280:
  lddw r2, str_11b0
  mov64 r3, 0xb
  ja jmp_37490

jmp_372a0:
  lddw r2, str_11d3
  mov64 r3, 0xb
  ja jmp_37490

jmp_372c0:
  lddw r2, str_118e
  mov64 r3, 0xf
  ja jmp_37490

jmp_372e0:
  lddw r2, str_1114
  mov64 r3, 0x9
  ja jmp_37490

jmp_37300:
  lddw r2, str_1156
  mov64 r3, 0xc
  ja jmp_37490

jmp_37320:
  lddw r2, str_101b
  mov64 r3, 0xf
  ja jmp_37490

jmp_37340:
  lddw r2, str_1093
  mov64 r3, 0xa
  ja jmp_37490

jmp_37360:
  lddw r2, str_1068
  mov64 r3, 0x9
  ja jmp_37490

jmp_37380:
  lddw r2, str_10d9
  mov64 r3, 0xe
  ja jmp_37490

jmp_373a0:
  lddw r2, str_0cb2
  ja jmp_37490

jmp_373b8:
  lddw r2, str_10fd
  mov64 r3, 0xc
  ja jmp_37490

jmp_373d8:
  lddw r2, str_1128
  mov64 r3, 0xb
  ja jmp_37490

jmp_373f8:
  lddw r2, str_1071
  mov64 r3, 0xb
  ja jmp_37490

jmp_37418:
  lddw r2, str_1039
  mov64 r3, 0x12
  ja jmp_37490

jmp_37438:
  lddw r2, str_10aa
  mov64 r3, 0xc
  ja jmp_37490

jmp_37458:
  lddw r2, str_11bb
  mov64 r3, 0xb
  ja jmp_37490

jmp_37478:
  lddw r2, str_11de
  mov64 r3, 0x5

jmp_37490:
  mov64 r1, r4
  call fn_43d50
  exit

fn_374a8:
  call sol_log_
  exit

fn_374b8:
  call custom_panic
  call abort

fn_374c8:
  call abort

fn_374d0:
  lddw r1, str_11f0
  mov64 r2, 0x2e
  call fn_374a8
  call fn_36e30

fn_374f8:
  call fn_374d0
  mov64 r3, r2
  lddw r2, data_3b48
  call fn_42488
  exit
  exit
  ldxdw r2, [r1+0x0]
  jeq r2, 0x0, jmp_37558
  ldxdw r1, [r1+0x8]
  mov64 r3, 0x1
  call fn_299b0

jmp_37558:
  exit
  mov64 r1, r2
  lddw r2, str_121e
  mov64 r3, 0x5
  call fn_43d50
  exit

fn_37590:
  mov64 r1, 0x1
  stxdw [r10-0x28], r1
  lddw r1, data_3b78
  stxdw [r10-0x30], r1
  mov64 r1, 0x0
  stxdw [r10-0x10], r1
  stxdw [r10-0x18], r1
  mov64 r1, 0x8
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x30
  lddw r2, data_3b88
  call fn_3fef0

fn_37608:
  mov64 r6, r1
  mov64 r4, r2
  add64 r4, r3
  mov64 r1, 0x0
  mov64 r3, 0x1
  jgt r2, r4, jmp_37640
  mov64 r3, 0x0

jmp_37640:
  and64 r3, 0x1
  jne r3, 0x0, jmp_37728
  ldxdw r1, [r6+0x0]
  mov64 r7, r1
  lsh64 r7, 0x1
  jgt r7, r4, jmp_37678
  mov64 r7, r4

jmp_37678:
  jgt r7, 0x8, jmp_37688
  mov64 r7, 0x8

jmp_37688:
  mov64 r3, 0x0
  mov64 r2, r7
  xor64 r2, -0x1
  rsh64 r2, 0x3f
  jeq r1, 0x0, jmp_376d0
  ldxdw r3, [r6+0x8]
  stxdw [r10-0x8], r1
  stxdw [r10-0x18], r3
  mov64 r3, 0x1

jmp_376d0:
  stxdw [r10-0x10], r3
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  mov64 r3, r7
  call fn_37890
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_37730
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_37728:
  call fn_379f0

jmp_37730:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_37750:
  mov64 r6, r1
  ldxdw r3, [r6+0x0]
  mov64 r4, r3
  add64 r4, 0x1
  mov64 r1, 0x0
  mov64 r5, 0x1
  jeq r4, 0x0, jmp_37790
  mov64 r5, 0x0

jmp_37790:
  and64 r5, 0x1
  jne r5, 0x0, jmp_37868
  mov64 r7, r3
  lsh64 r7, 0x1
  jgt r7, r4, jmp_377c0
  mov64 r7, r4

jmp_377c0:
  jgt r7, 0x8, jmp_377d0
  mov64 r7, 0x8

jmp_377d0:
  mov64 r2, r7
  xor64 r2, -0x1
  rsh64 r2, 0x3f
  jeq r3, 0x0, jmp_37810
  ldxdw r1, [r6+0x8]
  stxdw [r10-0x8], r3
  stxdw [r10-0x18], r1
  mov64 r1, 0x1

jmp_37810:
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r4, r10
  add64 r4, -0x18
  mov64 r3, r7
  call fn_37890
  ldxdw r1, [r10-0x30]
  jeq r1, 0x0, jmp_37870
  ldxdw r2, [r10-0x20]
  ldxdw r1, [r10-0x28]

jmp_37868:
  call fn_379f0

jmp_37870:
  ldxdw r1, [r10-0x28]
  stxdw [r6+0x0], r7
  stxdw [r6+0x8], r1
  exit

fn_37890:
  mov64 r7, r3
  mov64 r6, r1
  jeq r2, 0x0, jmp_37910
  ldxdw r1, [r4+0x8]
  jeq r1, 0x0, jmp_37988
  ldxdw r2, [r4+0x10]
  jne r2, 0x0, jmp_37930
  mov64 r1, 0x0
  mov64 r0, 0x1
  jeq r7, 0x0, jmp_379c8
  mov64 r1, r7
  mov64 r2, 0x1
  call fn_298e0
  mov64 r1, r7
  jeq r0, 0x0, jmp_37968
  ja jmp_379c8

jmp_37910:
  mov64 r1, 0x0
  stxdw [r6+0x8], r1
  mov64 r1, 0x1
  ja jmp_379e0

jmp_37930:
  ldxdw r1, [r4+0x0]
  mov64 r3, 0x1
  mov64 r4, r7
  call fn_299b8
  mov64 r1, r7
  jeq r0, 0x0, jmp_37968
  ja jmp_379c8

jmp_37968:
  stxdw [r6+0x10], r7
  mov64 r1, 0x1
  stxdw [r6+0x8], r1
  ja jmp_379e0

jmp_37988:
  mov64 r1, 0x0
  mov64 r0, 0x1
  jeq r7, 0x0, jmp_379c8
  mov64 r1, r7
  mov64 r2, 0x1
  call fn_298e0
  mov64 r1, r7
  jeq r0, 0x0, jmp_37968

jmp_379c8:
  stxdw [r6+0x10], r1
  stxdw [r6+0x8], r0
  mov64 r1, 0x0

jmp_379e0:
  stxdw [r6+0x0], r1
  exit

fn_379f0:
  jne r1, 0x0, jmp_37a00
  call fn_37590

jmp_37a00:
  call fn_37a08

fn_37a08:
  mov64 r3, r1
  mov64 r1, r2
  mov64 r2, r3
  call fn_29b98
  ldxdw r3, [r2+0x10]
  stxdw [r1+0x8], r3
  ldxdw r2, [r2+0x8]
  stxdw [r1+0x0], r2
  exit
  mov64 r3, r2
  ldxdw r2, [r1+0x10]
  ldxdw r1, [r1+0x8]
  call fn_44a80
  exit
  mov64 r3, r2
  ldxdw r2, [r1+0x10]
  ldxdw r1, [r1+0x8]
  call fn_44300
  exit

fn_37aa0:
  mov64 r7, r2
  mov64 r6, r1
  ldxdw r2, [r7+0x8]
  jeq r2, 0x0, jmp_37b90
  ldxdw r1, [r7+0x0]
  mov64 r4, 0x0
  mov64 r3, r1
  add64 r3, 0x8

jmp_37ae0:
  ldxdw r8, [r3+0x0]
  add64 r8, r4
  add64 r3, 0x10
  add64 r2, -0x1
  mov64 r4, r8
  jne r2, 0x0, jmp_37ae0
  ldxdw r2, [r7+0x18]
  jeq r2, 0x0, jmp_37ba8
  mov64 r4, 0x0
  mov64 r3, 0x1
  mov64 r5, 0x10
  mov64 r2, 0x1
  jgt r5, r8, jmp_37b50
  mov64 r2, 0x0

jmp_37b50:
  ldxdw r1, [r1+0x8]
  jeq r1, 0x0, jmp_37b68
  mov64 r3, 0x0

jmp_37b68:
  jsgt r4, r8, jmp_37b90
  and64 r2, r3
  lsh64 r8, 0x1
  and64 r2, 0x1
  jeq r2, 0x0, jmp_37ba8

jmp_37b90:
  mov64 r0, 0x1
  mov64 r1, 0x0
  ja jmp_37c00

jmp_37ba8:
  mov64 r0, 0x1
  mov64 r1, 0x0
  jeq r8, 0x0, jmp_37c00
  mov64 r9, 0x0
  jsgt r9, r8, jmp_37ce0
  mov64 r9, 0x1
  mov64 r1, r8
  mov64 r2, 0x1
  call fn_298e0
  jeq r0, 0x0, jmp_37ce0
  mov64 r1, r8

jmp_37c00:
  mov64 r2, 0x0
  stxdw [r10-0x10], r2
  stxdw [r10-0x18], r0
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x20
  lddw r2, data_3b48
  mov64 r3, r7
  call fn_42488
  jne r0, 0x0, jmp_37c90
  ldxdw r1, [r10-0x10]
  stxdw [r6+0x10], r1
  ldxdw r1, [r10-0x18]
  stxdw [r6+0x8], r1
  ldxdw r1, [r10-0x20]
  stxdw [r6+0x0], r1
  exit

jmp_37c90:
  mov64 r3, r10
  add64 r3, -0x1
  lddw r1, str_1250
  mov64 r2, 0x33
  lddw r4, data_3ba0
  lddw r5, data_3bc0
  call fn_40400

jmp_37ce0:
  mov64 r1, r9
  mov64 r2, r8
  call fn_379f0

fn_37cf8:
  mov64 r6, r1
  mov64 r1, r2
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r3, 0x80
  jgt r3, r1, jmp_37de8
  mov64 r3, 0x0
  stxw [r10-0x4], r3
  mov64 r3, 0x800
  jgt r3, r1, jmp_37e50
  mov64 r1, r2
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r3, 0x10000
  jgt r3, r1, jmp_37d78
  ja jmp_37e98

jmp_37d78:
  mov64 r1, r2
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x2], r1
  mov64 r1, r2
  rsh64 r1, 0xc
  or64 r1, 0xe0
  stxb [r10-0x4], r1
  rsh64 r2, 0x6
  and64 r2, 0x3f
  or64 r2, 0x80
  stxb [r10-0x3], r2
  mov64 r7, 0x3
  ja jmp_37f30

jmp_37de8:
  ldxdw r7, [r6+0x10]
  ldxdw r1, [r6+0x0]
  jne r7, r1, jmp_37e20
  mov64 r1, r6
  mov64 r8, r2
  call fn_37750
  mov64 r2, r8

jmp_37e20:
  ldxdw r1, [r6+0x8]
  add64 r1, r7
  stxb [r1+0x0], r2
  add64 r7, 0x1
  stxdw [r6+0x10], r7
  ja jmp_37fb8

jmp_37e50:
  mov64 r1, r2
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x3], r1
  rsh64 r2, 0x6
  or64 r2, 0xc0
  stxb [r10-0x4], r2
  mov64 r7, 0x2
  ja jmp_37f30

jmp_37e98:
  mov64 r1, r2
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x1], r1
  mov64 r1, r2
  rsh64 r1, 0x6
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x2], r1
  mov64 r1, r2
  rsh64 r1, 0xc
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x3], r1
  rsh64 r2, 0x12
  and64 r2, 0x7
  or64 r2, 0xf0
  stxb [r10-0x4], r2
  mov64 r7, 0x4

jmp_37f30:
  ldxdw r8, [r6+0x10]
  ldxdw r1, [r6+0x0]
  sub64 r1, r8
  jge r1, r7, jmp_37f78
  mov64 r1, r6
  mov64 r2, r8
  mov64 r3, r7
  call fn_37608
  ldxdw r8, [r6+0x10]

jmp_37f78:
  ldxdw r1, [r6+0x8]
  add64 r1, r8
  mov64 r2, r10
  add64 r2, -0x4
  mov64 r3, r7
  call fn_490d0
  add64 r8, r7
  stxdw [r6+0x10], r8

jmp_37fb8:
  exit
  mov64 r6, r3
  mov64 r7, r1
  ldxdw r8, [r7+0x10]
  ldxdw r1, [r7+0x0]
  sub64 r1, r8
  jge r1, r6, jmp_38028
  mov64 r1, r7
  mov64 r9, r2
  mov64 r2, r8
  mov64 r3, r6
  call fn_37608
  mov64 r2, r9
  ldxdw r8, [r7+0x10]

jmp_38028:
  ldxdw r1, [r7+0x8]
  add64 r1, r8
  mov64 r3, r6
  call fn_490d0
  add64 r8, r6
  stxdw [r7+0x10], r8
  mov64 r0, 0x0
  exit
  call fn_37cf8
  mov64 r0, 0x0
  exit
  exit
  exit

fn_38090:
  mov64 r7, r2
  mov64 r6, r1
  and64 r2, 0x7
  jne r2, 0x0, jmp_380e8

jmp_380b0:
  mov64 r1, r7
  and64 r1, 0x8
  jeq r1, 0x0, jmp_382e0
  ldxdw r1, [r6+0xa0]
  mov64 r2, 0x29
  jgt r2, r1, jmp_38218
  ja jmp_38100

jmp_380e8:
  ldxdw r1, [r6+0xa0]
  mov64 r3, 0x29
  jgt r3, r1, jmp_38120

jmp_38100:
  mov64 r2, 0x28
  lddw r3, data_43c0
  call fn_45270

jmp_38120:
  mov64 r3, 0x0
  jeq r1, 0x0, jmp_38208
  lsh64 r2, 0x2
  lddw r3, data_1ab0
  add64 r3, r2
  ldxw r3, [r3+0x0]
  mov64 r4, r1
  lsh64 r4, 0x2
  mov64 r2, r6
  add64 r2, r4
  mov64 r8, 0x0
  mov64 r0, r6

jmp_38188:
  ldxw r5, [r0+0x0]
  mul64 r5, r3
  add64 r5, r8
  stxw [r0+0x0], r5
  add64 r0, 0x4
  rsh64 r5, 0x20
  add64 r4, -0x4
  mov64 r8, r5
  jeq r4, 0x0, jmp_381d8
  ja jmp_38188

jmp_381d8:
  mov64 r3, r1
  jeq r5, 0x0, jmp_38208
  jeq r1, 0x28, jmp_38428
  stxw [r2+0x0], r5
  add64 r1, 0x1
  mov64 r3, r1

jmp_38208:
  stxdw [r6+0xa0], r3
  ja jmp_380b0

jmp_38218:
  mov64 r3, 0x0
  jeq r1, 0x0, jmp_382d8
  mov64 r3, r1
  lsh64 r3, 0x2
  mov64 r2, r6
  add64 r2, r3
  mov64 r0, 0x0
  mov64 r5, r6

jmp_38258:
  ldxw r4, [r5+0x0]
  mul64 r4, 0x5f5e100
  add64 r4, r0
  stxw [r5+0x0], r4
  add64 r5, 0x4
  rsh64 r4, 0x20
  add64 r3, -0x4
  mov64 r0, r4
  jeq r3, 0x0, jmp_382a8
  ja jmp_38258

jmp_382a8:
  mov64 r3, r1
  jeq r4, 0x0, jmp_382d8
  jeq r1, 0x28, jmp_38428
  stxw [r2+0x0], r4
  add64 r1, 0x1
  mov64 r3, r1

jmp_382d8:
  stxdw [r6+0xa0], r3

jmp_382e0:
  mov64 r1, r7
  and64 r1, 0x10
  jeq r1, 0x0, jmp_38320
  mov64 r1, r6
  lddw r2, data_1304
  mov64 r3, 0x2
  call fn_473e0

jmp_38320:
  mov64 r1, r7
  and64 r1, 0x20
  jeq r1, 0x0, jmp_38360
  mov64 r1, r6
  lddw r2, data_130c
  mov64 r3, 0x4
  call fn_473e0

jmp_38360:
  mov64 r1, r7
  and64 r1, 0x40
  jeq r1, 0x0, jmp_383a0
  mov64 r1, r6
  lddw r2, data_131c
  mov64 r3, 0x7
  call fn_473e0

jmp_383a0:
  mov64 r1, r7
  and64 r1, 0x80
  jeq r1, 0x0, jmp_383e0
  mov64 r1, r6
  lddw r2, data_1338
  mov64 r3, 0xe
  call fn_473e0

jmp_383e0:
  and64 r7, 0x100
  jeq r7, 0x0, jmp_38418
  mov64 r1, r6
  lddw r2, data_1370
  mov64 r3, 0x1b
  call fn_473e0

jmp_38418:
  mov64 r0, r6
  exit

jmp_38428:
  mov64 r1, 0x28
  mov64 r2, 0x28
  lddw r3, data_43c0
  call fn_3ffc8

fn_38450:
  ldxdw r0, [r2+0x0]
  jne r0, 0x0, jmp_38490
  lddw r1, str_140b
  mov64 r2, 0x1c
  lddw r3, data_3c08
  call fn_3ff48

jmp_38490:
  ldxdw r7, [r2+0x8]
  jne r7, 0x0, jmp_384d0
  lddw r1, str_1427
  mov64 r2, 0x1d
  lddw r3, data_3c20
  call fn_3ff48

jmp_384d0:
  stxdw [r10-0x598], r3
  ldxdw r6, [r2+0x10]
  jne r6, 0x0, jmp_38518
  lddw r1, str_1444
  mov64 r2, 0x1c
  lddw r3, data_3c38
  call fn_3ff48

jmp_38518:
  mov64 r5, r0
  add64 r5, r6
  mov64 r3, 0x1
  jgt r0, r5, jmp_38540
  mov64 r3, 0x0

jmp_38540:
  and64 r3, 0x1
  jne r3, 0x0, jmp_38da8
  jgt r7, r0, jmp_38dd8
  stxdw [r10-0x580], r4
  jgt r4, 0x10, jmp_38570
  ja jmp_38e08

jmp_38570:
  mov64 r3, r0
  add64 r3, r6
  mov64 r9, 0x40
  add64 r3, -0x1
  jeq r3, 0x0, jmp_386e8
  mov64 r4, r3
  rsh64 r4, 0x1
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x2
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x4
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x8
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x10
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x20
  or64 r3, r4
  xor64 r3, -0x1
  lddw r4, 0x5555555555555555
  mov64 r5, r3
  rsh64 r5, 0x1
  and64 r5, r4
  sub64 r3, r5
  lddw r4, 0x3333333333333333
  mov64 r9, r3
  and64 r9, r4
  rsh64 r3, 0x2
  and64 r3, r4
  add64 r9, r3
  mov64 r3, r9
  rsh64 r3, 0x4
  add64 r9, r3
  lddw r3, 0xf0f0f0f0f0f0f0f
  and64 r9, r3
  lddw r3, 0x101010101010101
  mul64 r9, r3
  rsh64 r9, 0x38

jmp_386e8:
  stxdw [r10-0x5b0], r1
  lddw r4, 0x100000000
  mov64 r3, 0x1
  jgt r4, r0, jmp_38718
  mov64 r3, 0x2

jmp_38718:
  ldxh r8, [r2+0x18]
  ldxb r1, [r2+0x1a]
  stxdw [r10-0x568], r1
  stxdw [r10-0x4a0], r3
  stxw [r10-0x540], r0
  mov64 r2, 0x0
  jgt r4, r0, jmp_38760
  rsh64 r0, 0x20
  mov64 r2, r0

jmp_38760:
  stxw [r10-0x53c], r2
  mov64 r1, r10
  add64 r1, -0x538
  mov64 r2, 0x0
  mov64 r3, 0x98
  call fn_493f8
  mov64 r1, 0x0
  lddw r2, 0x100000000
  jgt r2, r7, jmp_387c0
  mov64 r1, r7
  rsh64 r1, 0x20

jmp_387c0:
  stxw [r10-0x494], r1
  stxw [r10-0x498], r7
  mov64 r1, 0x1
  jgt r2, r7, jmp_387e8
  mov64 r1, 0x2

jmp_387e8:
  lsh64 r8, 0x30
  stxdw [r10-0x3f8], r1
  mov64 r1, r10
  add64 r1, -0x490
  mov64 r2, 0x0
  mov64 r3, 0x98
  call fn_493f8
  mov64 r1, 0x1
  lddw r3, 0x100000000
  jgt r3, r6, jmp_38848
  mov64 r1, 0x2

jmp_38848:
  arsh64 r8, 0x30
  mov64 r2, 0x0
  jgt r3, r6, jmp_38870
  mov64 r2, r6
  rsh64 r2, 0x20

jmp_38870:
  stxw [r10-0x3ec], r2
  stxw [r10-0x3f0], r6
  stxdw [r10-0x350], r1
  mov64 r1, r10
  add64 r1, -0x3e8
  mov64 r2, 0x0
  mov64 r3, 0x98
  call fn_493f8
  mov64 r1, r10
  add64 r1, -0x344
  mov64 r2, 0x0
  mov64 r3, 0x9c
  call fn_493f8
  mov64 r1, r8
  sub64 r1, r9
  mov64 r9, r1
  mul64 r9, 0x4d104d42
  lddw r1, 0x1344135080
  add64 r9, r1
  mov64 r1, 0x1
  stxdw [r10-0x2a8], r1
  stxw [r10-0x348], r1
  rsh64 r9, 0x20
  mov64 r1, 0x0
  jsgt r1, r8, jmp_38998
  mov64 r1, r10
  add64 r1, -0x540
  mov64 r2, r8
  call fn_47020
  mov64 r1, r10
  add64 r1, -0x498
  mov64 r2, r8
  call fn_47020
  mov64 r1, r10
  add64 r1, -0x3f0
  ja jmp_389c0

jmp_38998:
  neg64 r8
  lsh64 r8, 0x30
  arsh64 r8, 0x30
  mov64 r1, r10
  add64 r1, -0x348

jmp_389c0:
  mov64 r2, r8
  call fn_47020
  mov64 r1, r9
  lsh64 r1, 0x30
  arsh64 r1, 0x30
  jsgt r1, -0x1, jmp_38a68
  mov64 r8, r9
  neg64 r8
  and64 r8, 0xffff
  mov64 r1, r10
  add64 r1, -0x540
  mov64 r2, r8
  call fn_38090
  mov64 r1, r10
  add64 r1, -0x498
  mov64 r2, r8
  call fn_38090
  mov64 r1, r10
  add64 r1, -0x3f0
  mov64 r2, r8
  ja jmp_38a88

jmp_38a68:
  mov64 r2, r9
  and64 r2, 0xffff
  mov64 r1, r10
  add64 r1, -0x348

jmp_38a88:
  call fn_38090
  ldxdw r7, [r10-0x4a0]
  mov64 r1, r10
  add64 r1, -0xa8
  mov64 r2, r10
  add64 r2, -0x540
  mov64 r3, 0xa0
  call fn_490d0
  stxdw [r10-0x8], r7
  ldxdw r2, [r10-0x350]
  mov64 r1, r7
  jgt r7, r2, jmp_38af0
  mov64 r1, r2

jmp_38af0:
  stxdw [r10-0x548], r2
  jgt r1, 0x28, jmp_3a318
  mov64 r3, 0x0
  stxdw [r10-0x5a8], r9
  jeq r1, 0x0, jmp_38c98
  mov64 r6, 0x0
  mov64 r3, r10
  add64 r3, -0x3f0
  mov64 r4, r10
  add64 r4, -0xa8
  mov64 r5, 0x0
  ja jmp_38b90

jmp_38b50:
  stxw [r4+0x0], r8
  or64 r0, r9
  add64 r4, 0x4
  add64 r3, 0x4
  add64 r5, 0x1
  mov64 r6, r0
  jgt r1, r5, jmp_38b90
  ja jmp_38c20

jmp_38b90:
  ldxw r0, [r3+0x0]
  ldxw r2, [r4+0x0]
  add64 r2, r0
  mov64 r8, r2
  lsh64 r8, 0x20
  rsh64 r8, 0x20
  mov64 r9, 0x1
  mov64 r0, 0x1
  jne r8, r2, jmp_38be0
  mov64 r0, 0x0

jmp_38be0:
  and64 r6, 0x1
  add64 r8, r6
  mov64 r2, r8
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  jne r2, r8, jmp_38b50
  mov64 r9, 0x0
  ja jmp_38b50

jmp_38c20:
  and64 r0, 0x1
  mov64 r3, r1
  ldxdw r9, [r10-0x5a8]
  jne r0, 0x0, jmp_38c48
  ja jmp_38c98

jmp_38c48:
  jeq r1, 0x28, jmp_3a5d8
  mov64 r2, r1
  lsh64 r2, 0x2
  mov64 r3, r10
  add64 r3, -0xa8
  add64 r3, r2
  mov64 r2, 0x1
  stxw [r3+0x0], r2
  add64 r1, 0x1
  mov64 r3, r1

jmp_38c98:
  stxdw [r10-0x8], r3
  ldxdw r6, [r10-0x2a8]
  mov64 r1, r6
  jgt r6, r3, jmp_38cc0
  mov64 r1, r3

jmp_38cc0:
  mov64 r2, 0x29
  ldxdw r4, [r10-0x568]
  jgt r2, r1, jmp_38ce0
  ja jmp_3a318

jmp_38ce0:
  lsh64 r4, 0x38
  arsh64 r4, 0x38
  lsh64 r1, 0x2
  stxdw [r10-0x568], r4
  ja jmp_38d28

jmp_38d08:
  add64 r1, -0x4
  ldxdw r4, [r10-0x568]
  jeq r3, 0x0, jmp_38d28
  ja jmp_38e60

jmp_38d28:
  jeq r1, 0x0, jmp_38e38
  mov64 r2, r10
  add64 r2, -0x348
  add64 r2, r1
  ldxw r4, [r2-0x4]
  mov64 r2, r10
  add64 r2, -0xa8
  add64 r2, r1
  ldxw r5, [r2-0x4]
  mov64 r0, 0x1
  jne r5, r4, jmp_38d88
  mov64 r0, 0x0

jmp_38d88:
  mov64 r3, -0x1
  jgt r5, r4, jmp_38d08
  mov64 r3, r0
  ja jmp_38d08

jmp_38da8:
  lddw r1, data_14c4
  mov64 r2, 0x36
  lddw r3, data_3cc8
  call fn_3ff48

jmp_38dd8:
  lddw r1, str_148d
  mov64 r2, 0x37
  lddw r3, data_3cb0
  call fn_3ff48

jmp_38e08:
  lddw r1, str_1460
  mov64 r2, 0x2d
  lddw r3, data_3c50
  call fn_3ff48

jmp_38e38:
  mov64 r3, 0x0
  jeq r1, 0x0, jmp_38e60

jmp_38e48:
  add64 r9, 0x1
  stxdw [r10-0x5a8], r9
  ja jmp_39128

jmp_38e60:
  lsh64 r3, 0x38
  arsh64 r3, 0x38
  jsgt r4, r3, jmp_38e48
  mov64 r1, r10
  add64 r1, -0x540
  mov64 r3, 0x0
  jeq r7, 0x0, jmp_38f48
  mov64 r3, r7
  lsh64 r3, 0x2
  add64 r1, r3
  mov64 r4, r10
  add64 r4, -0x540
  mov64 r0, 0x0

jmp_38ec8:
  ldxw r5, [r4+0x0]
  mul64 r5, 0xa
  add64 r5, r0
  stxw [r4+0x0], r5
  add64 r4, 0x4
  rsh64 r5, 0x20
  add64 r3, -0x4
  mov64 r0, r5
  jeq r3, 0x0, jmp_38f18
  ja jmp_38ec8

jmp_38f18:
  mov64 r3, r7
  jeq r5, 0x0, jmp_38f48
  jeq r7, 0x28, jmp_3a5d8
  stxw [r1+0x0], r5
  add64 r7, 0x1
  mov64 r3, r7

jmp_38f48:
  stxdw [r10-0x4a0], r3
  ldxdw r1, [r10-0x3f8]
  mov64 r2, 0x29
  jgt r2, r1, jmp_38f70
  ja jmp_3a318

jmp_38f70:
  mov64 r4, r10
  add64 r4, -0x498
  mov64 r3, 0x0
  mov64 r5, 0x0
  ldxdw r2, [r10-0x548]
  jeq r1, 0x0, jmp_39050
  mov64 r5, r1
  lsh64 r5, 0x2
  add64 r4, r5
  mov64 r0, r10
  add64 r0, -0x498
  mov64 r8, 0x0

jmp_38fd0:
  ldxw r7, [r0+0x0]
  mul64 r7, 0xa
  add64 r7, r8
  stxw [r0+0x0], r7
  add64 r0, 0x4
  rsh64 r7, 0x20
  add64 r5, -0x4
  mov64 r8, r7
  jeq r5, 0x0, jmp_39020
  ja jmp_38fd0

jmp_39020:
  mov64 r5, r1
  jeq r7, 0x0, jmp_39050
  jeq r1, 0x28, jmp_3a5d8
  stxw [r4+0x0], r7
  add64 r1, 0x1
  mov64 r5, r1

jmp_39050:
  stxdw [r10-0x3f8], r5
  mov64 r1, r10
  add64 r1, -0x3f0
  jeq r2, 0x0, jmp_39120
  mov64 r3, r2
  lsh64 r3, 0x2
  add64 r1, r3
  mov64 r4, r10
  add64 r4, -0x3f0
  mov64 r0, 0x0

jmp_390a0:
  ldxw r5, [r4+0x0]
  mul64 r5, 0xa
  add64 r5, r0
  stxw [r4+0x0], r5
  add64 r4, 0x4
  rsh64 r5, 0x20
  add64 r3, -0x4
  mov64 r0, r5
  jeq r3, 0x0, jmp_390f0
  ja jmp_390a0

jmp_390f0:
  mov64 r3, r2
  jeq r5, 0x0, jmp_39120
  jeq r2, 0x28, jmp_3a5d8
  stxw [r1+0x0], r5
  add64 r2, 0x1
  mov64 r3, r2

jmp_39120:
  stxdw [r10-0x350], r3

jmp_39128:
  mov64 r9, r10
  add64 r9, -0x2a0
  mov64 r8, r10
  add64 r8, -0x348
  mov64 r1, r9
  mov64 r2, r8
  mov64 r3, 0xa0
  call fn_490d0
  stxdw [r10-0x200], r6
  mov64 r1, r9
  mov64 r2, 0x1
  call fn_47020
  ldxdw r6, [r10-0x2a8]
  mov64 r9, r10
  add64 r9, -0x1f8
  mov64 r1, r9
  mov64 r2, r8
  mov64 r3, 0xa0
  call fn_490d0
  stxdw [r10-0x158], r6
  mov64 r1, r9
  mov64 r2, 0x2
  call fn_47020
  ldxdw r6, [r10-0x2a8]
  mov64 r9, r10
  add64 r9, -0x150
  mov64 r1, r9
  mov64 r2, r8
  mov64 r3, 0xa0
  call fn_490d0
  stxdw [r10-0xb0], r6
  mov64 r1, r9
  mov64 r2, 0x3
  call fn_47020
  ldxdw r3, [r10-0x4a0]
  ldxdw r2, [r10-0xb0]
  mov64 r1, r3
  stxdw [r10-0x588], r2
  jgt r3, r2, jmp_39268
  ldxdw r1, [r10-0x588]

jmp_39268:
  ldxdw r9, [r10-0x580]
  jgt r1, 0x28, jmp_3a318
  mov64 r6, 0x0
  ldxdw r2, [r10-0x2a8]
  stxdw [r10-0x550], r2
  ldxdw r2, [r10-0x200]
  stxdw [r10-0x578], r2
  ldxdw r2, [r10-0x158]
  stxdw [r10-0x570], r2
  mov64 r7, 0x29
  ja jmp_392c8

jmp_392c0:
  jgt r1, 0x28, jmp_3a318

jmp_392c8:
  mov64 r8, r6
  mov64 r4, r1
  lsh64 r4, 0x2

jmp_392e0:
  jeq r4, 0x0, jmp_39468
  mov64 r2, r10
  add64 r2, -0x540
  add64 r2, r4
  mov64 r5, r10
  add64 r5, -0x150
  add64 r5, r4
  add64 r4, -0x4
  ldxw r5, [r5-0x4]
  ldxw r0, [r2-0x4]
  jeq r5, r0, jmp_392e0
  mov64 r2, 0x0
  jge r5, r0, jmp_394b8

jmp_39348:
  jeq r1, 0x0, jmp_394a0
  mov64 r5, 0x1
  mov64 r3, r10
  add64 r3, -0x150
  mov64 r4, r10
  add64 r4, -0x540
  ja jmp_393c0

jmp_39380:
  stxw [r4+0x0], r6
  or64 r0, r5
  add64 r4, 0x4
  add64 r3, 0x4
  add64 r2, 0x1
  mov64 r5, r0
  jgt r1, r2, jmp_393c0
  ja jmp_39480

jmp_393c0:
  ldxw r0, [r3+0x0]
  xor64 r0, -0x1
  lsh64 r0, 0x20
  rsh64 r0, 0x20
  ldxw r7, [r4+0x0]
  add64 r7, r0
  mov64 r6, r7
  lsh64 r6, 0x20
  rsh64 r6, 0x20
  mov64 r0, 0x1
  jne r6, r7, jmp_39420
  mov64 r0, 0x0

jmp_39420:
  and64 r5, 0x1
  add64 r6, r5
  mov64 r7, r6
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  mov64 r5, 0x1
  jne r7, r6, jmp_39380
  mov64 r5, 0x0
  ja jmp_39380

jmp_39468:
  mov64 r2, 0x0
  jeq r4, 0x0, jmp_39348
  ja jmp_394b8

jmp_39480:
  and64 r0, 0x1
  mov64 r7, 0x29
  jne r0, 0x0, jmp_394a0
  ja jmp_3a648

jmp_394a0:
  stxdw [r10-0x4a0], r1
  mov64 r2, 0x8
  mov64 r3, r1

jmp_394b8:
  mov64 r1, r3
  ldxdw r4, [r10-0x570]
  jgt r3, r4, jmp_394d8
  ldxdw r1, [r10-0x570]

jmp_394d8:
  jgt r7, r1, jmp_394e8
  ja jmp_3a318

jmp_394e8:
  mov64 r4, r1
  lsh64 r4, 0x2

jmp_394f8:
  jeq r4, 0x0, jmp_39688
  mov64 r0, r10
  add64 r0, -0x540
  add64 r0, r4
  mov64 r5, r10
  add64 r5, -0x1f8
  add64 r5, r4
  add64 r4, -0x4
  ldxw r5, [r5-0x4]
  ldxw r0, [r0-0x4]
  jeq r5, r0, jmp_394f8
  jge r5, r0, jmp_396e0

jmp_39558:
  jeq r1, 0x0, jmp_396c8
  mov64 r9, r8
  mov64 r3, 0x0
  mov64 r0, 0x1
  mov64 r4, r10
  add64 r4, -0x1f8
  mov64 r5, r10
  add64 r5, -0x540
  ja jmp_395e0

jmp_395a0:
  stxw [r5+0x0], r7
  or64 r6, r0
  add64 r5, 0x4
  add64 r4, 0x4
  add64 r3, 0x1
  mov64 r0, r6
  jgt r1, r3, jmp_395e0
  ja jmp_39698

jmp_395e0:
  ldxw r6, [r4+0x0]
  xor64 r6, -0x1
  lsh64 r6, 0x20
  rsh64 r6, 0x20
  ldxw r8, [r5+0x0]
  add64 r8, r6
  mov64 r7, r8
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  mov64 r6, 0x1
  jne r7, r8, jmp_39640
  mov64 r6, 0x0

jmp_39640:
  and64 r0, 0x1
  add64 r7, r0
  mov64 r8, r7
  lsh64 r8, 0x20
  rsh64 r8, 0x20
  mov64 r0, 0x1
  jne r8, r7, jmp_395a0
  mov64 r0, 0x0
  ja jmp_395a0

jmp_39688:
  jeq r4, 0x0, jmp_39558
  ja jmp_396e0

jmp_39698:
  and64 r6, 0x1
  mov64 r7, 0x29
  mov64 r8, r9
  ldxdw r9, [r10-0x580]
  jne r6, 0x0, jmp_396c8
  ja jmp_3a648

jmp_396c8:
  stxdw [r10-0x4a0], r1
  or64 r2, 0x4
  mov64 r3, r1

jmp_396e0:
  mov64 r1, r3
  ldxdw r4, [r10-0x578]
  jgt r3, r4, jmp_39700
  ldxdw r1, [r10-0x578]

jmp_39700:
  jgt r7, r1, jmp_39710
  ja jmp_3a318

jmp_39710:
  mov64 r4, r1
  lsh64 r4, 0x2

jmp_39720:
  jeq r4, 0x0, jmp_398b0
  mov64 r0, r10
  add64 r0, -0x540
  add64 r0, r4
  mov64 r5, r10
  add64 r5, -0x2a0
  add64 r5, r4
  add64 r4, -0x4
  ldxw r5, [r5-0x4]
  ldxw r0, [r0-0x4]
  jeq r5, r0, jmp_39720
  jge r5, r0, jmp_39908

jmp_39780:
  jeq r1, 0x0, jmp_398f0
  mov64 r9, r8
  mov64 r3, 0x0
  mov64 r0, 0x1
  mov64 r4, r10
  add64 r4, -0x2a0
  mov64 r5, r10
  add64 r5, -0x540
  ja jmp_39808

jmp_397c8:
  stxw [r5+0x0], r7
  or64 r6, r0
  add64 r5, 0x4
  add64 r4, 0x4
  add64 r3, 0x1
  mov64 r0, r6
  jgt r1, r3, jmp_39808
  ja jmp_398c0

jmp_39808:
  ldxw r6, [r4+0x0]
  xor64 r6, -0x1
  lsh64 r6, 0x20
  rsh64 r6, 0x20
  ldxw r8, [r5+0x0]
  add64 r8, r6
  mov64 r7, r8
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  mov64 r6, 0x1
  jne r7, r8, jmp_39868
  mov64 r6, 0x0

jmp_39868:
  and64 r0, 0x1
  add64 r7, r0
  mov64 r8, r7
  lsh64 r8, 0x20
  rsh64 r8, 0x20
  mov64 r0, 0x1
  jne r8, r7, jmp_397c8
  mov64 r0, 0x0
  ja jmp_397c8

jmp_398b0:
  jeq r4, 0x0, jmp_39780
  ja jmp_39908

jmp_398c0:
  and64 r6, 0x1
  mov64 r7, 0x29
  mov64 r8, r9
  ldxdw r9, [r10-0x580]
  jne r6, 0x0, jmp_398f0
  ja jmp_3a648

jmp_398f0:
  stxdw [r10-0x4a0], r1
  add64 r2, 0x2
  mov64 r3, r1

jmp_39908:
  mov64 r1, r3
  ldxdw r4, [r10-0x550]
  jgt r3, r4, jmp_39928
  ldxdw r1, [r10-0x550]

jmp_39928:
  jgt r7, r1, jmp_39938
  ja jmp_3a318

jmp_39938:
  mov64 r4, r1
  lsh64 r4, 0x2

jmp_39948:
  jeq r4, 0x0, jmp_39ad8
  mov64 r0, r10
  add64 r0, -0x540
  add64 r0, r4
  mov64 r5, r10
  add64 r5, -0x348
  add64 r5, r4
  add64 r4, -0x4
  ldxw r5, [r5-0x4]
  ldxw r0, [r0-0x4]
  jeq r5, r0, jmp_39948
  jge r5, r0, jmp_39b30

jmp_399a8:
  jeq r1, 0x0, jmp_39b18
  mov64 r9, r8
  mov64 r3, 0x0
  mov64 r0, 0x1
  mov64 r4, r10
  add64 r4, -0x348
  mov64 r5, r10
  add64 r5, -0x540
  ja jmp_39a30

jmp_399f0:
  stxw [r5+0x0], r7
  or64 r6, r0
  add64 r5, 0x4
  add64 r4, 0x4
  add64 r3, 0x1
  mov64 r0, r6
  jgt r1, r3, jmp_39a30
  ja jmp_39ae8

jmp_39a30:
  ldxw r6, [r4+0x0]
  xor64 r6, -0x1
  lsh64 r6, 0x20
  rsh64 r6, 0x20
  ldxw r8, [r5+0x0]
  add64 r8, r6
  mov64 r7, r8
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  mov64 r6, 0x1
  jne r7, r8, jmp_39a90
  mov64 r6, 0x0

jmp_39a90:
  and64 r0, 0x1
  add64 r7, r0
  mov64 r8, r7
  lsh64 r8, 0x20
  rsh64 r8, 0x20
  mov64 r0, 0x1
  jne r8, r7, jmp_399f0
  mov64 r0, 0x0
  ja jmp_399f0

jmp_39ad8:
  jeq r4, 0x0, jmp_399a8
  ja jmp_39b30

jmp_39ae8:
  and64 r6, 0x1
  mov64 r7, 0x29
  mov64 r8, r9
  ldxdw r9, [r10-0x580]
  jne r6, 0x0, jmp_39b18
  ja jmp_3a648

jmp_39b18:
  stxdw [r10-0x4a0], r1
  add64 r2, 0x1
  mov64 r3, r1

jmp_39b30:
  jeq r8, r9, jmp_3a600
  ldxdw r1, [r10-0x598]
  add64 r1, r8
  add64 r2, 0x30
  stxb [r1+0x0], r2
  ldxdw r2, [r10-0x3f8]
  mov64 r1, r3
  stxdw [r10-0x558], r2
  jgt r3, r2, jmp_39b80
  ldxdw r1, [r10-0x558]

jmp_39b80:
  jgt r7, r1, jmp_39b90
  ja jmp_3a318

jmp_39b90:
  stxdw [r10-0x548], r3
  stxdw [r10-0x5a0], r8
  mov64 r6, r8
  add64 r6, 0x1
  lsh64 r1, 0x2
  ja jmp_39bd8

jmp_39bc0:
  add64 r1, -0x4
  jeq r8, 0x0, jmp_39bd8
  ja jmp_39c70

jmp_39bd8:
  jeq r1, 0x0, jmp_39c58
  mov64 r2, r10
  add64 r2, -0x540
  add64 r2, r1
  ldxw r2, [r2-0x4]
  mov64 r3, r10
  add64 r3, -0x498
  add64 r3, r1
  ldxw r3, [r3-0x4]
  mov64 r4, 0x1
  jne r3, r2, jmp_39c38
  mov64 r4, 0x0

jmp_39c38:
  mov64 r8, -0x1
  jgt r3, r2, jmp_39bc0
  mov64 r8, r4
  ja jmp_39bc0

jmp_39c58:
  mov64 r8, 0x0
  jeq r1, 0x0, jmp_39c70
  mov64 r8, 0xff

jmp_39c70:
  mov64 r1, r10
  add64 r1, -0xa8
  mov64 r2, r10
  add64 r2, -0x540
  mov64 r3, 0xa0
  call fn_490d0
  ldxdw r3, [r10-0x548]
  stxdw [r10-0x8], r3
  ldxdw r2, [r10-0x350]
  mov64 r1, r3
  stxdw [r10-0x560], r2
  jgt r3, r2, jmp_39cd8
  ldxdw r1, [r10-0x560]

jmp_39cd8:
  jgt r1, 0x28, jmp_3a318
  mov64 r2, 0x0
  jeq r1, 0x0, jmp_39e88
  stxdw [r10-0x590], r6
  mov64 r9, 0x0
  mov64 r3, r10
  add64 r3, -0x3f0
  mov64 r4, r10
  add64 r4, -0xa8
  mov64 r5, 0x0
  ja jmp_39d70

jmp_39d30:
  stxw [r4+0x0], r7
  or64 r0, r2
  add64 r4, 0x4
  add64 r3, 0x4
  add64 r5, 0x1
  mov64 r9, r0
  jgt r1, r5, jmp_39d70
  ja jmp_39e00

jmp_39d70:
  ldxw r2, [r3+0x0]
  ldxw r6, [r4+0x0]
  add64 r6, r2
  mov64 r7, r6
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  mov64 r2, 0x1
  mov64 r0, 0x1
  jne r7, r6, jmp_39dc0
  mov64 r0, 0x0

jmp_39dc0:
  and64 r9, 0x1
  add64 r7, r9
  mov64 r6, r7
  lsh64 r6, 0x20
  rsh64 r6, 0x20
  jne r6, r7, jmp_39d30
  mov64 r2, 0x0
  ja jmp_39d30

jmp_39e00:
  and64 r0, 0x1
  mov64 r2, r1
  ldxdw r9, [r10-0x580]
  mov64 r7, 0x29
  ldxdw r6, [r10-0x590]
  jne r0, 0x0, jmp_39e38
  ja jmp_39e88

jmp_39e38:
  jeq r1, 0x28, jmp_3a5d8
  mov64 r2, r1
  lsh64 r2, 0x2
  mov64 r3, r10
  add64 r3, -0xa8
  add64 r3, r2
  mov64 r2, 0x1
  stxw [r3+0x0], r2
  add64 r1, 0x1
  mov64 r2, r1

jmp_39e88:
  stxdw [r10-0x8], r2
  ldxdw r3, [r10-0x550]
  mov64 r1, r3
  jgt r3, r2, jmp_39eb0
  mov64 r1, r2

jmp_39eb0:
  ldxdw r0, [r10-0x568]
  jgt r7, r1, jmp_39ec8
  ja jmp_3a318

jmp_39ec8:
  lsh64 r1, 0x2
  ja jmp_39ef0

jmp_39ed8:
  add64 r1, -0x4
  jeq r3, 0x0, jmp_39ef0
  ja jmp_39fa0

jmp_39ef0:
  jeq r1, 0x0, jmp_39f70
  mov64 r2, r10
  add64 r2, -0x348
  add64 r2, r1
  ldxw r2, [r2-0x4]
  mov64 r3, r10
  add64 r3, -0xa8
  add64 r3, r1
  ldxw r4, [r3-0x4]
  mov64 r5, 0x1
  jne r4, r2, jmp_39f50
  mov64 r5, 0x0

jmp_39f50:
  mov64 r3, -0x1
  jgt r4, r2, jmp_39ed8
  mov64 r3, r5
  ja jmp_39ed8

jmp_39f70:
  mov64 r3, 0x0
  jeq r1, 0x0, jmp_39fa0

jmp_39f80:
  lsh64 r8, 0x38
  arsh64 r8, 0x38
  jsgt r0, r8, jmp_3a2c8
  ja jmp_3a3c8

jmp_39fa0:
  mov64 r1, r8
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  jsgt r0, r1, jmp_3a2a8
  mov64 r1, r3
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  jsgt r0, r1, jmp_3a2a8
  mov64 r4, r10
  add64 r4, -0x540
  mov64 r1, 0x0
  mov64 r3, 0x0
  ldxdw r8, [r10-0x558]
  ldxdw r2, [r10-0x548]
  jeq r2, 0x0, jmp_3a0d0
  mov64 r3, r2
  lsh64 r3, 0x2
  add64 r4, r3
  mov64 r5, r10
  add64 r5, -0x540
  mov64 r2, 0x0

jmp_3a048:
  ldxw r0, [r5+0x0]
  mul64 r0, 0xa
  add64 r0, r2
  stxw [r5+0x0], r0
  add64 r5, 0x4
  rsh64 r0, 0x20
  add64 r3, -0x4
  mov64 r2, r0
  jeq r3, 0x0, jmp_3a098
  ja jmp_3a048

jmp_3a098:
  ldxdw r2, [r10-0x548]
  mov64 r3, r2
  jeq r0, 0x0, jmp_3a0d0
  jeq r2, 0x28, jmp_3a5d8
  stxw [r4+0x0], r0
  add64 r2, 0x1
  mov64 r3, r2

jmp_3a0d0:
  stxdw [r10-0x4a0], r3
  mov64 r4, r10
  add64 r4, -0x498
  jeq r8, 0x0, jmp_3a1a0
  mov64 r1, r8
  lsh64 r1, 0x2
  add64 r4, r1
  mov64 r5, r10
  add64 r5, -0x498
  mov64 r2, 0x0

jmp_3a120:
  ldxw r0, [r5+0x0]
  mul64 r0, 0xa
  add64 r0, r2
  stxw [r5+0x0], r0
  add64 r5, 0x4
  rsh64 r0, 0x20
  add64 r1, -0x4
  mov64 r2, r0
  jeq r1, 0x0, jmp_3a170
  ja jmp_3a120

jmp_3a170:
  mov64 r1, r8
  jeq r0, 0x0, jmp_3a1a0
  jeq r8, 0x28, jmp_3a5d8
  stxw [r4+0x0], r0
  add64 r8, 0x1
  mov64 r1, r8

jmp_3a1a0:
  stxdw [r10-0x3f8], r1
  mov64 r1, r10
  add64 r1, -0x3f0
  mov64 r2, 0x0
  ldxdw r8, [r10-0x560]
  jeq r8, 0x0, jmp_3a278
  mov64 r4, r8
  lsh64 r4, 0x2
  add64 r1, r4
  mov64 r5, r10
  add64 r5, -0x3f0

jmp_3a1f8:
  ldxw r0, [r5+0x0]
  mul64 r0, 0xa
  add64 r0, r2
  stxw [r5+0x0], r0
  add64 r5, 0x4
  rsh64 r0, 0x20
  add64 r4, -0x4
  mov64 r2, r0
  jeq r4, 0x0, jmp_3a248
  ja jmp_3a1f8

jmp_3a248:
  mov64 r2, r8
  jeq r0, 0x0, jmp_3a278
  jeq r8, 0x28, jmp_3a5d8
  stxw [r1+0x0], r0
  add64 r8, 0x1
  mov64 r2, r8

jmp_3a278:
  stxdw [r10-0x350], r2
  mov64 r1, r3
  ldxdw r2, [r10-0x588]
  jgt r3, r2, jmp_392c0
  ldxdw r1, [r10-0x588]
  ja jmp_392c0

jmp_3a2a8:
  lsh64 r3, 0x38
  arsh64 r3, 0x38
  jsgt r0, r3, jmp_39f80
  ja jmp_3a570

jmp_3a2c8:
  mov64 r1, r10
  add64 r1, -0x540
  mov64 r2, 0x1
  call fn_47020
  ldxdw r2, [r10-0x2a8]
  ldxdw r1, [r10-0x4a0]
  jgt r1, r2, jmp_3a308
  mov64 r1, r2

jmp_3a308:
  mov64 r2, 0x29
  jgt r2, r1, jmp_3a338

jmp_3a318:
  mov64 r2, 0x28
  lddw r3, data_43c0
  call fn_45270

jmp_3a338:
  mov64 r2, r10
  add64 r2, -0x544
  mov64 r3, r10
  add64 r3, -0x34c
  lsh64 r1, 0x2

jmp_3a360:
  jeq r1, 0x0, jmp_3a3b8
  mov64 r5, r2
  add64 r5, r1
  mov64 r4, r3
  add64 r4, r1
  add64 r1, -0x4
  ldxw r4, [r4+0x0]
  ldxw r5, [r5+0x0]
  jeq r4, r5, jmp_3a360
  jgt r5, r4, jmp_3a3c8
  ja jmp_3a570

jmp_3a3b8:
  jeq r1, 0x0, jmp_3a3c8
  ja jmp_3a570

jmp_3a3c8:
  ldxdw r4, [r10-0x598]
  mov64 r1, r4
  ldxdw r7, [r10-0x5a0]
  add64 r1, r7
  mov64 r2, r6
  mov64 r6, r4
  mov64 r8, r2
  add64 r6, r2
  mov64 r3, 0x0

jmp_3a410:
  mov64 r2, r7
  add64 r2, r3
  jeq r2, -0x1, jmp_3a4e8
  mov64 r2, r1
  add64 r2, r3
  add64 r3, -0x1
  ldxb r2, [r2+0x0]
  jeq r2, 0x39, jmp_3a410
  mov64 r1, r7
  add64 r1, r3
  mov64 r2, r1
  add64 r2, r4
  ldxb r4, [r2+0x1]
  add64 r4, 0x1
  stxb [r2+0x1], r4
  add64 r1, 0x2
  mov64 r6, r8
  jgt r1, r7, jmp_3a570
  ldxdw r1, [r10-0x598]
  ldxdw r2, [r10-0x5a0]
  add64 r1, r2
  add64 r1, r3
  xor64 r3, -0x1
  add64 r1, 0x2
  mov64 r2, 0x30
  call fn_493f8
  ja jmp_3a570

jmp_3a4e8:
  mov64 r1, 0x31
  stxb [r4+0x0], r1
  jeq r7, 0x0, jmp_3a528
  mov64 r1, r4
  add64 r1, 0x1
  mov64 r2, 0x30
  mov64 r3, r7
  call fn_493f8

jmp_3a528:
  mov64 r1, r8
  jge r1, r9, jmp_3a628
  mov64 r1, 0x30
  stxb [r6+0x0], r1
  ldxdw r1, [r10-0x5a8]
  add64 r1, 0x1
  stxdw [r10-0x5a8], r1
  add64 r7, 0x2
  mov64 r6, r7

jmp_3a570:
  jge r9, r6, jmp_3a5a0
  mov64 r1, r6
  mov64 r2, r9
  lddw r3, data_3c98
  call fn_45270

jmp_3a5a0:
  ldxdw r2, [r10-0x5b0]
  ldxdw r1, [r10-0x5a8]
  stxh [r2+0x10], r1
  stxdw [r2+0x8], r6
  ldxdw r1, [r10-0x598]
  stxdw [r2+0x0], r1
  exit

jmp_3a5d8:
  mov64 r1, 0x28
  mov64 r2, 0x28
  lddw r3, data_43c0
  call fn_3ffc8

jmp_3a600:
  mov64 r1, r9
  mov64 r2, r9
  lddw r3, data_3c68
  call fn_3ffc8

jmp_3a628:
  mov64 r2, r9
  lddw r3, data_3c80
  call fn_3ffc8

jmp_3a648:
  lddw r1, str_25a1
  mov64 r2, 0x1a
  lddw r3, data_43c0
  call fn_3ff48

fn_3a678:
  stxdw [r10-0x360], r5
  stxdw [r10-0x358], r3
  ldxdw r8, [r2+0x0]
  jne r8, 0x0, jmp_3a6c8
  lddw r1, str_140b
  mov64 r2, 0x1c
  lddw r3, data_3ce0
  call fn_3ff48

jmp_3a6c8:
  ldxdw r3, [r2+0x8]
  jne r3, 0x0, jmp_3a708
  lddw r1, str_1427
  mov64 r2, 0x1d
  lddw r3, data_3cf8
  call fn_3ff48

jmp_3a708:
  ldxdw r0, [r2+0x10]
  jne r0, 0x0, jmp_3a748
  lddw r1, str_1444
  mov64 r2, 0x1c
  lddw r3, data_3d10
  call fn_3ff48

jmp_3a748:
  mov64 r5, r8
  add64 r5, r0
  mov64 r0, 0x1
  jgt r8, r5, jmp_3a770
  mov64 r0, 0x0

jmp_3a770:
  and64 r0, 0x1
  jne r0, 0x0, jmp_3aba0
  jgt r3, r8, jmp_3abd0
  mov64 r7, 0x40
  ldxh r6, [r2+0x18]
  mov64 r2, r8
  add64 r2, -0x1
  jeq r2, 0x0, jmp_3a900
  mov64 r3, r2
  rsh64 r3, 0x1
  or64 r2, r3
  mov64 r3, r2
  rsh64 r3, 0x2
  or64 r2, r3
  mov64 r3, r2
  rsh64 r3, 0x4
  or64 r2, r3
  mov64 r3, r2
  rsh64 r3, 0x8
  or64 r2, r3
  mov64 r3, r2
  rsh64 r3, 0x10
  or64 r2, r3
  mov64 r3, r2
  rsh64 r3, 0x20
  or64 r2, r3
  xor64 r2, -0x1
  lddw r3, 0x5555555555555555
  mov64 r5, r2
  rsh64 r5, 0x1
  and64 r5, r3
  sub64 r2, r5
  lddw r3, 0x3333333333333333
  mov64 r7, r2
  and64 r7, r3
  rsh64 r2, 0x2
  and64 r2, r3
  add64 r7, r2
  mov64 r2, r7
  rsh64 r2, 0x4
  add64 r7, r2
  lddw r2, 0xf0f0f0f0f0f0f0f
  and64 r7, r2
  lddw r2, 0x101010101010101
  mul64 r7, r2
  rsh64 r7, 0x38

jmp_3a900:
  stxdw [r10-0x378], r1
  stxdw [r10-0x368], r4
  lsh64 r6, 0x30
  lddw r3, 0x100000000
  mov64 r2, 0x0
  jgt r3, r8, jmp_3a948
  mov64 r2, r8
  rsh64 r2, 0x20

jmp_3a948:
  arsh64 r6, 0x30
  mov64 r9, 0x1
  mov64 r4, 0x1
  jgt r3, r8, jmp_3a970
  mov64 r4, 0x2

jmp_3a970:
  stxw [r10-0x348], r8
  stxdw [r10-0x2a8], r4
  stxw [r10-0x344], r2
  mov64 r1, r10
  add64 r1, -0x340
  mov64 r2, 0x0
  mov64 r3, 0x98
  call fn_493f8
  mov64 r1, r10
  add64 r1, -0x29c
  mov64 r2, 0x0
  mov64 r3, 0x9c
  call fn_493f8
  stxdw [r10-0x200], r9
  stxw [r10-0x2a0], r9
  mov64 r8, r6
  sub64 r8, r7
  mul64 r8, 0x4d104d42
  lddw r1, 0x1344135080
  add64 r8, r1
  mov64 r1, r10
  add64 r1, -0x348
  rsh64 r8, 0x20
  mov64 r2, 0x0
  jsgt r2, r6, jmp_3aa48
  ja jmp_3aa60

jmp_3aa48:
  mov64 r1, r10
  add64 r1, -0x2a0
  neg64 r6

jmp_3aa60:
  lsh64 r6, 0x30
  arsh64 r6, 0x30
  mov64 r2, r6
  call fn_47020
  mov64 r3, r8
  lsh64 r3, 0x30
  arsh64 r3, 0x30
  mov64 r2, r8
  ldxdw r9, [r10-0x368]
  jsgt r3, -0x1, jmp_3aac0
  mov64 r2, r8
  neg64 r2

jmp_3aac0:
  mov64 r4, r10
  add64 r4, -0x348
  mov64 r7, r10
  add64 r7, -0x2a0
  mov64 r1, r7
  jsgt r3, -0x1, jmp_3aaf8
  mov64 r1, r4

jmp_3aaf8:
  and64 r2, 0xffff
  call fn_38090
  ldxdw r3, [r10-0x200]
  mov64 r1, r10
  add64 r1, -0xa8
  mov64 r2, r7
  mov64 r7, r3
  mov64 r3, 0xa0
  call fn_490d0
  stxdw [r10-0x8], r7
  mov64 r1, 0xa
  mov64 r3, r10
  add64 r3, -0xac
  mov64 r2, r9
  jgt r1, r9, jmp_3ac70
  mov64 r1, r7
  jgt r7, 0x28, jmp_3ace0
  mov64 r4, 0x29
  mov64 r2, r9
  mov64 r1, r7
  ja jmp_3ad00

jmp_3aba0:
  lddw r1, data_14c4
  mov64 r2, 0x36
  lddw r3, data_3db8
  call fn_3ff48

jmp_3abd0:
  lddw r1, str_148d
  mov64 r2, 0x37
  lddw r3, data_3da0
  call fn_3ff48

jmp_3ac00:
  mov64 r0, r3
  add64 r0, r1
  lsh64 r5, 0x20
  ldxw r6, [r0+0x0]
  or64 r5, r6
  mov64 r6, r5
  div64 r6, 0x3b9aca00
  stxw [r0+0x0], r6
  mul64 r6, 0x3b9aca00
  sub64 r5, r6
  add64 r1, -0x4
  jne r1, 0x0, jmp_3ac00

jmp_3ac60:
  add64 r2, -0x9
  jgt r2, 0x9, jmp_3acd0

jmp_3ac70:
  lsh64 r2, 0x2
  lddw r1, data_12dc
  add64 r1, r2
  ldxw r4, [r1+0x0]
  jne r4, 0x0, jmp_3ad20
  lddw r1, data_25d8
  mov64 r2, 0x1b
  lddw r3, data_43c0
  call fn_3ff48

jmp_3acd0:
  ldxdw r1, [r10-0x8]
  jgt r4, r1, jmp_3ad00

jmp_3ace0:
  mov64 r2, 0x28
  lddw r3, data_43c0
  call fn_45270

jmp_3ad00:
  jeq r1, 0x0, jmp_3ac60
  mov64 r5, 0x0
  lsh64 r1, 0x2
  ja jmp_3ac00

jmp_3ad20:
  ldxdw r2, [r10-0x8]
  mov64 r1, 0x29
  jgt r1, r2, jmp_3ad48

jmp_3ad38:
  mov64 r1, r2
  ja jmp_3ace0

jmp_3ad48:
  mov64 r1, 0x0
  jeq r2, 0x0, jmp_3adc8
  lsh64 r2, 0x2

jmp_3ad60:
  mov64 r5, r3
  add64 r5, r2
  lsh64 r1, 0x20
  ldxw r0, [r5+0x0]
  or64 r1, r0
  mov64 r0, r1
  div64 r0, r4
  stxw [r5+0x0], r0
  mul64 r0, r4
  sub64 r1, r0
  add64 r2, -0x4
  jne r2, 0x0, jmp_3ad60
  ldxdw r1, [r10-0x8]

jmp_3adc8:
  ldxdw r3, [r10-0x2a8]
  jgt r1, r3, jmp_3ade0
  mov64 r1, r3

jmp_3ade0:
  jgt r1, 0x28, jmp_3ace0
  mov64 r2, 0x0
  stxdw [r10-0x350], r7
  jeq r1, 0x0, jmp_3af90
  stxdw [r10-0x370], r8
  mov64 r7, 0x0
  mov64 r2, r10
  add64 r2, -0x348
  mov64 r4, r10
  add64 r4, -0xa8
  mov64 r5, 0x0
  ja jmp_3aeb0

jmp_3ae40:
  stxw [r4+0x0], r8
  or64 r0, r6
  add64 r4, 0x4
  add64 r2, 0x4
  add64 r5, 0x1
  mov64 r7, r0
  jgt r1, r5, jmp_3aeb0
  and64 r0, 0x1
  mov64 r2, r1
  ldxdw r9, [r10-0x368]
  ldxdw r8, [r10-0x370]
  ldxdw r7, [r10-0x350]
  jne r0, 0x0, jmp_3af40
  ja jmp_3af90

jmp_3aeb0:
  ldxw r0, [r2+0x0]
  ldxw r9, [r4+0x0]
  add64 r9, r0
  mov64 r8, r9
  lsh64 r8, 0x20
  rsh64 r8, 0x20
  mov64 r6, 0x1
  mov64 r0, 0x1
  jne r8, r9, jmp_3af00
  mov64 r0, 0x0

jmp_3af00:
  and64 r7, 0x1
  add64 r8, r7
  mov64 r7, r8
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  jne r7, r8, jmp_3ae40
  mov64 r6, 0x0
  ja jmp_3ae40

jmp_3af40:
  jeq r1, 0x28, jmp_3c350
  mov64 r2, r1
  lsh64 r2, 0x2
  mov64 r4, r10
  add64 r4, -0xa8
  add64 r4, r2
  mov64 r2, 0x1
  stxw [r4+0x0], r2
  add64 r1, 0x1
  mov64 r2, r1

jmp_3af90:
  stxdw [r10-0x8], r2
  jgt r2, r7, jmp_3afa8
  mov64 r2, r7

jmp_3afa8:
  mov64 r1, 0x29
  jgt r1, r2, jmp_3afc0
  ja jmp_3ad38

jmp_3afc0:
  lsh64 r2, 0x2

jmp_3afc8:
  jeq r2, 0x0, jmp_3b108
  mov64 r4, r10
  add64 r4, -0xa8
  add64 r4, r2
  mov64 r1, r10
  add64 r1, -0x2a0
  add64 r1, r2
  add64 r2, -0x4
  ldxw r1, [r1-0x4]
  ldxw r4, [r4-0x4]
  jeq r1, r4, jmp_3afc8
  jgt r4, r1, jmp_3b118

jmp_3b028:
  mov64 r2, r10
  add64 r2, -0x348
  mov64 r1, 0x0
  jeq r3, 0x0, jmp_3b0f8
  mov64 r1, r3
  lsh64 r1, 0x2
  add64 r2, r1
  mov64 r4, r10
  add64 r4, -0x348
  mov64 r0, 0x0

jmp_3b078:
  ldxw r5, [r4+0x0]
  mul64 r5, 0xa
  add64 r5, r0
  stxw [r4+0x0], r5
  add64 r4, 0x4
  rsh64 r5, 0x20
  add64 r1, -0x4
  mov64 r0, r5
  jeq r1, 0x0, jmp_3b0c8
  ja jmp_3b078

jmp_3b0c8:
  mov64 r1, r3
  jeq r5, 0x0, jmp_3b0f8
  jeq r3, 0x28, jmp_3c350
  stxw [r2+0x0], r5
  add64 r3, 0x1
  mov64 r1, r3

jmp_3b0f8:
  stxdw [r10-0x2a8], r1
  ja jmp_3b128

jmp_3b108:
  jeq r2, 0x0, jmp_3b118
  ja jmp_3b028

jmp_3b118:
  add64 r8, 0x1
  mov64 r1, r3

jmp_3b128:
  mov64 r2, 0x0
  mov64 r3, r8
  lsh64 r3, 0x30
  arsh64 r3, 0x30
  ldxdw r4, [r10-0x360]
  lsh64 r4, 0x30
  arsh64 r4, 0x30
  mov64 r7, 0x0
  jsgt r4, r3, jmp_3be20
  sub64 r3, r4
  mov64 r4, r8
  ldxdw r2, [r10-0x360]
  sub64 r4, r2
  lsh64 r4, 0x30
  arsh64 r4, 0x30
  jgt r9, r3, jmp_3b1b0
  mov64 r4, r9

jmp_3b1b0:
  mov64 r2, 0x0
  jeq r4, 0x0, jmp_3be20
  stxdw [r10-0x380], r4
  stxdw [r10-0x370], r8
  mov64 r8, r10
  add64 r8, -0x1f8
  mov64 r7, r10
  add64 r7, -0x2a0
  mov64 r1, r8
  mov64 r2, r7
  mov64 r3, 0xa0
  call fn_490d0
  ldxdw r1, [r10-0x350]
  stxdw [r10-0x158], r1
  mov64 r1, r8
  mov64 r2, 0x1
  call fn_47020
  ldxdw r8, [r10-0x200]
  mov64 r6, r10
  add64 r6, -0x150
  mov64 r1, r6
  mov64 r2, r7
  mov64 r3, 0xa0
  call fn_490d0
  stxdw [r10-0xb0], r8
  mov64 r1, r6
  mov64 r2, 0x2
  call fn_47020
  ldxdw r8, [r10-0x200]
  mov64 r6, r10
  add64 r6, -0xa8
  mov64 r1, r6
  mov64 r2, r7
  mov64 r3, 0xa0
  call fn_490d0
  stxdw [r10-0x8], r8
  mov64 r1, r6
  mov64 r2, 0x3
  call fn_47020
  mov64 r3, 0x0
  mov64 r8, r10
  add64 r8, -0x34c
  mov64 r5, r10
  add64 r5, -0x2a4
  ldxdw r1, [r10-0x2a8]
  ldxdw r7, [r10-0x200]
  ldxdw r2, [r10-0x158]
  stxdw [r10-0x3a0], r2
  ldxdw r2, [r10-0xb0]
  stxdw [r10-0x398], r2
  ldxdw r2, [r10-0x8]
  stxdw [r10-0x390], r2
  mov64 r6, 0x29
  stxdw [r10-0x350], r7

jmp_3b360:
  mov64 r0, r3
  jgt r6, r1, jmp_3b378
  ja jmp_3ace0

jmp_3b378:
  mov64 r2, r0
  add64 r2, 0x1
  stxdw [r10-0x388], r2
  mov64 r2, 0x0
  mov64 r3, r1
  lsh64 r3, 0x2
  ldxdw r6, [r10-0x370]

jmp_3b3b0:
  mov64 r4, r10
  add64 r4, -0x348
  jeq r3, r2, jmp_3c008
  add64 r4, r2
  add64 r2, 0x4
  ldxw r4, [r4+0x0]
  jeq r4, 0x0, jmp_3b3b0
  mov64 r2, r1
  ldxdw r3, [r10-0x390]
  jgt r1, r3, jmp_3b408
  ldxdw r2, [r10-0x390]

jmp_3b408:
  stxdw [r10-0x3b0], r0
  mov64 r6, 0x29
  jgt r6, r2, jmp_3b428
  ja jmp_3ad38

jmp_3b428:
  mov64 r3, r2
  lsh64 r3, 0x2
  stxdw [r10-0x3a8], r8

jmp_3b440:
  jeq r3, 0x0, jmp_3b4b8
  mov64 r0, r10
  add64 r0, -0x348
  add64 r0, r3
  mov64 r4, r10
  add64 r4, -0xa8
  add64 r4, r3
  add64 r3, -0x4
  ldxw r4, [r4-0x4]
  ldxw r0, [r0-0x4]
  jeq r4, r0, jmp_3b440
  mov64 r3, 0x0
  stxdw [r10-0x368], r3
  jgt r0, r4, jmp_3b4d8
  ja jmp_3b640

jmp_3b4b8:
  mov64 r4, 0x0
  stxdw [r10-0x368], r4
  jeq r3, 0x0, jmp_3b4d8
  ja jmp_3b640

jmp_3b4d8:
  mov64 r1, 0x0
  mov64 r7, 0x1
  mov64 r3, r10
  add64 r3, -0xa8
  mov64 r8, r10
  add64 r8, -0x348
  ja jmp_3b560

jmp_3b510:
  stxw [r8+0x0], r4
  or64 r0, r6
  add64 r8, 0x4
  add64 r3, 0x4
  add64 r1, 0x1
  mov64 r7, r0
  jgt r2, r1, jmp_3b560
  and64 r0, 0x1
  jne r0, 0x0, jmp_3b608
  ja jmp_3c3c0

jmp_3b560:
  ldxw r4, [r3+0x0]
  xor64 r4, -0x1
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  ldxw r6, [r8+0x0]
  add64 r6, r4
  mov64 r4, r6
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  mov64 r0, 0x1
  jne r4, r6, jmp_3b5c0
  mov64 r0, 0x0

jmp_3b5c0:
  and64 r7, 0x1
  add64 r4, r7
  mov64 r7, r4
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  mov64 r6, 0x1
  jne r7, r4, jmp_3b510
  mov64 r6, 0x0
  ja jmp_3b510

jmp_3b608:
  stxdw [r10-0x2a8], r2
  mov64 r1, 0x8
  stxdw [r10-0x368], r1
  mov64 r1, r2
  ldxdw r7, [r10-0x350]
  ldxdw r8, [r10-0x3a8]
  mov64 r6, 0x29

jmp_3b640:
  mov64 r2, r1
  ldxdw r3, [r10-0x398]
  jgt r1, r3, jmp_3b660
  ldxdw r2, [r10-0x398]

jmp_3b660:
  jgt r6, r2, jmp_3b670
  ja jmp_3ad38

jmp_3b670:
  mov64 r3, r2
  lsh64 r3, 0x2

jmp_3b680:
  jeq r3, 0x0, jmp_3b808
  mov64 r0, r10
  add64 r0, -0x348
  add64 r0, r3
  mov64 r4, r10
  add64 r4, -0x150
  add64 r4, r3
  add64 r3, -0x4
  ldxw r4, [r4-0x4]
  ldxw r0, [r0-0x4]
  jeq r4, r0, jmp_3b680
  jge r4, r0, jmp_3b870

jmp_3b6e0:
  jeq r2, 0x0, jmp_3b840
  mov64 r1, 0x0
  mov64 r8, 0x1
  mov64 r3, r10
  add64 r3, -0x150
  mov64 r0, r10
  add64 r0, -0x348
  ja jmp_3b760

jmp_3b720:
  stxw [r0+0x0], r4
  or64 r7, r6
  add64 r0, 0x4
  add64 r3, 0x4
  add64 r1, 0x1
  mov64 r8, r7
  jgt r2, r1, jmp_3b760
  ja jmp_3b818

jmp_3b760:
  ldxw r4, [r3+0x0]
  xor64 r4, -0x1
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  ldxw r6, [r0+0x0]
  add64 r6, r4
  mov64 r4, r6
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  mov64 r7, 0x1
  jne r4, r6, jmp_3b7c0
  mov64 r7, 0x0

jmp_3b7c0:
  and64 r8, 0x1
  add64 r4, r8
  mov64 r8, r4
  lsh64 r8, 0x20
  rsh64 r8, 0x20
  mov64 r6, 0x1
  jne r8, r4, jmp_3b720
  mov64 r6, 0x0
  ja jmp_3b720

jmp_3b808:
  jeq r3, 0x0, jmp_3b6e0
  ja jmp_3b870

jmp_3b818:
  and64 r7, 0x1
  ldxdw r8, [r10-0x3a8]
  mov64 r6, 0x29
  jne r7, 0x0, jmp_3b840
  ja jmp_3c3c0

jmp_3b840:
  stxdw [r10-0x2a8], r2
  ldxdw r1, [r10-0x368]
  or64 r1, 0x4
  stxdw [r10-0x368], r1
  mov64 r1, r2
  ldxdw r7, [r10-0x350]

jmp_3b870:
  mov64 r2, r1
  ldxdw r3, [r10-0x3a0]
  jgt r1, r3, jmp_3b890
  ldxdw r2, [r10-0x3a0]

jmp_3b890:
  jgt r6, r2, jmp_3b8a0
  ja jmp_3ad38

jmp_3b8a0:
  mov64 r3, r2
  lsh64 r3, 0x2

jmp_3b8b0:
  jeq r3, 0x0, jmp_3ba38
  mov64 r0, r10
  add64 r0, -0x348
  add64 r0, r3
  mov64 r4, r10
  add64 r4, -0x1f8
  add64 r4, r3
  add64 r3, -0x4
  ldxw r4, [r4-0x4]
  ldxw r0, [r0-0x4]
  jeq r4, r0, jmp_3b8b0
  jge r4, r0, jmp_3baa0

jmp_3b910:
  jeq r2, 0x0, jmp_3ba70
  mov64 r1, 0x0
  mov64 r8, 0x1
  mov64 r3, r10
  add64 r3, -0x1f8
  mov64 r0, r10
  add64 r0, -0x348
  ja jmp_3b990

jmp_3b950:
  stxw [r0+0x0], r4
  or64 r7, r6
  add64 r0, 0x4
  add64 r3, 0x4
  add64 r1, 0x1
  mov64 r8, r7
  jgt r2, r1, jmp_3b990
  ja jmp_3ba48

jmp_3b990:
  ldxw r4, [r3+0x0]
  xor64 r4, -0x1
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  ldxw r6, [r0+0x0]
  add64 r6, r4
  mov64 r4, r6
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  mov64 r7, 0x1
  jne r4, r6, jmp_3b9f0
  mov64 r7, 0x0

jmp_3b9f0:
  and64 r8, 0x1
  add64 r4, r8
  mov64 r8, r4
  lsh64 r8, 0x20
  rsh64 r8, 0x20
  mov64 r6, 0x1
  jne r8, r4, jmp_3b950
  mov64 r6, 0x0
  ja jmp_3b950

jmp_3ba38:
  jeq r3, 0x0, jmp_3b910
  ja jmp_3baa0

jmp_3ba48:
  and64 r7, 0x1
  ldxdw r8, [r10-0x3a8]
  mov64 r6, 0x29
  jne r7, 0x0, jmp_3ba70
  ja jmp_3c3c0

jmp_3ba70:
  stxdw [r10-0x2a8], r2
  ldxdw r1, [r10-0x368]
  add64 r1, 0x2
  stxdw [r10-0x368], r1
  mov64 r1, r2
  ldxdw r7, [r10-0x350]

jmp_3baa0:
  mov64 r2, r1
  jgt r1, r7, jmp_3bab8
  mov64 r2, r7

jmp_3bab8:
  jgt r6, r2, jmp_3bac8
  ja jmp_3ad38

jmp_3bac8:
  mov64 r4, r2
  lsh64 r4, 0x2

jmp_3bad8:
  jeq r4, 0x0, jmp_3bc58
  mov64 r3, r8
  add64 r3, r4
  mov64 r0, r5
  add64 r0, r4
  add64 r4, -0x4
  ldxw r0, [r0+0x0]
  ldxw r6, [r3+0x0]
  jeq r0, r6, jmp_3bad8
  mov64 r3, r1
  jge r0, r6, jmp_3bcb8

jmp_3bb30:
  jeq r2, 0x0, jmp_3bc90
  mov64 r1, 0x0
  mov64 r8, 0x1
  mov64 r3, r10
  add64 r3, -0x2a0
  mov64 r0, r10
  add64 r0, -0x348
  ja jmp_3bbb0

jmp_3bb70:
  stxw [r0+0x0], r4
  or64 r7, r6
  add64 r0, 0x4
  add64 r3, 0x4
  add64 r1, 0x1
  mov64 r8, r7
  jgt r2, r1, jmp_3bbb0
  ja jmp_3bc70

jmp_3bbb0:
  ldxw r4, [r3+0x0]
  xor64 r4, -0x1
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  ldxw r6, [r0+0x0]
  add64 r6, r4
  mov64 r4, r6
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  mov64 r7, 0x1
  jne r4, r6, jmp_3bc10
  mov64 r7, 0x0

jmp_3bc10:
  and64 r8, 0x1
  add64 r4, r8
  mov64 r8, r4
  lsh64 r8, 0x20
  rsh64 r8, 0x20
  mov64 r6, 0x1
  jne r8, r4, jmp_3bb70
  mov64 r6, 0x0
  ja jmp_3bb70

jmp_3bc58:
  mov64 r3, r1
  jeq r4, 0x0, jmp_3bb30
  ja jmp_3bcb8

jmp_3bc70:
  and64 r7, 0x1
  ldxdw r8, [r10-0x3a8]
  jne r7, 0x0, jmp_3bc90
  ja jmp_3c3c0

jmp_3bc90:
  stxdw [r10-0x2a8], r2
  ldxdw r1, [r10-0x368]
  add64 r1, 0x1
  stxdw [r10-0x368], r1
  mov64 r3, r2

jmp_3bcb8:
  ldxdw r2, [r10-0x3b0]
  jeq r2, r9, jmp_3c378
  ldxdw r1, [r10-0x358]
  add64 r1, r2
  ldxdw r2, [r10-0x368]
  add64 r2, 0x30
  stxb [r1+0x0], r2
  mov64 r6, 0x29
  jgt r6, r3, jmp_3bd10
  mov64 r1, r3
  ja jmp_3ace0

jmp_3bd10:
  mov64 r2, r10
  add64 r2, -0x348
  mov64 r1, 0x0
  jeq r3, 0x0, jmp_3bde0
  mov64 r1, r3
  lsh64 r1, 0x2
  add64 r2, r1
  mov64 r0, r10
  add64 r0, -0x348
  mov64 r4, 0x0

jmp_3bd60:
  ldxw r7, [r0+0x0]
  mul64 r7, 0xa
  add64 r7, r4
  stxw [r0+0x0], r7
  add64 r0, 0x4
  rsh64 r7, 0x20
  add64 r1, -0x4
  mov64 r4, r7
  jeq r1, 0x0, jmp_3bdb0
  ja jmp_3bd60

jmp_3bdb0:
  mov64 r1, r3
  jeq r7, 0x0, jmp_3bde0
  jeq r3, 0x28, jmp_3c350
  stxw [r2+0x0], r7
  add64 r3, 0x1
  mov64 r1, r3

jmp_3bde0:
  stxdw [r10-0x2a8], r1
  ldxdw r7, [r10-0x350]
  ldxdw r2, [r10-0x380]
  ldxdw r3, [r10-0x388]
  jgt r2, r3, jmp_3b360
  mov64 r2, 0x1
  ldxdw r7, [r10-0x380]
  ldxdw r8, [r10-0x370]

jmp_3be20:
  mov64 r3, 0x29
  ldxdw r5, [r10-0x350]
  jgt r3, r5, jmp_3be48
  mov64 r1, r5
  ja jmp_3ace0

jmp_3be48:
  mov64 r3, r10
  add64 r3, -0x2a0
  mov64 r4, 0x0
  jeq r5, 0x0, jmp_3bf20
  mov64 r4, r5
  lsh64 r4, 0x2
  add64 r3, r4
  mov64 r5, r10
  add64 r5, -0x2a0
  mov64 r6, 0x0

jmp_3be98:
  ldxw r0, [r5+0x0]
  mul64 r0, 0x5
  add64 r0, r6
  stxw [r5+0x0], r0
  add64 r5, 0x4
  rsh64 r0, 0x20
  add64 r4, -0x4
  mov64 r6, r0
  jeq r4, 0x0, jmp_3bee8
  ja jmp_3be98

jmp_3bee8:
  ldxdw r5, [r10-0x350]
  mov64 r4, r5
  jeq r0, 0x0, jmp_3bf20
  jeq r5, 0x28, jmp_3c350
  stxw [r3+0x0], r0
  add64 r5, 0x1
  mov64 r4, r5

jmp_3bf20:
  stxdw [r10-0x200], r4
  jgt r1, r4, jmp_3bf38
  mov64 r1, r4

jmp_3bf38:
  mov64 r3, 0x29
  jgt r3, r1, jmp_3bf50
  ja jmp_3ace0

jmp_3bf50:
  lsh64 r1, 0x2
  ja jmp_3bf88

jmp_3bf60:
  add64 r1, -0x4
  jeq r4, 0x0, jmp_3bf88
  and64 r4, 0xff
  jeq r4, 0x1, jmp_3c120
  ja jmp_3c210

jmp_3bf88:
  jeq r1, 0x0, jmp_3c098
  mov64 r3, r10
  add64 r3, -0x348
  add64 r3, r1
  ldxw r3, [r3-0x4]
  mov64 r4, r10
  add64 r4, -0x2a0
  add64 r4, r1
  ldxw r5, [r4-0x4]
  mov64 r0, 0x1
  jne r5, r3, jmp_3bfe8
  mov64 r0, 0x0

jmp_3bfe8:
  mov64 r4, -0x1
  jgt r5, r3, jmp_3bf60
  mov64 r4, r0
  ja jmp_3bf60

jmp_3c008:
  ldxdw r3, [r10-0x380]
  jge r9, r3, jmp_3c040
  mov64 r1, r3
  mov64 r2, r9
  lddw r3, data_3d88
  call fn_45270

jmp_3c040:
  jeq r3, r0, jmp_3c078
  ldxdw r1, [r10-0x358]
  add64 r1, r0
  sub64 r3, r0
  mov64 r2, 0x30
  call fn_493f8
  ldxdw r3, [r10-0x380]

jmp_3c078:
  ldxdw r2, [r10-0x378]
  stxh [r2+0x10], r6
  stxdw [r2+0x8], r3
  ja jmp_3c240

jmp_3c098:
  mov64 r3, 0x1
  jeq r1, 0x0, jmp_3c0b0
  mov64 r3, 0x0

jmp_3c0b0:
  and64 r2, r3
  mov64 r4, r8
  jne r2, 0x0, jmp_3c0d0
  ja jmp_3c218

jmp_3c0d0:
  mov64 r1, r7
  add64 r1, -0x1
  jgt r9, r1, jmp_3c0f0
  ja jmp_3c3a0

jmp_3c0f0:
  ldxdw r2, [r10-0x358]
  add64 r2, r1
  ldxb r1, [r2+0x0]
  and64 r1, 0x1
  mov64 r4, r8
  jeq r1, 0x0, jmp_3c218

jmp_3c120:
  mov64 r2, r9
  jge r2, r7, jmp_3c150
  mov64 r1, r7
  lddw r3, data_3d40
  call fn_45270

jmp_3c150:
  ldxdw r1, [r10-0x358]
  mov64 r6, r1
  add64 r6, r7
  mov64 r3, 0x0

jmp_3c170:
  jeq r7, r3, jmp_3c258
  mov64 r2, r1
  add64 r2, r7
  add64 r1, -0x1
  add64 r3, 0x1
  ldxb r2, [r2-0x1]
  jeq r2, 0x39, jmp_3c170
  add64 r1, r7
  ldxb r2, [r1+0x0]
  add64 r2, 0x1
  stxb [r1+0x0], r2
  mov64 r2, r7
  sub64 r2, r3
  add64 r2, 0x1
  mov64 r4, r8
  jge r2, r7, jmp_3c218
  add64 r3, -0x1
  add64 r1, 0x1
  mov64 r2, 0x30
  call fn_493f8

jmp_3c210:
  mov64 r4, r8

jmp_3c218:
  jge r9, r7, jmp_3c228
  ja jmp_3c328

jmp_3c228:
  ldxdw r2, [r10-0x378]
  stxh [r2+0x10], r4
  stxdw [r2+0x8], r7

jmp_3c240:
  ldxdw r1, [r10-0x358]
  stxdw [r2+0x0], r1
  exit

jmp_3c258:
  mov64 r3, 0x31
  jeq r7, 0x0, jmp_3c2c8
  mov64 r1, 0x31
  ldxdw r2, [r10-0x358]
  stxb [r2+0x0], r1
  mov64 r3, 0x30
  jeq r7, 0x1, jmp_3c2c8
  ldxdw r1, [r10-0x358]
  add64 r1, 0x1
  mov64 r3, r7
  add64 r3, -0x1
  mov64 r2, 0x30
  call fn_493f8
  mov64 r3, 0x30

jmp_3c2c8:
  mov64 r4, r8
  add64 r4, 0x1
  lsh64 r8, 0x30
  arsh64 r8, 0x30
  ldxdw r1, [r10-0x360]
  lsh64 r1, 0x30
  arsh64 r1, 0x30
  jsgt r1, r8, jmp_3c218
  jge r7, r9, jmp_3c218
  stxb [r6+0x0], r3
  add64 r7, 0x1
  jge r9, r7, jmp_3c228

jmp_3c328:
  mov64 r1, r7
  mov64 r2, r9
  lddw r3, data_3d58
  call fn_45270

jmp_3c350:
  mov64 r1, 0x28
  mov64 r2, 0x28
  lddw r3, data_43c0
  call fn_3ffc8

jmp_3c378:
  mov64 r1, r9
  mov64 r2, r9
  lddw r3, data_3d70
  call fn_3ffc8

jmp_3c3a0:
  mov64 r2, r9
  lddw r3, data_3d28
  call fn_3ffc8

jmp_3c3c0:
  lddw r1, str_25a1
  mov64 r2, 0x1a
  lddw r3, data_43c0
  call fn_3ff48

fn_3c3f0:
  stxdw [r10-0x50], r4
  stxdw [r10-0x58], r3
  ldxdw r8, [r2+0x0]
  jne r8, 0x0, jmp_3c440
  lddw r1, str_140b
  mov64 r2, 0x1c
  lddw r3, data_3de8
  call fn_3ff48

jmp_3c440:
  ldxdw r3, [r2+0x8]
  jne r3, 0x0, jmp_3c480
  lddw r1, str_1427
  mov64 r2, 0x1d
  lddw r3, data_3e00
  call fn_3ff48

jmp_3c480:
  ldxdw r4, [r2+0x10]
  jne r4, 0x0, jmp_3c4c0
  lddw r1, str_1444
  mov64 r2, 0x1c
  lddw r3, data_3e18
  call fn_3ff48

jmp_3c4c0:
  mov64 r0, r8
  add64 r0, r4
  mov64 r5, 0x1
  jgt r8, r0, jmp_3c4e8
  mov64 r5, 0x0

jmp_3c4e8:
  and64 r5, 0x1
  jne r5, 0x0, jmp_3c798
  jgt r3, r8, jmp_3c7c8
  ldxdw r5, [r10-0x50]
  jgt r5, 0x10, jmp_3c518
  ja jmp_3c7f8

jmp_3c518:
  add64 r4, r8
  lddw r5, 0x2000000000000000
  jgt r5, r4, jmp_3c568
  lddw r1, str_1a3e
  mov64 r2, 0x2d
  lddw r3, data_3e48
  call fn_3ff48

jmp_3c568:
  ldxh r2, [r2+0x18]
  mov64 r5, r2
  add64 r5, -0x20
  lddw r6, 0x100000000
  jgt r6, r4, jmp_3c5a0
  mov64 r5, r2

jmp_3c5a0:
  mov64 r0, r4
  lsh64 r0, 0x20
  jgt r6, r4, jmp_3c5c0
  mov64 r0, r4

jmp_3c5c0:
  mov64 r4, r5
  add64 r4, -0x10
  lddw r7, 0x1000000000000
  jgt r7, r0, jmp_3c5f0
  mov64 r4, r5

jmp_3c5f0:
  mov64 r6, r0
  lsh64 r6, 0x10
  jgt r7, r0, jmp_3c610
  mov64 r6, r0

jmp_3c610:
  mov64 r5, r4
  add64 r5, -0x8
  lddw r0, 0x100000000000000
  jgt r0, r6, jmp_3c640
  mov64 r5, r4

jmp_3c640:
  mov64 r4, r6
  lsh64 r4, 0x8
  jgt r0, r6, jmp_3c660
  mov64 r4, r6

jmp_3c660:
  lddw r6, 0x1000000000000000
  mov64 r0, r5
  add64 r0, -0x4
  jgt r6, r4, jmp_3c690
  mov64 r0, r5

jmp_3c690:
  mov64 r5, r4
  lsh64 r5, 0x4
  jgt r6, r4, jmp_3c6b0
  mov64 r5, r4

jmp_3c6b0:
  lddw r4, 0x4000000000000000
  mov64 r6, r0
  add64 r6, -0x2
  jgt r4, r5, jmp_3c6e0
  mov64 r6, r0

jmp_3c6e0:
  mov64 r0, r5
  lsh64 r0, 0x2
  jgt r4, r5, jmp_3c700
  mov64 r0, r5

jmp_3c700:
  mov64 r4, r8
  sub64 r4, r3
  mov64 r7, 0x1
  jsgt r0, -0x1, jmp_3c728
  mov64 r7, 0x0

jmp_3c728:
  sub64 r6, r7
  stxdw [r10-0x48], r4
  stxh [r10-0x40], r2
  mov64 r3, r2
  sub64 r3, r6
  lsh64 r3, 0x30
  arsh64 r3, 0x30
  jsgt r3, -0x1, jmp_3c828
  lddw r1, data_129b
  mov64 r2, 0x1d
  lddw r3, data_3bd8
  call fn_3ff48

jmp_3c798:
  lddw r1, data_14c4
  mov64 r2, 0x36
  lddw r3, data_3ec0
  call fn_3ff48

jmp_3c7c8:
  lddw r1, str_148d
  mov64 r2, 0x37
  lddw r3, data_3ea8
  call fn_3ff48

jmp_3c7f8:
  lddw r1, str_1460
  mov64 r2, 0x2d
  lddw r3, data_3e30
  call fn_3ff48

jmp_3c828:
  stxdw [r10-0xa0], r1
  and64 r3, 0x3f
  mov64 r9, r4
  lsh64 r9, r3
  mov64 r5, r9
  rsh64 r5, r3
  stxdw [r10-0x38], r5
  jeq r5, r4, jmp_3c8b0

jmp_3c868:
  mov64 r1, 0x0
  stxdw [r10-0x30], r1
  mov64 r1, r10
  add64 r1, -0x38
  mov64 r2, r10
  add64 r2, -0x48
  mov64 r3, r10
  add64 r3, -0x30
  call fn_400a0

jmp_3c8b0:
  stxdw [r10-0x78], r0
  stxh [r10-0x40], r2
  mov64 r2, r8
  lsh64 r2, r3
  stxdw [r10-0x80], r2
  rsh64 r2, r3
  stxdw [r10-0x48], r8
  stxdw [r10-0x38], r2
  jeq r2, r8, jmp_3c900
  ja jmp_3c868

jmp_3c900:
  mov64 r1, -0x60
  sub64 r1, r6
  lsh64 r1, 0x30
  arsh64 r1, 0x30
  mul64 r1, 0x50
  add64 r1, 0x153b0
  mov64 r2, 0x84e
  call fn_4bbf0
  lsh64 r0, 0x20
  mov64 r1, r0
  arsh64 r1, 0x20
  rsh64 r0, 0x20
  mov64 r2, 0x51
  jgt r2, r0, jmp_3c988
  lddw r3, data_3dd0
  call fn_3ffc8

jmp_3c988:
  ldxdw r2, [r10-0x78]
  lsh64 r2, r7
  stxdw [r10-0x78], r2
  lsh64 r1, 0x4
  lddw r2, data_1500
  add64 r2, r1
  ldxdw r3, [r2+0x0]
  mov64 r0, r2
  stxdw [r10-0x70], r0
  mov64 r5, r3
  lsh64 r5, 0x20
  rsh64 r5, 0x20
  mov64 r1, r9
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r2, r5
  mul64 r2, r1
  rsh64 r2, 0x20
  rsh64 r9, 0x20
  stxdw [r10-0x60], r9
  mov64 r4, r5
  mul64 r4, r9
  stxdw [r10-0x90], r4
  stxdw [r10-0x68], r6
  mov64 r9, r4
  lsh64 r9, 0x20
  rsh64 r9, 0x20
  add64 r9, r2
  ldxdw r6, [r10-0x80]
  mov64 r2, r6
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r4, r5
  mul64 r4, r2
  rsh64 r4, 0x20
  rsh64 r6, 0x20
  stxdw [r10-0x80], r6
  mov64 r8, r5
  mul64 r8, r6
  mov64 r7, r8
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  add64 r7, r4
  rsh64 r3, 0x20
  mov64 r6, r3
  mul64 r6, r2
  mov64 r2, r6
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  add64 r7, r2
  mov64 r2, r3
  mul64 r2, r1
  stxdw [r10-0x98], r2
  mov64 r1, r2
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  add64 r9, r1
  ldxh r1, [r0+0x8]
  ldxdw r2, [r10-0x68]
  add64 r2, r1
  stxdw [r10-0x68], r2
  ldxdw r1, [r10-0x78]
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r0, r3
  mul64 r0, r1
  mov64 r4, r0
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  mov64 r2, r5
  mul64 r2, r1
  rsh64 r2, 0x20
  ldxdw r1, [r10-0x78]
  rsh64 r1, 0x20
  stxdw [r10-0x78], r1
  mul64 r5, r1
  mov64 r1, r5
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  stxdw [r10-0xf8], r1
  stxdw [r10-0xd8], r2
  add64 r1, r2
  stxdw [r10-0xe0], r4
  add64 r1, r4
  lddw r2, 0x80000000
  add64 r1, r2
  add64 r9, r2
  add64 r7, r2
  rsh64 r0, 0x20
  rsh64 r5, 0x20
  mov64 r2, r3
  ldxdw r4, [r10-0x78]
  mul64 r2, r4
  stxdw [r10-0xf0], r2
  stxdw [r10-0xd0], r5
  add64 r2, r5
  stxdw [r10-0xe8], r0
  add64 r2, r0
  rsh64 r1, 0x20
  add64 r2, r1
  ldxdw r1, [r10-0x70]
  ldxh r5, [r1+0xa]
  mov64 r1, r3
  ldxdw r4, [r10-0x60]
  mul64 r1, r4
  stxdw [r10-0xb8], r1
  stxdw [r10-0x100], r3
  mov64 r1, r3
  ldxdw r3, [r10-0x80]
  mul64 r1, r3
  rsh64 r8, 0x20
  stxdw [r10-0x88], r8
  mov64 r3, r8
  stxdw [r10-0x110], r1
  add64 r3, r1
  rsh64 r6, 0x20
  stxdw [r10-0x108], r6
  add64 r3, r6
  ldxdw r1, [r10-0x98]
  rsh64 r1, 0x20
  stxdw [r10-0x98], r1
  ldxdw r1, [r10-0x90]
  rsh64 r1, 0x20
  stxdw [r10-0x90], r1
  rsh64 r7, 0x20
  stxdw [r10-0xb0], r7
  rsh64 r9, 0x20
  stxdw [r10-0xa8], r9
  ldxdw r0, [r10-0x68]
  neg64 r0
  and64 r0, 0x3f
  mov64 r1, 0x1
  lsh64 r1, r0
  stxdw [r10-0x60], r1
  add64 r2, 0x1
  mov64 r8, r1
  add64 r8, -0x1
  stxdw [r10-0x70], r2
  mov64 r6, r2
  rsh64 r6, r0
  mov64 r1, r6
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r2, 0x2710
  stxdw [r10-0x68], r0
  stxdw [r10-0xc8], r5
  jgt r2, r1, jmp_3ceb0
  mov64 r2, 0xf4240
  ldxdw r4, [r10-0xa0]
  jgt r2, r1, jmp_3ce50
  ja jmp_3cf28

jmp_3ce50:
  mov64 r1, r6
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r5, 0x4
  mov64 r2, 0x186a0
  jgt r2, r1, jmp_3ce88
  mov64 r5, 0x5

jmp_3ce88:
  ldxdw r7, [r10-0x78]
  mov64 r7, 0x2710
  jgt r2, r1, jmp_3d040
  mov64 r7, 0x186a0
  ja jmp_3d040

jmp_3ceb0:
  mov64 r2, 0x64
  ldxdw r4, [r10-0xa0]
  jgt r2, r1, jmp_3ced0
  ja jmp_3cfa0

jmp_3ced0:
  mov64 r1, r6
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r5, 0x1
  jgt r1, 0x9, jmp_3cf00
  mov64 r5, 0x0

jmp_3cf00:
  ldxdw r2, [r10-0x78]
  mov64 r7, 0xa
  jgt r1, 0x9, jmp_3d040
  mov64 r7, 0x1
  ja jmp_3d040

jmp_3cf28:
  mov64 r1, r6
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r2, 0x5f5e100
  jgt r2, r1, jmp_3cf58
  ja jmp_3d000

jmp_3cf58:
  mov64 r5, 0x6
  mov64 r2, 0x989680
  jgt r2, r1, jmp_3cf78
  mov64 r5, 0x7

jmp_3cf78:
  ldxdw r7, [r10-0x78]
  mov64 r7, 0xf4240
  jgt r2, r1, jmp_3d040
  mov64 r7, 0x989680
  ja jmp_3d040

jmp_3cfa0:
  mov64 r1, r6
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r5, 0x2
  mov64 r2, 0x3e8
  jgt r2, r1, jmp_3cfd8
  mov64 r5, 0x3

jmp_3cfd8:
  ldxdw r7, [r10-0x78]
  mov64 r7, 0x64
  jgt r2, r1, jmp_3d040
  mov64 r7, 0x3e8
  ja jmp_3d040

jmp_3d000:
  mov64 r5, 0x8
  mov64 r2, 0x3b9aca00
  jgt r2, r1, jmp_3d020
  mov64 r5, 0x9

jmp_3d020:
  ldxdw r7, [r10-0x78]
  mov64 r7, 0x5f5e100
  jgt r2, r1, jmp_3d040
  mov64 r7, 0x3b9aca00

jmp_3d040:
  ldxdw r1, [r10-0xb0]
  add64 r3, r1
  stxdw [r10-0xc0], r3
  ldxdw r9, [r10-0x70]
  mov64 r4, r9
  and64 r4, r8
  ldxdw r1, [r10-0xb8]
  ldxdw r3, [r10-0x90]
  add64 r1, r3
  ldxdw r3, [r10-0x98]
  add64 r1, r3
  ldxdw r3, [r10-0xa8]
  add64 r1, r3
  sub64 r9, r1
  mov64 r1, 0x0
  and64 r5, 0xff
  mov64 r0, r5
  ldxdw r3, [r10-0xc8]
  sub64 r5, r3
  add64 r5, 0x1
  stxdw [r10-0x120], r5
  stxdw [r10-0x118], r9
  add64 r9, 0x1
  mov64 r3, r9
  stxdw [r10-0xc8], r8
  and64 r3, r8
  ja jmp_3d158

jmp_3d118:
  add64 r1, 0x1
  lsh64 r7, 0x20
  mov64 r2, r7
  rsh64 r2, 0x20
  mov64 r7, r2
  div64 r7, 0xa
  mov64 r5, 0xa
  jgt r5, r2, jmp_3db58

jmp_3d158:
  ldxdw r2, [r10-0x50]
  jeq r2, r1, jmp_3db10
  mov64 r2, r7
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r5, r6
  lsh64 r5, 0x20
  rsh64 r5, 0x20
  div64 r5, r2
  mov64 r2, r5
  mul64 r2, r7
  sub64 r6, r2
  ldxdw r2, [r10-0x58]
  add64 r2, r1
  add64 r5, 0x30
  stxb [r2+0x0], r5
  mov64 r8, r6
  lsh64 r8, 0x20
  rsh64 r8, 0x20
  ldxdw r2, [r10-0x68]
  lsh64 r8, r2
  mov64 r2, r8
  add64 r2, r4
  jgt r9, r2, jmp_3d598
  jne r0, r1, jmp_3d118
  mov64 r2, 0x1
  add64 r1, 0x1
  ldxdw r0, [r10-0x68]
  ldxdw r5, [r10-0x60]
  ldxdw r7, [r10-0xc8]

jmp_3d248:
  mov64 r9, r2
  mov64 r8, r3
  ldxdw r2, [r10-0x50]
  jge r1, r2, jmp_3db38
  ldxdw r2, [r10-0x58]
  add64 r2, r1
  mul64 r4, 0xa
  mov64 r6, r4
  rsh64 r6, r0
  add64 r6, 0x30
  stxb [r2+0x0], r6
  and64 r4, r7
  add64 r1, 0x1
  mov64 r2, r9
  mul64 r2, 0xa
  mov64 r3, r8
  mul64 r3, 0xa
  jgt r3, r4, jmp_3d2e0
  ja jmp_3d248

jmp_3d2e0:
  stxdw [r10-0x80], r9
  mov64 r0, r3
  sub64 r0, r4
  mov64 r5, 0x1
  ldxdw r7, [r10-0x60]
  jgt r7, r0, jmp_3d318
  mov64 r5, 0x0

jmp_3d318:
  ldxdw r7, [r10-0x70]
  ldxdw r9, [r10-0xc0]
  sub64 r7, r9
  mov64 r9, r2
  mul64 r9, r7
  stxdw [r10-0x50], r9
  mov64 r7, r9
  add64 r7, r2
  stxdw [r10-0x88], r7
  ldxdw r7, [r10-0x60]
  jgt r7, r0, jmp_3d8f8
  ldxdw r0, [r10-0x50]
  sub64 r0, r2
  stxdw [r10-0x50], r0
  jge r4, r0, jmp_3d8f8
  ldxdw r2, [r10-0x58]
  add64 r2, r1
  stxdw [r10-0x68], r2
  ldxdw r0, [r10-0xd0]
  ldxdw r2, [r10-0xe8]
  add64 r0, r2
  ldxdw r7, [r10-0xd8]
  ldxdw r2, [r10-0xf8]
  add64 r7, r2
  ldxdw r2, [r10-0xe0]
  add64 r7, r2
  lddw r2, 0x80000000
  add64 r7, r2
  rsh64 r7, 0x20
  add64 r0, r7
  ldxdw r2, [r10-0xf0]
  add64 r0, r2
  mul64 r0, 0xa
  ldxdw r7, [r10-0xc0]
  mul64 r7, 0xa
  sub64 r7, r0
  ldxdw r2, [r10-0x50]
  sub64 r2, r4
  stxdw [r10-0x70], r2
  ldxdw r5, [r10-0x60]
  mov64 r2, r5
  add64 r2, r4
  mul64 r8, 0xa
  sub64 r8, r2
  ldxdw r2, [r10-0x80]
  mul64 r7, r2
  add64 r5, r7
  stxdw [r10-0x78], r5
  mov64 r2, 0x0
  mov64 r9, r4
  ja jmp_3d4f8

jmp_3d4b8:
  mov64 r4, r9
  ldxdw r7, [r10-0x60]
  ldxdw r7, [r10-0x50]
  jge r9, r7, jmp_3d8f8
  ldxdw r7, [r10-0x60]
  sub64 r2, r7
  mov64 r4, r9
  jgt r7, r0, jmp_3d8f8

jmp_3d4f8:
  ldxdw r5, [r10-0x60]
  add64 r9, r5
  ldxdw r0, [r10-0x50]
  jgt r0, r9, jmp_3d548
  ldxdw r0, [r10-0x70]
  add64 r0, r2
  ldxdw r7, [r10-0x78]
  add64 r7, r4
  mov64 r5, 0x0
  jgt r7, r0, jmp_3d8f8

jmp_3d548:
  add64 r6, -0x1
  ldxdw r4, [r10-0x68]
  stxb [r4-0x1], r6
  mov64 r0, r8
  add64 r0, r2
  mov64 r5, 0x1
  ldxdw r4, [r10-0x60]
  jgt r4, r0, jmp_3d4b8
  mov64 r5, 0x0
  ja jmp_3d4b8

jmp_3d598:
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  ldxdw r3, [r10-0x68]
  lsh64 r7, r3
  sub64 r9, r2
  mov64 r6, 0x1
  jgt r7, r9, jmp_3d5d8
  mov64 r6, 0x0

jmp_3d5d8:
  ldxdw r3, [r10-0x70]
  ldxdw r0, [r10-0xc0]
  sub64 r3, r0
  mov64 r0, r3
  add64 r0, 0x1
  add64 r3, -0x1
  stxdw [r10-0x70], r3
  jge r2, r3, jmp_3d9f8
  jgt r7, r9, jmp_3d9f8
  stxdw [r10-0xc0], r0
  ldxdw r2, [r10-0x58]
  add64 r2, r1
  stxdw [r10-0x68], r2
  ldxdw r2, [r10-0x78]
  ldxdw r3, [r10-0x80]
  sub64 r3, r2
  ldxdw r0, [r10-0x90]
  ldxdw r2, [r10-0x98]
  add64 r0, r2
  ldxdw r2, [r10-0xa8]
  add64 r0, r2
  ldxdw r2, [r10-0x100]
  mul64 r2, r3
  ldxdw r3, [r10-0x88]
  ldxdw r6, [r10-0x108]
  add64 r3, r6
  ldxdw r6, [r10-0xb0]
  add64 r3, r6
  stxdw [r10-0x88], r3
  mov64 r6, r4
  add64 r6, r7
  add64 r3, r6
  add64 r3, r2
  ldxdw r2, [r10-0xb8]
  add64 r0, r2
  mov64 r2, r6
  add64 r2, r8
  add64 r0, r2
  mov64 r2, 0x2
  sub64 r2, r0
  stxdw [r10-0x78], r2
  ldxdw r9, [r10-0xd0]
  sub64 r3, r9
  ldxdw r2, [r10-0xe8]
  sub64 r3, r2
  add64 r9, r2
  ldxdw r0, [r10-0xd8]
  ldxdw r2, [r10-0xf8]
  add64 r0, r2
  ldxdw r2, [r10-0xe0]
  add64 r0, r2
  lddw r2, 0x80000000
  add64 r0, r2
  rsh64 r0, 0x20
  add64 r9, r0
  ldxdw r2, [r10-0xf0]
  add64 r9, r2
  sub64 r3, r0
  stxdw [r10-0x50], r3
  mov64 r2, r4
  add64 r2, r8
  ldxdw r0, [r10-0x110]
  ldxdw r3, [r10-0x88]
  add64 r3, r0
  add64 r3, r2
  neg64 r3
  stxdw [r10-0x88], r3
  ja jmp_3d858

jmp_3d800:
  stxdw [r10-0x80], r0
  add64 r4, r7
  ldxdw r0, [r10-0x70]
  ldxdw r6, [r10-0x60]
  jge r2, r0, jmp_3d9b0
  ldxdw r2, [r10-0x50]
  add64 r2, r7
  stxdw [r10-0x50], r2
  add64 r6, r7
  sub64 r9, r7
  jgt r7, r3, jmp_3d9b0

jmp_3d858:
  mov64 r2, r8
  stxdw [r10-0x60], r6
  add64 r2, r6
  ldxdw r3, [r10-0x70]
  jgt r3, r2, jmp_3d8b0
  ldxdw r3, [r10-0x88]
  add64 r3, r9
  mov64 r0, r8
  ldxdw r6, [r10-0x50]
  add64 r0, r6
  jgt r0, r3, jmp_3d9d8

jmp_3d8b0:
  add64 r5, -0x1
  ldxdw r3, [r10-0x68]
  stxb [r3+0x0], r5
  ldxdw r3, [r10-0x78]
  add64 r3, r9
  mov64 r0, 0x1
  jgt r7, r3, jmp_3d800
  mov64 r0, 0x0
  ja jmp_3d800

jmp_3d8f8:
  ldxdw r0, [r10-0x88]
  jge r4, r0, jmp_3d958
  and64 r5, 0x1
  jne r5, 0x0, jmp_3d958
  mov64 r2, r4
  ldxdw r5, [r10-0x60]
  add64 r2, r5
  jgt r0, r2, jmp_3daa8
  sub64 r2, r0
  sub64 r0, r4
  jgt r2, r0, jmp_3d958
  ja jmp_3daa8

jmp_3d958:
  ldxdw r5, [r10-0x80]
  mov64 r2, r5
  mul64 r2, 0x14
  ldxdw r0, [r10-0xa0]
  jgt r2, r4, jmp_3d998
  mul64 r5, -0x28
  add64 r5, r3
  jge r5, r4, jmp_3dae0

jmp_3d998:
  mov64 r1, 0x0
  stxdw [r0+0x0], r1
  ja jmp_3dad8

jmp_3d9b0:
  add64 r8, r4
  mov64 r2, r8
  ldxdw r0, [r10-0xc0]
  ldxdw r6, [r10-0x80]
  ja jmp_3d9f8

jmp_3d9d8:
  add64 r8, r4
  mov64 r6, 0x0
  mov64 r2, r8
  ldxdw r0, [r10-0xc0]

jmp_3d9f8:
  jge r2, r0, jmp_3da48
  and64 r6, 0x1
  jne r6, 0x0, jmp_3da48
  mov64 r3, r2
  add64 r3, r7
  jgt r0, r3, jmp_3daa8
  sub64 r3, r0
  sub64 r0, r2
  jgt r3, r0, jmp_3da48
  ja jmp_3daa8

jmp_3da48:
  mov64 r3, 0x2
  ldxdw r4, [r10-0xa0]
  jgt r3, r2, jmp_3dac8
  ldxdw r3, [r10-0x118]
  add64 r3, -0x3
  jgt r2, r3, jmp_3dac8
  add64 r1, 0x1
  ldxdw r2, [r10-0x120]
  stxh [r4+0x10], r2
  stxdw [r4+0x8], r1
  ldxdw r1, [r10-0x58]
  ja jmp_3dad0

jmp_3daa8:
  mov64 r1, 0x0
  ldxdw r2, [r10-0xa0]
  stxdw [r2+0x0], r1
  ja jmp_3dad8

jmp_3dac8:
  mov64 r1, 0x0

jmp_3dad0:
  stxdw [r4+0x0], r1

jmp_3dad8:
  exit

jmp_3dae0:
  ldxdw r2, [r10-0x120]
  stxh [r0+0x10], r2
  stxdw [r0+0x8], r1
  ldxdw r1, [r10-0x58]
  stxdw [r0+0x0], r1
  ja jmp_3dad8

jmp_3db10:
  ldxdw r1, [r10-0x50]
  mov64 r2, r1
  lddw r3, data_3e78
  call fn_3ffc8

jmp_3db38:
  ldxdw r2, [r10-0x50]
  lddw r3, data_3e90
  call fn_3ffc8

jmp_3db58:
  lddw r1, data_3e60
  call fn_47a00

fn_3db70:
  stxdw [r10-0x28], r5
  mov64 r9, r4
  stxdw [r10-0x8], r3
  mov64 r8, r1
  ldxdw r1, [r2+0x0]
  jne r1, 0x0, jmp_3dbd0
  lddw r1, str_140b
  mov64 r2, 0x1c
  lddw r3, data_3ed8
  call fn_3ff48

jmp_3dbd0:
  lddw r3, 0x2000000000000000
  jgt r3, r1, jmp_3dc18
  lddw r1, str_1a8c
  mov64 r2, 0x24
  lddw r3, data_3ef0
  call fn_3ff48

jmp_3dc18:
  jne r9, 0x0, jmp_3dc50
  lddw r1, str_1a6b
  mov64 r2, 0x21
  lddw r3, data_3f08
  call fn_3ff48

jmp_3dc50:
  ldxh r3, [r2+0x18]
  mov64 r2, r3
  add64 r2, -0x20
  lddw r4, 0x100000000
  jgt r4, r1, jmp_3dc88
  mov64 r2, r3

jmp_3dc88:
  mov64 r3, r1
  lsh64 r3, 0x20
  jgt r4, r1, jmp_3dca8
  mov64 r3, r1

jmp_3dca8:
  mov64 r1, r2
  add64 r1, -0x10
  lddw r5, 0x1000000000000
  jgt r5, r3, jmp_3dcd8
  mov64 r1, r2

jmp_3dcd8:
  mov64 r4, r3
  lsh64 r4, 0x10
  jgt r5, r3, jmp_3dcf8
  mov64 r4, r3

jmp_3dcf8:
  mov64 r2, r1
  add64 r2, -0x8
  lddw r3, 0x100000000000000
  jgt r3, r4, jmp_3dd28
  mov64 r2, r1

jmp_3dd28:
  mov64 r1, r4
  lsh64 r1, 0x8
  jgt r3, r4, jmp_3dd48
  mov64 r1, r4

jmp_3dd48:
  lddw r4, 0x1000000000000000
  mov64 r3, r2
  add64 r3, -0x4
  jgt r4, r1, jmp_3dd78
  mov64 r3, r2

jmp_3dd78:
  mov64 r2, r1
  lsh64 r2, 0x4
  jgt r4, r1, jmp_3dd98
  mov64 r2, r1

jmp_3dd98:
  lddw r1, 0x4000000000000000
  mov64 r6, r3
  add64 r6, -0x2
  jgt r1, r2, jmp_3ddc8
  mov64 r6, r3

jmp_3ddc8:
  mov64 r7, r2
  lsh64 r7, 0x2
  jgt r1, r2, jmp_3dde8
  mov64 r7, r2

jmp_3dde8:
  mov64 r1, 0x1
  jsgt r7, -0x1, jmp_3de00
  mov64 r1, 0x0

jmp_3de00:
  sub64 r6, r1
  mov64 r1, -0x60
  sub64 r1, r6
  lsh64 r1, 0x30
  arsh64 r1, 0x30
  mul64 r1, 0x50
  add64 r1, 0x153b0
  mov64 r2, 0x84e
  call fn_4bbf0
  lsh64 r0, 0x20
  mov64 r1, r0
  arsh64 r1, 0x20
  rsh64 r0, 0x20
  mov64 r2, 0x51
  jgt r2, r0, jmp_3de90
  lddw r3, data_3dd0
  call fn_3ffc8

jmp_3de90:
  stxdw [r10-0x20], r8
  lsh64 r1, 0x4
  lddw r2, data_1500
  add64 r2, r1
  mov64 r1, r7
  xor64 r1, -0x1
  rsh64 r1, 0x3f
  lsh64 r7, r1
  mov64 r5, r7
  lsh64 r5, 0x20
  rsh64 r5, 0x20
  ldxdw r4, [r2+0x0]
  mov64 r1, r4
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r0, r1
  mul64 r0, r5
  rsh64 r0, 0x20
  rsh64 r7, 0x20
  mul64 r1, r7
  mov64 r3, r1
  lsh64 r3, 0x20
  rsh64 r3, 0x20
  add64 r3, r0
  rsh64 r4, 0x20
  mov64 r0, r4
  mul64 r0, r7
  rsh64 r1, 0x20
  add64 r1, r0
  mul64 r4, r5
  mov64 r5, r4
  rsh64 r5, 0x20
  add64 r1, r5
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  add64 r3, r4
  ldxh r4, [r2+0x8]
  add64 r6, r4
  lddw r4, 0x80000000
  add64 r3, r4
  mov64 r7, -0x40
  sub64 r7, r6
  rsh64 r3, 0x20
  add64 r1, r3
  ldxh r4, [r2+0xa]
  mov64 r3, r7
  and64 r3, 0x3f
  mov64 r2, 0x1
  lsh64 r2, r3
  mov64 r6, r1
  rsh64 r6, r3
  stxdw [r10-0x30], r2
  add64 r2, -0x1
  mov64 r8, r1
  stxdw [r10-0x40], r2
  and64 r8, r2
  jne r8, 0x0, jmp_3e0c0
  jgt r9, 0xa, jmp_3e6b0
  mov64 r2, r9
  lsh64 r2, 0x2
  lddw r0, data_1ab0
  add64 r2, r0
  ldxw r2, [r2-0x4]
  mov64 r0, r6
  lsh64 r0, 0x20
  rsh64 r0, 0x20
  jgt r2, r0, jmp_3e6b0

jmp_3e0c0:
  mov64 r2, r6
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r0, 0x2710
  stxdw [r10-0x38], r3
  jgt r0, r2, jmp_3e178
  mov64 r0, 0xf4240
  jgt r0, r2, jmp_3e108
  ja jmp_3e1f0

jmp_3e108:
  mov64 r0, r7
  mov64 r2, r6
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r5, 0x4
  stxdw [r10-0x10], r5
  mov64 r7, 0x186a0
  jgt r7, r2, jmp_3e158
  mov64 r5, 0x5
  stxdw [r10-0x10], r5

jmp_3e158:
  mov64 r5, 0x2710
  jgt r7, r2, jmp_3e2d8
  mov64 r5, 0x186a0
  ja jmp_3e2d8

jmp_3e178:
  mov64 r0, 0x64
  jgt r0, r2, jmp_3e190
  ja jmp_3e270

jmp_3e190:
  mov64 r2, r6
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r5, 0x1
  stxdw [r10-0x10], r5
  jgt r2, 0x9, jmp_3e1d0
  mov64 r5, 0x0
  stxdw [r10-0x10], r5

jmp_3e1d0:
  mov64 r5, 0xa
  jgt r2, 0x9, jmp_3e2e0
  mov64 r5, 0x1
  ja jmp_3e2e0

jmp_3e1f0:
  mov64 r2, r6
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r0, 0x5f5e100
  jgt r0, r2, jmp_3e220
  ja jmp_3e6d0

jmp_3e220:
  mov64 r5, 0x6
  stxdw [r10-0x10], r5
  mov64 r0, 0x989680
  jgt r0, r2, jmp_3e250
  mov64 r5, 0x7
  stxdw [r10-0x10], r5

jmp_3e250:
  mov64 r5, 0xf4240
  jgt r0, r2, jmp_3e2e0
  mov64 r5, 0x989680
  ja jmp_3e2e0

jmp_3e270:
  mov64 r0, r7
  mov64 r2, r6
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r5, 0x2
  stxdw [r10-0x10], r5
  mov64 r7, 0x3e8
  jgt r7, r2, jmp_3e2c0
  mov64 r5, 0x3
  stxdw [r10-0x10], r5

jmp_3e2c0:
  mov64 r5, 0x64
  jgt r7, r2, jmp_3e2d8
  mov64 r5, 0x3e8

jmp_3e2d8:
  mov64 r7, r0

jmp_3e2e0:
  ldxdw r0, [r10-0x10]
  and64 r0, 0xff
  sub64 r0, r4
  lsh64 r0, 0x30
  lddw r2, 0x1000000000000
  add64 r0, r2
  arsh64 r0, 0x30
  ldxdw r3, [r10-0x28]
  mov64 r2, r3
  lsh64 r2, 0x30
  arsh64 r2, 0x30
  jsgt r0, r2, jmp_3e350
  ja jmp_3e4d0

jmp_3e350:
  mov64 r1, r0
  sub64 r1, r2
  mov64 r4, r0
  sub64 r4, r3
  lsh64 r4, 0x30
  arsh64 r4, 0x30
  jgt r9, r1, jmp_3e390
  mov64 r4, r9

jmp_3e390:
  and64 r7, 0xffff
  stxdw [r10-0x48], r7
  mov64 r1, 0x0
  ldxdw r2, [r10-0x10]
  and64 r2, 0xff
  stxdw [r10-0x10], r2
  stxdw [r10-0x18], r4
  add64 r4, -0x1
  mov64 r2, 0xa

jmp_3e3d8:
  jeq r9, r1, jmp_3e790
  mov64 r3, r9
  mov64 r7, r5
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  mov64 r9, r6
  lsh64 r9, 0x20
  rsh64 r9, 0x20
  div64 r9, r7
  mov64 r7, r9
  mul64 r7, r5
  sub64 r6, r7
  ldxdw r7, [r10-0x8]
  add64 r7, r1
  add64 r9, 0x30
  stxb [r7+0x0], r9
  jeq r4, r1, jmp_3e558
  mov64 r9, r3
  ldxdw r3, [r10-0x10]
  jeq r3, r1, jmp_3e5f0
  add64 r1, 0x1
  lsh64 r5, 0x20
  mov64 r7, r5
  rsh64 r7, 0x20
  mov64 r5, r7
  div64 r5, 0xa
  jgt r2, r7, jmp_3e4b8
  ja jmp_3e3d8

jmp_3e4b8:
  lddw r1, data_3f20
  call fn_47a00

jmp_3e4d0:
  ldxdw r2, [r10-0x30]
  stxdw [r10-0xfe0], r2
  stxdw [r10-0xff8], r3
  stxdw [r10-0x1000], r0
  div64 r1, 0xa
  stxdw [r10-0xff0], r1
  lsh64 r5, 0x20
  rsh64 r5, 0x20
  ldxdw r1, [r10-0x38]
  lsh64 r5, r1
  stxdw [r10-0xfe8], r5
  mov64 r5, r10
  ldxdw r1, [r10-0x20]
  ldxdw r2, [r10-0x8]
  mov64 r3, r9
  mov64 r4, 0x0
  ja jmp_3e780

jmp_3e558:
  ldxdw r1, [r10-0x30]
  stxdw [r10-0xfe0], r1
  ldxdw r1, [r10-0x28]
  stxdw [r10-0xff8], r1
  stxdw [r10-0x1000], r0
  lsh64 r5, 0x20
  rsh64 r5, 0x20
  ldxdw r1, [r10-0x38]
  lsh64 r5, r1
  stxdw [r10-0xfe8], r5
  lsh64 r6, 0x20
  rsh64 r6, 0x20
  lsh64 r6, r1
  add64 r6, r8
  stxdw [r10-0xff0], r6
  mov64 r5, r10
  ldxdw r1, [r10-0x20]
  ldxdw r2, [r10-0x8]
  ja jmp_3e778

jmp_3e5f0:
  mov64 r2, 0x1
  add64 r1, 0x1
  ldxdw r6, [r10-0x48]
  add64 r6, -0x1
  and64 r6, 0x3f
  ldxdw r3, [r10-0x38]
  ldxdw r7, [r10-0x40]
  ja jmp_3e698

jmp_3e630:
  jge r1, r9, jmp_3e7b8
  ldxdw r4, [r10-0x8]
  add64 r4, r1
  mul64 r8, 0xa
  mov64 r5, r8
  rsh64 r5, r3
  add64 r5, 0x30
  stxb [r4+0x0], r5
  and64 r8, r7
  mul64 r2, 0xa
  add64 r1, 0x1
  ldxdw r4, [r10-0x18]
  jeq r4, r1, jmp_3e720

jmp_3e698:
  mov64 r4, r2
  rsh64 r4, r6
  jeq r4, 0x0, jmp_3e630

jmp_3e6b0:
  mov64 r1, 0x0
  ldxdw r2, [r10-0x20]
  stxdw [r2+0x0], r1
  ja jmp_3e788

jmp_3e6d0:
  mov64 r5, 0x8
  stxdw [r10-0x10], r5
  mov64 r0, 0x3b9aca00
  jgt r0, r2, jmp_3e700
  mov64 r5, 0x9
  stxdw [r10-0x10], r5

jmp_3e700:
  mov64 r5, 0x5f5e100
  jgt r0, r2, jmp_3e2e0
  mov64 r5, 0x3b9aca00
  ja jmp_3e2e0

jmp_3e720:
  ldxdw r1, [r10-0x30]
  stxdw [r10-0xfe8], r1
  stxdw [r10-0xfe0], r2
  stxdw [r10-0xff0], r8
  ldxdw r1, [r10-0x28]
  stxdw [r10-0xff8], r1
  stxdw [r10-0x1000], r0
  mov64 r5, r10
  ldxdw r1, [r10-0x20]
  ldxdw r2, [r10-0x8]
  mov64 r3, r9

jmp_3e778:
  ldxdw r4, [r10-0x18]

jmp_3e780:
  call fn_3e7d8

jmp_3e788:
  exit

jmp_3e790:
  mov64 r1, r9
  mov64 r2, r9
  lddw r3, data_3f38
  call fn_3ffc8

jmp_3e7b8:
  mov64 r2, r9
  lddw r3, data_3f50
  call fn_3ffc8

fn_3e7d8:
  ldxdw r8, [r5-0xfe0]
  ldxdw r0, [r5-0xfe8]
  jge r8, r0, jmp_3e8e0
  mov64 r6, r0
  sub64 r6, r8
  jgt r6, r8, jmp_3e810
  ja jmp_3e8e0

jmp_3e810:
  ldxdw r9, [r5-0xff0]
  ldxdw r6, [r5-0xff8]
  stxdw [r10-0x8], r6
  ldxdw r6, [r5-0x1000]
  mov64 r5, r0
  sub64 r5, r9
  jgt r5, r9, jmp_3e850
  ja jmp_3e888

jmp_3e850:
  mov64 r5, r9
  lsh64 r5, 0x1
  mov64 r7, r0
  sub64 r7, r5
  mov64 r5, r8
  lsh64 r5, 0x1
  jge r7, r5, jmp_3e8f8

jmp_3e888:
  jgt r9, r8, jmp_3e898
  ja jmp_3e8e0

jmp_3e898:
  sub64 r9, r8
  sub64 r0, r9
  jgt r0, r9, jmp_3e8e0
  jge r3, r4, jmp_3e928
  mov64 r1, r4
  mov64 r2, r3
  lddw r3, data_3f68
  call fn_45270

jmp_3e8e0:
  mov64 r2, 0x0

jmp_3e8e8:
  stxdw [r1+0x0], r2
  exit

jmp_3e8f8:
  jge r3, r4, jmp_3eb68
  mov64 r1, r4
  mov64 r2, r3
  lddw r3, data_3f98
  call fn_45270

jmp_3e928:
  mov64 r8, r2
  add64 r8, r4
  mov64 r5, 0x0
  mov64 r0, r2

jmp_3e948:
  jeq r4, r5, jmp_3ea38
  mov64 r7, r0
  add64 r7, r4
  add64 r0, -0x1
  add64 r5, 0x1
  ldxb r7, [r7-0x1]
  jeq r7, 0x39, jmp_3e948
  add64 r0, r4
  ldxb r7, [r0+0x0]
  add64 r7, 0x1
  stxb [r0+0x0], r7
  mov64 r7, r4
  sub64 r7, r5
  add64 r7, 0x1
  jge r7, r4, jmp_3eb38
  add64 r5, -0x1
  add64 r0, 0x1
  stxdw [r10-0x10], r1
  mov64 r1, r0
  mov64 r8, r2
  mov64 r2, 0x30
  mov64 r9, r3
  mov64 r3, r5
  mov64 r7, r4
  call fn_493f8
  mov64 r2, r8
  ldxdw r1, [r10-0x10]
  mov64 r3, r9
  mov64 r4, r7
  ja jmp_3eb38

jmp_3ea38:
  mov64 r9, 0x31
  jeq r4, 0x0, jmp_3eae8
  mov64 r5, 0x31
  stxb [r2+0x0], r5
  mov64 r9, 0x30
  jeq r4, 0x1, jmp_3eae8
  mov64 r5, r2
  add64 r5, 0x1
  mov64 r0, r4
  add64 r0, -0x1
  stxdw [r10-0x10], r1
  mov64 r1, r5
  stxdw [r10-0x18], r2
  mov64 r2, 0x30
  stxdw [r10-0x20], r3
  mov64 r3, r0
  stxdw [r10-0x28], r4
  call fn_493f8
  ldxdw r2, [r10-0x18]
  ldxdw r1, [r10-0x10]
  ldxdw r3, [r10-0x20]
  ldxdw r4, [r10-0x28]

jmp_3eae8:
  lsh64 r6, 0x30
  lddw r5, 0x1000000000000
  add64 r6, r5
  arsh64 r6, 0x30
  jge r4, r3, jmp_3eb38
  ldxdw r5, [r10-0x8]
  lsh64 r5, 0x30
  arsh64 r5, 0x30
  jsgt r6, r5, jmp_3eb80

jmp_3eb38:
  jge r3, r4, jmp_3eb68
  mov64 r1, r4
  mov64 r2, r3
  lddw r3, data_3f80
  call fn_45270

jmp_3eb68:
  stxh [r1+0x10], r6
  stxdw [r1+0x8], r4
  ja jmp_3e8e8

jmp_3eb80:
  stxb [r8+0x0], r9
  add64 r4, 0x1
  ja jmp_3eb38

fn_3eb98:
  jne r3, 0x0, jmp_3ebd0
  lddw r1, str_1a6b
  mov64 r2, 0x21
  lddw r3, data_3fb0
  call fn_3ff48

jmp_3ebd0:
  ldxb r0, [r2+0x0]
  jgt r0, 0x30, jmp_3ec10
  lddw r1, str_1afb
  mov64 r2, 0x1f
  lddw r3, data_3fc8
  call fn_3ff48

jmp_3ec10:
  ldxdw r0, [r5-0xff0]
  jgt r0, 0x3, jmp_3ec50
  lddw r1, str_1b1a
  mov64 r2, 0x22
  lddw r3, data_3fe0
  call fn_3ff48

jmp_3ec50:
  ldxdw r0, [r5-0xff8]
  ldxdw r5, [r5-0x1000]
  mov64 r7, r4
  lsh64 r7, 0x30
  arsh64 r7, 0x30
  mov64 r6, 0x1
  jsgt r6, r7, jmp_3ed48
  stxdw [r0+0x8], r2
  mov64 r6, 0x2
  stxh [r0+0x0], r6
  and64 r4, 0xffff
  jgt r3, r4, jmp_3ecb8
  ja jmp_3edf0

jmp_3ecb8:
  mov64 r6, 0x1
  stxdw [r0+0x28], r6
  lddw r6, str_1b3c
  stxdw [r0+0x20], r6
  mov64 r6, 0x2
  stxh [r0+0x30], r6
  stxh [r0+0x18], r6
  add64 r2, r4
  stxdw [r0+0x38], r2
  stxdw [r0+0x10], r4
  sub64 r3, r4
  stxdw [r0+0x40], r3
  mov64 r6, 0x3
  jgt r5, r3, jmp_3ed38
  ja jmp_3ee78

jmp_3ed38:
  sub64 r5, r3
  ja jmp_3ee58

jmp_3ed48:
  stxdw [r0+0x38], r2
  mov64 r2, 0x0
  stxh [r0+0x18], r2
  lddw r2, str_1b3d
  stxdw [r0+0x8], r2
  mov64 r2, 0x2
  stxh [r0+0x30], r2
  stxdw [r0+0x10], r2
  stxh [r0+0x0], r2
  stxdw [r0+0x40], r3
  mov64 r2, r7
  neg64 r2
  stxdw [r0+0x20], r2
  mov64 r6, 0x3
  jgt r5, r3, jmp_3edd0
  ja jmp_3ee78

jmp_3edd0:
  sub64 r5, r3
  jge r2, r5, jmp_3ee78
  add64 r5, r7
  ja jmp_3ee58

jmp_3edf0:
  mov64 r2, 0x0
  stxh [r0+0x18], r2
  stxdw [r0+0x10], r3
  sub64 r4, r3
  stxdw [r0+0x20], r4
  jeq r5, 0x0, jmp_3ee78
  mov64 r2, 0x1
  stxdw [r0+0x40], r2
  lddw r2, str_1b3c
  stxdw [r0+0x38], r2
  mov64 r2, 0x2
  stxh [r0+0x30], r2

jmp_3ee58:
  stxdw [r0+0x50], r5
  mov64 r2, 0x0
  stxh [r0+0x48], r2
  mov64 r6, 0x4

jmp_3ee78:
  stxdw [r1+0x8], r6
  stxdw [r1+0x0], r0
  exit
  mov64 r6, r2
  mov64 r7, r1
  call fn_486b0
  mov64 r8, 0x1
  jne r0, 0x0, jmp_3ef20
  ldxdw r1, [r6+0x20]
  ldxdw r2, [r6+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1b89
  mov64 r3, 0x2
  callx r4
  jne r0, 0x0, jmp_3ef20
  add64 r7, 0x8
  mov64 r1, r7
  mov64 r2, r6
  call fn_486b0
  mov64 r8, r0

jmp_3ef20:
  mov64 r0, r8
  exit
  lddw r2, -0x58fe6315d773f9a
  stxdw [r1+0x8], r2
  lddw r2, -0x25bb807857a8e6c7
  stxdw [r1+0x0], r2
  exit
  ldxdw r1, [r2+0x20]
  ldxdw r2, [r2+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1b8b
  mov64 r3, 0xb
  callx r4
  exit
  ldxdw r1, [r2+0x20]
  ldxdw r2, [r2+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1b96
  mov64 r3, 0xe
  callx r4
  exit

fn_3efe8:
  mov64 r2, r1
  mov64 r1, 0x0
  stxdw [r10-0x28], r1
  lddw r1, data_4010
  stxdw [r10-0x48], r1
  mov64 r1, 0x1
  stxdw [r10-0x40], r1
  stxdw [r10-0x30], r1
  mov64 r1, r10
  add64 r1, -0x18
  stxdw [r10-0x38], r1
  lddw r1, 0x7817
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x48
  call fn_3fef0

fn_3f090:
  mov64 r2, r1
  mov64 r1, 0x0
  stxdw [r10-0x28], r1
  lddw r1, data_4020
  stxdw [r10-0x48], r1
  mov64 r1, 0x1
  stxdw [r10-0x40], r1
  stxdw [r10-0x30], r1
  mov64 r1, r10
  add64 r1, -0x18
  stxdw [r10-0x38], r1
  lddw r1, 0x7810
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x48
  call fn_3fef0

fn_3f138:
  mov64 r4, r2
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  jsgt r4, 0xc, jmp_3f1a8
  jeq r4, 0x0, jmp_3f5d8
  jeq r4, 0x9, jmp_3f6d0
  jeq r4, 0xa, jmp_3f178
  ja jmp_3f218

jmp_3f178:
  mov64 r2, 0x200
  stxh [r1+0xa], r2
  mov64 r2, 0x0
  stxdw [r1+0x2], r2
  mov64 r2, 0x6e5c
  ja jmp_3faf8

jmp_3f1a8:
  jsgt r4, 0x26, jmp_3f208
  jeq r4, 0xd, jmp_3f608
  jeq r4, 0x22, jmp_3f1c8
  ja jmp_3f218

jmp_3f1c8:
  and64 r3, 0x10000
  jeq r3, 0x0, jmp_3f650
  mov64 r2, 0x200
  stxh [r1+0xa], r2
  mov64 r2, 0x0
  stxdw [r1+0x2], r2
  mov64 r2, 0x225c
  ja jmp_3faf8

jmp_3f208:
  jeq r4, 0x27, jmp_3f638
  jeq r4, 0x5c, jmp_3f6a0

jmp_3f218:
  mov64 r4, r2
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  mov64 r5, 0x300
  jgt r5, r4, jmp_3f650
  and64 r3, 0x1
  jne r3, 0x0, jmp_3f258
  ja jmp_3f650

jmp_3f258:
  mov64 r6, r1
  mov64 r1, r2
  mov64 r7, r2
  call fn_48dd0
  mov64 r2, r7
  mov64 r1, r6
  jeq r0, 0x0, jmp_3f650
  lddw r3, 0xfffffffc
  mov64 r4, r2
  and64 r4, r3
  rsh64 r4, 0x1
  mov64 r3, r2
  or64 r3, r4
  lddw r4, 0xfffffff8
  mov64 r5, r3
  and64 r5, r4
  rsh64 r5, 0x2
  or64 r3, r5
  mov64 r4, 0x0
  stxb [r10-0x8], r4
  stxh [r10-0xa], r4
  lddw r4, 0xffffffe0
  mov64 r5, r3
  and64 r5, r4
  rsh64 r5, 0x4
  or64 r3, r5
  mov64 r4, r2
  rsh64 r4, 0x4
  and64 r4, 0xf
  mov64 r0, r2
  rsh64 r0, 0x8
  and64 r0, 0xf
  mov64 r7, r2
  rsh64 r7, 0xc
  and64 r7, 0xf
  mov64 r8, r2
  rsh64 r8, 0x10
  and64 r8, 0xf
  mov64 r6, r2
  rsh64 r6, 0x14
  and64 r6, 0xf
  lddw r9, str_04c8
  lddw r5, str_04c8
  add64 r5, r6
  lddw r6, str_04c8
  add64 r6, r8
  lddw r8, str_04c8
  add64 r8, r7
  lddw r7, str_04c8
  add64 r7, r0
  lddw r0, str_04c8
  add64 r0, r4
  and64 r2, 0xf
  add64 r9, r2
  mov64 r2, 0x7d
  stxb [r10-0x1], r2
  ldxb r2, [r9+0x0]
  stxb [r10-0x2], r2
  ldxb r2, [r0+0x0]
  stxb [r10-0x3], r2
  ldxb r2, [r7+0x0]
  stxb [r10-0x4], r2
  ldxb r2, [r8+0x0]
  stxb [r10-0x5], r2
  ldxb r2, [r6+0x0]
  stxb [r10-0x6], r2
  ldxb r2, [r5+0x0]
  stxb [r10-0x7], r2
  lddw r2, 0xfffffe00
  mov64 r4, r3
  and64 r4, r2
  rsh64 r4, 0x8
  or64 r3, r4
  lddw r2, 0xfffe0000
  mov64 r4, r3
  and64 r4, r2
  rsh64 r4, 0x10
  or64 r3, r4
  xor64 r3, -0x1
  mov64 r4, r3
  and64 r4, -0x2
  rsh64 r3, 0x1
  and64 r3, 0x55555555
  sub64 r4, r3
  mov64 r2, r4
  and64 r2, 0x33333333
  rsh64 r4, 0x2
  and64 r4, 0x33333333
  add64 r2, r4
  mov64 r3, r2
  rsh64 r3, 0x4
  add64 r2, r3
  and64 r2, 0xf0f0f0f
  mul64 r2, 0x1010101
  rsh64 r2, 0x1a
  and64 r2, 0x3f
  add64 r2, -0x2
  mov64 r3, 0xb
  jgt r3, r2, jmp_3fb08
  mov64 r1, r2
  ja jmp_3fa38

jmp_3f5d8:
  mov64 r2, 0x200
  stxh [r1+0xa], r2
  mov64 r2, 0x0
  stxdw [r1+0x2], r2
  mov64 r2, 0x305c
  ja jmp_3faf8

jmp_3f608:
  mov64 r2, 0x200
  stxh [r1+0xa], r2
  mov64 r2, 0x0
  stxdw [r1+0x2], r2
  mov64 r2, 0x725c
  ja jmp_3faf8

jmp_3f638:
  and64 r3, 0x100
  jeq r3, 0x0, jmp_3f650
  ja jmp_3fad0

jmp_3f650:
  mov64 r6, r1
  mov64 r7, r2
  mov64 r1, r2
  call fn_46c40
  jne r0, 0x0, jmp_3f680
  ja jmp_3f700

jmp_3f680:
  stxw [r6+0x4], r7
  mov64 r1, 0x80
  stxb [r6+0x0], r1
  ja jmp_3fb00

jmp_3f6a0:
  mov64 r2, 0x200
  stxh [r1+0xa], r2
  mov64 r2, 0x0
  stxdw [r1+0x2], r2
  mov64 r2, 0x5c5c
  ja jmp_3faf8

jmp_3f6d0:
  mov64 r2, 0x200
  stxh [r1+0xa], r2
  mov64 r2, 0x0
  stxdw [r1+0x2], r2
  mov64 r2, 0x745c
  ja jmp_3faf8

jmp_3f700:
  lddw r1, 0xfffffffc
  mov64 r2, r7
  mov64 r3, r2
  and64 r3, r1
  rsh64 r3, 0x1
  mov64 r1, r2
  or64 r1, r3
  lddw r3, 0xfffffff8
  mov64 r4, r1
  and64 r4, r3
  rsh64 r4, 0x2
  or64 r1, r4
  mov64 r3, 0x0
  stxb [r10-0x8], r3
  stxh [r10-0xa], r3
  lddw r3, 0xffffffe0
  mov64 r4, r1
  and64 r4, r3
  rsh64 r4, 0x4
  or64 r1, r4
  mov64 r3, r2
  rsh64 r3, 0x4
  and64 r3, 0xf
  mov64 r5, r2
  rsh64 r5, 0x8
  and64 r5, 0xf
  rsh64 r7, 0xc
  and64 r7, 0xf
  mov64 r8, r2
  rsh64 r8, 0x10
  and64 r8, 0xf
  mov64 r0, r2
  rsh64 r0, 0x14
  and64 r0, 0xf
  lddw r9, str_04c8
  lddw r4, str_04c8
  add64 r4, r0
  lddw r0, str_04c8
  add64 r0, r8
  lddw r8, str_04c8
  add64 r8, r7
  lddw r7, str_04c8
  add64 r7, r5
  lddw r5, str_04c8
  add64 r5, r3
  and64 r2, 0xf
  add64 r9, r2
  mov64 r2, 0x7d
  stxb [r10-0x1], r2
  ldxb r2, [r9+0x0]
  stxb [r10-0x2], r2
  ldxb r2, [r5+0x0]
  stxb [r10-0x3], r2
  ldxb r2, [r7+0x0]
  stxb [r10-0x4], r2
  ldxb r2, [r8+0x0]
  stxb [r10-0x5], r2
  ldxb r2, [r0+0x0]
  stxb [r10-0x6], r2
  ldxb r2, [r4+0x0]
  stxb [r10-0x7], r2
  lddw r2, 0xfffffe00
  mov64 r3, r1
  and64 r3, r2
  rsh64 r3, 0x8
  or64 r1, r3
  lddw r2, 0xfffe0000
  mov64 r3, r1
  and64 r3, r2
  rsh64 r3, 0x10
  or64 r1, r3
  xor64 r1, -0x1
  mov64 r2, r1
  and64 r2, -0x2
  rsh64 r1, 0x1
  and64 r1, 0x55555555
  sub64 r2, r1
  mov64 r1, r2
  and64 r1, 0x33333333
  rsh64 r2, 0x2
  and64 r2, 0x33333333
  add64 r1, r2
  mov64 r2, r1
  rsh64 r2, 0x4
  add64 r1, r2
  and64 r1, 0xf0f0f0f
  mul64 r1, 0x1010101
  rsh64 r1, 0x1a
  and64 r1, 0x3f
  add64 r1, -0x2
  mov64 r2, 0xb
  jgt r2, r1, jmp_3fa58

jmp_3fa38:
  mov64 r2, 0xa
  lddw r3, data_4390
  call fn_45190

jmp_3fa58:
  mov64 r2, r10
  add64 r2, -0xa
  add64 r2, r1
  mov64 r3, 0x7b
  stxb [r2+0x2], r3
  mov64 r3, 0x755c
  stxh [r2+0x0], r3
  ldxh r2, [r10-0x2]
  stxh [r6+0x8], r2
  ldxdw r2, [r10-0xa]
  stxdw [r6+0x0], r2
  mov64 r2, 0xa
  stxb [r6+0xb], r2
  stxb [r6+0xa], r1
  ja jmp_3fb00

jmp_3fad0:
  mov64 r2, 0x200
  stxh [r1+0xa], r2
  mov64 r2, 0x0
  stxdw [r1+0x2], r2
  mov64 r2, 0x275c

jmp_3faf8:
  stxh [r1+0x0], r2

jmp_3fb00:
  exit

jmp_3fb08:
  mov64 r3, r10
  add64 r3, -0xa
  add64 r3, r2
  mov64 r4, 0x7b
  stxb [r3+0x2], r4
  mov64 r4, 0x755c
  stxh [r3+0x0], r4
  ldxh r3, [r10-0x2]
  stxh [r1+0x8], r3
  ldxdw r3, [r10-0xa]
  stxdw [r1+0x0], r3
  mov64 r3, 0xa
  stxb [r1+0xb], r3
  stxb [r1+0xa], r2
  ja jmp_3fb00

fn_3fb80:
  mov64 r3, r1
  lddw r1, str_1bd2
  mov64 r2, 0x2b
  call fn_3ff48

fn_3fba8:
  mov64 r9, r1
  ldxdw r6, [r2+0x20]
  ldxdw r7, [r2+0x28]
  ldxdw r4, [r7+0x18]
  mov64 r1, r6
  lddw r2, str_1bfd
  mov64 r3, 0xc
  stxdw [r10-0x78], r4
  callx r4
  mov64 r8, 0x1
  jne r0, 0x0, jmp_3fee0
  ldxdw r1, [r9+0x18]
  mov64 r2, 0x0
  stxdw [r10-0x40], r2
  lddw r2, data_4030
  stxdw [r10-0x60], r2
  mov64 r2, 0x3
  stxdw [r10-0x58], r2
  stxdw [r10-0x48], r2
  mov64 r2, r10
  add64 r2, -0x30
  stxdw [r10-0x50], r2
  mov64 r2, r1
  add64 r2, 0x14
  stxdw [r10-0x10], r2
  lddw r2, 0x8af3
  stxdw [r10-0x8], r2
  stxdw [r10-0x18], r2
  mov64 r2, r1
  add64 r2, 0x10
  stxdw [r10-0x20], r2
  lddw r2, 0x8b12
  stxdw [r10-0x28], r2
  stxdw [r10-0x30], r1
  mov64 r3, r10
  add64 r3, -0x60
  mov64 r1, r6
  mov64 r2, r7
  call fn_42488
  jne r0, 0x0, jmp_3fee0
  mov64 r1, r6
  lddw r2, str_1bd0
  mov64 r3, 0x1
  ldxdw r4, [r10-0x78]
  callx r4
  jne r0, 0x0, jmp_3fee0
  ldxdw r1, [r9+0x10]
  jeq r1, 0x0, jmp_3fde8
  mov64 r9, r1
  mov64 r1, r6
  lddw r2, str_1c09
  mov64 r3, 0x1
  ldxdw r4, [r10-0x78]
  callx r4
  jne r0, 0x0, jmp_3fee0
  mov64 r8, r10
  add64 r8, -0x30
  mov64 r1, r8
  mov64 r2, r9
  mov64 r3, 0x30
  call fn_490d0
  mov64 r1, r6
  mov64 r2, r7
  mov64 r3, r8
  call fn_42488
  ja jmp_3fed8

jmp_3fde8:
  ldxdw r7, [r9+0x0]
  ldxdw r1, [r9+0x8]
  ldxdw r3, [r1+0x18]
  mov64 r1, r10
  add64 r1, -0x70
  mov64 r2, r7
  callx r3
  mov64 r8, 0x0
  ldxdw r1, [r10-0x70]
  lddw r2, -0x4674e48ea859be88
  jne r1, r2, jmp_3fee0
  ldxdw r1, [r10-0x68]
  lddw r2, 0x63eb502cd6cb5d6d
  jeq r1, r2, jmp_3fe70
  ja jmp_3fee0

jmp_3fe70:
  mov64 r8, 0x1
  mov64 r1, r6
  lddw r2, str_1c09
  mov64 r3, 0x1
  ldxdw r4, [r10-0x78]
  callx r4
  jne r0, 0x0, jmp_3fee0
  ldxdw r3, [r7+0x8]
  ldxdw r2, [r7+0x0]
  mov64 r1, r6
  ldxdw r4, [r10-0x78]
  callx r4

jmp_3fed8:
  mov64 r8, r0

jmp_3fee0:
  mov64 r0, r8
  exit

fn_3fef0:
  stxdw [r10-0x10], r2
  stxdw [r10-0x18], r1
  lddw r1, data_4060
  stxdw [r10-0x20], r1
  mov64 r1, 0x1
  stxh [r10-0x8], r1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x28
  call fn_36e38

fn_3ff48:
  mov64 r4, 0x1
  stxdw [r10-0x38], r4
  mov64 r4, r10
  add64 r4, -0x10
  stxdw [r10-0x40], r4
  mov64 r4, 0x0
  stxdw [r10-0x20], r4
  stxdw [r10-0x28], r4
  mov64 r4, 0x8
  stxdw [r10-0x30], r4
  stxdw [r10-0x8], r2
  stxdw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x40
  mov64 r2, r3
  call fn_3fef0

fn_3ffc8:
  stxdw [r10-0x58], r2
  stxdw [r10-0x60], r1
  mov64 r1, 0x0
  stxdw [r10-0x30], r1
  lddw r1, data_4080
  stxdw [r10-0x50], r1
  mov64 r1, 0x2
  stxdw [r10-0x48], r1
  stxdw [r10-0x38], r1
  mov64 r1, r10
  add64 r1, -0x20
  stxdw [r10-0x40], r1
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0x10], r1
  lddw r1, 0x8b03
  stxdw [r10-0x8], r1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x58
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x50
  mov64 r2, r3
  call fn_3fef0

fn_400a0:
  stxdw [r10-0x8], r2
  stxdw [r10-0x10], r1
  stxdw [r10-0xff8], r3
  lddw r1, data_3bf0
  stxdw [r10-0xff0], r1
  lddw r1, data_40a0
  stxdw [r10-0x1000], r1
  mov64 r2, r10
  add64 r2, -0x10
  mov64 r4, r10
  add64 r4, -0x8
  mov64 r5, r10
  mov64 r1, 0x0
  lddw r3, data_40a0
  call fn_40130

fn_40130:
  stxdw [r10-0xc8], r3
  stxdw [r10-0xd0], r2
  stxdw [r10-0xc0], r4
  ldxdw r2, [r5-0x1000]
  stxdw [r10-0xb8], r2
  ldxdw r6, [r5-0xff0]
  ldxdw r2, [r5-0xff8]
  and64 r1, 0xff
  jeq r1, 0x0, jmp_402d0
  jeq r1, 0x1, jmp_402b8
  lddw r1, str_1c20
  stxdw [r10-0xb0], r1
  mov64 r1, 0x7
  stxdw [r10-0xa8], r1
  ldxdw r1, [r2+0x0]
  jne r1, 0x0, jmp_401c0
  ja jmp_40308

jmp_401c0:
  mov64 r7, r10
  add64 r7, -0xa0
  mov64 r1, r7
  mov64 r3, 0x30
  call fn_490d0
  mov64 r1, 0x0
  stxdw [r10-0x10], r1
  lddw r1, data_40f0
  stxdw [r10-0x30], r1
  mov64 r1, 0x4
  stxdw [r10-0x28], r1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x70
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0xc0
  stxdw [r10-0x40], r1
  lddw r1, 0x8b08
  stxdw [r10-0x38], r1
  stxdw [r10-0x48], r1
  mov64 r1, r10
  add64 r1, -0xd0
  stxdw [r10-0x50], r1
  lddw r1, 0x7e3e
  stxdw [r10-0x58], r1
  stxdw [r10-0x60], r7
  ja jmp_403b0

jmp_402b8:
  lddw r1, str_1c1e
  ja jmp_402e0

jmp_402d0:
  lddw r1, str_1c1c

jmp_402e0:
  stxdw [r10-0xb0], r1
  mov64 r1, 0x2
  stxdw [r10-0xa8], r1
  ldxdw r1, [r2+0x0]
  jne r1, 0x0, jmp_401c0

jmp_40308:
  mov64 r1, 0x0
  stxdw [r10-0x10], r1
  lddw r1, data_40c0
  stxdw [r10-0x30], r1
  mov64 r1, 0x3
  stxdw [r10-0x28], r1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x70
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0xc0
  stxdw [r10-0x50], r1
  lddw r1, 0x8b08
  stxdw [r10-0x48], r1
  stxdw [r10-0x58], r1
  mov64 r1, r10
  add64 r1, -0xd0
  stxdw [r10-0x60], r1

jmp_403b0:
  lddw r1, 0x8b12
  stxdw [r10-0x68], r1
  mov64 r1, r10
  add64 r1, -0xb0
  stxdw [r10-0x70], r1
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r2, r6
  call fn_3fef0

fn_40400:
  stxdw [r10-0x68], r2
  stxdw [r10-0x70], r1
  stxdw [r10-0x58], r4
  stxdw [r10-0x60], r3
  mov64 r1, 0x0
  stxdw [r10-0x30], r1
  lddw r1, data_4130
  stxdw [r10-0x50], r1
  mov64 r1, 0x2
  stxdw [r10-0x48], r1
  stxdw [r10-0x38], r1
  mov64 r1, r10
  add64 r1, -0x20
  stxdw [r10-0x40], r1
  lddw r1, 0x8b08
  stxdw [r10-0x8], r1
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0x10], r1
  lddw r1, 0x8b12
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x70
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x50
  mov64 r2, r5
  call fn_3fef0

fn_404f8:
  mov64 r7, r3
  mov64 r6, 0x0
  stxdw [r10-0x18], r2
  add64 r2, -0x1
  stxdw [r10-0x40], r2
  ldxdw r2, [r1+0x8]
  stxdw [r10-0x28], r2
  ldxdw r2, [r1+0x0]
  stxdw [r10-0x30], r2
  ldxdw r1, [r1+0x10]
  stxdw [r10-0x20], r1
  mov64 r1, 0x0
  stxdw [r10-0x8], r1
  ja jmp_40600

jmp_40568:
  ldxdw r2, [r10-0x18]
  ldxdw r3, [r10-0x8]
  add64 r2, r3
  sub64 r9, r3
  and64 r1, 0x1
  ldxdw r3, [r10-0x20]
  stxb [r3+0x0], r1
  ldxdw r1, [r10-0x28]
  ldxdw r4, [r1+0x18]
  ldxdw r1, [r10-0x30]
  mov64 r3, r9
  callx r4
  mov64 r1, r0
  neg64 r0
  jne r1, 0x0, jmp_409f8
  ldxdw r1, [r10-0x10]
  xor64 r1, 0x1
  stxdw [r10-0x8], r8
  jne r1, 0x0, jmp_409f8

jmp_40600:
  jgt r6, r7, jmp_40910
  mov64 r1, r6

jmp_40610:
  ldxdw r2, [r10-0x18]
  add64 r2, r1
  mov64 r3, r7
  sub64 r3, r1
  mov64 r4, 0x10
  jgt r4, r3, jmp_40820
  mov64 r6, r2
  add64 r6, 0x7
  and64 r6, -0x8
  mov64 r4, r6
  sub64 r4, r2
  jeq r4, 0x0, jmp_406a8
  mov64 r5, 0x0

jmp_40678:
  mov64 r0, r2
  add64 r0, r5
  ldxb r0, [r0+0x0]
  jeq r0, 0xa, jmp_40888
  add64 r5, 0x1
  jgt r4, r5, jmp_40678

jmp_406a8:
  stxdw [r10-0x38], r1
  mov64 r1, r3
  add64 r1, -0x10
  stxdw [r10-0x10], r1
  jgt r4, r1, jmp_407b0
  mov64 r0, 0x8
  add64 r0, r6
  ja jmp_40708

jmp_406e8:
  add64 r0, 0x10
  add64 r4, 0x10
  ldxdw r1, [r10-0x10]
  jgt r4, r1, jmp_407b0

jmp_40708:
  ldxdw r6, [r0-0x8]
  mov64 r8, r6
  lddw r1, 0xa0a0a0a0a0a0a0a
  xor64 r8, r1
  lddw r5, -0x101010101010101
  add64 r8, r5
  xor64 r6, -0x1
  and64 r8, r6
  ldxdw r6, [r0+0x0]
  mov64 r9, r6
  xor64 r9, r1
  add64 r9, r5
  xor64 r6, -0x1
  and64 r9, r6
  or64 r9, r8
  lddw r1, -0x7f7f7f7f7f7f7f80
  and64 r9, r1
  jeq r9, 0x0, jmp_406e8

jmp_407b0:
  mov64 r6, r7
  ldxdw r1, [r10-0x38]
  jeq r3, r4, jmp_40910
  sub64 r3, r4
  add64 r2, r4
  mov64 r5, 0x0

jmp_407e0:
  mov64 r0, r2
  add64 r0, r5
  ldxb r0, [r0+0x0]
  jeq r0, 0xa, jmp_40878
  add64 r5, 0x1
  mov64 r6, r7
  jgt r3, r5, jmp_407e0
  ja jmp_40910

jmp_40820:
  mov64 r6, r7
  jeq r7, r1, jmp_40910
  mov64 r5, 0x0

jmp_40838:
  mov64 r4, r2
  add64 r4, r5
  ldxb r4, [r4+0x0]
  jeq r4, 0xa, jmp_40888
  add64 r5, 0x1
  mov64 r6, r7
  jgt r3, r5, jmp_40838
  ja jmp_40910

jmp_40878:
  add64 r4, r5
  mov64 r5, r4

jmp_40888:
  mov64 r2, r1
  add64 r2, r5
  mov64 r6, r2
  add64 r6, 0x1
  jgt r7, r2, jmp_408c8

jmp_408b0:
  mov64 r1, r6
  jgt r6, r7, jmp_40910
  ja jmp_40610

jmp_408c8:
  ldxdw r2, [r10-0x18]
  add64 r2, r1
  add64 r2, r5
  mov64 r0, 0x1
  ldxb r1, [r2+0x0]
  mov64 r8, r6
  mov64 r9, r6
  jeq r1, 0xa, jmp_40938
  ja jmp_408b0

jmp_40910:
  mov64 r0, 0x0
  ldxdw r1, [r10-0x8]
  mov64 r8, r1
  mov64 r9, r7
  jeq r1, r7, jmp_409f8

jmp_40938:
  stxdw [r10-0x10], r0
  ldxdw r1, [r10-0x20]
  ldxb r1, [r1+0x0]
  jeq r1, 0x0, jmp_409a8
  ldxdw r1, [r10-0x28]
  ldxdw r4, [r1+0x18]
  ldxdw r1, [r10-0x30]
  lddw r2, str_031b
  mov64 r3, 0x4
  callx r4
  mov64 r1, r0
  mov64 r0, 0x1
  jne r1, 0x0, jmp_409f8

jmp_409a8:
  mov64 r1, 0x0
  ldxdw r2, [r10-0x8]
  jeq r9, r2, jmp_40568
  ldxdw r1, [r10-0x40]
  add64 r1, r9
  ldxb r2, [r1+0x0]
  mov64 r1, 0x1
  jeq r2, 0xa, jmp_40568
  mov64 r1, 0x0
  ja jmp_40568

jmp_409f8:
  and64 r0, 0x1
  exit
  ldxdw r7, [r1+0x8]
  ldxdw r6, [r1+0x0]
  ldxdw r8, [r1+0x10]
  ldxb r1, [r8+0x0]
  jne r1, 0x0, jmp_40a88

jmp_40a30:
  mov64 r3, r2
  lsh64 r3, 0x20
  rsh64 r3, 0x20
  mov64 r1, 0x1
  jeq r3, 0xa, jmp_40a60
  mov64 r1, 0x0

jmp_40a60:
  stxb [r8+0x0], r1
  ldxdw r3, [r7+0x20]
  mov64 r1, r6
  callx r3
  ja jmp_40ae0

jmp_40a88:
  ldxdw r4, [r7+0x18]
  mov64 r1, r6
  mov64 r9, r2
  lddw r2, str_031b
  mov64 r3, 0x4
  callx r4
  mov64 r2, r9
  mov64 r1, r0
  mov64 r0, 0x1
  jeq r1, 0x0, jmp_40a30

jmp_40ae0:
  exit

fn_40ae8:
  mov64 r8, r2
  mov64 r6, r1
  mov64 r2, 0x1
  ldxb r1, [r6+0x8]
  mov64 r7, 0x1
  jne r1, 0x0, jmp_40eb0
  stxdw [r10-0x68], r3
  ldxb r2, [r6+0x9]
  ldxdw r9, [r6+0x0]
  ldxw r1, [r9+0x34]
  mov64 r3, r1
  and64 r3, 0x4
  stxdw [r10-0x70], r4
  stxdw [r10-0x78], r5
  jne r3, 0x0, jmp_40ca0
  mov64 r1, r2
  lddw r2, str_1c52
  jeq r1, 0x0, jmp_40b90
  lddw r2, str_1c55

jmp_40b90:
  mov64 r3, 0x3
  jeq r1, 0x0, jmp_40ba8
  mov64 r3, 0x2

jmp_40ba8:
  ldxdw r1, [r9+0x20]
  ldxdw r4, [r9+0x28]
  ldxdw r4, [r4+0x18]
  callx r4
  mov64 r2, 0x1
  ldxdw r3, [r10-0x68]
  jne r0, 0x0, jmp_40eb0
  ldxdw r1, [r9+0x20]
  ldxdw r2, [r9+0x28]
  ldxdw r4, [r2+0x18]
  mov64 r2, r8
  callx r4
  mov64 r2, 0x1
  jne r0, 0x0, jmp_40eb0
  ldxdw r1, [r9+0x20]
  ldxdw r2, [r9+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1c50
  mov64 r3, 0x2
  callx r4
  ldxdw r3, [r10-0x78]
  ldxdw r1, [r10-0x70]
  mov64 r2, 0x1
  jne r0, 0x0, jmp_40eb0
  ldxdw r3, [r3+0x18]
  mov64 r2, r9
  callx r3
  mov64 r2, 0x1
  mov64 r7, r0
  ja jmp_40eb0

jmp_40ca0:
  jeq r2, 0x0, jmp_40cb0
  ja jmp_40d00

jmp_40cb0:
  ldxdw r1, [r9+0x20]
  ldxdw r2, [r9+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1c57
  mov64 r3, 0x3
  callx r4
  mov64 r2, 0x1
  jne r0, 0x0, jmp_40eb0
  ldxw r1, [r9+0x34]

jmp_40d00:
  stxb [r10-0x41], r7
  ldxdw r2, [r9+0x20]
  ldxdw r3, [r9+0x28]
  mov64 r4, r10
  add64 r4, -0x41
  stxdw [r10-0x50], r4
  stxdw [r10-0x58], r3
  stxdw [r10-0x60], r2
  ldxdw r2, [r9+0x0]
  ldxdw r3, [r9+0x8]
  ldxdw r4, [r9+0x10]
  ldxdw r5, [r9+0x18]
  ldxw r0, [r9+0x30]
  ldxb r9, [r9+0x38]
  stxb [r10-0x8], r9
  stxw [r10-0x10], r0
  stxw [r10-0xc], r1
  lddw r1, data_4150
  stxdw [r10-0x18], r1
  stxdw [r10-0x28], r5
  stxdw [r10-0x30], r4
  stxdw [r10-0x38], r3
  stxdw [r10-0x40], r2
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0x20], r1
  mov64 r2, r8
  ldxdw r3, [r10-0x68]
  call fn_404f8
  jne r0, 0x0, jmp_40ea8
  mov64 r1, r10
  add64 r1, -0x60
  lddw r2, str_1c50
  mov64 r3, 0x2
  call fn_404f8
  jne r0, 0x0, jmp_40ea8
  ldxdw r1, [r10-0x78]
  ldxdw r3, [r1+0x18]
  mov64 r2, r10
  add64 r2, -0x40
  ldxdw r1, [r10-0x70]
  callx r3
  jne r0, 0x0, jmp_40ea8
  ldxdw r1, [r10-0x18]
  ldxdw r4, [r1+0x18]
  ldxdw r1, [r10-0x20]
  lddw r2, str_1c5a
  mov64 r3, 0x2
  callx r4
  mov64 r7, r0

jmp_40ea8:
  mov64 r2, 0x1

jmp_40eb0:
  stxb [r6+0x9], r2
  stxb [r6+0x8], r7
  mov64 r0, r6
  exit

fn_40ed0:
  ldxb r2, [r1+0x8]
  ldxb r3, [r1+0x9]
  jne r3, 0x0, jmp_40f10
  mov64 r1, r2
  mov64 r0, 0x1
  jne r1, 0x0, jmp_40fc8
  mov64 r0, 0x0
  ja jmp_40fc8

jmp_40f10:
  mov64 r0, 0x1
  jne r2, 0x0, jmp_40fc0
  mov64 r6, r1
  ldxdw r2, [r1+0x0]
  ldxw r1, [r2+0x34]
  and64 r1, 0x4
  jne r1, 0x0, jmp_40f80
  ldxdw r1, [r2+0x20]
  ldxdw r2, [r2+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1c5d
  mov64 r3, 0x2
  ja jmp_40fb0

jmp_40f80:
  ldxdw r1, [r2+0x20]
  ldxdw r2, [r2+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1c5c
  mov64 r3, 0x1

jmp_40fb0:
  callx r4
  mov64 r1, r6

jmp_40fc0:
  stxb [r1+0x8], r0

jmp_40fc8:
  and64 r0, 0x1
  exit

fn_40fd8:
  mov64 r6, r1
  mov64 r7, 0x1
  ldxdw r9, [r6+0x0]
  ldxb r1, [r6+0x10]
  jne r1, 0x0, jmp_412c0
  ldxdw r8, [r6+0x8]
  ldxw r1, [r8+0x34]
  mov64 r4, r1
  and64 r4, 0x4
  jne r4, 0x0, jmp_410d8
  lddw r4, str_1c5f
  jeq r9, 0x0, jmp_41050
  lddw r4, str_1c55

jmp_41050:
  stxdw [r10-0x68], r3
  stxdw [r10-0x70], r2
  mov64 r3, 0x1
  jeq r9, 0x0, jmp_41078
  mov64 r3, 0x2

jmp_41078:
  ldxdw r1, [r8+0x20]
  ldxdw r2, [r8+0x28]
  ldxdw r5, [r2+0x18]
  mov64 r2, r4
  callx r5
  ldxdw r1, [r10-0x70]
  ldxdw r2, [r10-0x68]
  jne r0, 0x0, jmp_412c0
  ldxdw r3, [r2+0x18]
  mov64 r2, r8
  callx r3
  ja jmp_412b8

jmp_410d8:
  jeq r9, 0x0, jmp_410e8
  ja jmp_41150

jmp_410e8:
  ldxdw r1, [r8+0x20]
  ldxdw r4, [r8+0x28]
  ldxdw r4, [r4+0x18]
  stxdw [r10-0x70], r2
  lddw r2, str_1c60
  stxdw [r10-0x68], r3
  mov64 r3, 0x2
  callx r4
  ldxdw r3, [r10-0x68]
  ldxdw r2, [r10-0x70]
  jne r0, 0x0, jmp_412c0
  ldxw r1, [r8+0x34]

jmp_41150:
  stxb [r10-0x41], r7
  ldxdw r4, [r8+0x20]
  ldxdw r5, [r8+0x28]
  mov64 r0, r10
  add64 r0, -0x41
  stxdw [r10-0x50], r0
  stxdw [r10-0x58], r5
  stxdw [r10-0x60], r4
  ldxdw r4, [r8+0x0]
  stxdw [r10-0x68], r4
  ldxdw r4, [r8+0x8]
  stxdw [r10-0x70], r4
  ldxdw r0, [r8+0x10]
  ldxdw r5, [r8+0x18]
  ldxw r4, [r8+0x30]
  ldxb r8, [r8+0x38]
  stxb [r10-0x8], r8
  stxw [r10-0x10], r4
  stxw [r10-0xc], r1
  lddw r1, data_4150
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0x20], r1
  stxdw [r10-0x28], r5
  stxdw [r10-0x30], r0
  ldxdw r1, [r10-0x70]
  stxdw [r10-0x38], r1
  ldxdw r1, [r10-0x68]
  stxdw [r10-0x40], r1
  ldxdw r4, [r3+0x18]
  mov64 r3, r10
  add64 r3, -0x40
  mov64 r1, r2
  mov64 r2, r3
  callx r4
  jne r0, 0x0, jmp_412c0
  ldxdw r1, [r10-0x18]
  ldxdw r4, [r1+0x18]
  ldxdw r1, [r10-0x20]
  lddw r2, str_1c5a
  mov64 r3, 0x2
  callx r4

jmp_412b8:
  mov64 r7, r0

jmp_412c0:
  stxb [r6+0x10], r7
  add64 r9, 0x1
  stxdw [r6+0x0], r9
  mov64 r0, r6
  exit

fn_412e8:
  ldxb r3, [r1+0x10]
  ldxdw r2, [r1+0x0]
  jne r2, 0x0, jmp_41328
  mov64 r1, r3
  mov64 r0, 0x1
  jne r1, 0x0, jmp_41440
  mov64 r0, 0x0
  ja jmp_41440

jmp_41328:
  mov64 r0, 0x1
  jeq r3, 0x0, jmp_41340
  ja jmp_41438

jmp_41340:
  ldxdw r6, [r1+0x8]
  jne r2, 0x1, jmp_41360
  ldxb r2, [r1+0x11]
  jne r2, 0x0, jmp_413b8

jmp_41360:
  ldxdw r2, [r6+0x20]
  ldxdw r3, [r6+0x28]
  ldxdw r4, [r3+0x18]
  mov64 r6, r1
  mov64 r1, r2
  lddw r2, str_1b88
  mov64 r3, 0x1
  callx r4
  mov64 r1, r6
  ja jmp_41438

jmp_413b8:
  ldxw r2, [r6+0x34]
  and64 r2, 0x4
  jne r2, 0x0, jmp_41360
  ldxdw r2, [r6+0x20]
  ldxdw r3, [r6+0x28]
  ldxdw r4, [r3+0x18]
  mov64 r7, r1
  mov64 r1, r2
  lddw r2, str_1c62
  mov64 r3, 0x1
  callx r4
  mov64 r1, r7
  mov64 r2, r0
  mov64 r0, 0x1
  jeq r2, 0x0, jmp_41360

jmp_41438:
  stxb [r1+0x10], r0

jmp_41440:
  and64 r0, 0x1
  exit

fn_41450:
  mov64 r6, r1
  mov64 r9, 0x1
  ldxb r1, [r6+0x8]
  mov64 r8, 0x1
  jne r1, 0x0, jmp_41740
  ldxb r4, [r6+0x9]
  ldxdw r7, [r6+0x0]
  ldxw r1, [r7+0x34]
  mov64 r5, r1
  and64 r5, 0x4
  jne r5, 0x0, jmp_41558
  mov64 r1, r4
  jeq r1, 0x0, jmp_41528
  ldxdw r1, [r7+0x20]
  ldxdw r4, [r7+0x28]
  ldxdw r4, [r4+0x18]
  mov64 r8, r2
  lddw r2, str_1c55
  mov64 r9, r3
  mov64 r3, 0x2
  callx r4
  mov64 r3, r9
  mov64 r9, 0x1
  mov64 r2, r8
  mov64 r8, 0x1
  jne r0, 0x0, jmp_41740

jmp_41528:
  ldxdw r3, [r3+0x18]
  mov64 r1, r2
  mov64 r2, r7
  callx r3
  mov64 r8, r0
  ja jmp_41740

jmp_41558:
  jeq r4, 0x0, jmp_41568
  ja jmp_415d8

jmp_41568:
  ldxdw r1, [r7+0x20]
  ldxdw r4, [r7+0x28]
  ldxdw r4, [r4+0x18]
  stxdw [r10-0x68], r2
  lddw r2, str_1c09
  mov64 r9, r3
  mov64 r3, 0x1
  callx r4
  mov64 r3, r9
  ldxdw r2, [r10-0x68]
  mov64 r9, 0x1
  jne r0, 0x0, jmp_41740
  ldxw r1, [r7+0x34]

jmp_415d8:
  stxb [r10-0x41], r8
  ldxdw r4, [r7+0x20]
  ldxdw r5, [r7+0x28]
  mov64 r0, r10
  add64 r0, -0x41
  stxdw [r10-0x50], r0
  stxdw [r10-0x58], r5
  stxdw [r10-0x60], r4
  ldxdw r4, [r7+0x0]
  stxdw [r10-0x68], r4
  ldxdw r5, [r7+0x8]
  ldxdw r0, [r7+0x10]
  ldxdw r9, [r7+0x18]
  ldxw r4, [r7+0x30]
  ldxb r7, [r7+0x38]
  stxb [r10-0x8], r7
  stxw [r10-0x10], r4
  stxw [r10-0xc], r1
  lddw r1, data_4150
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0x20], r1
  stxdw [r10-0x28], r9
  stxdw [r10-0x30], r0
  stxdw [r10-0x38], r5
  ldxdw r1, [r10-0x68]
  stxdw [r10-0x40], r1
  ldxdw r4, [r3+0x18]
  mov64 r3, r10
  add64 r3, -0x40
  mov64 r1, r2
  mov64 r2, r3
  callx r4
  jne r0, 0x0, jmp_41738
  ldxdw r1, [r10-0x18]
  ldxdw r4, [r1+0x18]
  ldxdw r1, [r10-0x20]
  lddw r2, str_1c5a
  mov64 r3, 0x2
  callx r4
  mov64 r8, r0

jmp_41738:
  mov64 r9, 0x1

jmp_41740:
  stxb [r6+0x9], r9
  stxb [r6+0x8], r8
  mov64 r0, r6
  exit

fn_41760:
  mov64 r0, 0x1
  ldxb r2, [r1+0x8]
  jne r2, 0x0, jmp_417b8
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r2+0x20]
  ldxdw r2, [r2+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1c63
  mov64 r3, 0x1
  callx r4

jmp_417b8:
  exit

fn_417c0:
  stxdw [r10-0x4c0], r4
  stxdw [r10-0x4d0], r3
  mov64 r9, r2
  stxdw [r10-0x4b8], r1
  mov64 r7, r9
  lsh64 r7, 0x1
  lddw r1, 0x1ffffffffffffe
  and64 r7, r1
  lddw r1, 0xfffffffffffff
  mov64 r8, r9
  and64 r8, r1
  mov64 r6, r9
  rsh64 r6, 0x34
  and64 r6, 0x7ff
  jeq r6, 0x0, jmp_41868
  lddw r1, 0x10000000000000
  mov64 r7, r8
  or64 r7, r1

jmp_41868:
  mov64 r1, r9
  mov64 r2, r9
  call fn_4bfa0
  mov64 r2, 0x2
  jne r0, 0x0, jmp_419b8
  mov64 r3, r7
  and64 r3, 0x1
  lddw r4, 0x7ff0000000000000
  mov64 r0, r9
  and64 r0, r4
  jne r8, 0x0, jmp_418f0
  mov64 r2, 0x3
  jeq r0, r4, jmp_419b8
  mov64 r2, 0x4
  jeq r0, 0x0, jmp_419b8
  ja jmp_418f8

jmp_418f0:
  jeq r0, 0x0, jmp_41988

jmp_418f8:
  mov64 r5, 0x2
  lddw r2, 0x10000000000000
  jeq r7, r2, jmp_41920
  mov64 r5, 0x1

jmp_41920:
  lddw r4, 0x40000000000000
  jeq r7, r2, jmp_41948
  mov64 r4, r7
  lsh64 r4, 0x1

jmp_41948:
  mov64 r1, -0x435
  jeq r7, r2, jmp_41960
  mov64 r1, -0x434

jmp_41960:
  add64 r1, r6
  xor64 r3, 0x1
  mov64 r2, r3
  stxdw [r10-0x4c8], r4
  ja jmp_419b8

jmp_41988:
  add64 r6, -0x433
  mov64 r5, 0x1
  xor64 r3, 0x1
  stxdw [r10-0x4c8], r7
  mov64 r1, r6
  mov64 r2, r3

jmp_419b8:
  stxh [r10-0x8], r1
  stxdw [r10-0x10], r5
  ldxdw r3, [r10-0x4c8]
  stxdw [r10-0x20], r3
  mov64 r6, 0x1
  stxdw [r10-0x18], r6
  mov64 r7, 0x0
  stxb [r10-0x6], r2
  jeq r2, 0x2, jmp_41a90
  ldxdw r3, [r10-0x4d0]
  jne r3, 0x0, jmp_41a18
  ja jmp_41a58

jmp_41a18:
  lddw r6, str_1b3f
  mov64 r3, 0x0
  jsgt r3, r9, jmp_41a48
  lddw r6, str_1b40

jmp_41a48:
  mov64 r7, 0x1
  ja jmp_41a90

jmp_41a58:
  lddw r6, str_1b3f
  mov64 r3, 0x0
  jsgt r3, r9, jmp_41a80
  mov64 r6, 0x1

jmp_41a80:
  rsh64 r9, 0x3f
  mov64 r7, r9

jmp_41a90:
  add64 r2, -0x2
  and64 r2, 0xff
  mov64 r3, 0x3
  jgt r3, r2, jmp_41ab8
  mov64 r2, 0x3

jmp_41ab8:
  jsgt r2, 0x1, jmp_41af0
  jeq r2, 0x0, jmp_41b70
  mov64 r1, 0x3
  stxdw [r10-0x90], r1
  lddw r1, str_1b44
  ja jmp_41b90

jmp_41af0:
  jeq r2, 0x2, jmp_41bb8
  lsh64 r1, 0x30
  arsh64 r1, 0x30
  mov64 r8, -0xc
  mov64 r2, 0x0
  jsgt r2, r1, jmp_41b28
  mov64 r8, 0x5

jmp_41b28:
  mul64 r8, r1
  mov64 r1, 0x3ec0
  jgt r1, r8, jmp_41c10
  lddw r1, str_1b48
  mov64 r2, 0x25
  lddw r3, data_3ff8
  call fn_3ff48

jmp_41b70:
  mov64 r1, 0x3
  stxdw [r10-0x90], r1
  lddw r1, str_1b41

jmp_41b90:
  stxdw [r10-0x98], r1
  mov64 r1, 0x2
  stxh [r10-0xa0], r1
  mov64 r1, 0x1
  ja jmp_41e20

jmp_41bb8:
  mov64 r1, 0x2
  stxh [r10-0xa0], r1
  ldxdw r2, [r10-0x4c0]
  jeq r2, 0x0, jmp_41df8

jmp_41bd8:
  stxdw [r10-0x80], r2
  mov64 r2, 0x0
  stxh [r10-0x88], r2
  lddw r2, str_1b3d
  stxdw [r10-0x98], r2
  ja jmp_41e18

jmp_41c10:
  rsh64 r8, 0x4
  add64 r8, 0x15
  ldxdw r2, [r10-0x4c0]
  mov64 r9, r2
  neg64 r9
  mov64 r1, 0x8000
  jgt r1, r2, jmp_41c50
  mov64 r9, -0x8000

jmp_41c50:
  mov64 r1, r10
  add64 r1, -0xa0
  mov64 r2, r10
  add64 r2, -0x20
  mov64 r3, r10
  add64 r3, -0x4a0
  mov64 r4, r8
  mov64 r5, r9
  call fn_3db70
  lsh64 r9, 0x30
  arsh64 r9, 0x30
  ldxdw r1, [r10-0xa0]
  jne r1, 0x0, jmp_41d08
  mov64 r1, r10
  add64 r1, -0x40
  mov64 r2, r10
  add64 r2, -0x20
  mov64 r3, r10
  add64 r3, -0x4a0
  mov64 r4, r8
  mov64 r5, r9
  call fn_3a678
  ja jmp_41d38

jmp_41d08:
  ldxdw r1, [r10-0x90]
  stxdw [r10-0x30], r1
  ldxdw r1, [r10-0x98]
  stxdw [r10-0x38], r1
  ldxdw r1, [r10-0xa0]
  stxdw [r10-0x40], r1

jmp_41d38:
  ldxh r4, [r10-0x30]
  lsh64 r4, 0x30
  arsh64 r4, 0x30
  jsge r9, r4, jmp_41dd8
  ldxdw r3, [r10-0x38]
  ldxdw r2, [r10-0x40]
  mov64 r1, r10
  add64 r1, -0xa0
  stxdw [r10-0xff8], r1
  mov64 r1, 0x4
  stxdw [r10-0xff0], r1
  ldxdw r1, [r10-0x4c0]
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0x4b0
  mov64 r5, r10
  call fn_3eb98
  ldxdw r1, [r10-0x4a8]
  ldxdw r2, [r10-0x4b0]
  ja jmp_41e30

jmp_41dd8:
  mov64 r1, 0x2
  stxh [r10-0xa0], r1
  ldxdw r2, [r10-0x4c0]
  jne r2, 0x0, jmp_41bd8

jmp_41df8:
  lddw r1, str_1b47
  stxdw [r10-0x98], r1
  mov64 r1, 0x1

jmp_41e18:
  stxdw [r10-0x90], r1

jmp_41e20:
  mov64 r2, r10
  add64 r2, -0xa0

jmp_41e30:
  stxdw [r10-0x28], r1
  stxdw [r10-0x30], r2
  stxdw [r10-0x38], r7
  stxdw [r10-0x40], r6
  mov64 r2, r10
  add64 r2, -0x40
  ldxdw r1, [r10-0x4b8]
  call fn_434f8
  exit

fn_41e78:
  stxdw [r10-0xe0], r4
  stxdw [r10-0xe8], r3
  mov64 r9, r2
  stxdw [r10-0xd0], r1
  mov64 r7, r9
  lsh64 r7, 0x1
  lddw r1, 0x1ffffffffffffe
  and64 r7, r1
  lddw r1, 0xfffffffffffff
  mov64 r8, r9
  and64 r8, r1
  mov64 r6, r9
  rsh64 r6, 0x34
  and64 r6, 0x7ff
  jeq r6, 0x0, jmp_41f20
  lddw r1, 0x10000000000000
  mov64 r7, r8
  or64 r7, r1

jmp_41f20:
  mov64 r1, r9
  mov64 r2, r9
  call fn_4bfa0
  mov64 r1, 0x2
  jne r0, 0x0, jmp_42070
  mov64 r2, r7
  and64 r2, 0x1
  lddw r3, 0x7ff0000000000000
  mov64 r0, r9
  and64 r0, r3
  jne r8, 0x0, jmp_41fa8
  mov64 r1, 0x3
  jeq r0, r3, jmp_42070
  mov64 r1, 0x4
  jeq r0, 0x0, jmp_42070
  ja jmp_41fb0

jmp_41fa8:
  jeq r0, 0x0, jmp_42040

jmp_41fb0:
  mov64 r4, 0x2
  lddw r1, 0x10000000000000
  jeq r7, r1, jmp_41fd8
  mov64 r4, 0x1

jmp_41fd8:
  lddw r3, 0x40000000000000
  jeq r7, r1, jmp_42000
  mov64 r3, r7
  lsh64 r3, 0x1

jmp_42000:
  mov64 r5, -0x435
  jeq r7, r1, jmp_42018
  mov64 r5, -0x434

jmp_42018:
  add64 r5, r6
  xor64 r2, 0x1
  mov64 r1, r2
  stxdw [r10-0xd8], r3
  ja jmp_42070

jmp_42040:
  add64 r6, -0x433
  mov64 r4, 0x1
  xor64 r2, 0x1
  stxdw [r10-0xd8], r7
  mov64 r5, r6
  mov64 r1, r2

jmp_42070:
  stxh [r10-0x8], r5
  stxdw [r10-0x10], r4
  ldxdw r2, [r10-0xd8]
  stxdw [r10-0x20], r2
  mov64 r6, 0x0
  mov64 r7, 0x1
  stxdw [r10-0x18], r7
  stxb [r10-0x6], r1
  jeq r1, 0x2, jmp_42148
  ldxdw r2, [r10-0xe8]
  jne r2, 0x0, jmp_420d0
  ja jmp_42110

jmp_420d0:
  lddw r7, str_1b3f
  mov64 r2, 0x0
  jsgt r2, r9, jmp_42100
  lddw r7, str_1b40

jmp_42100:
  mov64 r6, 0x1
  ja jmp_42148

jmp_42110:
  lddw r7, str_1b3f
  mov64 r2, 0x0
  jsgt r2, r9, jmp_42138
  mov64 r7, 0x1

jmp_42138:
  rsh64 r9, 0x3f
  mov64 r6, r9

jmp_42148:
  add64 r1, -0x2
  and64 r1, 0xff
  mov64 r2, 0x3
  jgt r2, r1, jmp_42170
  mov64 r1, 0x3

jmp_42170:
  jsgt r1, 0x1, jmp_421a8
  jeq r1, 0x0, jmp_42240
  mov64 r1, 0x3
  stxdw [r10-0x90], r1
  lddw r1, str_1b44
  ja jmp_42260

jmp_421a8:
  jeq r1, 0x2, jmp_42288
  mov64 r1, r10
  add64 r1, -0xa0
  mov64 r2, r10
  add64 r2, -0x20
  mov64 r3, r10
  add64 r3, -0xb1
  mov64 r4, 0x11
  call fn_3c3f0
  ldxdw r1, [r10-0xa0]
  jne r1, 0x0, jmp_42208
  ja jmp_422e8

jmp_42208:
  ldxdw r1, [r10-0x90]
  stxdw [r10-0x30], r1
  ldxdw r1, [r10-0x98]
  stxdw [r10-0x38], r1
  ldxdw r1, [r10-0xa0]
  stxdw [r10-0x40], r1
  ja jmp_42328

jmp_42240:
  mov64 r1, 0x3
  stxdw [r10-0x90], r1
  lddw r1, str_1b41

jmp_42260:
  stxdw [r10-0x98], r1
  mov64 r1, 0x2
  stxh [r10-0xa0], r1
  mov64 r1, 0x1
  ja jmp_423d8

jmp_42288:
  mov64 r1, 0x2
  stxh [r10-0xa0], r1
  ldxdw r2, [r10-0xe0]
  jeq r2, 0x0, jmp_423b0
  mov64 r2, 0x1
  stxdw [r10-0x80], r2
  mov64 r2, 0x0
  stxh [r10-0x88], r2
  lddw r2, str_1b3d
  stxdw [r10-0x98], r2
  ja jmp_423d0

jmp_422e8:
  mov64 r1, r10
  add64 r1, -0x40
  mov64 r2, r10
  add64 r2, -0x20
  mov64 r3, r10
  add64 r3, -0xb1
  mov64 r4, 0x11
  call fn_38450

jmp_42328:
  ldxdw r2, [r10-0x40]
  ldxdw r3, [r10-0x38]
  ldxh r4, [r10-0x30]
  mov64 r1, r10
  add64 r1, -0xa0
  stxdw [r10-0xff8], r1
  mov64 r1, 0x4
  stxdw [r10-0xff0], r1
  ldxdw r1, [r10-0xe0]
  stxdw [r10-0x1000], r1
  mov64 r1, r10
  add64 r1, -0xc8
  mov64 r5, r10
  call fn_3eb98
  ldxdw r1, [r10-0xc0]
  ldxdw r2, [r10-0xc8]
  ja jmp_423e8

jmp_423b0:
  lddw r1, str_1b47
  stxdw [r10-0x98], r1
  mov64 r1, 0x1

jmp_423d0:
  stxdw [r10-0x90], r1

jmp_423d8:
  mov64 r2, r10
  add64 r2, -0xa0

jmp_423e8:
  stxdw [r10-0x28], r1
  stxdw [r10-0x30], r2
  stxdw [r10-0x38], r6
  stxdw [r10-0x40], r7
  mov64 r2, r10
  add64 r2, -0x40
  ldxdw r1, [r10-0xd0]
  call fn_434f8
  exit
  mov64 r3, r2
  lddw r2, data_4150
  call fn_42488
  exit
  mov64 r3, r1
  ldxdw r4, [r2+0x28]
  ldxdw r1, [r2+0x20]
  mov64 r2, r4
  call fn_42488
  exit

fn_42488:
  mov64 r4, 0x3
  stxb [r10-0x8], r4
  mov64 r4, 0x20
  stxdw [r10-0x10], r4
  stxdw [r10-0x18], r2
  stxdw [r10-0x20], r1
  mov64 r7, 0x0
  stxdw [r10-0x30], r7
  stxdw [r10-0x40], r7
  ldxdw r8, [r3+0x20]
  stxdw [r10-0x50], r3
  jne r8, 0x0, jmp_425d0
  ldxdw r6, [r3+0x18]
  jeq r6, 0x0, jmp_42818
  ldxdw r1, [r10-0x50]
  ldxdw r8, [r1+0x10]
  add64 r8, 0x8
  lsh64 r6, 0x4
  ldxdw r9, [r1+0x0]
  add64 r9, 0x8
  ja jmp_425b8

jmp_42530:
  ldxdw r1, [r10-0x18]
  ldxdw r4, [r1+0x18]
  ldxdw r2, [r9-0x8]
  ldxdw r1, [r10-0x20]
  callx r4
  jne r0, 0x0, jmp_428a0

jmp_42560:
  ldxdw r1, [r8-0x8]
  ldxdw r3, [r8+0x0]
  mov64 r2, r10
  add64 r2, -0x40
  callx r3
  jne r0, 0x0, jmp_428a0
  add64 r7, 0x1
  add64 r8, 0x10
  add64 r9, 0x10
  add64 r6, -0x10
  jeq r6, 0x0, jmp_42818

jmp_425b8:
  ldxdw r3, [r9+0x0]
  jeq r3, 0x0, jmp_42560
  ja jmp_42530

jmp_425d0:
  ldxdw r9, [r3+0x28]
  jeq r9, 0x0, jmp_42818
  add64 r8, 0x18
  mul64 r9, 0x38
  ldxdw r1, [r10-0x50]
  ldxdw r2, [r1+0x10]
  stxdw [r10-0x48], r2
  ldxdw r6, [r1+0x0]
  add64 r6, 0x8
  ja jmp_426a8

jmp_42620:
  stxdw [r10-0x28], r2
  stxdw [r10-0x30], r1
  ldxdw r1, [r8+0x8]
  lsh64 r1, 0x4
  ldxdw r2, [r10-0x48]
  add64 r2, r1
  ldxdw r1, [r2+0x0]
  ldxdw r3, [r2+0x8]
  mov64 r2, r10
  add64 r2, -0x40
  callx r3
  jne r0, 0x0, jmp_428a0
  add64 r7, 0x1
  add64 r8, 0x38
  add64 r6, 0x10
  add64 r9, -0x38
  jeq r9, 0x0, jmp_42818

jmp_426a8:
  ldxdw r3, [r6+0x0]
  jeq r3, 0x0, jmp_426e8
  ldxdw r1, [r10-0x18]
  ldxdw r4, [r1+0x18]
  ldxdw r2, [r6-0x8]
  ldxdw r1, [r10-0x20]
  callx r4
  jne r0, 0x0, jmp_428a0

jmp_426e8:
  ldxw r1, [r8+0x10]
  stxw [r10-0x10], r1
  ldxb r1, [r8+0x18]
  stxb [r10-0x8], r1
  ldxw r1, [r8+0x14]
  stxw [r10-0xc], r1
  ldxdw r1, [r8+0x0]
  ldxdw r3, [r8-0x8]
  jeq r3, 0x0, jmp_42788
  mov64 r2, 0x0
  jeq r3, 0x1, jmp_42748
  ja jmp_42790

jmp_42748:
  lsh64 r1, 0x4
  ldxdw r3, [r10-0x48]
  add64 r3, r1
  ldxdw r4, [r3+0x8]
  jne r4, 0x0, jmp_42790
  mov64 r2, 0x1
  ldxdw r1, [r3+0x0]
  ja jmp_42790

jmp_42788:
  mov64 r2, 0x1

jmp_42790:
  stxdw [r10-0x38], r1
  stxdw [r10-0x40], r2
  mov64 r1, 0x0
  ldxdw r3, [r8-0x18]
  jeq r3, 0x2, jmp_42620
  ldxdw r2, [r8-0x10]
  jeq r3, 0x1, jmp_427d8
  mov64 r1, 0x1
  ja jmp_42620

jmp_427d8:
  lsh64 r2, 0x4
  ldxdw r3, [r10-0x48]
  add64 r3, r2
  ldxdw r4, [r3+0x8]
  jne r4, 0x0, jmp_42620
  mov64 r1, 0x1
  ldxdw r2, [r3+0x0]
  ja jmp_42620

jmp_42818:
  ldxdw r1, [r10-0x50]
  ldxdw r1, [r1+0x8]
  jgt r1, r7, jmp_42838
  ja jmp_42890

jmp_42838:
  lsh64 r7, 0x4
  ldxdw r1, [r10-0x50]
  ldxdw r1, [r1+0x0]
  add64 r1, r7
  ldxdw r3, [r1+0x8]
  ldxdw r2, [r1+0x0]
  ldxdw r1, [r10-0x18]
  ldxdw r4, [r1+0x18]
  ldxdw r1, [r10-0x20]
  callx r4
  jne r0, 0x0, jmp_428a0

jmp_42890:
  mov64 r0, 0x0
  ja jmp_428a8

jmp_428a0:
  mov64 r0, 0x1

jmp_428a8:
  exit

fn_428b0:
  mov64 r9, r4
  ldxdw r7, [r5-0xff8]
  stxdw [r10-0x18], r7
  jne r2, 0x0, jmp_428f0
  mov64 r0, 0x2d
  ldxw r6, [r1+0x34]
  add64 r7, 0x1
  ja jmp_42918

jmp_428f0:
  mov64 r0, 0x110000
  ldxw r6, [r1+0x34]
  mov64 r2, r6
  and64 r2, 0x1
  jne r2, 0x0, jmp_42b28

jmp_42918:
  ldxdw r2, [r5-0x1000]
  stxdw [r10-0x20], r2
  mov64 r4, 0x0
  mov64 r2, r6
  and64 r2, 0x4
  jeq r2, 0x0, jmp_42950
  ja jmp_42a30

jmp_42950:
  ldxdw r2, [r1+0x0]
  jne r2, 0x0, jmp_429b0
  ldxdw r8, [r1+0x28]
  ldxdw r7, [r1+0x20]
  mov64 r1, r7
  mov64 r2, r8
  mov64 r3, r0
  mov64 r5, r9
  call fn_42ee0
  mov64 r6, 0x1
  jne r0, 0x0, jmp_42b10
  ja jmp_42ae0

jmp_429b0:
  ldxdw r8, [r1+0x8]
  jgt r8, r7, jmp_429c8
  ja jmp_42a98

jmp_429c8:
  stxdw [r10-0x30], r9
  and64 r6, 0x8
  jeq r6, 0x0, jmp_429e8
  ja jmp_42bf0

jmp_429e8:
  sub64 r8, r7
  ldxb r9, [r1+0x38]
  stxdw [r10-0x28], r0
  stxdw [r10-0x38], r4
  jsgt r9, 0x1, jmp_42cd0
  jeq r9, 0x0, jmp_42d68

jmp_42a18:
  mov64 r9, r8
  mov64 r8, 0x0
  ja jmp_42d68

jmp_42a30:
  stxdw [r10-0x28], r0
  mov64 r2, 0x20
  jgt r2, r9, jmp_42b48
  stxdw [r10-0x10], r1
  mov64 r1, r3
  mov64 r2, r9
  mov64 r8, r9
  mov64 r9, r3
  call fn_45b60
  mov64 r3, r9
  mov64 r9, r8
  ldxdw r1, [r10-0x10]
  ja jmp_42b90

jmp_42a98:
  ldxdw r8, [r1+0x28]
  ldxdw r7, [r1+0x20]
  mov64 r1, r7
  mov64 r2, r8
  mov64 r3, r0
  mov64 r5, r9
  call fn_42ee0
  mov64 r6, 0x1
  jne r0, 0x0, jmp_42b10

jmp_42ae0:
  ldxdw r4, [r8+0x18]
  mov64 r1, r7
  ldxdw r2, [r10-0x20]
  ldxdw r3, [r10-0x18]
  callx r4
  mov64 r6, r0

jmp_42b10:
  and64 r6, 0x1
  mov64 r0, r6
  exit

jmp_42b28:
  mov64 r0, 0x2b
  ldxdw r7, [r10-0x18]
  add64 r7, 0x1
  ja jmp_42918

jmp_42b48:
  mov64 r0, 0x0
  jeq r9, 0x0, jmp_42b90
  mov64 r2, r3
  mov64 r4, r9
  ja jmp_42bb8

jmp_42b70:
  add64 r0, r5
  add64 r2, 0x1
  add64 r4, -0x1
  jne r4, 0x0, jmp_42bb8

jmp_42b90:
  add64 r0, r7
  mov64 r7, r0
  mov64 r4, r3
  ldxdw r0, [r10-0x28]
  ja jmp_42950

jmp_42bb8:
  ldxb r8, [r2+0x0]
  lsh64 r8, 0x38
  arsh64 r8, 0x38
  mov64 r5, 0x1
  jsgt r8, -0x41, jmp_42b70
  mov64 r5, 0x0
  ja jmp_42b70

jmp_42bf0:
  ldxw r2, [r1+0x30]
  stxdw [r10-0x40], r2
  mov64 r2, 0x30
  stxw [r1+0x30], r2
  ldxb r2, [r1+0x38]
  stxdw [r10-0x48], r2
  mov64 r6, 0x1
  stxb [r1+0x38], r6
  ldxdw r2, [r1+0x20]
  stxdw [r10-0x10], r1
  ldxdw r9, [r1+0x28]
  stxdw [r10-0x8], r2
  mov64 r1, r2
  mov64 r2, r9
  mov64 r3, r0
  ldxdw r5, [r10-0x30]
  call fn_42ee0
  jne r0, 0x0, jmp_42b10
  sub64 r8, r7
  add64 r8, 0x1

jmp_42c90:
  add64 r8, -0x1
  jeq r8, 0x0, jmp_42ce0
  ldxdw r3, [r9+0x20]
  ldxdw r1, [r10-0x8]
  mov64 r2, 0x30
  callx r3
  jne r0, 0x0, jmp_42b10
  ja jmp_42c90

jmp_42cd0:
  jeq r9, 0x2, jmp_42d48
  ja jmp_42a18

jmp_42ce0:
  ldxdw r4, [r9+0x18]
  ldxdw r1, [r10-0x8]
  ldxdw r2, [r10-0x20]
  ldxdw r3, [r10-0x18]
  callx r4
  jne r0, 0x0, jmp_42b10
  ldxdw r1, [r10-0x10]
  ldxdw r2, [r10-0x48]
  stxb [r1+0x38], r2
  ldxdw r2, [r10-0x40]
  stxw [r1+0x30], r2
  mov64 r6, 0x0
  ja jmp_42b10

jmp_42d48:
  mov64 r9, r8
  rsh64 r9, 0x1
  add64 r8, 0x1
  rsh64 r8, 0x1

jmp_42d68:
  add64 r9, 0x1
  ldxw r2, [r1+0x30]
  stxdw [r10-0x10], r2
  ldxdw r2, [r1+0x28]
  stxdw [r10-0x8], r2
  ldxdw r7, [r1+0x20]
  mov64 r6, 0x1

jmp_42da0:
  add64 r9, -0x1
  jeq r9, 0x0, jmp_42de8
  ldxdw r1, [r10-0x8]
  ldxdw r3, [r1+0x20]
  mov64 r1, r7
  ldxdw r2, [r10-0x10]
  callx r3
  jne r0, 0x0, jmp_42b10
  ja jmp_42da0

jmp_42de8:
  mov64 r1, r7
  ldxdw r2, [r10-0x8]
  ldxdw r3, [r10-0x28]
  ldxdw r4, [r10-0x38]
  ldxdw r5, [r10-0x30]
  call fn_42ee0
  mov64 r6, 0x1
  jne r0, 0x0, jmp_42b10
  ldxdw r1, [r10-0x8]
  ldxdw r4, [r1+0x18]
  mov64 r1, r7
  ldxdw r2, [r10-0x20]
  ldxdw r3, [r10-0x18]
  callx r4
  jne r0, 0x0, jmp_42b10
  mov64 r6, 0x0

jmp_42e68:
  mov64 r1, r8
  jeq r8, r6, jmp_42ec0
  ldxdw r1, [r10-0x8]
  ldxdw r3, [r1+0x20]
  mov64 r1, r7
  ldxdw r2, [r10-0x10]
  callx r3
  add64 r6, 0x1
  jeq r0, 0x0, jmp_42e68
  add64 r6, -0x1
  mov64 r1, r6

jmp_42ec0:
  mov64 r6, 0x1
  jgt r8, r1, jmp_42b10
  mov64 r6, 0x0
  ja jmp_42b10

fn_42ee0:
  mov64 r6, r5
  mov64 r7, r4
  mov64 r8, r2
  mov64 r2, r3
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  jeq r2, 0x110000, jmp_42f58
  ldxdw r4, [r8+0x20]
  mov64 r9, r1
  mov64 r2, r3
  callx r4
  mov64 r1, r9
  mov64 r2, r0
  mov64 r0, 0x1
  jne r2, 0x0, jmp_42f68

jmp_42f58:
  mov64 r0, 0x0
  jne r7, 0x0, jmp_42f70

jmp_42f68:
  exit

jmp_42f70:
  ldxdw r4, [r8+0x18]
  mov64 r2, r7
  mov64 r3, r6
  callx r4
  ja jmp_42f68

fn_42f98:
  ldxdw r5, [r1+0x10]
  ldxdw r0, [r1+0x0]
  mov64 r4, r0
  or64 r4, r5
  jeq r4, 0x0, jmp_43160
  stxdw [r10-0x18], r0
  stxdw [r10-0x8], r2
  stxdw [r10-0x10], r3
  jeq r5, 0x0, jmp_431d0
  ldxdw r6, [r10-0x8]
  mov64 r3, r6
  ldxdw r4, [r10-0x10]
  add64 r3, r4
  mov64 r4, 0x0
  ldxdw r5, [r1+0x18]
  jeq r5, 0x0, jmp_430f8
  mov64 r2, 0xe0
  mov64 r7, 0x0
  ldxdw r6, [r10-0x8]

jmp_43030:
  mov64 r8, r6
  mov64 r9, r4
  jeq r8, r3, jmp_431d0
  mov64 r6, r8
  add64 r6, 0x1
  ldxb r0, [r8+0x0]
  mov64 r4, r0
  lsh64 r4, 0x38
  arsh64 r4, 0x38
  jsgt r4, -0x1, jmp_430d0
  mov64 r6, r8
  add64 r6, 0x2
  mov64 r4, r0
  jgt r2, r4, jmp_430d0
  mov64 r6, r8
  add64 r6, 0x3
  mov64 r0, 0xf0
  jgt r0, r4, jmp_430d0
  mov64 r6, r8
  add64 r6, 0x4

jmp_430d0:
  add64 r7, 0x1
  mov64 r4, r6
  sub64 r4, r8
  add64 r4, r9
  jgt r5, r7, jmp_43030

jmp_430f8:
  jeq r6, r3, jmp_431d0
  ldxb r3, [r6+0x0]
  mov64 r5, r3
  lsh64 r5, 0x38
  arsh64 r5, 0x38
  jsgt r5, -0x1, jmp_43138
  mov64 r5, 0xe0
  jgt r5, r3, jmp_43138

jmp_43138:
  jeq r4, 0x0, jmp_431c8
  ldxdw r3, [r10-0x10]
  jgt r3, r4, jmp_43190
  jeq r4, r3, jmp_431c8
  ja jmp_431d0

jmp_43160:
  ldxdw r5, [r1+0x20]
  ldxdw r1, [r1+0x28]
  ldxdw r4, [r1+0x18]
  mov64 r1, r5
  callx r4
  ja jmp_434e8

jmp_43190:
  ldxdw r3, [r10-0x8]
  add64 r3, r4
  ldxb r3, [r3+0x0]
  lsh64 r3, 0x38
  arsh64 r3, 0x38
  mov64 r5, -0x40
  jsgt r5, r3, jmp_431d0

jmp_431c8:
  stxdw [r10-0x10], r4

jmp_431d0:
  ldxdw r2, [r10-0x18]
  jne r2, 0x0, jmp_43220
  ldxdw r2, [r1+0x20]
  ldxdw r1, [r1+0x28]
  ldxdw r4, [r1+0x18]
  mov64 r1, r2
  ldxdw r2, [r10-0x8]
  ldxdw r3, [r10-0x10]
  callx r4
  ja jmp_434e8

jmp_43220:
  ldxdw r9, [r1+0x8]
  mov64 r2, 0x20
  ldxdw r7, [r10-0x10]
  ldxdw r8, [r10-0x8]
  jgt r2, r7, jmp_43278
  mov64 r6, r1
  mov64 r1, r8
  mov64 r2, r7
  call fn_45b60
  mov64 r1, r6
  ja jmp_432c0

jmp_43278:
  mov64 r0, 0x0
  jeq r7, 0x0, jmp_432c0
  mov64 r2, r8
  mov64 r3, r7
  ja jmp_43308

jmp_432a0:
  add64 r0, r4
  add64 r2, 0x1
  add64 r3, -0x1
  jne r3, 0x0, jmp_43308

jmp_432c0:
  jge r0, r9, jmp_43340
  sub64 r9, r0
  mov64 r7, 0x0
  ldxb r2, [r1+0x38]
  jsgt r2, 0x1, jmp_43380
  jeq r2, 0x0, jmp_433b0
  mov64 r7, r9
  mov64 r9, 0x0
  ja jmp_433b0

jmp_43308:
  ldxb r5, [r2+0x0]
  lsh64 r5, 0x38
  arsh64 r5, 0x38
  mov64 r4, 0x1
  jsgt r5, -0x41, jmp_432a0
  mov64 r4, 0x0
  ja jmp_432a0

jmp_43340:
  ldxdw r2, [r1+0x20]
  ldxdw r1, [r1+0x28]
  ldxdw r4, [r1+0x18]
  mov64 r1, r2
  mov64 r2, r8
  mov64 r3, r7
  callx r4
  ja jmp_434e8

jmp_43380:
  jeq r2, 0x2, jmp_43390
  ja jmp_433b0

jmp_43390:
  mov64 r7, r9
  rsh64 r7, 0x1
  add64 r9, 0x1
  rsh64 r9, 0x1

jmp_433b0:
  stxdw [r10-0x18], r9
  add64 r7, 0x1
  ldxw r8, [r1+0x30]
  ldxdw r6, [r1+0x28]
  ldxdw r9, [r1+0x20]

jmp_433d8:
  add64 r7, -0x1
  jeq r7, 0x0, jmp_43428
  ldxdw r3, [r6+0x20]
  mov64 r1, r9
  mov64 r2, r8
  callx r3
  mov64 r1, r0
  mov64 r0, 0x1
  jne r1, 0x0, jmp_434e8
  ja jmp_433d8

jmp_43428:
  ldxdw r4, [r6+0x18]
  mov64 r1, r9
  ldxdw r2, [r10-0x8]
  ldxdw r3, [r10-0x10]
  callx r4
  mov64 r1, r0
  mov64 r0, 0x1
  jne r1, 0x0, jmp_434e8
  mov64 r7, 0x0

jmp_43470:
  ldxdw r2, [r10-0x18]
  mov64 r1, r2
  jeq r2, r7, jmp_434c8
  ldxdw r3, [r6+0x20]
  mov64 r1, r9
  mov64 r2, r8
  callx r3
  add64 r7, 0x1
  jeq r0, 0x0, jmp_43470
  add64 r7, -0x1
  mov64 r1, r7

jmp_434c8:
  mov64 r0, 0x1
  ldxdw r2, [r10-0x18]
  jgt r2, r1, jmp_434e8
  mov64 r0, 0x0

jmp_434e8:
  and64 r0, 0x1
  exit

fn_434f8:
  mov64 r3, r2
  mov64 r4, r1
  ldxdw r1, [r4+0x0]
  jeq r1, 0x0, jmp_43798
  ldxdw r1, [r4+0x8]
  stxdw [r10-0x28], r1
  ldxdw r2, [r3+0x0]
  ldxdw r8, [r3+0x8]
  ldxdw r9, [r3+0x10]
  ldxdw r6, [r3+0x18]
  stxdw [r10-0x8], r6
  stxdw [r10-0x10], r9
  stxdw [r10-0x18], r8
  stxdw [r10-0x20], r2
  ldxb r7, [r4+0x38]
  ldxw r3, [r4+0x30]
  ldxw r1, [r4+0x34]
  and64 r1, 0x8
  stxdw [r10-0x40], r3
  stxdw [r10-0x30], r3
  stxdw [r10-0x48], r7
  stxdw [r10-0x38], r4
  jeq r1, 0x0, jmp_43688
  ldxdw r1, [r4+0x20]
  ldxdw r3, [r4+0x28]
  ldxdw r4, [r3+0x18]
  mov64 r3, r8
  callx r4
  jne r0, 0x0, jmp_43908
  mov64 r1, 0x0
  stxdw [r10-0x18], r1
  mov64 r7, 0x1
  stxdw [r10-0x20], r7
  ldxdw r1, [r10-0x38]
  stxb [r1+0x38], r7
  mov64 r3, 0x30
  mov64 r2, 0x30
  stxdw [r10-0x30], r2
  stxw [r1+0x30], r3
  ldxdw r3, [r10-0x28]
  mov64 r1, r3
  sub64 r1, r8
  mov64 r2, 0x1
  jgt r1, r3, jmp_43660
  mov64 r2, 0x0

jmp_43660:
  mov64 r3, 0x0
  stxdw [r10-0x28], r3
  jne r2, 0x0, jmp_43680
  stxdw [r10-0x28], r1

jmp_43680:
  mov64 r8, 0x0

jmp_43688:
  jeq r6, 0x0, jmp_436f0
  mul64 r6, 0x18
  add64 r9, 0x8
  mov64 r1, 0x3e8
  mov64 r2, 0xa
  mov64 r3, 0x64
  mov64 r4, 0x2710
  ja jmp_43708

jmp_436c8:
  ldxdw r8, [r9+0x0]

jmp_436d0:
  add64 r8, r5
  add64 r9, 0x18
  add64 r6, -0x18
  jne r6, 0x0, jmp_43708

jmp_436f0:
  ldxdw r1, [r10-0x28]
  jgt r1, r8, jmp_43818
  ja jmp_437b8

jmp_43708:
  mov64 r5, r8
  ldxh r0, [r9-0x8]
  jeq r0, 0x0, jmp_436c8
  jeq r0, 0x1, jmp_43738
  ldxdw r8, [r9+0x8]
  ja jmp_436d0

jmp_43738:
  ldxh r0, [r9-0x6]
  jgt r1, r0, jmp_43768
  mov64 r8, 0x4
  jgt r4, r0, jmp_436d0
  mov64 r8, 0x5
  ja jmp_436d0

jmp_43768:
  mov64 r8, 0x1
  jgt r2, r0, jmp_436d0
  mov64 r8, 0x2
  jgt r3, r0, jmp_436d0
  mov64 r8, 0x3
  ja jmp_436d0

jmp_43798:
  ldxdw r2, [r4+0x28]
  ldxdw r1, [r4+0x20]
  call fn_439d8
  ja jmp_43910

jmp_437b8:
  ldxdw r6, [r10-0x38]
  ldxdw r2, [r6+0x28]
  ldxdw r1, [r6+0x20]
  mov64 r3, r10
  add64 r3, -0x20
  call fn_439d8
  mov64 r2, r6

jmp_437f0:
  ldxdw r1, [r10-0x48]
  stxb [r2+0x38], r1
  ldxdw r1, [r10-0x40]
  stxw [r2+0x30], r1
  ja jmp_43910

jmp_43818:
  sub64 r1, r8
  stxdw [r10-0x28], r1
  and64 r7, 0xff
  ldxdw r1, [r10-0x38]
  jsgt r7, 0x1, jmp_43868
  ldxdw r6, [r10-0x30]
  jeq r7, 0x0, jmp_438b0

jmp_43850:
  ldxdw r7, [r10-0x28]
  mov64 r2, 0x0
  ja jmp_438a8

jmp_43868:
  ldxdw r6, [r10-0x30]
  jeq r7, 0x2, jmp_43880
  ja jmp_43850

jmp_43880:
  ldxdw r2, [r10-0x28]
  mov64 r7, r2
  rsh64 r7, 0x1
  add64 r2, 0x1
  rsh64 r2, 0x1

jmp_438a8:
  stxdw [r10-0x28], r2

jmp_438b0:
  add64 r7, 0x1
  ldxdw r8, [r1+0x28]
  ldxdw r9, [r1+0x20]

jmp_438c8:
  add64 r7, -0x1
  jeq r7, 0x0, jmp_43920
  ldxdw r3, [r8+0x20]
  mov64 r1, r9
  mov64 r2, r6
  callx r3
  jne r0, 0x0, jmp_43908
  ja jmp_438c8

jmp_43908:
  mov64 r0, 0x1

jmp_43910:
  and64 r0, 0x1
  exit

jmp_43920:
  mov64 r3, r10
  add64 r3, -0x20
  mov64 r1, r9
  mov64 r2, r8
  call fn_439d8
  jne r0, 0x0, jmp_43908
  mov64 r6, 0x0
  ldxdw r7, [r10-0x28]

jmp_43960:
  mov64 r1, r7
  jeq r7, r6, jmp_439b0
  ldxdw r3, [r8+0x20]
  mov64 r1, r9
  ldxdw r2, [r10-0x30]
  callx r3
  add64 r6, 0x1
  jeq r0, 0x0, jmp_43960
  add64 r6, -0x1
  mov64 r1, r6

jmp_439b0:
  mov64 r0, 0x1
  ldxdw r2, [r10-0x38]
  jgt r7, r1, jmp_437f0
  mov64 r0, 0x0
  ja jmp_437f0

fn_439d8:
  mov64 r8, r3
  stxdw [r10-0x10], r2
  mov64 r7, r1
  ldxdw r3, [r8+0x8]
  jeq r3, 0x0, jmp_43a40
  ldxdw r1, [r10-0x10]
  ldxdw r4, [r1+0x18]
  ldxdw r2, [r8+0x0]
  mov64 r1, r7
  callx r4
  mov64 r1, r0
  mov64 r0, 0x1
  jne r1, 0x0, jmp_43d48

jmp_43a40:
  mov64 r0, 0x0
  ldxdw r1, [r8+0x18]
  jeq r1, 0x0, jmp_43d48
  ldxdw r9, [r8+0x10]
  mul64 r1, 0x18
  mov64 r2, r9
  add64 r2, r1
  stxdw [r10-0x18], r2
  ja jmp_43b00

jmp_43a88:
  jeq r8, 0x0, jmp_43ae0

jmp_43a90:
  ldxdw r1, [r10-0x10]
  ldxdw r4, [r1+0x18]
  mov64 r1, r7
  lddw r2, str_1d49
  mov64 r3, r8
  callx r4
  mov64 r1, r0
  mov64 r0, 0x1
  jne r1, 0x0, jmp_43d48

jmp_43ae0:
  add64 r9, 0x18
  mov64 r0, 0x0
  ldxdw r1, [r10-0x18]
  jeq r9, r1, jmp_43d48

jmp_43b00:
  ldxh r1, [r9+0x0]
  jeq r1, 0x0, jmp_43bc0
  jeq r1, 0x1, jmp_43b68
  ldxdw r1, [r10-0x10]
  ldxdw r4, [r1+0x18]
  ldxdw r3, [r9+0x10]
  ldxdw r2, [r9+0x8]
  mov64 r1, r7
  callx r4
  mov64 r1, r0
  mov64 r0, 0x1
  jne r1, 0x0, jmp_43d48
  ja jmp_43ae0

jmp_43b68:
  ldxh r1, [r9+0x2]
  mov64 r2, 0x0
  stxb [r10-0x4], r2
  stxw [r10-0x8], r2
  mov64 r2, 0x3e8
  jgt r2, r1, jmp_43c40
  mov64 r3, 0x4
  mov64 r2, 0x2710
  jgt r2, r1, jmp_43c78
  mov64 r3, 0x5
  ja jmp_43c78

jmp_43bc0:
  ldxdw r8, [r9+0x8]
  mov64 r1, 0x41
  jgt r1, r8, jmp_43a88
  ldxdw r1, [r10-0x10]
  ldxdw r6, [r1+0x18]

jmp_43be8:
  mov64 r1, r7
  lddw r2, str_1d49
  mov64 r3, 0x40
  callx r6
  mov64 r1, r0
  mov64 r0, 0x1
  jne r1, 0x0, jmp_43d48
  add64 r8, -0x40
  jgt r8, 0x40, jmp_43be8
  ja jmp_43a90

jmp_43c40:
  mov64 r3, 0x1
  mov64 r2, 0xa
  jgt r2, r1, jmp_43c78
  mov64 r3, 0x2
  mov64 r2, 0x64
  jgt r2, r1, jmp_43c78
  mov64 r3, 0x3

jmp_43c78:
  mov64 r2, r3
  mov64 r4, r1

jmp_43c88:
  and64 r4, 0xffff
  div64 r4, 0xa
  mov64 r5, r4
  mul64 r5, 0xa
  sub64 r1, r5
  mov64 r5, r10
  add64 r5, -0x8
  add64 r5, r2
  or64 r1, 0x30
  stxb [r5-0x1], r1
  add64 r2, -0x1
  mov64 r1, r4
  jeq r2, 0x0, jmp_43cf8
  ja jmp_43c88

jmp_43cf8:
  ldxdw r1, [r10-0x10]
  ldxdw r4, [r1+0x18]
  mov64 r2, r10
  add64 r2, -0x8
  mov64 r1, r7
  callx r4
  mov64 r1, r0
  mov64 r0, 0x1
  jne r1, 0x0, jmp_43d48
  ja jmp_43ae0

jmp_43d48:
  exit

fn_43d50:
  ldxdw r4, [r1+0x20]
  ldxdw r1, [r1+0x28]
  ldxdw r5, [r1+0x18]
  mov64 r1, r4
  callx r5
  exit

fn_43d80:
  mov64 r6, r2
  mov64 r7, r1
  ldxdw r1, [r6+0x28]
  ldxdw r5, [r1+0x18]
  ldxdw r1, [r6+0x20]
  mov64 r2, r3
  mov64 r3, r4
  callx r5
  mov64 r1, 0x0
  stxb [r7+0x9], r1
  stxb [r7+0x8], r0
  stxdw [r7+0x0], r6
  exit

fn_43de8:
  mov64 r6, r5
  mov64 r7, r4
  mov64 r8, r1
  ldxdw r1, [r8+0x28]
  ldxdw r4, [r1+0x18]
  ldxdw r1, [r8+0x20]
  callx r4
  mov64 r1, 0x0
  stxb [r10-0x7], r1
  stxb [r10-0x8], r0
  stxdw [r10-0x10], r8
  ldxdw r3, [r6-0x1000]
  ldxdw r4, [r6-0xff8]
  ldxdw r5, [r6-0xff0]
  mov64 r8, r10
  add64 r8, -0x10
  mov64 r1, r8
  mov64 r2, r7
  call fn_40ae8
  ldxdw r2, [r6-0xfe8]
  ldxdw r3, [r6-0xfe0]
  ldxdw r4, [r6-0xfd8]
  ldxdw r5, [r6-0xfd0]
  mov64 r1, r8
  call fn_40ae8
  ldxb r1, [r10-0x8]
  ldxb r2, [r10-0x7]
  jne r2, 0x0, jmp_43ee8
  mov64 r0, 0x1
  jne r1, 0x0, jmp_43f88
  mov64 r0, 0x0
  ja jmp_43f88

jmp_43ee8:
  mov64 r0, 0x1
  jne r1, 0x0, jmp_43f88
  ldxdw r2, [r10-0x10]
  ldxw r1, [r2+0x34]
  and64 r1, 0x4
  jne r1, 0x0, jmp_43f50
  ldxdw r1, [r2+0x20]
  ldxdw r2, [r2+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1c5d
  mov64 r3, 0x2
  ja jmp_43f80

jmp_43f50:
  ldxdw r1, [r2+0x20]
  ldxdw r2, [r2+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1c5c
  mov64 r3, 0x1

jmp_43f80:
  callx r4

jmp_43f88:
  and64 r0, 0x1
  exit

fn_43f98:
  mov64 r7, r4
  mov64 r8, r2
  mov64 r6, r1
  ldxdw r1, [r8+0x28]
  ldxdw r4, [r1+0x18]
  ldxdw r1, [r8+0x20]
  mov64 r2, r3
  mov64 r3, r7
  callx r4
  stxb [r6+0x10], r0
  stxdw [r6+0x8], r8
  mov64 r1, 0x0
  mov64 r2, 0x1
  jeq r7, 0x0, jmp_44010
  mov64 r2, 0x0

jmp_44010:
  stxb [r6+0x11], r2
  stxdw [r6+0x0], r1
  exit

fn_44028:
  mov64 r6, r5
  mov64 r7, r4
  mov64 r8, r3
  mov64 r9, r1
  ldxdw r1, [r9+0x28]
  ldxdw r4, [r1+0x18]
  ldxdw r1, [r9+0x20]
  callx r4
  stxb [r10-0x8], r0
  stxdw [r10-0x10], r9
  mov64 r1, 0x0
  mov64 r2, 0x1
  jeq r8, 0x0, jmp_44098
  mov64 r2, 0x0

jmp_44098:
  stxb [r10-0x7], r2
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r2, r7
  mov64 r3, r6
  call fn_40fd8
  ldxb r2, [r10-0x8]
  ldxdw r1, [r10-0x18]
  jne r1, 0x0, jmp_44110
  mov64 r1, r2
  mov64 r0, 0x1
  jne r1, 0x0, jmp_441e8
  mov64 r0, 0x0
  ja jmp_441e8

jmp_44110:
  mov64 r0, 0x1
  jne r2, 0x0, jmp_441e8
  ldxdw r6, [r10-0x10]
  jne r1, 0x1, jmp_44140
  ldxb r1, [r10-0x7]
  jne r1, 0x0, jmp_44180

jmp_44140:
  ldxdw r1, [r6+0x20]
  ldxdw r2, [r6+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1b88
  mov64 r3, 0x1
  callx r4
  ja jmp_441e8

jmp_44180:
  ldxw r1, [r6+0x34]
  and64 r1, 0x4
  jne r1, 0x0, jmp_44140
  ldxdw r1, [r6+0x20]
  ldxdw r2, [r6+0x28]
  ldxdw r4, [r2+0x18]
  lddw r2, str_1c62
  mov64 r3, 0x1
  callx r4
  mov64 r1, r0
  mov64 r0, 0x1
  jeq r1, 0x0, jmp_44140

jmp_441e8:
  and64 r0, 0x1
  exit

fn_441f8:
  mov64 r6, r2
  mov64 r7, r1
  ldxdw r1, [r6+0x28]
  ldxdw r4, [r1+0x18]
  ldxdw r1, [r6+0x20]
  lddw r2, str_1bd1
  mov64 r3, 0x1
  callx r4
  mov64 r1, 0x0
  stxb [r7+0x9], r1
  stxb [r7+0x8], r0
  stxdw [r7+0x0], r6
  exit

fn_44268:
  ldxdw r3, [r1+0x20]
  ldxdw r1, [r1+0x28]
  ldxdw r4, [r1+0x20]
  mov64 r1, r3
  callx r4
  exit
  ldxb r1, [r1+0x0]
  jne r1, 0x0, jmp_442d0
  mov64 r1, r2
  lddw r2, str_1d89
  mov64 r3, 0x5
  ja jmp_442f0

jmp_442d0:
  mov64 r1, r2
  lddw r2, str_030f
  mov64 r3, 0x4

jmp_442f0:
  call fn_42f98
  exit

fn_44300:
  mov64 r6, r2
  mov64 r8, r1
  ldxdw r7, [r3+0x20]
  ldxdw r1, [r3+0x28]
  stxdw [r10-0x50], r1
  ldxdw r3, [r1+0x20]
  mov64 r1, r7
  mov64 r2, 0x22
  stxdw [r10-0x28], r3
  callx r3
  mov64 r9, 0x1
  jne r0, 0x0, jmp_44a08
  mov64 r1, 0x0
  jeq r6, 0x0, jmp_44998
  mov64 r1, r8
  add64 r1, r6
  stxdw [r10-0x48], r1
  mov64 r1, 0x0
  stxdw [r10-0x58], r1
  mov64 r5, r8
  mov64 r9, 0x0
  stxdw [r10-0x60], r6
  stxdw [r10-0x68], r8
  ja jmp_443f8

jmp_443c0:
  add64 r2, r9
  stxdw [r10-0x58], r2

jmp_443d0:
  sub64 r9, r3
  ldxdw r5, [r10-0x30]
  add64 r9, r5
  ldxdw r1, [r10-0x48]
  jeq r5, r1, jmp_44958

jmp_443f8:
  ldxb r0, [r5+0x0]
  mov64 r1, r0
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  jsgt r1, -0x1, jmp_44548
  mov64 r1, r5
  add64 r1, 0x2
  stxdw [r10-0x30], r1
  ldxb r1, [r5+0x1]
  and64 r1, 0x3f
  mov64 r3, r0
  and64 r3, 0x1f
  mov64 r2, r3
  lsh64 r2, 0x6
  or64 r2, r1
  jgt r0, 0xdf, jmp_44480
  ja jmp_44568

jmp_44480:
  lsh64 r1, 0x6
  ldxb r4, [r5+0x2]
  and64 r4, 0x3f
  or64 r1, r4
  mov64 r4, r5
  add64 r4, 0x3
  stxdw [r10-0x30], r4
  mov64 r4, r3
  lsh64 r4, 0xc
  mov64 r2, r1
  or64 r2, r4
  mov64 r4, 0xf0
  jgt r4, r0, jmp_44568
  lsh64 r1, 0x6
  ldxb r2, [r5+0x3]
  and64 r2, 0x3f
  or64 r1, r2
  lsh64 r3, 0x12
  and64 r3, 0x1c0000
  or64 r1, r3
  mov64 r2, r5
  add64 r2, 0x4
  stxdw [r10-0x30], r2
  mov64 r2, r1
  ja jmp_44568

jmp_44548:
  mov64 r1, r5
  add64 r1, 0x1
  stxdw [r10-0x30], r1
  mov64 r2, r0

jmp_44568:
  mov64 r1, r10
  add64 r1, -0x1c
  stxdw [r10-0x40], r2
  mov64 r3, 0x10001
  stxdw [r10-0x38], r5
  call fn_3f138
  ldxdw r3, [r10-0x38]
  ldxb r1, [r10-0x1c]
  jeq r1, 0x80, jmp_443d0
  ldxb r1, [r10-0x12]
  ldxb r2, [r10-0x11]
  sub64 r2, r1
  and64 r2, 0xff
  jeq r2, 0x1, jmp_443d0
  ldxdw r4, [r10-0x58]
  jgt r4, r9, jmp_447a8
  jeq r4, 0x0, jmp_44640
  jgt r6, r4, jmp_44608
  jeq r4, r6, jmp_44640
  ja jmp_447a8

jmp_44608:
  mov64 r1, r8
  add64 r1, r4
  ldxb r1, [r1+0x0]
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  mov64 r2, -0x40
  jsgt r2, r1, jmp_447a8

jmp_44640:
  jeq r9, 0x0, jmp_44660
  jgt r6, r9, jmp_44778
  jeq r9, r6, jmp_44660
  ja jmp_447a8

jmp_44660:
  mov64 r2, r8
  add64 r2, r4
  mov64 r3, r9
  sub64 r3, r4
  ldxdw r1, [r10-0x50]
  ldxdw r4, [r1+0x18]
  mov64 r1, r7
  callx r4
  jne r0, 0x0, jmp_44948
  mov64 r8, r7
  ldxw r1, [r10-0x14]
  stxw [r10-0x8], r1
  ldxdw r1, [r10-0x1c]
  stxdw [r10-0x10], r1
  and64 r1, 0xff
  jne r1, 0x80, jmp_446f0
  mov64 r7, 0x80
  ja jmp_44880

jmp_446f0:
  ldxb r7, [r10-0x5]
  ldxb r1, [r10-0x6]

jmp_44700:
  jge r1, r7, jmp_448c8
  mov64 r6, r1
  add64 r6, 0x1
  stxb [r10-0x6], r6
  jgt r1, 0x9, jmp_44820
  mov64 r2, r10
  add64 r2, -0x10
  add64 r2, r1
  ldxb r2, [r2+0x0]
  mov64 r1, r8
  ldxdw r3, [r10-0x28]
  callx r3
  mov64 r1, r6
  jne r0, 0x0, jmp_44948
  ja jmp_44700

jmp_44778:
  mov64 r1, r8
  add64 r1, r9
  ldxb r1, [r1+0x0]
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  jsgt r1, -0x41, jmp_44660

jmp_447a8:
  mov64 r1, r8
  mov64 r2, r6
  mov64 r3, r4
  mov64 r4, r9
  lddw r5, data_41b0
  call fn_46140

jmp_447e0:
  ldxb r1, [r10-0x6]
  ldxb r2, [r10-0x5]
  jge r1, r2, jmp_448c8
  mov64 r2, r1
  add64 r2, 0x1
  stxb [r10-0x6], r2
  mov64 r2, 0xa
  jgt r2, r1, jmp_44840

jmp_44820:
  mov64 r2, 0xa
  lddw r3, data_43a8
  call fn_3ffc8

jmp_44840:
  mov64 r2, r10
  add64 r2, -0x10
  add64 r2, r1
  ldxb r2, [r2+0x0]

jmp_44860:
  mov64 r1, r8
  ldxdw r3, [r10-0x28]
  callx r3
  jne r0, 0x0, jmp_44948

jmp_44880:
  mov64 r1, r7
  and64 r1, 0xff
  jeq r1, 0x80, jmp_448a0
  ja jmp_447e0

jmp_448a0:
  mov64 r7, 0x0
  stxw [r10-0x8], r7
  ldxw r2, [r10-0xc]
  stxdw [r10-0x10], r7
  ja jmp_44860

jmp_448c8:
  mov64 r2, 0x1
  ldxdw r6, [r10-0x60]
  mov64 r7, r8
  ldxdw r8, [r10-0x68]
  mov64 r1, 0x80
  ldxdw r3, [r10-0x38]
  ldxdw r4, [r10-0x40]
  jgt r1, r4, jmp_443c0
  mov64 r2, 0x2
  mov64 r1, 0x800
  jgt r1, r4, jmp_443c0
  mov64 r2, 0x3
  mov64 r1, 0x10000
  jgt r1, r4, jmp_443c0
  mov64 r2, 0x4
  ja jmp_443c0

jmp_44948:
  mov64 r9, 0x1
  ja jmp_44a08

jmp_44958:
  mov64 r1, 0x0
  mov64 r9, 0x1
  ldxdw r3, [r10-0x58]
  jeq r3, 0x0, jmp_44998
  jgt r6, r3, jmp_44a18
  mov64 r1, r3
  jeq r3, r6, jmp_44998
  ja jmp_44a50

jmp_44998:
  add64 r8, r1
  sub64 r6, r1
  ldxdw r1, [r10-0x50]
  ldxdw r4, [r1+0x18]
  mov64 r1, r7
  mov64 r2, r8
  mov64 r3, r6
  callx r4
  jne r0, 0x0, jmp_44a08
  mov64 r1, r7
  mov64 r2, 0x22
  ldxdw r3, [r10-0x28]
  callx r3
  mov64 r9, r0

jmp_44a08:
  mov64 r0, r9
  exit

jmp_44a18:
  mov64 r1, r8
  add64 r1, r3
  ldxb r2, [r1+0x0]
  lsh64 r2, 0x38
  arsh64 r2, 0x38
  mov64 r1, r3
  jsgt r2, -0x41, jmp_44998

jmp_44a50:
  mov64 r1, r8
  mov64 r2, r6
  mov64 r4, r6
  lddw r5, data_4198
  call fn_46140

fn_44a80:
  mov64 r4, r2
  mov64 r2, r1
  mov64 r1, r3
  mov64 r3, r4
  call fn_42f98
  exit
  mov64 r8, r1
  ldxdw r6, [r2+0x20]
  ldxdw r1, [r2+0x28]
  ldxdw r9, [r1+0x20]
  mov64 r1, r6
  mov64 r2, 0x27
  callx r9
  mov64 r1, 0x1
  jne r0, 0x0, jmp_44ce8
  ldxw r2, [r8+0x0]
  mov64 r1, r10
  add64 r1, -0x10
  mov64 r3, 0x101
  call fn_3f138
  ldxb r1, [r10-0x10]
  jne r1, 0x80, jmp_44b48
  mov64 r7, 0x80
  mov64 r8, 0xa
  ja jmp_44c58

jmp_44b48:
  ldxb r7, [r10-0x5]
  ldxb r1, [r10-0x6]

jmp_44b58:
  jge r1, r7, jmp_44cc8
  mov64 r8, r1
  add64 r8, 0x1
  stxb [r10-0x6], r8
  jgt r1, 0x9, jmp_44c00
  mov64 r2, r10
  add64 r2, -0x10
  add64 r2, r1
  ldxb r2, [r2+0x0]
  mov64 r1, r6
  callx r9
  mov64 r1, r8
  jne r0, 0x0, jmp_44cb8
  ja jmp_44b58

jmp_44bc8:
  ldxb r1, [r10-0x6]
  ldxb r2, [r10-0x5]
  jge r1, r2, jmp_44cc8
  mov64 r2, r1
  add64 r2, 0x1
  stxb [r10-0x6], r2
  jgt r8, r1, jmp_44c20

jmp_44c00:
  mov64 r2, 0xa
  lddw r3, data_43a8
  call fn_3ffc8

jmp_44c20:
  mov64 r2, r10
  add64 r2, -0x10
  add64 r2, r1
  ldxb r2, [r2+0x0]
  mov64 r1, r6
  callx r9
  jne r0, 0x0, jmp_44cb8

jmp_44c58:
  mov64 r1, r7
  and64 r1, 0xff
  jeq r1, 0x80, jmp_44c78
  ja jmp_44bc8

jmp_44c78:
  mov64 r7, 0x0
  stxw [r10-0x8], r7
  ldxw r2, [r10-0xc]
  stxdw [r10-0x10], r7
  mov64 r1, r6
  callx r9
  jne r0, 0x0, jmp_44cb8
  ja jmp_44c58

jmp_44cb8:
  mov64 r1, 0x1
  ja jmp_44ce8

jmp_44cc8:
  mov64 r1, r6
  mov64 r2, 0x27
  callx r9
  mov64 r1, r0

jmp_44ce8:
  mov64 r0, r1
  exit
  ldxdw r3, [r2+0x10]
  ldxdw r4, [r2+0x0]
  or64 r4, r3
  ldxw r3, [r1+0x0]
  jeq r4, 0x0, jmp_44de8
  mov64 r1, 0x0
  stxw [r10-0x4], r1
  mov64 r1, r3
  mov64 r4, 0x80
  jgt r4, r1, jmp_44e18
  mov64 r4, 0x800
  jgt r4, r1, jmp_44e30
  mov64 r1, r3
  mov64 r4, 0x10000
  jgt r4, r1, jmp_44d78
  ja jmp_44e78

jmp_44d78:
  mov64 r1, r3
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x2], r1
  mov64 r1, r3
  rsh64 r1, 0xc
  or64 r1, 0xe0
  stxb [r10-0x4], r1
  rsh64 r3, 0x6
  and64 r3, 0x3f
  or64 r3, 0x80
  stxb [r10-0x3], r3
  mov64 r3, 0x3
  ja jmp_44f08

jmp_44de8:
  ldxdw r1, [r2+0x20]
  ldxdw r2, [r2+0x28]
  ldxdw r4, [r2+0x20]
  mov64 r2, r3
  callx r4
  ja jmp_44f30

jmp_44e18:
  stxb [r10-0x4], r3
  mov64 r3, 0x1
  ja jmp_44f08

jmp_44e30:
  mov64 r1, r3
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x3], r1
  rsh64 r3, 0x6
  or64 r3, 0xc0
  stxb [r10-0x4], r3
  mov64 r3, 0x2
  ja jmp_44f08

jmp_44e78:
  mov64 r1, r3
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x1], r1
  mov64 r1, r3
  rsh64 r1, 0x12
  or64 r1, 0xf0
  stxb [r10-0x4], r1
  mov64 r1, r3
  rsh64 r1, 0x6
  and64 r1, 0x3f
  or64 r1, 0x80
  stxb [r10-0x2], r1
  rsh64 r3, 0xc
  and64 r3, 0x3f
  or64 r3, 0x80
  stxb [r10-0x3], r3
  mov64 r3, 0x4

jmp_44f08:
  mov64 r4, r10
  add64 r4, -0x4
  mov64 r1, r2
  mov64 r2, r4
  call fn_42f98

jmp_44f30:
  exit

fn_44f38:
  mov64 r5, 0x0
  mov64 r0, r3
  add64 r0, 0x7
  and64 r0, -0x8
  jeq r0, r3, jmp_44fd8
  sub64 r0, r3
  jgt r4, r0, jmp_44f78
  mov64 r0, r4

jmp_44f78:
  jeq r0, 0x0, jmp_44fd8
  mov64 r6, 0x0
  mov64 r7, 0x1

jmp_44f90:
  mov64 r5, r3
  add64 r5, r6
  ldxb r5, [r5+0x0]
  mov64 r8, r2
  and64 r8, 0xff
  jeq r5, r8, jmp_45178
  add64 r6, 0x1
  mov64 r5, r0
  jgt r0, r6, jmp_44f90

jmp_44fd8:
  stxdw [r10-0x8], r1
  mov64 r0, r4
  add64 r0, -0x10
  jgt r5, r0, jmp_450e0
  mov64 r6, r2
  and64 r6, 0xff
  lddw r7, 0x101010101010101
  mul64 r6, r7
  lddw r7, -0x101010101010101
  ja jmp_45048

jmp_45038:
  add64 r5, 0x10
  jgt r5, r0, jmp_450e0

jmp_45048:
  mov64 r9, r3
  add64 r9, r5
  ldxdw r8, [r9+0x0]
  xor64 r8, r6
  mov64 r1, r8
  add64 r1, r7
  xor64 r8, -0x1
  and64 r1, r8
  ldxdw r8, [r9+0x8]
  xor64 r8, r6
  mov64 r9, r8
  add64 r9, r7
  xor64 r8, -0x1
  and64 r9, r8
  or64 r9, r1
  lddw r1, -0x7f7f7f7f7f7f7f80
  and64 r9, r1
  jeq r9, 0x0, jmp_45038

jmp_450e0:
  mov64 r7, 0x0
  ldxdw r1, [r10-0x8]
  jeq r4, r5, jmp_45178
  sub64 r4, r5
  add64 r3, r5
  mov64 r0, 0x0

jmp_45110:
  mov64 r6, r3
  add64 r6, r0
  ldxb r7, [r6+0x0]
  mov64 r6, r2
  and64 r6, 0xff
  jeq r7, r6, jmp_45160
  mov64 r7, 0x0
  add64 r0, 0x1
  jgt r4, r0, jmp_45110
  ja jmp_45178

jmp_45160:
  add64 r5, r0
  mov64 r7, 0x1
  mov64 r6, r5

jmp_45178:
  stxdw [r1+0x8], r6
  stxdw [r1+0x0], r7
  exit

fn_45190:
  call fn_45198

fn_45198:
  stxdw [r10-0x58], r2
  stxdw [r10-0x60], r1
  mov64 r1, 0x0
  stxdw [r10-0x30], r1
  lddw r1, data_41c8
  stxdw [r10-0x50], r1
  mov64 r1, 0x2
  stxdw [r10-0x48], r1
  stxdw [r10-0x38], r1
  mov64 r1, r10
  add64 r1, -0x20
  stxdw [r10-0x40], r1
  mov64 r1, r10
  add64 r1, -0x58
  stxdw [r10-0x10], r1
  lddw r1, 0x8b03
  stxdw [r10-0x8], r1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x50
  mov64 r2, r3
  call fn_3fef0

fn_45270:
  call fn_45278

fn_45278:
  stxdw [r10-0x58], r2
  stxdw [r10-0x60], r1
  mov64 r1, 0x0
  stxdw [r10-0x30], r1
  lddw r1, data_41e8
  stxdw [r10-0x50], r1
  mov64 r1, 0x2
  stxdw [r10-0x48], r1
  stxdw [r10-0x38], r1
  mov64 r1, r10
  add64 r1, -0x20
  stxdw [r10-0x40], r1
  mov64 r1, r10
  add64 r1, -0x58
  stxdw [r10-0x10], r1
  lddw r1, 0x8b03
  stxdw [r10-0x8], r1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x50
  mov64 r2, r3
  call fn_3fef0

fn_45350:
  call fn_45358

fn_45358:
  stxdw [r10-0x58], r2
  stxdw [r10-0x60], r1
  mov64 r1, 0x0
  stxdw [r10-0x30], r1
  lddw r1, data_4208
  stxdw [r10-0x50], r1
  mov64 r1, 0x2
  stxdw [r10-0x48], r1
  stxdw [r10-0x38], r1
  mov64 r1, r10
  add64 r1, -0x20
  stxdw [r10-0x40], r1
  mov64 r1, r10
  add64 r1, -0x58
  stxdw [r10-0x10], r1
  lddw r1, 0x8b03
  stxdw [r10-0x8], r1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x50
  mov64 r2, r3
  call fn_3fef0

fn_45430:
  stxdw [r10-0x58], r2
  stxdw [r10-0x60], r1
  mov64 r1, 0x0
  stxdw [r10-0x30], r1
  mov64 r1, 0x3
  stxdw [r10-0x48], r1
  lddw r1, data_4228
  stxdw [r10-0x50], r1
  mov64 r1, 0x2
  stxdw [r10-0x38], r1
  mov64 r1, r10
  add64 r1, -0x20
  stxdw [r10-0x40], r1
  mov64 r1, r10
  add64 r1, -0x60
  stxdw [r10-0x10], r1
  lddw r1, 0x8b03
  stxdw [r10-0x8], r1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x58
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x50
  mov64 r2, r3
  call fn_3fef0

fn_45510:
  stxdw [r10-0x8], r1
  mov64 r1, r3
  add64 r1, -0xf
  mov64 r4, 0x0
  mov64 r5, 0x1
  jgt r1, r3, jmp_45548
  mov64 r5, 0x0

jmp_45548:
  jne r5, 0x0, jmp_45558
  mov64 r4, r1

jmp_45558:
  jeq r3, 0x0, jmp_45b28
  mov64 r5, r2
  add64 r5, 0x7
  and64 r5, -0x8
  sub64 r5, r2
  mov64 r0, 0x0
  lddw r8, -0x7f7f7f7f7f7f7f80
  mov64 r6, 0x0
  ja jmp_45618

jmp_455a8:
  mov64 r1, r2
  add64 r1, r7
  ldxb r1, [r1+0x0]
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  mov64 r8, 0x1
  mov64 r9, 0x1
  jsgt r1, -0x41, jmp_45af8

jmp_455e8:
  add64 r7, 0x1
  mov64 r6, r7
  lddw r8, -0x7f7f7f7f7f7f7f80
  jgt r3, r6, jmp_45618
  ja jmp_45b28

jmp_45618:
  mov64 r1, r2
  add64 r1, r6
  ldxb r7, [r1+0x0]
  mov64 r1, r7
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  jsgt r0, r1, jmp_45730
  mov64 r1, r5
  sub64 r1, r6
  and64 r1, 0x7
  jne r1, 0x0, jmp_45718
  jge r6, r4, jmp_456b0

jmp_45678:
  mov64 r1, r2
  add64 r1, r6
  ldxdw r7, [r1+0x0]
  ldxdw r1, [r1+0x8]
  or64 r1, r7
  and64 r1, r8
  jeq r1, 0x0, jmp_45700

jmp_456b0:
  jge r6, r3, jmp_45720

jmp_456b8:
  mov64 r1, r2
  add64 r1, r6
  ldxb r1, [r1+0x0]
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  jsgt r0, r1, jmp_45720
  add64 r6, 0x1
  jgt r3, r6, jmp_456b8
  ja jmp_45b28

jmp_45700:
  add64 r6, 0x10
  jgt r4, r6, jmp_45678
  ja jmp_456b0

jmp_45718:
  add64 r6, 0x1

jmp_45720:
  jgt r3, r6, jmp_45618
  ja jmp_45b28

jmp_45730:
  lddw r1, data_1e25
  add64 r1, r7
  ldxb r1, [r1+0x0]
  jeq r1, 0x4, jmp_45858
  jeq r1, 0x3, jmp_457a0
  mov64 r8, 0x1
  mov64 r9, 0x1
  jne r1, 0x2, jmp_45af8
  mov64 r9, 0x0
  mov64 r7, r6
  add64 r7, 0x1
  jgt r3, r7, jmp_455a8
  ja jmp_45af8

jmp_457a0:
  mov64 r9, 0x0
  mov64 r1, r6
  add64 r1, 0x1
  jgt r3, r1, jmp_457c8
  ja jmp_45af8

jmp_457c8:
  mov64 r8, r2
  add64 r8, r1
  ldxb r1, [r8+0x0]
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  jeq r7, 0xe0, jmp_458f8
  jeq r7, 0xed, jmp_45a70
  mov64 r8, r7
  add64 r8, 0x1f
  and64 r8, 0xff
  mov64 r9, 0xc
  jgt r9, r8, jmp_45830
  ja jmp_45a38

jmp_45830:
  mov64 r8, 0x1
  mov64 r9, 0x1
  mov64 r7, -0x40
  jsgt r7, r1, jmp_45a88
  ja jmp_45af8

jmp_45858:
  mov64 r1, r6
  add64 r1, 0x1
  mov64 r9, 0x0
  jgt r3, r1, jmp_45880
  ja jmp_45af8

jmp_45880:
  mov64 r8, r2
  add64 r8, r1
  ldxb r1, [r8+0x0]
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  jeq r7, 0xf0, jmp_45920
  jeq r7, 0xf4, jmp_45958
  add64 r7, 0xf
  and64 r7, 0xff
  mov64 r8, 0x1
  mov64 r9, 0x1
  jgt r7, 0x2, jmp_45af8
  mov64 r7, -0x40
  jsgt r7, r1, jmp_45970
  ja jmp_45af8

jmp_458f8:
  and64 r1, -0x20
  mov64 r8, 0x1
  mov64 r9, 0x1
  jeq r1, -0x60, jmp_45a88
  ja jmp_45af8

jmp_45920:
  add64 r1, 0x70
  and64 r1, 0xff
  mov64 r8, 0x1
  mov64 r9, 0x1
  mov64 r7, 0x30
  jgt r7, r1, jmp_45970
  ja jmp_45af8

jmp_45958:
  mov64 r8, 0x1
  mov64 r9, 0x1
  jsgt r1, -0x71, jmp_45af8

jmp_45970:
  mov64 r1, r6
  add64 r1, 0x2
  mov64 r9, 0x0
  jge r1, r3, jmp_45af8
  mov64 r7, r2
  add64 r7, r1
  mov64 r8, 0x2
  ldxb r1, [r7+0x0]
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  mov64 r9, 0x1
  jsgt r1, -0x41, jmp_45af8
  mov64 r7, r6
  add64 r7, 0x3
  mov64 r9, 0x0
  jge r7, r3, jmp_45af8
  mov64 r1, r2
  add64 r1, r7
  mov64 r8, 0x3
  ldxb r1, [r1+0x0]
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  mov64 r9, 0x1
  jsgt r1, -0x41, jmp_45af8
  ja jmp_455e8

jmp_45a38:
  and64 r7, 0xfe
  mov64 r8, 0x1
  mov64 r9, 0x1
  jne r7, 0xee, jmp_45af8
  mov64 r7, -0x40
  jsgt r7, r1, jmp_45a88
  ja jmp_45af8

jmp_45a70:
  mov64 r8, 0x1
  mov64 r9, 0x1
  jsgt r1, -0x61, jmp_45af8

jmp_45a88:
  mov64 r7, r6
  add64 r7, 0x2
  mov64 r9, 0x0
  jgt r3, r7, jmp_45ab0
  ja jmp_45af8

jmp_45ab0:
  mov64 r1, r2
  add64 r1, r7
  mov64 r8, 0x2
  ldxb r1, [r1+0x0]
  lsh64 r1, 0x38
  arsh64 r1, 0x38
  mov64 r9, 0x1
  jsgt r1, -0x41, jmp_45af8
  ja jmp_455e8

jmp_45af8:
  ldxdw r3, [r10-0x8]
  stxb [r3+0x11], r8
  stxb [r3+0x10], r9
  stxdw [r3+0x8], r6
  mov64 r1, 0x1
  ja jmp_45b50

jmp_45b28:
  ldxdw r1, [r10-0x8]
  stxdw [r1+0x10], r3
  mov64 r3, r1
  stxdw [r3+0x8], r2
  mov64 r1, 0x0

jmp_45b50:
  stxdw [r3+0x0], r1
  exit

fn_45b60:
  mov64 r7, r1
  add64 r7, 0x7
  and64 r7, -0x8
  mov64 r4, r7
  sub64 r4, r1
  jgt r4, r2, jmp_45fd8
  mov64 r5, r2
  sub64 r5, r4
  mov64 r3, 0x8
  jgt r3, r5, jmp_45fd8
  stxdw [r10-0x8], r4
  mov64 r2, r5
  and64 r2, 0x7
  mov64 r0, 0x0
  mov64 r3, 0x0
  jeq r7, r1, jmp_45c18
  mov64 r6, r1
  sub64 r6, r7
  mov64 r7, r1
  ja jmp_45c60

jmp_45c00:
  add64 r3, r9
  add64 r7, 0x1
  jne r8, 0x1, jmp_45c60

jmp_45c18:
  ldxdw r4, [r10-0x8]
  add64 r1, r4
  jeq r2, 0x0, jmp_45cd8
  mov64 r0, r5
  and64 r0, -0x8
  mov64 r4, r1
  add64 r4, r0
  mov64 r0, 0x0
  ja jmp_45d00

jmp_45c60:
  ldxb r4, [r7+0x0]
  lsh64 r4, 0x38
  arsh64 r4, 0x38
  mov64 r8, 0x1
  mov64 r9, 0x1
  jsgt r4, -0x41, jmp_45c98
  mov64 r9, 0x0

jmp_45c98:
  add64 r6, 0x1
  jeq r6, 0x0, jmp_45c00
  mov64 r8, 0x0
  ja jmp_45c00

jmp_45cb8:
  add64 r0, r6
  add64 r4, 0x1
  add64 r2, -0x1
  jne r2, 0x0, jmp_45d00

jmp_45cd8:
  rsh64 r5, 0x3
  add64 r0, r3
  lddw r6, 0x101010101010101
  ja jmp_45f48

jmp_45d00:
  ldxb r7, [r4+0x0]
  lsh64 r7, 0x38
  arsh64 r7, 0x38
  mov64 r6, 0x1
  jsgt r7, -0x41, jmp_45cb8
  mov64 r6, 0x0
  ja jmp_45cb8

jmp_45d38:
  ldxdw r8, [r2+0x0]
  mov64 r7, r8
  rsh64 r7, 0x6
  xor64 r8, -0x1
  rsh64 r8, 0x7
  or64 r8, r7
  and64 r8, r6
  add64 r8, r4
  ldxdw r4, [r2+0x8]
  mov64 r7, r4
  rsh64 r7, 0x6
  xor64 r4, -0x1
  rsh64 r4, 0x7
  or64 r4, r7
  and64 r4, r6
  add64 r4, r8
  ldxdw r8, [r2+0x10]
  mov64 r7, r8
  rsh64 r7, 0x6
  xor64 r8, -0x1
  rsh64 r8, 0x7
  or64 r8, r7
  and64 r8, r6
  add64 r8, r4
  ldxdw r4, [r2+0x18]
  mov64 r7, r4
  rsh64 r7, 0x6
  xor64 r4, -0x1
  rsh64 r4, 0x7
  or64 r4, r7
  and64 r4, r6
  add64 r4, r8
  add64 r2, 0x20
  jne r2, r1, jmp_45d38

jmp_45e48:
  mov64 r1, r9
  add64 r1, r5
  ldxdw r8, [r10-0x8]
  mov64 r2, r8
  and64 r2, 0x3
  mov64 r5, r3
  sub64 r5, r8
  mov64 r7, r4
  stxdw [r10-0x10], r9
  mov64 r9, r3
  lddw r3, 0xff00ff00ff00ff
  and64 r7, r3
  rsh64 r4, 0x8
  and64 r4, r3
  add64 r4, r7
  lddw r7, 0x1000100010001
  mul64 r4, r7
  rsh64 r4, 0x30
  add64 r4, r0
  mov64 r0, r4
  jeq r2, 0x0, jmp_45f48
  mov64 r0, 0x0
  ldxdw r6, [r10-0x10]
  jeq r2, 0x0, jmp_460d8
  and64 r8, 0xfc
  lsh64 r8, 0x3
  mov64 r1, 0xc0
  jgt r1, r9, jmp_46040
  mov64 r9, 0xc0
  ja jmp_46040

jmp_45f48:
  mov64 r3, r5
  mov64 r9, r1
  jeq r3, 0x0, jmp_46138
  mov64 r1, 0xc0
  mov64 r5, r3
  jgt r1, r3, jmp_45f80
  mov64 r5, 0xc0

jmp_45f80:
  stxdw [r10-0x8], r5
  lsh64 r5, 0x3
  mov64 r4, 0x0
  mov64 r1, 0x4
  jgt r1, r3, jmp_45e48
  mov64 r2, r5
  and64 r2, 0x7e0
  mov64 r1, r9
  add64 r1, r2
  mov64 r2, r9
  ja jmp_45d38

jmp_45fd8:
  mov64 r0, 0x0
  jeq r2, 0x0, jmp_46138

jmp_45fe8:
  ldxb r4, [r1+0x0]
  lsh64 r4, 0x38
  arsh64 r4, 0x38
  mov64 r3, 0x1
  jsgt r4, -0x41, jmp_46018
  mov64 r3, 0x0

jmp_46018:
  add64 r0, r3
  add64 r1, 0x1
  add64 r2, -0x1
  jeq r2, 0x0, jmp_46138
  ja jmp_45fe8

jmp_46040:
  add64 r6, r8
  mov64 r2, 0x0
  and64 r9, 0x3
  lsh64 r9, 0x3
  lddw r1, 0x101010101010101

jmp_46070:
  ldxdw r0, [r6+0x0]
  mov64 r5, r0
  rsh64 r5, 0x6
  xor64 r0, -0x1
  rsh64 r0, 0x7
  or64 r0, r5
  and64 r0, r1
  add64 r0, r2
  add64 r6, 0x8
  add64 r9, -0x8
  mov64 r2, r0
  jeq r9, 0x0, jmp_460d8
  ja jmp_46070

jmp_460d8:
  lddw r1, 0xff00ff00ff00ff
  mov64 r2, r0
  and64 r2, r1
  rsh64 r0, 0x8
  and64 r0, r1
  add64 r0, r2
  lddw r1, 0x1000100010001
  mul64 r0, r1
  rsh64 r0, 0x30
  add64 r0, r4

jmp_46138:
  exit

fn_46140:
  call fn_46148

fn_46148:
  stxdw [r10-0xc8], r4
  stxdw [r10-0xd0], r3
  mov64 r0, 0x101
  jgt r0, r2, jmp_46230
  mov64 r0, 0x100
  ldxb r6, [r1+0x100]
  lsh64 r6, 0x38
  arsh64 r6, 0x38
  jsgt r6, -0x41, jmp_461e8
  mov64 r0, 0xff
  ldxb r6, [r1+0xff]
  lsh64 r6, 0x38
  arsh64 r6, 0x38
  jsgt r6, -0x41, jmp_461e8
  mov64 r0, 0xfe
  ldxb r6, [r1+0xfe]
  lsh64 r6, 0x38
  arsh64 r6, 0x38
  jsgt r6, -0x41, jmp_461e8
  mov64 r0, 0xfd

jmp_461e8:
  mov64 r6, r1
  add64 r6, r0
  ldxb r6, [r6+0x0]
  lsh64 r6, 0x38
  arsh64 r6, 0x38
  jsgt r6, -0x41, jmp_46238
  mov64 r3, 0x0
  mov64 r4, r0
  call fn_46140

jmp_46230:
  mov64 r0, r2

jmp_46238:
  lddw r6, str_1f25
  jgt r2, r0, jmp_46258
  mov64 r6, 0x1

jmp_46258:
  mov64 r7, 0x5
  jgt r2, r0, jmp_46270
  mov64 r7, 0x0

jmp_46270:
  stxdw [r10-0xb8], r0
  stxdw [r10-0xc0], r1
  stxdw [r10-0xa8], r7
  stxdw [r10-0xb0], r6
  jgt r3, r2, jmp_463a0
  jgt r4, r2, jmp_463a0
  jge r4, r3, jmp_464b0
  mov64 r1, 0x0
  stxdw [r10-0x60], r1
  lddw r1, data_4258
  stxdw [r10-0x80], r1
  mov64 r1, 0x4
  stxdw [r10-0x78], r1
  stxdw [r10-0x68], r1
  mov64 r1, r10
  add64 r1, -0x50
  stxdw [r10-0x70], r1
  mov64 r1, r10
  add64 r1, -0xb0
  stxdw [r10-0x20], r1
  lddw r1, 0x8b12
  stxdw [r10-0x18], r1
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0xc0
  stxdw [r10-0x30], r1
  mov64 r1, r10
  add64 r1, -0xc8
  stxdw [r10-0x40], r1
  lddw r1, 0x8b03
  stxdw [r10-0x38], r1
  stxdw [r10-0x48], r1
  mov64 r1, r10
  add64 r1, -0xd0
  ja jmp_46488

jmp_463a0:
  jgt r3, r2, jmp_463b0
  mov64 r3, r4

jmp_463b0:
  stxdw [r10-0x90], r3
  mov64 r1, 0x0
  stxdw [r10-0x60], r1
  lddw r1, data_42e8
  stxdw [r10-0x80], r1
  mov64 r1, 0x3
  stxdw [r10-0x78], r1
  stxdw [r10-0x68], r1
  mov64 r1, r10
  add64 r1, -0x50
  stxdw [r10-0x70], r1
  mov64 r1, r10
  add64 r1, -0xb0
  stxdw [r10-0x30], r1
  lddw r1, 0x8b12
  stxdw [r10-0x28], r1
  stxdw [r10-0x38], r1
  mov64 r1, r10
  add64 r1, -0xc0
  stxdw [r10-0x40], r1
  lddw r1, 0x8b03
  stxdw [r10-0x48], r1
  mov64 r1, r10
  add64 r1, -0x90

jmp_46488:
  stxdw [r10-0x50], r1
  mov64 r1, r10
  add64 r1, -0x80
  mov64 r2, r5
  call fn_3fef0

jmp_464b0:
  jeq r3, 0x0, jmp_464f8
  jge r3, r2, jmp_464f8
  mov64 r0, r1
  add64 r0, r3
  ldxb r0, [r0+0x0]
  lsh64 r0, 0x38
  arsh64 r0, 0x38
  mov64 r6, -0x40
  jsgt r6, r0, jmp_46500

jmp_464f8:
  mov64 r3, r4

jmp_46500:
  stxdw [r10-0xa0], r3
  mov64 r0, r3
  mov64 r3, r2
  mov64 r4, r0
  jge r0, r2, jmp_46638
  mov64 r3, r4
  mov64 r0, r3
  add64 r0, -0x3
  mov64 r4, 0x0
  mov64 r6, 0x1
  jgt r0, r3, jmp_46560
  mov64 r6, 0x0

jmp_46560:
  jne r6, 0x0, jmp_46570
  mov64 r4, r0

jmp_46570:
  mov64 r0, r3
  add64 r0, 0x1
  jge r0, r4, jmp_465b0
  mov64 r1, r4
  mov64 r2, r0
  lddw r3, data_4318
  call fn_45350

jmp_465b0:
  mov64 r6, r1
  add64 r6, r4
  mov64 r7, r3
  mov64 r3, r1
  add64 r3, r0
  sub64 r3, r6
  mov64 r0, r1
  add64 r0, r7
  mov64 r6, -0x40

jmp_465f8:
  jeq r3, 0x0, jmp_46630
  add64 r3, -0x1
  ldxb r7, [r0+0x0]
  add64 r0, -0x1
  lsh64 r7, 0x38
  arsh64 r7, 0x38
  jsgt r6, r7, jmp_465f8

jmp_46630:
  add64 r3, r4

jmp_46638:
  jeq r3, 0x0, jmp_46658
  jgt r2, r3, jmp_46780
  jeq r3, r2, jmp_46658
  ja jmp_467b0

jmp_46658:
  jeq r3, r2, jmp_46770
  add64 r1, r3
  ldxb r0, [r1+0x0]
  mov64 r2, r0
  lsh64 r2, 0x38
  arsh64 r2, 0x38
  jsgt r2, -0x1, jmp_467c0
  ldxb r2, [r1+0x1]
  and64 r2, 0x3f
  mov64 r4, r0
  and64 r4, 0x1f
  mov64 r6, r4
  lsh64 r6, 0x6
  or64 r6, r2
  jgt r0, 0xdf, jmp_466d8
  ja jmp_467c8

jmp_466d8:
  lsh64 r2, 0x6
  ldxb r6, [r1+0x2]
  and64 r6, 0x3f
  or64 r2, r6
  mov64 r7, r4
  lsh64 r7, 0xc
  mov64 r6, r2
  or64 r6, r7
  mov64 r7, 0xf0
  jgt r7, r0, jmp_467c8
  lsh64 r2, 0x6
  ldxb r1, [r1+0x3]
  and64 r1, 0x3f
  or64 r2, r1
  lsh64 r4, 0x12
  and64 r4, 0x1c0000
  or64 r2, r4
  mov64 r6, r2
  ja jmp_467c8

jmp_46770:
  mov64 r1, r5
  call fn_3fb80

jmp_46780:
  mov64 r4, r1
  add64 r4, r3
  ldxb r4, [r4+0x0]
  lsh64 r4, 0x38
  arsh64 r4, 0x38
  jsgt r4, -0x41, jmp_46658

jmp_467b0:
  mov64 r4, r2
  call fn_46140

jmp_467c0:
  mov64 r6, r0

jmp_467c8:
  mov64 r1, 0x1
  stxw [r10-0x94], r6
  mov64 r2, 0x80
  jgt r2, r6, jmp_46820
  mov64 r1, 0x2
  mov64 r2, 0x800
  jgt r2, r6, jmp_46820
  mov64 r1, 0x3
  mov64 r2, 0x10000
  jgt r2, r6, jmp_46820
  mov64 r1, 0x4

jmp_46820:
  stxdw [r10-0x90], r3
  add64 r1, r3
  stxdw [r10-0x88], r1
  mov64 r1, 0x0
  stxdw [r10-0x60], r1
  lddw r1, data_4298
  stxdw [r10-0x80], r1
  mov64 r1, 0x5
  stxdw [r10-0x78], r1
  stxdw [r10-0x68], r1
  mov64 r1, r10
  add64 r1, -0x50
  stxdw [r10-0x70], r1
  mov64 r1, r10
  add64 r1, -0xb0
  stxdw [r10-0x10], r1
  lddw r1, 0x8b12
  stxdw [r10-0x8], r1
  stxdw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0xc0
  stxdw [r10-0x20], r1
  lddw r1, 0x77f8
  stxdw [r10-0x28], r1
  mov64 r1, r10
  add64 r1, -0x90
  stxdw [r10-0x30], r1
  lddw r1, 0x82fd
  stxdw [r10-0x38], r1
  mov64 r1, r10
  add64 r1, -0x94
  stxdw [r10-0x40], r1
  lddw r1, 0x8b03
  stxdw [r10-0x48], r1
  mov64 r1, r10
  add64 r1, -0xa0
  ja jmp_46488

fn_46970:
  mov64 r9, r1
  ldxdw r1, [r5-0xff0]
  stxdw [r10-0x10], r1
  ldxdw r6, [r5-0xff8]
  jeq r3, 0x0, jmp_46ae0
  lsh64 r3, 0x1
  mov64 r1, r2
  add64 r1, r3
  stxdw [r10-0x8], r1
  ldxdw r8, [r5-0x1000]
  mov64 r3, r9
  and64 r3, 0xff00
  rsh64 r3, 0x8
  mov64 r0, 0x0
  stxdw [r10-0x20], r4
  stxdw [r10-0x18], r8
  ja jmp_46a18

jmp_469f8:
  jgt r1, r3, jmp_46ae0
  mov64 r0, r5
  ldxdw r1, [r10-0x8]
  jeq r2, r1, jmp_46ae0

jmp_46a18:
  ldxb r7, [r2+0x1]
  mov64 r5, r0
  add64 r5, r7
  ldxb r1, [r2+0x0]
  add64 r2, 0x2
  jeq r1, r3, jmp_46a50
  ja jmp_469f8

jmp_46a50:
  jgt r0, r5, jmp_46c18
  jgt r5, r8, jmp_46bf0
  add64 r4, r0

jmp_46a68:
  jeq r7, 0x0, jmp_46ab0
  mov64 r0, 0x0
  add64 r7, -0x1
  mov64 r1, r9
  and64 r1, 0xff
  ldxb r8, [r4+0x0]
  add64 r4, 0x1
  jeq r8, r1, jmp_46bc8
  ja jmp_46a68

jmp_46ab0:
  mov64 r0, r5
  ldxdw r4, [r10-0x20]
  ldxdw r8, [r10-0x18]
  ldxdw r1, [r10-0x8]
  jeq r2, r1, jmp_46ae0
  ja jmp_46a18

jmp_46ae0:
  mov64 r0, 0x1
  ldxdw r1, [r10-0x10]
  jeq r1, 0x0, jmp_46bc8
  mov64 r2, r6
  ldxdw r1, [r10-0x10]
  add64 r2, r1
  and64 r9, 0xffff
  mov64 r3, 0x0

jmp_46b20:
  mov64 r5, r6
  add64 r5, 0x1
  ldxb r4, [r6+0x0]
  mov64 r7, r4
  lsh64 r7, 0x38
  arsh64 r7, 0x38
  jsgt r3, r7, jmp_46b68
  mov64 r6, r5
  ja jmp_46b98

jmp_46b68:
  jeq r5, r2, jmp_46bd8
  and64 r4, 0x7f
  lsh64 r4, 0x8
  ldxb r5, [r6+0x1]
  or64 r4, r5
  add64 r6, 0x2

jmp_46b98:
  sub64 r9, r4
  lsh64 r9, 0x20
  arsh64 r9, 0x20
  jsgt r3, r9, jmp_46bc8
  xor64 r0, 0x1
  jne r6, r2, jmp_46b20

jmp_46bc8:
  and64 r0, 0x1
  exit

jmp_46bd8:
  lddw r1, data_4330
  call fn_3fb80

jmp_46bf0:
  mov64 r1, r5
  ldxdw r2, [r10-0x18]
  lddw r3, data_4348
  call fn_45270

jmp_46c18:
  mov64 r1, r0
  mov64 r2, r5
  lddw r3, data_4348
  call fn_45350

fn_46c40:
  mov64 r0, 0x0
  mov64 r2, r1
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r3, 0x20
  jgt r3, r2, jmp_46da8
  mov64 r0, 0x1
  mov64 r3, 0x7f
  jgt r3, r2, jmp_46da8
  mov64 r2, r1
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r3, 0x10000
  jgt r3, r2, jmp_46d38
  mov64 r3, 0x20000
  jgt r3, r2, jmp_46cc8
  ja jmp_46db8

jmp_46cc8:
  lddw r2, data_20e2
  stxdw [r10-0xff8], r2
  mov64 r2, 0x1c2
  stxdw [r10-0xff0], r2
  mov64 r2, 0xc4
  stxdw [r10-0x1000], r2
  mov64 r5, r10
  lddw r2, data_1fc6
  mov64 r3, 0x2c
  lddw r4, data_201e
  ja jmp_46da0

jmp_46d38:
  lddw r2, data_2414
  stxdw [r10-0xff8], r2
  mov64 r2, 0x12d
  stxdw [r10-0xff0], r2
  mov64 r2, 0x120
  stxdw [r10-0x1000], r2
  mov64 r5, r10
  lddw r2, data_22a4
  mov64 r3, 0x28
  lddw r4, data_22f4

jmp_46da0:
  call fn_46970

jmp_46da8:
  and64 r0, 0x1
  exit

jmp_46db8:
  mov64 r4, r1
  add64 r4, -0x2b73a
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  mov64 r0, 0x0
  mov64 r3, 0x1
  mov64 r5, 0x6
  mov64 r2, 0x1
  jgt r5, r4, jmp_46e08
  mov64 r2, 0x0

jmp_46e08:
  mov64 r5, r1
  add64 r5, -0x2cea2
  lsh64 r5, 0x20
  rsh64 r5, 0x20
  mov64 r6, 0xe
  mov64 r4, 0x1
  jgt r6, r5, jmp_46e48
  mov64 r4, 0x0

jmp_46e48:
  mov64 r6, r1
  add64 r6, -0x2ee5e
  lsh64 r6, 0x20
  rsh64 r6, 0x20
  mov64 r7, 0x9a2
  mov64 r5, 0x1
  jgt r7, r6, jmp_46e88
  mov64 r5, 0x0

jmp_46e88:
  mov64 r6, r1
  add64 r6, -0x2ebe1
  lsh64 r6, 0x20
  rsh64 r6, 0x20
  mov64 r7, 0xf
  jgt r7, r6, jmp_46ec0
  mov64 r3, 0x0

jmp_46ec0:
  lsh64 r3, 0x2
  lsh64 r5, 0x3
  or64 r5, r3
  lsh64 r4, 0x1
  or64 r2, r4
  or64 r2, r5
  jne r2, 0x0, jmp_46da8
  mov64 r2, r1
  add64 r2, -0x2fa1e
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r3, 0x5e2
  jgt r3, r2, jmp_46da8
  mov64 r2, r1
  add64 r2, -0x3134b
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r3, 0x5
  jgt r3, r2, jmp_46da8
  mov64 r2, r1
  add64 r2, -0x323b0
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  mov64 r3, 0xadd50
  jgt r3, r2, jmp_46da8
  mov64 r2, r1
  and64 r2, -0x20
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  jeq r2, 0x2a6e0, jmp_46da8
  mov64 r2, r1
  and64 r2, -0x2
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  jeq r2, 0x2b81e, jmp_46da8
  add64 r1, -0x110000
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r0, 0x1
  lddw r2, 0xfffd01f0
  jgt r2, r1, jmp_46da8
  mov64 r0, 0x0
  ja jmp_46da8

fn_47020:
  mov64 r7, r2
  mov64 r2, 0x500
  jgt r2, r7, jmp_47068
  lddw r1, str_25bb
  mov64 r2, 0x1d
  lddw r3, data_43c0
  call fn_3ff48

jmp_47068:
  mov64 r8, r7
  rsh64 r8, 0x5
  stxdw [r10-0x8], r1
  ldxdw r3, [r1+0xa0]
  jeq r3, 0x0, jmp_47168
  mov64 r4, r3
  add64 r4, r8
  lsh64 r4, 0x2
  ldxdw r1, [r10-0x8]
  add64 r4, r1
  mov64 r5, r3
  lsh64 r5, 0x2
  add64 r5, r1
  mov64 r1, r3
  add64 r1, -0x1
  add64 r5, -0x4
  add64 r4, -0x4
  mov64 r0, 0x29
  mov64 r9, 0x28

jmp_47100:
  jgt r0, r3, jmp_47110
  ja jmp_473c0

jmp_47110:
  mov64 r2, r8
  add64 r2, r1
  jgt r9, r2, jmp_47130
  ja jmp_47390

jmp_47130:
  ldxw r2, [r5+0x0]
  stxw [r4+0x0], r2
  add64 r4, -0x4
  add64 r5, -0x4
  add64 r1, -0x1
  jeq r1, -0x1, jmp_47168
  ja jmp_47100

jmp_47168:
  mov64 r9, r7
  and64 r9, 0x1f
  mov64 r1, 0x20
  jgt r1, r7, jmp_471b0
  mov64 r3, r8
  lsh64 r3, 0x2
  ldxdw r1, [r10-0x8]
  mov64 r2, 0x0
  call fn_493f8

jmp_471b0:
  ldxdw r0, [r10-0x8]
  ldxdw r2, [r0+0xa0]
  add64 r2, r8
  jne r9, 0x0, jmp_471e0

jmp_471d0:
  stxdw [r0+0xa0], r2
  exit

jmp_471e0:
  mov64 r1, r2
  add64 r1, -0x1
  jgt r1, 0x27, jmp_473c0
  lsh64 r1, 0x2
  mov64 r3, r0
  add64 r3, r1
  ldxw r3, [r3+0x0]
  neg64 r7
  and64 r7, 0x1f
  mov64 r4, r3
  rsh64 r4, r7
  mov64 r1, r2
  jeq r4, 0x0, jmp_47288
  jgt r2, 0x27, jmp_47390
  mov64 r1, r2
  lsh64 r1, 0x2
  mov64 r5, r0
  add64 r5, r1
  stxw [r5+0x0], r4
  mov64 r1, r2
  add64 r1, 0x1

jmp_47288:
  stxdw [r10-0x10], r1
  mov64 r4, r8
  add64 r4, 0x1
  jge r4, r2, jmp_47348
  mov64 r5, r2
  lsh64 r5, 0x2
  ldxdw r1, [r10-0x8]
  add64 r5, r1
  add64 r5, -0x4
  mov64 r0, 0x28

jmp_472d8:
  mov64 r1, r2
  add64 r1, -0x2
  jgt r0, r1, jmp_472f8
  ja jmp_473b8

jmp_472f8:
  lsh64 r3, r9
  ldxw r6, [r5-0x4]
  mov64 r1, r6
  rsh64 r1, r7
  or64 r1, r3
  stxw [r5+0x0], r1
  add64 r5, -0x4
  add64 r2, -0x1
  mov64 r3, r6
  jgt r2, r4, jmp_472d8

jmp_47348:
  lsh64 r8, 0x2
  ldxdw r0, [r10-0x8]
  mov64 r1, r0
  add64 r1, r8
  ldxw r3, [r1+0x0]
  lsh64 r3, r9
  stxw [r1+0x0], r3
  ldxdw r2, [r10-0x10]
  ja jmp_471d0

jmp_47390:
  mov64 r1, r2
  mov64 r2, 0x28
  lddw r3, data_43c0
  call fn_3ffc8

jmp_473b8:
  mov64 r1, -0x1

jmp_473c0:
  mov64 r2, 0x28
  lddw r3, data_43c0
  call fn_3ffc8

fn_473e0:
  mov64 r8, r3
  mov64 r7, r2
  mov64 r6, r1
  mov64 r1, r10
  add64 r1, -0xa0
  mov64 r2, 0x0
  mov64 r3, 0xa0
  call fn_493f8
  ldxdw r0, [r6+0xa0]
  mov64 r1, 0x29
  jgt r1, r0, jmp_47460
  mov64 r1, r0
  mov64 r2, 0x28
  lddw r3, data_43c0
  call fn_45270

jmp_47460:
  stxdw [r10-0xb0], r6
  jgt r8, r0, jmp_476b0
  lsh64 r8, 0x2
  mov64 r5, r7
  add64 r5, r8
  jeq r0, 0x0, jmp_478f0
  mov64 r1, r0
  add64 r1, 0x1
  stxdw [r10-0xd8], r1
  mov64 r8, 0x0
  mov64 r1, r0
  lsh64 r1, 0x2
  stxdw [r10-0xc0], r1
  mov64 r1, 0x0
  stxdw [r10-0xa8], r1

jmp_474d8:
  mov64 r3, r8
  lsh64 r3, 0x2
  mov64 r2, r10
  add64 r2, -0xa0
  add64 r2, r3

jmp_47500:
  mov64 r9, r8
  mov64 r4, r2
  jeq r7, r5, jmp_47918
  mov64 r2, r4
  add64 r2, 0x4
  mov64 r8, r9
  add64 r8, 0x1
  ldxw r6, [r7+0x0]
  add64 r7, 0x4
  jeq r6, 0x0, jmp_47500
  stxdw [r10-0xc8], r0
  stxdw [r10-0xd0], r5
  stxdw [r10-0xb8], r7
  mov64 r5, 0x0
  ldxdw r0, [r10-0xc0]
  mov64 r2, r9
  ldxdw r3, [r10-0xb0]

jmp_47588:
  mov64 r1, 0x28
  jgt r1, r2, jmp_475a0
  ja jmp_479d8

jmp_475a0:
  ldxw r7, [r3+0x0]
  mul64 r7, r6
  ldxw r1, [r4+0x0]
  add64 r5, r1
  add64 r5, r7
  stxw [r4+0x0], r5
  add64 r4, 0x4
  add64 r2, 0x1
  add64 r3, 0x4
  rsh64 r5, 0x20
  add64 r0, -0x4
  jeq r0, 0x0, jmp_47608
  ja jmp_47588

jmp_47608:
  ldxdw r0, [r10-0xc8]
  mov64 r2, r0
  jeq r5, 0x0, jmp_47678
  mov64 r2, r9
  add64 r2, r0
  mov64 r1, 0x28
  jgt r1, r2, jmp_47648
  ja jmp_479d8

jmp_47648:
  lsh64 r2, 0x2
  mov64 r3, r10
  add64 r3, -0xa0
  add64 r3, r2
  stxw [r3+0x0], r5
  ldxdw r2, [r10-0xd8]

jmp_47678:
  add64 r2, r9
  ldxdw r1, [r10-0xa8]
  jgt r1, r2, jmp_47698
  stxdw [r10-0xa8], r2

jmp_47698:
  ldxdw r7, [r10-0xb8]
  ldxdw r5, [r10-0xd0]
  ja jmp_474d8

jmp_476b0:
  lsh64 r0, 0x2
  mov64 r2, r6
  add64 r2, r0
  mov64 r9, 0x0
  mov64 r5, r8
  lsh64 r5, 0x2
  stxdw [r10-0xc8], r8
  add64 r8, 0x1
  stxdw [r10-0xe0], r8
  mov64 r0, r6
  mov64 r1, 0x0
  stxdw [r10-0xa8], r1

jmp_47710:
  mov64 r3, r9
  lsh64 r3, 0x2
  mov64 r1, r10
  add64 r1, -0xa0
  add64 r1, r3

jmp_47738:
  mov64 r4, r9
  mov64 r3, r1
  jeq r0, r2, jmp_47918
  mov64 r1, r3
  add64 r1, 0x4
  mov64 r9, r4
  add64 r9, 0x1
  ldxw r8, [r0+0x0]
  add64 r0, 0x4
  jeq r8, 0x0, jmp_47738
  stxdw [r10-0xd8], r2
  mov64 r1, r4
  mov64 r6, 0x0
  stxdw [r10-0xd0], r5
  stxdw [r10-0xc0], r1
  stxdw [r10-0xb8], r7

jmp_477b8:
  mov64 r2, 0x28
  jgt r2, r1, jmp_477d0
  ja jmp_479c0

jmp_477d0:
  ldxw r2, [r7+0x0]
  mul64 r2, r8
  ldxw r4, [r3+0x0]
  add64 r6, r4
  add64 r6, r2
  stxw [r3+0x0], r6
  add64 r3, 0x4
  add64 r1, 0x1
  add64 r7, 0x4
  rsh64 r6, 0x20
  add64 r5, -0x4
  jeq r5, 0x0, jmp_47838
  ja jmp_477b8

jmp_47838:
  ldxdw r2, [r10-0xc8]
  mov64 r1, r2
  ldxdw r7, [r10-0xb8]
  ldxdw r5, [r10-0xd0]
  jeq r6, 0x0, jmp_478b8
  ldxdw r1, [r10-0xc0]
  add64 r1, r2
  mov64 r2, 0x28
  jgt r2, r1, jmp_47888
  ja jmp_479c0

jmp_47888:
  lsh64 r1, 0x2
  mov64 r3, r10
  add64 r3, -0xa0
  add64 r3, r1
  stxw [r3+0x0], r6
  ldxdw r1, [r10-0xe0]

jmp_478b8:
  ldxdw r2, [r10-0xc0]
  add64 r1, r2
  ldxdw r2, [r10-0xa8]
  jgt r2, r1, jmp_478e0
  stxdw [r10-0xa8], r1

jmp_478e0:
  ldxdw r2, [r10-0xd8]
  ja jmp_47710

jmp_478f0:
  mov64 r1, 0x0
  stxdw [r10-0xa8], r1
  mov64 r2, 0x0
  jeq r7, r5, jmp_47918
  ja jmp_47970

jmp_47918:
  mov64 r2, r10
  add64 r2, -0xa0
  ldxdw r6, [r10-0xb0]
  mov64 r1, r6
  mov64 r3, 0xa0
  call fn_490d0
  ldxdw r1, [r10-0xa8]
  stxdw [r6+0xa0], r1
  mov64 r0, r6
  exit

jmp_47968:
  jeq r7, r5, jmp_47918

jmp_47970:
  add64 r2, 0x1
  ldxw r3, [r7+0x0]
  add64 r7, 0x4
  jeq r3, 0x0, jmp_47968
  mov64 r3, r2
  add64 r3, -0x1
  ldxdw r1, [r10-0xa8]
  jgt r1, r3, jmp_47968
  stxdw [r10-0xa8], r3
  ja jmp_47968

jmp_479c0:
  lddw r3, data_43c0
  call fn_3ffc8

jmp_479d8:
  mov64 r1, r2
  mov64 r2, 0x28
  lddw r3, data_43c0
  call fn_3ffc8

fn_47a00:
  mov64 r2, r1
  mov64 r1, 0x1
  stxdw [r10-0x28], r1
  lddw r1, data_43d8
  stxdw [r10-0x30], r1
  mov64 r1, 0x0
  stxdw [r10-0x10], r1
  stxdw [r10-0x18], r1
  mov64 r1, 0x8
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x30
  call fn_3fef0

fn_47a70:
  mov64 r2, r1
  mov64 r1, 0x1
  stxdw [r10-0x28], r1
  lddw r1, data_43e8
  stxdw [r10-0x30], r1
  mov64 r1, 0x0
  stxdw [r10-0x10], r1
  stxdw [r10-0x18], r1
  mov64 r1, 0x8
  stxdw [r10-0x20], r1
  mov64 r1, r10
  add64 r1, -0x30
  call fn_3fef0
  mov64 r5, r2
  ldxdw r2, [r1+0x0]
  ldxw r3, [r5+0x34]
  and64 r3, 0x1
  ldxdw r1, [r5+0x10]
  jeq r1, 0x0, jmp_47b30
  ldxdw r4, [r5+0x18]
  mov64 r1, r5
  call fn_417c0
  ja jmp_47b48

jmp_47b30:
  mov64 r1, r5
  mov64 r4, 0x0
  call fn_41e78

jmp_47b48:
  exit

fn_47b50:
  mov64 r3, 0x0
  ldxb r5, [r1+0x0]
  mov64 r1, 0xa
  mov64 r4, 0x10
  ja jmp_47bc8

jmp_47b78:
  mov64 r6, r10
  add64 r6, -0x80
  add64 r6, r3
  stxb [r6+0x7f], r0
  add64 r3, -0x1
  mov64 r0, r5
  and64 r0, 0xff
  mov64 r5, r0
  rsh64 r5, 0x4
  jgt r4, r0, jmp_47c08

jmp_47bc8:
  mov64 r6, r5
  and64 r6, 0xf
  mov64 r0, r6
  or64 r0, 0x30
  jgt r1, r6, jmp_47b78
  add64 r6, 0x57
  mov64 r0, r6
  ja jmp_47b78

jmp_47c08:
  mov64 r1, r3
  add64 r1, 0x80
  mov64 r4, 0x81
  jgt r4, r1, jmp_47c48
  mov64 r2, 0x80
  lddw r3, data_4180
  call fn_45190

jmp_47c48:
  mov64 r1, r3
  neg64 r1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x80
  add64 r1, r3
  add64 r1, 0x80
  stxdw [r10-0x1000], r1
  mov64 r5, r10
  mov64 r1, r2
  mov64 r2, 0x1
  lddw r3, str_1c7f
  mov64 r4, 0x2
  call fn_428b0
  exit

fn_47cc8:
  mov64 r3, 0x0
  ldxb r5, [r1+0x0]
  mov64 r1, 0xa
  mov64 r4, 0x10
  ja jmp_47d40

jmp_47cf0:
  mov64 r6, r10
  add64 r6, -0x80
  add64 r6, r3
  stxb [r6+0x7f], r0
  add64 r3, -0x1
  mov64 r0, r5
  and64 r0, 0xff
  mov64 r5, r0
  rsh64 r5, 0x4
  jgt r4, r0, jmp_47d80

jmp_47d40:
  mov64 r6, r5
  and64 r6, 0xf
  mov64 r0, r6
  or64 r0, 0x30
  jgt r1, r6, jmp_47cf0
  add64 r6, 0x37
  mov64 r0, r6
  ja jmp_47cf0

jmp_47d80:
  mov64 r1, r3
  add64 r1, 0x80
  mov64 r4, 0x81
  jgt r4, r1, jmp_47dc0
  mov64 r2, 0x80
  lddw r3, data_4180
  call fn_45190

jmp_47dc0:
  mov64 r1, r3
  neg64 r1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x80
  add64 r1, r3
  add64 r1, 0x80
  stxdw [r10-0x1000], r1
  mov64 r5, r10
  mov64 r1, r2
  mov64 r2, 0x1
  lddw r3, str_1c7f
  mov64 r4, 0x2
  call fn_428b0
  exit

fn_47e40:
  mov64 r3, 0x0
  ldxw r5, [r1+0x0]
  mov64 r1, 0xa
  mov64 r4, 0x10
  ja jmp_47ec0

jmp_47e68:
  mov64 r6, r10
  add64 r6, -0x80
  add64 r6, r3
  stxb [r6+0x7f], r0
  add64 r3, -0x1
  lsh64 r5, 0x20
  mov64 r0, r5
  rsh64 r0, 0x20
  mov64 r5, r0
  rsh64 r5, 0x4
  jgt r4, r0, jmp_47f00

jmp_47ec0:
  mov64 r6, r5
  and64 r6, 0xf
  mov64 r0, r6
  or64 r0, 0x30
  jgt r1, r6, jmp_47e68
  add64 r6, 0x57
  mov64 r0, r6
  ja jmp_47e68

jmp_47f00:
  mov64 r1, r3
  add64 r1, 0x80
  mov64 r4, 0x81
  jgt r4, r1, jmp_47f40
  mov64 r2, 0x80
  lddw r3, data_4180
  call fn_45190

jmp_47f40:
  mov64 r1, r3
  neg64 r1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x80
  add64 r1, r3
  add64 r1, 0x80
  stxdw [r10-0x1000], r1
  mov64 r5, r10
  mov64 r1, r2
  mov64 r2, 0x1
  lddw r3, str_1c7f
  mov64 r4, 0x2
  call fn_428b0
  exit

fn_47fc0:
  mov64 r3, 0x0
  ldxw r5, [r1+0x0]
  mov64 r1, 0xa
  mov64 r4, 0x10
  ja jmp_48040

jmp_47fe8:
  mov64 r6, r10
  add64 r6, -0x80
  add64 r6, r3
  stxb [r6+0x7f], r0
  add64 r3, -0x1
  lsh64 r5, 0x20
  mov64 r0, r5
  rsh64 r0, 0x20
  mov64 r5, r0
  rsh64 r5, 0x4
  jgt r4, r0, jmp_48080

jmp_48040:
  mov64 r6, r5
  and64 r6, 0xf
  mov64 r0, r6
  or64 r0, 0x30
  jgt r1, r6, jmp_47fe8
  add64 r6, 0x37
  mov64 r0, r6
  ja jmp_47fe8

jmp_48080:
  mov64 r1, r3
  add64 r1, 0x80
  mov64 r4, 0x81
  jgt r4, r1, jmp_480c0
  mov64 r2, 0x80
  lddw r3, data_4180
  call fn_45190

jmp_480c0:
  mov64 r1, r3
  neg64 r1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x80
  add64 r1, r3
  add64 r1, 0x80
  stxdw [r10-0x1000], r1
  mov64 r5, r10
  mov64 r1, r2
  mov64 r2, 0x1
  lddw r3, str_1c7f
  mov64 r4, 0x2
  call fn_428b0
  exit

fn_48140:
  mov64 r3, 0x0
  ldxdw r0, [r1+0x0]
  mov64 r1, 0xa
  mov64 r4, 0x10
  ja jmp_481a8

jmp_48168:
  mov64 r6, r10
  add64 r6, -0x80
  add64 r6, r3
  stxb [r6+0x7f], r0
  add64 r3, -0x1
  mov64 r0, r5
  rsh64 r0, 0x4
  jgt r4, r5, jmp_481f0

jmp_481a8:
  mov64 r5, r0
  mov64 r6, r5
  and64 r6, 0xf
  mov64 r0, r6
  or64 r0, 0x30
  jgt r1, r6, jmp_48168
  add64 r6, 0x57
  mov64 r0, r6
  ja jmp_48168

jmp_481f0:
  mov64 r1, r3
  add64 r1, 0x80
  mov64 r4, 0x81
  jgt r4, r1, jmp_48230
  mov64 r2, 0x80
  lddw r3, data_4180
  call fn_45190

jmp_48230:
  mov64 r1, r3
  neg64 r1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x80
  add64 r1, r3
  add64 r1, 0x80
  stxdw [r10-0x1000], r1
  mov64 r5, r10
  mov64 r1, r2
  mov64 r2, 0x1
  lddw r3, str_1c7f
  mov64 r4, 0x2
  call fn_428b0
  exit

fn_482b0:
  mov64 r3, 0x0
  ldxdw r0, [r1+0x0]
  mov64 r1, 0xa
  mov64 r4, 0x10
  ja jmp_48318

jmp_482d8:
  mov64 r6, r10
  add64 r6, -0x80
  add64 r6, r3
  stxb [r6+0x7f], r0
  add64 r3, -0x1
  mov64 r0, r5
  rsh64 r0, 0x4
  jgt r4, r5, jmp_48360

jmp_48318:
  mov64 r5, r0
  mov64 r6, r5
  and64 r6, 0xf
  mov64 r0, r6
  or64 r0, 0x30
  jgt r1, r6, jmp_482d8
  add64 r6, 0x37
  mov64 r0, r6
  ja jmp_482d8

jmp_48360:
  mov64 r1, r3
  add64 r1, 0x80
  mov64 r4, 0x81
  jgt r4, r1, jmp_483a0
  mov64 r2, 0x80
  lddw r3, data_4180
  call fn_45190

jmp_483a0:
  mov64 r1, r3
  neg64 r1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x80
  add64 r1, r3
  add64 r1, 0x80
  stxdw [r10-0x1000], r1
  mov64 r5, r10
  mov64 r1, r2
  mov64 r2, 0x1
  lddw r3, str_1c7f
  mov64 r4, 0x2
  call fn_428b0
  exit

fn_48420:
  mov64 r3, r2
  ldxw r2, [r3+0x34]
  mov64 r4, r2
  and64 r4, 0x10
  jne r4, 0x0, jmp_48478
  and64 r2, 0x20
  jeq r2, 0x0, jmp_48460
  ja jmp_48520

jmp_48460:
  mov64 r2, 0x1
  call fn_48958
  ja jmp_486a8

jmp_48478:
  mov64 r2, 0x0
  mov64 r4, 0xa
  mov64 r5, 0x10
  ja jmp_484d8

jmp_48498:
  mov64 r6, r10
  add64 r6, -0x80
  add64 r6, r2
  stxb [r6+0x7f], r1
  add64 r2, -0x1
  mov64 r1, r0
  rsh64 r1, 0x4
  jgt r5, r0, jmp_485f0

jmp_484d8:
  mov64 r0, r1
  mov64 r6, r0
  and64 r6, 0xf
  mov64 r1, r6
  or64 r1, 0x30
  jgt r4, r6, jmp_48498
  add64 r6, 0x57
  mov64 r1, r6
  ja jmp_48498

jmp_48520:
  mov64 r2, 0x0
  mov64 r4, 0xa
  mov64 r5, 0x10
  ja jmp_48580

jmp_48540:
  mov64 r6, r10
  add64 r6, -0x80
  add64 r6, r2
  stxb [r6+0x7f], r1
  add64 r2, -0x1
  mov64 r1, r0
  rsh64 r1, 0x4
  jgt r5, r0, jmp_485c8

jmp_48580:
  mov64 r0, r1
  mov64 r6, r0
  and64 r6, 0xf
  mov64 r1, r6
  or64 r1, 0x30
  jgt r4, r6, jmp_48540
  add64 r6, 0x37
  mov64 r1, r6
  ja jmp_48540

jmp_485c8:
  mov64 r1, r2
  add64 r1, 0x80
  mov64 r4, 0x81
  jgt r4, r1, jmp_48630
  ja jmp_48610

jmp_485f0:
  mov64 r1, r2
  add64 r1, 0x80
  mov64 r4, 0x81
  jgt r4, r1, jmp_48630

jmp_48610:
  mov64 r2, 0x80
  lddw r3, data_4180
  call fn_45190

jmp_48630:
  mov64 r1, r2
  neg64 r1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x80
  add64 r1, r2
  add64 r1, 0x80
  stxdw [r10-0x1000], r1
  mov64 r5, r10
  mov64 r1, r3
  mov64 r2, 0x1
  lddw r3, str_1c7f
  mov64 r4, 0x2
  call fn_428b0

jmp_486a8:
  exit

fn_486b0:
  mov64 r3, r2
  ldxw r2, [r3+0x34]
  mov64 r4, r2
  and64 r4, 0x10
  jne r4, 0x0, jmp_48710
  and64 r2, 0x20
  jeq r2, 0x0, jmp_486f0
  ja jmp_487c0

jmp_486f0:
  ldxdw r1, [r1+0x0]
  mov64 r2, 0x1
  call fn_48958
  ja jmp_48950

jmp_48710:
  mov64 r2, 0x0
  ldxdw r0, [r1+0x0]
  mov64 r1, 0xa
  mov64 r4, 0x10
  ja jmp_48778

jmp_48738:
  mov64 r6, r10
  add64 r6, -0x80
  add64 r6, r2
  stxb [r6+0x7f], r0
  add64 r2, -0x1
  mov64 r0, r5
  rsh64 r0, 0x4
  jgt r4, r5, jmp_48898

jmp_48778:
  mov64 r5, r0
  mov64 r6, r5
  and64 r6, 0xf
  mov64 r0, r6
  or64 r0, 0x30
  jgt r1, r6, jmp_48738
  add64 r6, 0x57
  mov64 r0, r6
  ja jmp_48738

jmp_487c0:
  mov64 r2, 0x0
  ldxdw r0, [r1+0x0]
  mov64 r1, 0xa
  mov64 r4, 0x10
  ja jmp_48828

jmp_487e8:
  mov64 r6, r10
  add64 r6, -0x80
  add64 r6, r2
  stxb [r6+0x7f], r0
  add64 r2, -0x1
  mov64 r0, r5
  rsh64 r0, 0x4
  jgt r4, r5, jmp_48870

jmp_48828:
  mov64 r5, r0
  mov64 r6, r5
  and64 r6, 0xf
  mov64 r0, r6
  or64 r0, 0x30
  jgt r1, r6, jmp_487e8
  add64 r6, 0x37
  mov64 r0, r6
  ja jmp_487e8

jmp_48870:
  mov64 r1, r2
  add64 r1, 0x80
  mov64 r4, 0x81
  jgt r4, r1, jmp_488d8
  ja jmp_488b8

jmp_48898:
  mov64 r1, r2
  add64 r1, 0x80
  mov64 r4, 0x81
  jgt r4, r1, jmp_488d8

jmp_488b8:
  mov64 r2, 0x80
  lddw r3, data_4180
  call fn_45190

jmp_488d8:
  mov64 r1, r2
  neg64 r1
  stxdw [r10-0xff8], r1
  mov64 r1, r10
  add64 r1, -0x80
  add64 r1, r2
  add64 r1, 0x80
  stxdw [r10-0x1000], r1
  mov64 r5, r10
  mov64 r1, r3
  mov64 r2, 0x1
  lddw r3, str_1c7f
  mov64 r4, 0x2
  call fn_428b0

jmp_48950:
  exit

fn_48958:
  mov64 r4, 0x27
  mov64 r5, 0x2710
  jgt r5, r1, jmp_48a70
  mov64 r4, 0x0

jmp_48978:
  mov64 r5, r1
  div64 r1, 0x2710
  mov64 r6, r1
  mul64 r6, 0x2710
  mov64 r0, r5
  sub64 r0, r6
  mov64 r6, r0
  and64 r6, 0xffff
  div64 r6, 0x64
  mov64 r7, r6
  mul64 r7, 0x64
  sub64 r0, r7
  mov64 r7, r10
  add64 r7, -0x27
  add64 r7, r4
  lsh64 r6, 0x1
  lddw r8, str_1c81
  add64 r8, r6
  ldxh r6, [r8+0x0]
  stxh [r7+0x23], r6
  lsh64 r0, 0x1
  and64 r0, 0xfffe
  lddw r6, str_1c81
  add64 r6, r0
  ldxh r0, [r6+0x0]
  stxh [r7+0x25], r0
  add64 r4, -0x4
  jgt r5, 0x5f5e0ff, jmp_48978
  add64 r4, 0x27

jmp_48a70:
  jgt r1, 0x63, jmp_48a80
  ja jmp_48b10

jmp_48a80:
  mov64 r5, r1
  and64 r5, 0xffff
  div64 r5, 0x64
  mov64 r0, r5
  mul64 r0, 0x64
  sub64 r1, r0
  lsh64 r1, 0x1
  and64 r1, 0xfffe
  lddw r0, str_1c81
  add64 r0, r1
  add64 r4, -0x2
  mov64 r1, r10
  add64 r1, -0x27
  add64 r1, r4
  ldxh r0, [r0+0x0]
  stxh [r1+0x0], r0
  mov64 r1, r5

jmp_48b10:
  mov64 r5, 0xa
  jgt r5, r1, jmp_48b78
  lsh64 r1, 0x1
  lddw r5, str_1c81
  add64 r5, r1
  add64 r4, -0x2
  mov64 r1, r10
  add64 r1, -0x27
  add64 r1, r4
  ldxh r5, [r5+0x0]
  stxh [r1+0x0], r5
  ja jmp_48ba8

jmp_48b78:
  add64 r4, -0x1
  mov64 r5, r10
  add64 r5, -0x27
  add64 r5, r4
  or64 r1, 0x30
  stxb [r5+0x0], r1

jmp_48ba8:
  mov64 r1, r10
  add64 r1, -0x27
  add64 r1, r4
  stxdw [r10-0x1000], r1
  mov64 r1, 0x27
  sub64 r1, r4
  stxdw [r10-0xff8], r1
  mov64 r5, r10
  mov64 r1, r3
  mov64 r3, 0x1
  mov64 r4, 0x0
  call fn_428b0
  exit

fn_48c10:
  mov64 r3, r2
  ldxb r1, [r1+0x0]
  mov64 r2, 0x1
  call fn_48958
  exit

fn_48c38:
  mov64 r3, r2
  ldxw r4, [r1+0x0]
  lsh64 r4, 0x20
  arsh64 r4, 0x20
  jsgt r4, -0x1, jmp_48c78
  mov64 r1, r4
  neg64 r1
  ja jmp_48c80

jmp_48c78:
  mov64 r1, r4

jmp_48c80:
  mov64 r2, 0x1
  jsgt r4, -0x1, jmp_48c98
  mov64 r2, 0x0

jmp_48c98:
  call fn_48958
  exit
  mov64 r3, r2
  ldxw r1, [r1+0x0]
  mov64 r2, 0x1
  call fn_48958
  exit
  mov64 r3, r2
  ldxdw r2, [r1+0x0]
  mov64 r4, r2
  arsh64 r4, 0x3f
  mov64 r1, r2
  xor64 r1, r4
  sub64 r1, r4
  xor64 r2, -0x1
  rsh64 r2, 0x3f
  call fn_48958
  exit

fn_48d28:
  mov64 r3, r2
  ldxdw r1, [r1+0x0]
  mov64 r2, 0x1
  call fn_48958
  exit
  ldxdw r3, [r1+0x0]
  ldxdw r1, [r1+0x8]
  ldxdw r4, [r1+0x18]
  mov64 r1, r3
  callx r4
  exit
  ldxdw r1, [r1+0x0]
  ldxdw r1, [r1+0x0]
  call fn_48420
  exit
  mov64 r4, r2
  ldxdw r3, [r1+0x8]
  ldxdw r2, [r1+0x0]
  mov64 r1, r4
  call fn_42f98
  exit

fn_48dd0:
  mov64 r0, 0x0
  mov64 r3, 0x21
  mov64 r4, r1
  lsh64 r4, 0xb
  mov64 r5, 0x21
  ja jmp_48e28

jmp_48e00:
  mov64 r5, r3
  sub64 r3, r2
  mov64 r0, r2
  jgt r5, r2, jmp_48e28
  ja jmp_48ee8

jmp_48e28:
  rsh64 r3, 0x1
  add64 r3, r0
  mov64 r2, r3
  lsh64 r2, 0x2
  lddw r6, data_2648
  add64 r6, r2
  ldxw r6, [r6+0x0]
  lsh64 r6, 0xb
  lsh64 r6, 0x20
  mov64 r7, r4
  lsh64 r7, 0x20
  rsh64 r6, 0x20
  rsh64 r7, 0x20
  jeq r6, r7, jmp_48ed8
  mov64 r2, r3
  add64 r2, 0x1
  jgt r7, r6, jmp_48ec0
  mov64 r2, r0

jmp_48ec0:
  jgt r6, r7, jmp_48e00
  mov64 r3, r5
  ja jmp_48e00

jmp_48ed8:
  add64 r3, 0x1
  mov64 r2, r3

jmp_48ee8:
  jgt r2, 0x20, jmp_490a8
  mov64 r3, r2
  lsh64 r3, 0x2
  lddw r4, data_2648
  add64 r4, r3
  mov64 r3, 0x2d7
  ldxw r0, [r4+0x0]
  jeq r2, 0x20, jmp_48f50
  add64 r4, 0x4
  jeq r4, 0x0, jmp_48f50
  ldxw r3, [r4+0x0]
  rsh64 r3, 0x15

jmp_48f50:
  rsh64 r0, 0x15
  mov64 r4, 0x0
  jne r2, 0x0, jmp_49048

jmp_48f68:
  mov64 r2, r0
  xor64 r2, -0x1
  add64 r3, r2
  jeq r3, 0x0, jmp_49038
  sub64 r1, r4
  lddw r5, data_26cc
  add64 r5, r0
  mov64 r4, 0x0
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r6, 0x0

jmp_48fc8:
  mov64 r2, r0
  add64 r2, r4
  jgt r2, 0x2d6, jmp_49080
  mov64 r2, r5
  add64 r2, r4
  ldxb r2, [r2+0x0]
  add64 r6, r2
  mov64 r2, r6
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  jgt r2, r1, jmp_49030
  add64 r4, 0x1
  jgt r3, r4, jmp_48fc8

jmp_49030:
  add64 r0, r4

jmp_49038:
  and64 r0, 0x1
  exit

jmp_49048:
  lsh64 r2, 0x2
  lddw r4, data_2648
  add64 r2, r4
  ldxw r4, [r2-0x4]
  and64 r4, 0x1fffff
  ja jmp_48f68

jmp_49080:
  mov64 r1, r2
  mov64 r2, 0x2d7
  lddw r3, data_4378
  call fn_3ffc8

jmp_490a8:
  mov64 r1, r2
  mov64 r2, 0x21
  lddw r3, data_4360
  call fn_3ffc8

fn_490d0:
  mov64 r6, r1
  mov64 r4, r3
  rsh64 r4, 0x3
  mov64 r1, r4
  mul64 r1, -0x7
  add64 r1, r3
  jgt r1, 0xf, jmp_491c8
  mov64 r1, 0x0
  mov64 r5, 0x8
  jgt r5, r3, jmp_49170
  mov64 r5, 0x0

jmp_49128:
  mov64 r0, r6
  add64 r0, r1
  mov64 r7, r2
  add64 r7, r1
  ldxdw r7, [r7+0x0]
  stxdw [r0+0x0], r7
  add64 r1, 0x8
  add64 r5, 0x1
  jgt r4, r5, jmp_49128

jmp_49170:
  jsge r1, r3, jmp_491b8

jmp_49178:
  mov64 r4, r6
  add64 r4, r1
  mov64 r5, r2
  add64 r5, r1
  ldxb r5, [r5+0x0]
  stxb [r4+0x0], r5
  add64 r1, 0x1
  jsgt r3, r1, jmp_49178

jmp_491b8:
  mov64 r0, r6
  exit

jmp_491c8:
  mov64 r1, r6
  call sol_memcpy_
  ja jmp_491b8

fn_491e0:
  mov64 r6, r1
  mov64 r1, r3
  rsh64 r1, 0x3
  mov64 r4, r1
  mul64 r4, -0x7
  add64 r4, r3
  jgt r4, 0xf, jmp_49328
  jge r2, r6, jmp_49340
  mov64 r4, r3
  and64 r4, -0x8
  jsge r4, r3, jmp_492a0
  mov64 r5, r2
  add64 r5, -0x1
  mov64 r0, r6
  add64 r0, -0x1
  mov64 r7, r3

jmp_49260:
  mov64 r8, r0
  add64 r8, r7
  mov64 r9, r5
  add64 r9, r7
  ldxb r9, [r9+0x0]
  stxb [r8+0x0], r9
  add64 r7, -0x1
  jsgt r7, r4, jmp_49260

jmp_492a0:
  mov64 r4, 0x8
  jgt r4, r3, jmp_49318
  mov64 r4, r1
  lsh64 r4, 0x3
  add64 r4, -0x8
  add64 r2, r4
  mov64 r3, r6
  add64 r3, r4
  add64 r1, 0x1

jmp_492e8:
  ldxdw r4, [r2+0x0]
  stxdw [r3+0x0], r4
  add64 r2, -0x8
  add64 r3, -0x8
  add64 r1, -0x1
  jsgt r1, 0x1, jmp_492e8

jmp_49318:
  mov64 r0, r6
  exit

jmp_49328:
  mov64 r1, r6
  call sol_memmove_
  ja jmp_49318

jmp_49340:
  mov64 r4, 0x0
  mov64 r5, 0x8
  jgt r5, r3, jmp_493a8
  mov64 r5, 0x0

jmp_49360:
  mov64 r0, r6
  add64 r0, r4
  mov64 r7, r2
  add64 r7, r4
  ldxdw r7, [r7+0x0]
  stxdw [r0+0x0], r7
  add64 r4, 0x8
  add64 r5, 0x1
  jgt r1, r5, jmp_49360

jmp_493a8:
  jsge r4, r3, jmp_49318

jmp_493b0:
  mov64 r1, r6
  add64 r1, r4
  mov64 r5, r2
  add64 r5, r4
  ldxb r5, [r5+0x0]
  stxb [r1+0x0], r5
  add64 r4, 0x1
  jsgt r3, r4, jmp_493b0
  ja jmp_49318

fn_493f8:
  mov64 r6, r1
  mov64 r4, r3
  rsh64 r4, 0x3
  mov64 r1, r4
  mul64 r1, -0x7
  add64 r1, r3
  jgt r1, 0xf, jmp_494e8
  mov64 r1, 0x0
  mov64 r5, 0x8
  jgt r5, r3, jmp_494b0
  mov64 r5, r2
  and64 r5, 0xff
  lddw r1, 0x101010101010101
  mul64 r5, r1
  mov64 r1, 0x0
  mov64 r0, 0x0

jmp_49480:
  mov64 r7, r6
  add64 r7, r1
  stxdw [r7+0x0], r5
  add64 r1, 0x8
  add64 r0, 0x1
  jgt r4, r0, jmp_49480

jmp_494b0:
  jsge r1, r3, jmp_49500

jmp_494b8:
  mov64 r4, r6
  add64 r4, r1
  stxb [r4+0x0], r2
  add64 r1, 0x1
  jsgt r3, r1, jmp_494b8
  ja jmp_49500

jmp_494e8:
  and64 r2, 0xff
  mov64 r1, r6
  call sol_memset_

jmp_49500:
  mov64 r0, r6
  exit

fn_49510:
  mov64 r8, r2
  mov64 r2, r3
  rsh64 r2, 0x3
  mov64 r5, r2
  mul64 r5, -0x7
  add64 r5, r3
  jgt r5, 0xf, jmp_49670
  mov64 r0, 0x0
  mov64 r6, 0x8
  mov64 r5, 0x0
  jgt r6, r3, jmp_49600
  mov64 r6, 0x0
  stxdw [r10-0x18], r1
  mov64 r7, r1
  stxdw [r10-0x10], r8
  ja jmp_495c0

jmp_49590:
  add64 r7, 0x8
  add64 r8, 0x8
  add64 r6, 0x1
  mov64 r5, r2
  jgt r2, r6, jmp_495c0
  ja jmp_495e0

jmp_495c0:
  ldxdw r9, [r8+0x0]
  ldxdw r4, [r7+0x0]
  mov64 r5, r6
  jeq r4, r9, jmp_49590

jmp_495e0:
  lsh64 r5, 0x3
  ldxdw r8, [r10-0x10]
  ldxdw r1, [r10-0x18]
  mov64 r0, 0x0

jmp_49600:
  jsge r5, r3, jmp_496a8
  ja jmp_49620

jmp_49610:
  add64 r5, 0x1
  jsge r5, r3, jmp_496a8

jmp_49620:
  mov64 r2, r1
  add64 r2, r5
  mov64 r4, r8
  add64 r4, r5
  ldxb r4, [r4+0x0]
  ldxb r6, [r2+0x0]
  jeq r6, r4, jmp_49610
  sub64 r6, r4
  mov64 r0, r6
  ja jmp_496a8

jmp_49670:
  mov64 r4, 0x0
  stxw [r10-0x4], r4
  mov64 r4, r10
  add64 r4, -0x4
  mov64 r2, r8
  call sol_memcmp_
  ldxw r0, [r10-0x4]

jmp_496a8:
  lsh64 r0, 0x20
  arsh64 r0, 0x20
  exit

fn_496c0:
  mov64 r0, 0x0
  lddw r2, 0x3ff0000000000000
  jgt r2, r1, jmp_49778
  lddw r2, 0x43f0000000000000
  jgt r2, r1, jmp_49728
  mov64 r0, -0x1
  lddw r2, 0x7ff0000000000001
  jgt r2, r1, jmp_49778
  mov64 r0, 0x0
  ja jmp_49778

jmp_49728:
  mov64 r0, r1
  lsh64 r0, 0xb
  lddw r2, -0x8000000000000000
  or64 r0, r2
  rsh64 r1, 0x34
  mov64 r2, 0x3e
  sub64 r2, r1
  and64 r2, 0x3f
  rsh64 r0, r2

jmp_49778:
  exit

fn_49780:
  mov64 r6, r1
  mov64 r1, r10
  add64 r1, -0x20
  call fn_497c8
  ldxdw r1, [r10-0x20]
  ldxdw r2, [r10-0x18]
  stxdw [r6+0x8], r2
  stxdw [r6+0x0], r1
  exit

fn_497c8:
  stxdw [r10-0xc0], r4
  mov64 r0, r3
  stxdw [r10-0xb8], r2
  stxdw [r10-0xd0], r1
  mov64 r2, r5
  rsh64 r2, 0x1
  mov64 r4, r5
  or64 r4, r2
  mov64 r2, r4
  rsh64 r2, 0x2
  or64 r4, r2
  mov64 r2, r4
  rsh64 r2, 0x4
  or64 r4, r2
  mov64 r2, r4
  rsh64 r2, 0x8
  or64 r4, r2
  mov64 r2, r4
  rsh64 r2, 0x10
  or64 r4, r2
  mov64 r2, r0
  rsh64 r2, 0x1
  mov64 r7, r0
  or64 r7, r2
  mov64 r2, r7
  rsh64 r2, 0x2
  or64 r7, r2
  mov64 r2, r4
  rsh64 r2, 0x20
  or64 r4, r2
  mov64 r2, r7
  rsh64 r2, 0x4
  or64 r7, r2
  mov64 r2, r7
  rsh64 r2, 0x8
  or64 r7, r2
  lddw r2, 0x5555555555555555
  xor64 r4, -0x1
  mov64 r3, r4
  rsh64 r3, 0x1
  and64 r3, r2
  sub64 r4, r3
  mov64 r3, r7
  rsh64 r3, 0x10
  or64 r7, r3
  mov64 r3, r7
  rsh64 r3, 0x20
  or64 r7, r3
  lddw r3, 0x3333333333333333
  mov64 r6, r4
  and64 r6, r3
  rsh64 r4, 0x2
  and64 r4, r3
  add64 r6, r4
  xor64 r7, -0x1
  mov64 r4, r7
  rsh64 r4, 0x1
  and64 r4, r2
  sub64 r7, r4
  mov64 r4, r6
  rsh64 r4, 0x4
  add64 r6, r4
  mov64 r9, r7
  and64 r9, r3
  rsh64 r7, 0x2
  and64 r7, r3
  add64 r9, r7
  mov64 r4, r9
  rsh64 r4, 0x4
  add64 r9, r4
  lddw r1, 0xf0f0f0f0f0f0f0f
  and64 r9, r1
  and64 r6, r1
  lddw r4, 0x101010101010101
  mul64 r6, r4
  mul64 r9, r4
  rsh64 r9, 0x38
  stxdw [r10-0xc8], r5
  jne r0, 0x0, jmp_49ba0
  ldxdw r9, [r10-0xb8]
  mov64 r7, r9
  rsh64 r7, 0x1
  mov64 r8, r0
  mov64 r0, r9
  or64 r0, r7
  mov64 r7, r0
  rsh64 r7, 0x2
  or64 r0, r7
  mov64 r7, r0
  rsh64 r7, 0x4
  or64 r0, r7
  mov64 r7, r0
  rsh64 r7, 0x8
  or64 r0, r7
  mov64 r7, r0
  rsh64 r7, 0x10
  or64 r0, r7
  mov64 r7, r0
  rsh64 r7, 0x20
  or64 r0, r7
  xor64 r0, -0x1
  mov64 r7, r0
  rsh64 r7, 0x1
  and64 r7, r2
  sub64 r0, r7
  ldxdw r5, [r10-0xc8]
  mov64 r9, r0
  and64 r9, r3
  rsh64 r0, 0x2
  and64 r0, r3
  add64 r9, r0
  mov64 r0, r9
  rsh64 r0, 0x4
  add64 r9, r0
  mov64 r0, r8
  and64 r9, r1
  mul64 r9, r4
  rsh64 r9, 0x38
  add64 r9, 0x40

jmp_49ba0:
  rsh64 r6, 0x38
  jne r5, 0x0, jmp_49ce8
  mov64 r7, r0
  ldxdw r6, [r10-0xc0]
  mov64 r0, r6
  rsh64 r0, 0x1
  or64 r6, r0
  mov64 r0, r6
  rsh64 r0, 0x2
  or64 r6, r0
  mov64 r0, r6
  rsh64 r0, 0x4
  or64 r6, r0
  mov64 r0, r6
  rsh64 r0, 0x8
  or64 r6, r0
  mov64 r0, r6
  rsh64 r0, 0x10
  or64 r6, r0
  mov64 r0, r6
  rsh64 r0, 0x20
  or64 r6, r0
  xor64 r6, -0x1
  mov64 r0, r6
  rsh64 r0, 0x1
  and64 r0, r2
  sub64 r6, r0
  mov64 r0, r7
  ldxdw r5, [r10-0xc8]
  mov64 r2, r6
  rsh64 r2, 0x2
  and64 r6, r3
  and64 r2, r3
  add64 r6, r2
  mov64 r2, r6
  rsh64 r2, 0x4
  add64 r6, r2
  and64 r6, r1
  mul64 r6, r4
  rsh64 r6, 0x38
  add64 r6, 0x40

jmp_49ce8:
  jge r9, r6, jmp_49d70
  mov64 r2, r9
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  ldxdw r4, [r10-0xb8]
  ldxdw r1, [r10-0xd0]
  jgt r2, 0x3f, jmp_49d28
  ja jmp_49e28

jmp_49d28:
  ldxdw r2, [r10-0xc0]
  mov64 r9, r4
  jeq r2, 0x0, jmp_49d50
  mov64 r8, r9
  div64 r8, r2

jmp_49d50:
  mod64 r9, r2
  mov64 r0, 0x0
  mov64 r2, 0x0
  ja jmp_49f48

jmp_49d70:
  mov64 r8, 0x0
  mov64 r2, 0x1
  mov64 r3, 0x1
  ldxdw r9, [r10-0xb8]
  ldxdw r4, [r10-0xc0]
  ldxdw r1, [r10-0xd0]
  jgt r4, r9, jmp_49db0
  mov64 r3, 0x0

jmp_49db0:
  jgt r5, r0, jmp_49dc0
  mov64 r2, 0x0

jmp_49dc0:
  jeq r0, r5, jmp_49dd0
  mov64 r3, r2

jmp_49dd0:
  and64 r3, 0x1
  mov64 r2, 0x0
  jne r3, 0x0, jmp_49f48
  sub64 r0, r5
  mov64 r8, 0x1
  mov64 r3, 0x1
  jgt r4, r9, jmp_49e10
  mov64 r3, 0x0

jmp_49e10:
  sub64 r0, r3
  sub64 r9, r4
  ja jmp_49f48

jmp_49e28:
  mov64 r2, r6
  lsh64 r2, 0x20
  rsh64 r2, 0x20
  jgt r2, 0x5f, jmp_49e50
  ja jmp_49f70

jmp_49e50:
  ldxdw r6, [r10-0xc0]
  lsh64 r6, 0x20
  rsh64 r6, 0x20
  jeq r6, 0x0, jmp_49e80
  mov64 r3, r0
  div64 r3, r6

jmp_49e80:
  mod64 r0, r6
  lsh64 r0, 0x20
  mov64 r5, r4
  rsh64 r4, 0x20
  or64 r0, r4
  div64 r0, r6
  mov64 r2, r0
  mul64 r2, r6
  sub64 r4, r2
  lsh64 r4, 0x20
  lsh64 r5, 0x20
  rsh64 r5, 0x20
  or64 r4, r5
  mov64 r2, r4
  div64 r2, r6
  mov64 r8, r0
  lsh64 r8, 0x20
  or64 r8, r2
  mul64 r2, r6
  sub64 r4, r2
  rsh64 r0, 0x20
  mov64 r2, r0
  or64 r2, r3
  mov64 r0, 0x0

jmp_49f40:
  mov64 r9, r4

jmp_49f48:
  stxdw [r1+0x10], r9
  stxdw [r1+0x0], r8
  stxdw [r1+0x18], r0
  stxdw [r1+0x8], r2
  exit

jmp_49f70:
  stxdw [r10-0xd8], r0
  mov64 r1, r6
  sub64 r1, r9
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r2, 0x20
  jgt r2, r1, jmp_49fb0
  ja jmp_4a1d8

jmp_49fb0:
  mov64 r3, r5
  mov64 r7, 0x40
  sub64 r7, r9
  lsh64 r7, 0x20
  arsh64 r7, 0x20
  mov64 r1, r10
  add64 r1, -0x80
  ldxdw r9, [r10-0xc0]
  mov64 r2, r9
  mov64 r4, r7
  call fn_4bca0
  ldxdw r6, [r10-0x80]
  jeq r6, 0x0, jmp_4a058
  mov64 r1, r10
  add64 r1, -0x90
  ldxdw r2, [r10-0xb8]
  ldxdw r3, [r10-0xd8]
  mov64 r4, r7
  call fn_4bca0
  ldxdw r8, [r10-0x90]
  div64 r8, r6

jmp_4a058:
  mov64 r1, r10
  add64 r1, -0xa0
  mov64 r2, r9
  mov64 r3, 0x0
  mov64 r4, r8
  mov64 r5, 0x0
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0xb0
  ldxdw r7, [r10-0xc8]
  mov64 r2, r7
  mov64 r3, 0x0
  mov64 r4, r8
  mov64 r5, 0x0
  call fn_4b0a0
  ldxdw r2, [r10-0x98]
  ldxdw r1, [r10-0xb0]
  mov64 r4, r2
  add64 r4, r1
  mov64 r1, 0x1
  jgt r2, r4, jmp_4a108
  mov64 r1, 0x0

jmp_4a108:
  ldxdw r2, [r10-0xa8]
  add64 r2, r1
  ldxdw r3, [r10-0xa0]
  ldxdw r1, [r10-0xd0]
  ldxdw r0, [r10-0xd8]
  jne r2, 0x0, jmp_4a8a0
  mov64 r5, 0x1
  mov64 r2, 0x1
  ldxdw r6, [r10-0xb8]
  jgt r3, r6, jmp_4a160
  mov64 r2, 0x0

jmp_4a160:
  jgt r4, r0, jmp_4a170
  mov64 r5, 0x0

jmp_4a170:
  jeq r0, r4, jmp_4a180
  mov64 r2, r5

jmp_4a180:
  and64 r2, 0x1
  jne r2, 0x0, jmp_4a8a0
  sub64 r0, r4
  mov64 r2, 0x0
  mov64 r4, 0x1
  ldxdw r9, [r10-0xb8]
  jgt r3, r9, jmp_4a1c0
  mov64 r4, 0x0

jmp_4a1c0:
  sub64 r0, r4
  sub64 r9, r3
  ja jmp_49f48

jmp_4a1d8:
  mov64 r1, 0x60
  sub64 r1, r6
  stxdw [r10-0xf8], r1
  mov64 r4, r1
  lsh64 r4, 0x20
  stxdw [r10-0xf0], r4
  arsh64 r4, 0x20
  mov64 r1, r10
  add64 r1, -0x10
  ldxdw r2, [r10-0xc0]
  mov64 r3, r5
  call fn_4bca0
  mov64 r4, 0x0
  ldxdw r1, [r10-0x10]
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  add64 r1, 0x1
  stxdw [r10-0x100], r1
  mov64 r3, 0x0
  ldxdw r0, [r10-0xd8]
  ldxdw r5, [r10-0xb8]

jmp_4a280:
  stxdw [r10-0xe8], r4
  stxdw [r10-0xe0], r3
  mov64 r8, 0x40
  sub64 r8, r9
  mov64 r7, r8
  lsh64 r7, 0x20
  mov64 r9, r7
  arsh64 r9, 0x20
  mov64 r1, r10
  add64 r1, -0x20
  mov64 r2, r5
  stxdw [r10-0xb8], r2
  stxdw [r10-0xd8], r0
  mov64 r3, r0
  mov64 r4, r9
  call fn_4bca0
  ldxdw r2, [r10-0x20]
  rsh64 r7, 0x20
  ldxdw r1, [r10-0xf0]
  rsh64 r1, 0x20
  jge r7, r1, jmp_4a390
  mov64 r1, r10
  add64 r1, -0x60
  mov64 r7, r2
  ldxdw r2, [r10-0xc0]
  ldxdw r6, [r10-0xc8]
  mov64 r3, r6
  mov64 r4, r9
  call fn_4bca0
  mov64 r2, r7
  ldxdw r1, [r10-0x60]
  jeq r1, 0x0, jmp_4a938
  div64 r2, r1
  ja jmp_4a938

jmp_4a390:
  ldxdw r1, [r10-0x100]
  div64 r2, r1
  ldxdw r1, [r10-0xf8]
  sub64 r8, r1
  and64 r8, 0x7f
  mov64 r1, r10
  add64 r1, -0x30
  mov64 r7, r2
  mov64 r3, 0x0
  mov64 r4, r8
  call fn_4c118
  mov64 r1, r10
  add64 r1, -0x40
  mov64 r2, r7
  mov64 r3, 0x0
  ldxdw r4, [r10-0xc0]
  ldxdw r7, [r10-0xc8]
  mov64 r5, r7
  call fn_4b0a0
  mov64 r1, r10
  add64 r1, -0x50
  ldxdw r2, [r10-0x40]
  ldxdw r3, [r10-0x38]
  mov64 r4, r8
  call fn_4c118
  ldxdw r3, [r10-0x30]
  mov64 r8, r3
  ldxdw r1, [r10-0xe8]
  add64 r8, r1
  mov64 r2, 0x1
  mov64 r1, 0x1
  jgt r3, r8, jmp_4a498
  mov64 r1, 0x0

jmp_4a498:
  ldxdw r4, [r10-0x50]
  ldxdw r0, [r10-0xd8]
  ldxdw r5, [r10-0xb8]
  jgt r4, r5, jmp_4a4c0
  mov64 r2, 0x0

jmp_4a4c0:
  ldxdw r3, [r10-0x48]
  sub64 r0, r3
  sub64 r0, r2
  mov64 r2, r0
  rsh64 r2, 0x1
  mov64 r3, r0
  or64 r3, r2
  mov64 r2, r3
  rsh64 r2, 0x2
  or64 r3, r2
  ldxdw r2, [r10-0x28]
  sub64 r5, r4
  mov64 r4, r3
  rsh64 r4, 0x4
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x8
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x10
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x20
  or64 r3, r4
  xor64 r3, -0x1
  mov64 r4, r3
  rsh64 r4, 0x1
  lddw r9, 0x5555555555555555
  and64 r4, r9
  sub64 r3, r4
  mov64 r9, r3
  lddw r4, 0x3333333333333333
  and64 r9, r4
  rsh64 r3, 0x2
  and64 r3, r4
  add64 r9, r3
  mov64 r3, r9
  rsh64 r3, 0x4
  add64 r9, r3
  lddw r3, 0xf0f0f0f0f0f0f0f
  and64 r9, r3
  lddw r3, 0x101010101010101
  mul64 r9, r3
  rsh64 r9, 0x38
  jne r0, 0x0, jmp_4a7a8
  mov64 r3, r5
  mov64 r4, r3
  rsh64 r4, 0x1
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x2
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x4
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x8
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x10
  or64 r3, r4
  mov64 r4, r3
  rsh64 r4, 0x20
  or64 r3, r4
  xor64 r3, -0x1
  mov64 r4, r3
  rsh64 r4, 0x1
  lddw r9, 0x5555555555555555
  and64 r4, r9
  sub64 r3, r4
  mov64 r9, r3
  lddw r4, 0x3333333333333333
  and64 r9, r4
  rsh64 r3, 0x2
  and64 r3, r4
  add64 r9, r3
  mov64 r3, r9
  rsh64 r3, 0x4
  add64 r9, r3
  lddw r3, 0xf0f0f0f0f0f0f0f
  and64 r9, r3
  lddw r3, 0x101010101010101
  mul64 r9, r3
  rsh64 r9, 0x38
  add64 r9, 0x40

jmp_4a7a8:
  ldxdw r3, [r10-0xe0]
  add64 r2, r3
  add64 r2, r1
  mov64 r1, r6
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  jgt r1, r9, jmp_4a7e8
  ja jmp_4aac8

jmp_4a7e8:
  mov64 r1, r9
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r4, r8
  mov64 r3, r2
  jgt r1, 0x3f, jmp_4a820
  ja jmp_4a280

jmp_4a820:
  ldxdw r6, [r10-0xc0]
  mov64 r9, r5
  jeq r6, 0x0, jmp_4a848
  mov64 r1, r9
  div64 r1, r6

jmp_4a848:
  mov64 r3, r8
  add64 r3, r1
  mov64 r0, 0x0
  mov64 r4, 0x1
  ldxdw r1, [r10-0xd0]
  jgt r8, r3, jmp_4a880
  mov64 r4, 0x0

jmp_4a880:
  mod64 r9, r6
  add64 r2, r4
  mov64 r8, r3
  ja jmp_49f48

jmp_4a8a0:
  add64 r7, r0
  mov64 r5, r9
  ldxdw r2, [r10-0xb8]
  add64 r5, r2
  mov64 r2, 0x0
  mov64 r0, 0x1
  mov64 r6, 0x1
  jgt r9, r5, jmp_4a8e8
  mov64 r6, 0x0

jmp_4a8e8:
  add64 r7, r6
  sub64 r7, r4
  jgt r3, r5, jmp_4a908
  mov64 r0, 0x0

jmp_4a908:
  sub64 r7, r0
  sub64 r5, r3
  add64 r8, -0x1
  mov64 r9, r5
  mov64 r0, r7
  ja jmp_49f48

jmp_4a938:
  mov64 r1, r10
  add64 r1, -0x70
  mov64 r9, r2
  mov64 r3, 0x0
  ldxdw r8, [r10-0xc0]
  mov64 r4, r8
  mov64 r5, r6
  call fn_4b0a0
  mov64 r5, 0x1
  ldxdw r2, [r10-0x70]
  mov64 r4, 0x1
  ldxdw r1, [r10-0xb8]
  jgt r2, r1, jmp_4a9a8
  mov64 r4, 0x0

jmp_4a9a8:
  ldxdw r3, [r10-0x68]
  ldxdw r1, [r10-0xd0]
  ldxdw r0, [r10-0xd8]
  jgt r3, r0, jmp_4a9d0
  mov64 r5, 0x0

jmp_4a9d0:
  jeq r0, r3, jmp_4a9e0
  mov64 r4, r5

jmp_4a9e0:
  and64 r4, 0x1
  jne r4, 0x0, jmp_4a9f8
  ja jmp_4ab90

jmp_4a9f8:
  add64 r0, r6
  mov64 r6, r0
  ldxdw r7, [r10-0xb8]
  mov64 r4, r7
  add64 r4, r8
  mov64 r5, 0x1
  mov64 r0, 0x1
  jgt r7, r4, jmp_4aa40
  mov64 r0, 0x0

jmp_4aa40:
  add64 r6, r0
  ldxdw r7, [r10-0xe8]
  add64 r9, r7
  add64 r9, -0x1
  mov64 r0, 0x1
  mov64 r8, r9
  jgt r7, r9, jmp_4aa80
  mov64 r0, 0x0

jmp_4aa80:
  sub64 r6, r3
  jgt r2, r4, jmp_4aa98
  mov64 r5, 0x0

jmp_4aa98:
  sub64 r6, r5
  sub64 r4, r2
  ldxdw r2, [r10-0xe0]
  add64 r2, r0
  mov64 r0, r6
  ja jmp_49f40

jmp_4aac8:
  mov64 r4, 0x1
  mov64 r3, 0x1
  ldxdw r1, [r10-0xd0]
  ldxdw r6, [r10-0xc0]
  mov64 r9, r5
  jgt r6, r9, jmp_4ab00
  mov64 r3, 0x0

jmp_4ab00:
  jgt r7, r0, jmp_4ab10
  mov64 r4, 0x0

jmp_4ab10:
  jeq r0, r7, jmp_4ab20
  mov64 r3, r4

jmp_4ab20:
  and64 r3, 0x1
  jne r3, 0x0, jmp_49f48
  mov64 r3, 0x1
  mov64 r4, 0x1
  jgt r6, r9, jmp_4ab50
  mov64 r4, 0x0

jmp_4ab50:
  sub64 r0, r7
  add64 r8, 0x1
  jeq r8, 0x0, jmp_4ab70
  mov64 r3, 0x0

jmp_4ab70:
  sub64 r0, r4
  add64 r2, r3
  sub64 r9, r6
  ja jmp_49f48

jmp_4ab90:
  ldxdw r6, [r10-0xe8]
  mov64 r8, r6
  add64 r8, r9
  mov64 r5, 0x1
  mov64 r4, 0x1
  jgt r6, r8, jmp_4abc8
  mov64 r4, 0x0

jmp_4abc8:
  ldxdw r6, [r10-0xb8]
  jgt r2, r6, jmp_4abe0
  mov64 r5, 0x0

jmp_4abe0:
  sub64 r0, r3
  sub64 r0, r5
  ldxdw r9, [r10-0xb8]
  sub64 r9, r2
  ldxdw r2, [r10-0xe0]
  add64 r2, r4
  ja jmp_49f48

fn_4ac18:
  mov64 r8, 0x0
  jgt r3, r2, jmp_4b088
  mov64 r4, r3
  rsh64 r4, 0x1
  mov64 r6, r3
  or64 r6, r4
  mov64 r4, r6
  rsh64 r4, 0x2
  or64 r6, r4
  mov64 r4, r6
  rsh64 r4, 0x4
  or64 r6, r4
  mov64 r4, r6
  rsh64 r4, 0x8
  or64 r6, r4
  mov64 r4, r6
  rsh64 r4, 0x10
  or64 r6, r4
  mov64 r4, r6
  rsh64 r4, 0x20
  or64 r6, r4
  xor64 r6, -0x1
  lddw r0, 0x5555555555555555
  mov64 r4, r6
  rsh64 r4, 0x1
  and64 r4, r0
  sub64 r6, r4
  lddw r5, 0x3333333333333333
  mov64 r4, r6
  and64 r4, r5
  rsh64 r6, 0x2
  and64 r6, r5
  add64 r4, r6
  mov64 r6, r4
  rsh64 r6, 0x4
  add64 r4, r6
  lddw r6, 0xf0f0f0f0f0f0f0f
  and64 r4, r6
  lddw r7, 0x101010101010101
  mul64 r4, r7
  mov64 r9, 0x40
  rsh64 r4, 0x38
  jeq r2, 0x0, jmp_4aea8
  mov64 r9, r2
  rsh64 r9, 0x1
  mov64 r8, r2
  or64 r8, r9
  mov64 r9, r8
  rsh64 r9, 0x2
  or64 r8, r9
  mov64 r9, r8
  rsh64 r9, 0x4
  or64 r8, r9
  mov64 r9, r8
  rsh64 r9, 0x8
  or64 r8, r9
  mov64 r9, r8
  rsh64 r9, 0x10
  or64 r8, r9
  mov64 r9, r8
  rsh64 r9, 0x20
  or64 r8, r9
  xor64 r8, -0x1
  mov64 r9, r8
  rsh64 r9, 0x1
  and64 r9, r0
  sub64 r8, r9
  mov64 r9, r8
  and64 r9, r5
  rsh64 r8, 0x2
  and64 r8, r5
  add64 r9, r8
  mov64 r5, r9
  rsh64 r5, 0x4
  add64 r9, r5
  and64 r9, r6
  mul64 r9, r7
  rsh64 r9, 0x38

jmp_4aea8:
  sub64 r4, r9
  mov64 r5, r4
  and64 r5, 0x3f
  mov64 r0, r3
  lsh64 r0, r5
  mov64 r8, 0x1
  mov64 r5, 0x1
  jgt r0, r2, jmp_4aef0
  mov64 r5, 0x0

jmp_4aef0:
  lsh64 r4, 0x20
  rsh64 r4, 0x20
  sub64 r4, r5
  mov64 r0, r4
  and64 r0, 0x3f
  lsh64 r8, r0
  mov64 r5, r3
  lsh64 r5, r0
  sub64 r2, r5
  jgt r3, r2, jmp_4b088
  mov64 r0, r8
  mov64 r6, r8
  mov64 r7, r2
  jsgt r5, -0x1, jmp_4afe8
  add64 r4, -0x1
  mov64 r6, r4
  and64 r6, 0x3f
  mov64 r0, 0x1
  lsh64 r0, r6
  rsh64 r5, 0x1
  mov64 r7, r2
  sub64 r7, r5
  mov64 r6, r0
  jsgt r7, -0x1, jmp_4afb8
  mov64 r6, 0x0

jmp_4afb8:
  jsgt r7, -0x1, jmp_4afc8
  mov64 r7, r2

jmp_4afc8:
  or64 r6, r8
  mov64 r2, r7
  mov64 r8, r6
  jgt r3, r7, jmp_4b088

jmp_4afe8:
  add64 r0, -0x1
  jeq r4, 0x0, jmp_4b058
  mov64 r2, 0x0
  mov64 r3, r4
  ja jmp_4b020

jmp_4b010:
  add64 r3, -0x1
  jeq r3, 0x0, jmp_4b058

jmp_4b020:
  lsh64 r7, 0x1
  mov64 r8, r7
  sub64 r8, r5
  add64 r8, 0x1
  jsgt r2, r8, jmp_4b010
  mov64 r7, r8
  ja jmp_4b010

jmp_4b058:
  and64 r4, 0x3f
  mov64 r2, r7
  rsh64 r2, r4
  and64 r7, r0
  or64 r7, r6
  mov64 r8, r7

jmp_4b088:
  stxdw [r1+0x8], r2
  stxdw [r1+0x0], r8
  exit

fn_4b0a0:
  stxdw [r10-0x10], r3
  stxdw [r10-0x8], r1
  mov64 r1, r2
  lsh64 r1, 0x20
  rsh64 r1, 0x20
  mov64 r7, r4
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  mov64 r6, r2
  rsh64 r6, 0x20
  mov64 r3, r7
  mul64 r3, r1
  mul64 r7, r6
  mov64 r0, r4
  rsh64 r0, 0x20
  mov64 r9, r0
  mul64 r9, r1
  mov64 r1, r9
  add64 r1, r7
  mov64 r8, 0x1
  jgt r9, r1, jmp_4b150
  mov64 r8, 0x0

jmp_4b150:
  mov64 r9, r1
  lsh64 r9, 0x20
  mov64 r7, r3
  add64 r7, r9
  mov64 r9, 0x1
  jgt r3, r7, jmp_4b188
  mov64 r9, 0x0

jmp_4b188:
  ldxdw r3, [r10-0x8]
  stxdw [r3+0x0], r7
  rsh64 r1, 0x20
  lsh64 r8, 0x20
  or64 r8, r1
  ldxdw r1, [r10-0x10]
  mul64 r4, r1
  mul64 r5, r2
  mul64 r0, r6
  add64 r0, r8
  add64 r5, r4
  add64 r0, r9
  add64 r5, r0
  stxdw [r3+0x8], r5
  exit

fn_4b200:
  mov64 r3, r2
  mov64 r0, r1
  mov64 r6, r3
  xor64 r6, r0
  lddw r1, -0x8000000000000000
  and64 r6, r1
  lddw r1, 0xfffffffffffff
  and64 r2, r1
  mov64 r4, r0
  and64 r4, r1
  mov64 r7, r3
  rsh64 r7, 0x34
  and64 r7, 0x7ff
  mov64 r8, r0
  rsh64 r8, 0x34
  and64 r8, 0x7ff
  mov64 r5, r8
  add64 r5, -0x7ff
  mov64 r1, -0x7fe
  jgt r1, r5, jmp_4b3e8
  mov64 r9, 0x0
  mov64 r5, r7
  add64 r5, -0x7ff
  jgt r1, r5, jmp_4b3e8

jmp_4b2d0:
  stxdw [r10-0x18], r6
  lsh64 r2, 0xb
  lddw r1, -0x8000000000000000
  or64 r2, r1
  lddw r6, 0x10000000000000
  or64 r4, r6
  mov64 r1, r10
  add64 r1, -0x10
  mov64 r3, 0x0
  mov64 r5, 0x0
  call fn_4b0a0
  add64 r7, r8
  add64 r7, r9
  ldxdw r2, [r10-0x8]
  mov64 r3, r2
  and64 r3, r6
  ldxdw r1, [r10-0x10]
  jeq r3, 0x0, jmp_4b378
  ja jmp_4b468

jmp_4b378:
  lsh64 r2, 0x1
  mov64 r3, r1
  rsh64 r3, 0x3f
  or64 r2, r3
  lsh64 r1, 0x1
  add64 r7, -0x3ff
  ldxdw r5, [r10-0x18]
  jsgt r7, 0x7fe, jmp_4b3c0
  ja jmp_4b480

jmp_4b3c0:
  lddw r1, 0x7ff0000000000000
  or64 r5, r1
  mov64 r0, r5
  ja jmp_4b650

jmp_4b3e8:
  lddw r9, 0x7fffffffffffffff
  mov64 r5, r0
  and64 r5, r9
  lddw r1, 0x7ff0000000000000
  jgt r5, r1, jmp_4b4c0
  mov64 r0, r3
  and64 r0, r9
  jgt r0, r1, jmp_4b440
  ja jmp_4b4e0

jmp_4b440:
  lddw r1, 0x8000000000000
  or64 r3, r1
  mov64 r0, r3
  ja jmp_4b650

jmp_4b468:
  add64 r7, -0x3fe
  ldxdw r5, [r10-0x18]
  jsgt r7, 0x7fe, jmp_4b3c0

jmp_4b480:
  mov64 r3, 0x1
  jsgt r3, r7, jmp_4b528
  lddw r3, 0xfffffffffffff
  and64 r2, r3
  lsh64 r7, 0x34
  or64 r7, r2
  ja jmp_4b5f8

jmp_4b4c0:
  lddw r1, 0x8000000000000
  or64 r0, r1
  ja jmp_4b650

jmp_4b4e0:
  jeq r5, r1, jmp_4b4f0
  ja jmp_4b550

jmp_4b4f0:
  mov64 r1, r0
  lddw r0, 0x7ff8000000000000
  jeq r1, 0x0, jmp_4b650
  lddw r1, 0x7ff0000000000000
  ja jmp_4b578

jmp_4b528:
  sub64 r3, r7
  jgt r3, 0x3f, jmp_4b540
  ja jmp_4b590

jmp_4b540:
  mov64 r0, r5
  ja jmp_4b650

jmp_4b550:
  jeq r0, r1, jmp_4b560
  ja jmp_4b658

jmp_4b560:
  lddw r0, 0x7ff8000000000000
  jeq r5, 0x0, jmp_4b650

jmp_4b578:
  or64 r6, r1

jmp_4b580:
  mov64 r0, r6
  ja jmp_4b650

jmp_4b590:
  add64 r7, 0x3f
  lsh64 r7, 0x20
  rsh64 r7, 0x20
  mov64 r4, r2
  or64 r4, r1
  lsh64 r4, r7
  lsh64 r3, 0x20
  rsh64 r3, 0x20
  rsh64 r1, r3
  or64 r4, r1
  rsh64 r2, r3
  mov64 r1, r4
  mov64 r7, r2

jmp_4b5f8:
  mov64 r0, r7
  or64 r0, r5
  lddw r2, -0x8000000000000000
  jgt r1, r2, jmp_4b628
  ja jmp_4b638

jmp_4b628:
  add64 r0, 0x1
  ja jmp_4b650

jmp_4b638:
  jne r1, r2, jmp_4b650
  and64 r7, 0x1
  add64 r0, r7

jmp_4b650:
  exit

jmp_4b658:
  jeq r5, 0x0, jmp_4b580
  jeq r0, 0x0, jmp_4b580
  mov64 r9, 0x0
  lddw r1, 0x10000000000000
  jgt r1, r5, jmp_4b690
  ja jmp_4b820

jmp_4b690:
  mov64 r5, 0x40
  jeq r4, 0x0, jmp_4b7f8
  mov64 r1, r4
  rsh64 r1, 0x1
  mov64 r3, r4
  or64 r3, r1
  mov64 r1, r3
  rsh64 r1, 0x2
  or64 r3, r1
  mov64 r1, r3
  rsh64 r1, 0x4
  or64 r3, r1
  mov64 r1, r3
  rsh64 r1, 0x8
  or64 r3, r1
  mov64 r1, r3
  rsh64 r1, 0x10
  or64 r3, r1
  mov64 r1, r3
  rsh64 r1, 0x20
  or64 r3, r1
  xor64 r3, -0x1
  lddw r1, 0x5555555555555555
  mov64 r5, r3
  rsh64 r5, 0x1
  and64 r5, r1
  sub64 r3, r5
  lddw r1, 0x3333333333333333
  mov64 r5, r3
  and64 r5, r1
  rsh64 r3, 0x2
  and64 r3, r1
  add64 r5, r3
  mov64 r1, r5
  rsh64 r1, 0x4
  add64 r5, r1
  lddw r1, 0xf0f0f0f0f0f0f0f
  and64 r5, r1
  lddw r1, 0x101010101010101
  mul64 r5, r1
  rsh64 r5, 0x38

jmp_4b7f8:
  mov64 r9, 0xc
  sub64 r9, r5
  add64 r5, 0x35
  and64 r5, 0x3f
  lsh64 r4, r5

jmp_4b820:
  lddw r1, 0xfffffffffffff
  jgt r0, r1, jmp_4b2d0
  mov64 r3, 0x40
  jeq r2, 0x0, jmp_4b9a0
  mov64 r3, r2
  rsh64 r3, 0x1
  mov64 r1, r2
  or64 r1, r3
  mov64 r3, r1
  rsh64 r3, 0x2
  or64 r1, r3
  mov64 r3, r1
  rsh64 r3, 0x4
  or64 r1, r3
  mov64 r3, r1
  rsh64 r3, 0x8
  or64 r1, r3
  mov64 r3, r1
  rsh64 r3, 0x10
  or64 r1, r3
  mov64 r3, r1
  rsh64 r3, 0x20
  or64 r1, r3
  xor64 r1, -0x1
  lddw r3, 0x5555555555555555
  mov64 r5, r1
  rsh64 r5, 0x1
  and64 r5, r3
  sub64 r1, r5
  lddw r5, 0x3333333333333333
  mov64 r3, r1
  and64 r3, r5
  rsh64 r1, 0x2
  and64 r1, r5
  add64 r3, r1
  mov64 r1, r3
  rsh64 r1, 0x4
  add64 r3, r1
  lddw r1, 0xf0f0f0f0f0f0f0f
  and64 r3, r1
  lddw r1, 0x101010101010101
  mul64 r3, r1
  rsh64 r3, 0x38

jmp_4b9a0:
  sub64 r9, r3
  add64 r3, 0x35
  and64 r3, 0x3f
  lsh64 r2, r3
  add64 r9, 0xc
  ja jmp_4b2d0

fn_4b9d0:
  lddw r0, 0xffffffff
  lddw r5, 0x7fffffffffffffff
  mov64 r3, r1
  and64 r3, r5
  lddw r6, 0x7ff0000000000000
  jgt r3, r6, jmp_4bac8
  mov64 r4, r2
  and64 r4, r5
  jgt r4, r6, jmp_4bac8
  or64 r4, r3
  mov64 r0, 0x0
  jeq r4, 0x0, jmp_4bac8
  mov64 r3, r2
  and64 r3, r1
  jsgt r3, -0x1, jmp_4ba90
  lddw r0, 0xffffffff
  jsgt r1, r2, jmp_4bac8
  mov64 r0, 0x1
  jeq r1, r2, jmp_4bac0
  ja jmp_4bac8

jmp_4ba90:
  lddw r0, 0xffffffff
  jsgt r2, r1, jmp_4bac8
  mov64 r0, 0x1
  jeq r1, r2, jmp_4bac0
  ja jmp_4bac8

jmp_4bac0:
  mov64 r0, 0x0

jmp_4bac8:
  lsh64 r0, 0x20
  arsh64 r0, 0x20
  exit

fn_4bae0:
  lddw r0, 0xffffffff
  lddw r5, 0x7fffffffffffffff
  mov64 r3, r1
  and64 r3, r5
  lddw r6, 0x7ff0000000000000
  jgt r3, r6, jmp_4bbd8
  mov64 r4, r2
  and64 r4, r5
  jgt r4, r6, jmp_4bbd8
  or64 r4, r3
  mov64 r0, 0x0
  jeq r4, 0x0, jmp_4bbd8
  mov64 r3, r2
  and64 r3, r1
  jsgt r3, -0x1, jmp_4bba0
  lddw r0, 0xffffffff
  jsgt r1, r2, jmp_4bbd8
  mov64 r0, 0x1
  jeq r1, r2, jmp_4bbd0
  ja jmp_4bbd8

jmp_4bba0:
  lddw r0, 0xffffffff
  jsgt r2, r1, jmp_4bbd8
  mov64 r0, 0x1
  jeq r1, r2, jmp_4bbd0
  ja jmp_4bbd8

jmp_4bbd0:
  mov64 r0, 0x0

jmp_4bbd8:
  lsh64 r0, 0x20
  arsh64 r0, 0x20
  exit

fn_4bbf0:
  mov64 r6, r2
  mov64 r7, r1
  arsh64 r1, 0x3f
  mov64 r2, r7
  xor64 r2, r1
  sub64 r2, r1
  mov64 r1, r6
  arsh64 r1, 0x3f
  mov64 r3, r6
  xor64 r3, r1
  sub64 r3, r1
  mov64 r1, r10
  add64 r1, -0x10
  call fn_4ac18
  xor64 r6, r7
  mov64 r2, 0x0
  ldxdw r1, [r10-0x10]
  mov64 r0, r1
  neg64 r0
  jsgt r2, r6, jmp_4bc98
  mov64 r0, r1

jmp_4bc98:
  exit

fn_4bca0:
  mov64 r5, r4
  and64 r5, 0x40
  jne r5, 0x0, jmp_4bd18
  jeq r4, 0x0, jmp_4bd38
  mov64 r5, r4
  and64 r5, 0x3f
  rsh64 r2, r5
  neg64 r4
  and64 r4, 0x3f
  mov64 r0, r3
  lsh64 r0, r4
  or64 r0, r2
  rsh64 r3, r5
  mov64 r2, r0
  ja jmp_4bd38

jmp_4bd18:
  and64 r4, 0x3f
  rsh64 r3, r4
  mov64 r2, r3
  mov64 r3, 0x0

jmp_4bd38:
  stxdw [r1+0x8], r3
  stxdw [r1+0x0], r2
  exit

fn_4bd50:
  mov64 r6, r1
  mov64 r1, r10
  add64 r1, -0x20
  call fn_497c8
  ldxdw r1, [r10-0x10]
  ldxdw r2, [r10-0x8]
  stxdw [r6+0x8], r2
  stxdw [r6+0x0], r1
  exit

fn_4bd98:
  mov64 r0, 0x0
  jeq r1, 0x0, jmp_4bf88
  mov64 r3, r1
  rsh64 r3, 0x1
  mov64 r2, r1
  or64 r2, r3
  mov64 r3, r2
  rsh64 r3, 0x2
  or64 r2, r3
  mov64 r3, r2
  rsh64 r3, 0x4
  or64 r2, r3
  mov64 r3, r2
  rsh64 r3, 0x8
  or64 r2, r3
  mov64 r3, r2
  rsh64 r3, 0x10
  or64 r2, r3
  mov64 r3, r2
  rsh64 r3, 0x20
  or64 r2, r3
  xor64 r2, -0x1
  lddw r3, 0x5555555555555555
  mov64 r4, r2
  rsh64 r4, 0x1
  and64 r4, r3
  sub64 r2, r4
  lddw r4, 0x3333333333333333
  mov64 r3, r2
  and64 r3, r4
  rsh64 r2, 0x2
  and64 r2, r4
  add64 r3, r2
  mov64 r2, r3
  rsh64 r2, 0x4
  add64 r3, r2
  lddw r2, 0xf0f0f0f0f0f0f0f
  and64 r3, r2
  lddw r2, 0x101010101010101
  mul64 r3, r2
  rsh64 r3, 0x38
  lsh64 r1, r3
  lsh64 r3, 0x34
  mov64 r2, r1
  rsh64 r2, 0xb
  mov64 r0, r2
  sub64 r0, r3
  xor64 r2, -0x1
  lsh64 r1, 0x35
  mov64 r3, r1
  rsh64 r3, 0x3f
  and64 r3, r2
  sub64 r1, r3
  rsh64 r1, 0x3f
  add64 r0, r1
  lddw r1, 0x43d0000000000000
  add64 r0, r1

jmp_4bf88:
  exit

fn_4bf90:
  call fn_4b200
  exit

fn_4bfa0:
  lddw r3, 0x7fffffffffffffff
  and64 r1, r3
  and64 r2, r3
  mov64 r0, 0x1
  lddw r4, 0x7ff0000000000000
  mov64 r3, 0x1
  jgt r2, r4, jmp_4bff0
  mov64 r3, 0x0

jmp_4bff0:
  jgt r1, r4, jmp_4c000
  mov64 r0, 0x0

jmp_4c000:
  or64 r0, r3
  exit

fn_4c010:
  mov64 r0, 0x1
  lddw r5, 0x7fffffffffffffff
  mov64 r3, r1
  and64 r3, r5
  lddw r6, 0x7ff0000000000000
  jgt r3, r6, jmp_4c100
  mov64 r4, r2
  and64 r4, r5
  jgt r4, r6, jmp_4c100
  or64 r4, r3
  mov64 r0, 0x0
  jeq r4, 0x0, jmp_4c100
  mov64 r3, r2
  and64 r3, r1
  jsgt r3, -0x1, jmp_4c0c8
  lddw r0, 0xffffffff
  jsgt r1, r2, jmp_4c100
  mov64 r0, 0x1
  jeq r1, r2, jmp_4c0f8
  ja jmp_4c100

jmp_4c0c8:
  lddw r0, 0xffffffff
  jsgt r2, r1, jmp_4c100
  mov64 r0, 0x1
  jeq r1, r2, jmp_4c0f8
  ja jmp_4c100

jmp_4c0f8:
  mov64 r0, 0x0

jmp_4c100:
  lsh64 r0, 0x20
  arsh64 r0, 0x20
  exit

fn_4c118:
  mov64 r5, r4
  and64 r5, 0x40
  jne r5, 0x0, jmp_4c188
  jeq r4, 0x0, jmp_4c1a8
  mov64 r5, r4
  and64 r5, 0x3f
  lsh64 r3, r5
  neg64 r4
  and64 r4, 0x3f
  mov64 r0, r2
  rsh64 r0, r4
  or64 r3, r0
  lsh64 r2, r5
  ja jmp_4c1a8

jmp_4c188:
  and64 r4, 0x3f
  mov64 r3, r2
  lsh64 r3, r4
  mov64 r2, 0x0

jmp_4c1a8:
  stxdw [r1+0x8], r3
  stxdw [r1+0x0], r2
  exit

.rodata
  str_0000: .ascii "invalid value: , expected invalid length "
  str_0029: .ascii "an array of length 32src/de/mod.rsvariant index 0 <= i < 13struct variant SystemInstruction::AllocateWithSeed with 4 elementsstruct variant SystemInstruction::AssignWithSeed with 3 elementsstruct variant SystemInstruction::CreateAccountWithSeed with 5 elementsstruct variant SystemInstruction::TransferWithSeed with 3 elementsfailed to fill whole bufferfailed to write whole buffer"
  str_01a6: .ascii "()"
  str_01a8: .ascii "a Display implementation returned an error unexpectedly/home/runner/work/platform-tools/platform-tools/out/rust/library/alloc/src/string.rssrc/encode.rs"
  str_0240: .ascii "called `Result::unwrap()` on an `Err` value"
  str_026b: .ascii "Unexpected length of inputInvalid bool representation: "
  str_02a2: .ascii "Error"
  str_02a7: .ascii "BufferTooSmall"
  str_02b5: .ascii "Not all bytes read"
  str_02c7: .ascii "Utf8Error"
  str_02d0: .ascii "valid_up_to"
  str_02db: .ascii "error_len"
  str_02e4: .ascii "FromUtf8Error"
  str_02f1: .ascii "bytes"
  str_02f6: .ascii "error"
  str_02fb: .ascii "code"
  str_02ff: .ascii "Kind"
  str_0303: .ascii "kind"
  str_0307: .ascii "Some <= "
  str_030f: .ascii "true"
  str_0313: .ascii "enum"
  str_0317: .ascii "None"
  str_031b: .ascii "    "
  data_031f: .byte 0x54, 0x72, 0x79, 0x46, 0x72, 0x6f, 0x6d, 0x49, 0x6e, 0x74, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x4f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x72, 0x65, 0x70, 0x72, 0x65, 0x73, 0x65, 0x6e, 0x74, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x3a, 0x20, 0x2e, 0x20, 0x54, 0x68, 0x65, 0x20, 0x66, 0x69, 0x72, 0x73, 0x74, 0x20, 0x62, 0x79, 0x74, 0x65, 0x20, 0x6d, 0x75, 0x73, 0x74, 0x20, 0x62, 0x65, 0x20, 0x30, 0x20, 0x6f, 0x72, 0x20, 0x31, 0x00, 0x00, 0x00, 0x00, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 0x74, 0x68, 0x65, 0x20, 0x6c, 0x65, 0x6e, 0x20, 0x69, 0x73, 0x20
  data_0390: .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_03b0: .byte 0xf1, 0x0c, 0x50, 0x6f, 0xdf, 0x7a, 0xa9, 0x3e, 0x5d, 0x50, 0xa7, 0x32, 0x66, 0x95, 0x58, 0x03, 0x02, 0x7f, 0x45, 0x5a, 0xbe, 0x2f, 0x18, 0x31, 0x0c, 0x05, 0xce, 0x2f, 0xa5, 0x20, 0x4d, 0x49
  data_03d0: .quad 0x00000031305f4341
  str_03d8: .ascii "connection resetassertion `left ) when slicing `src/processor.rs"
  str_0418: .ascii "entity not found"
  str_0428: .ascii "host unreachable"
  str_0438: .ascii "invalid filenamesrc/utils/set.rsrange end index "
  data_0468: .byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  str_0478: .ascii "PermissionDenied"
  str_0488: .ascii "no storage space"
  str_0498: .ascii "AddrNotAvailable right` failed: floating point `"
  str_04c8: .ascii "0123456789abcdef"
  str_04d8: .ascii "AC_03"
  str_04dd: .ascii "AC_02S-00: "
  data_04e8: .byte 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0xff, 0x11, 0x12, 0x13, 0x14, 0x15, 0xff, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0xff, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0xff, 0xff, 0xff, 0xff, 0xff, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a
  str_05a2: .ascii "AC_04src/utils/batch_clock.rs"
  data_05bf: .byte 0x47, 0x99, 0x1d, 0xc8, 0xec, 0x65, 0x96, 0x39, 0xdc, 0x69, 0xc6, 0xdc, 0x13, 0xce, 0x67, 0xc8, 0x97, 0x51, 0x75, 0x16, 0xa8, 0xca, 0x7e, 0x61, 0x1a, 0x3a, 0x05, 0xf8, 0x0d, 0xab, 0x5f, 0x0a, 0xff, 0x83, 0xf1, 0xf0, 0x78, 0x08, 0x25, 0xf4, 0xe7, 0x9c, 0xba, 0x02, 0x60, 0x65, 0x62, 0x47, 0x1a, 0xe5, 0xda, 0xed, 0xcf, 0x66, 0xba, 0x82, 0x81, 0xb3, 0xfd, 0x54, 0x63, 0x4a, 0xec, 0x9c, 0x89, 0xfe, 0x77, 0xa8, 0x67, 0x64, 0x14, 0x21, 0xc8, 0x07, 0xe3, 0xbc, 0xb1, 0xba, 0x67, 0x45, 0xc7, 0x3c, 0x33, 0xd8, 0xc6, 0xb0, 0x18, 0xe5, 0xb9, 0xef, 0x4d, 0xeb, 0xfd, 0x1c, 0xa0, 0xc7, 0xb3, 0xcd, 0xfd, 0xad, 0xf3, 0xf4, 0x19, 0x41, 0x26, 0x2b, 0xe8, 0x17, 0xbc, 0xc7, 0xb6, 0xe7, 0x22, 0xd5, 0x0d, 0x3b, 0xdc, 0x3e, 0x09, 0xb4, 0x6a, 0x19, 0x82, 0x65, 0x80, 0x40, 0x18, 0x5d, 0xc3, 0x91, 0xdc, 0xff, 0x50, 0x32, 0x80, 0x9e, 0xf6, 0x0d, 0x71, 0xfd, 0xeb, 0x82, 0x39, 0x61, 0xef, 0x64, 0x34, 0xc9, 0x71, 0xa4, 0xbc, 0x86, 0x3d, 0x5b, 0x61, 0x33, 0x6a, 0xcf, 0x2f, 0x55, 0xd6, 0x78, 0xc3, 0x62, 0xfd, 0xe6, 0xf6, 0x03, 0xcd, 0x41, 0xaf, 0x0e, 0xc4, 0x7a, 0x72, 0xdd, 0x33, 0x4e, 0xa0, 0x8a, 0x31, 0xc2, 0x63, 0xc3, 0xc8, 0x89, 0x79, 0xb2, 0xac, 0x52, 0x84, 0x8a, 0x8d, 0xe6, 0x80, 0x52, 0xd4, 0xfe, 0xa3, 0x0a, 0x61, 0x85, 0xe8, 0xda, 0xf0, 0x36, 0xae, 0x46, 0xcb, 0xa9, 0x90, 0x9a, 0x95, 0x3c, 0x6a, 0x0e, 0x8b, 0x75, 0x5f, 0xba, 0xb9, 0xce, 0x07, 0x54, 0xfb, 0xc9, 0xc0, 0x21, 0x22, 0x7e, 0xff, 0x49, 0x85, 0xf0, 0x09, 0x38, 0x2c, 0x59, 0xaa, 0xdd, 0xb9, 0x0d, 0x9d, 0x13, 0x22, 0x42, 0x78, 0x41, 0x2a, 0xfb, 0x84, 0xc4, 0xcb, 0x71, 0x58, 0x0e, 0xe3, 0xa4, 0xa3, 0xab, 0x34, 0x5a, 0x41, 0xff, 0xda, 0x6c, 0x5d, 0x78, 0xa9, 0x26, 0x5f, 0xb7, 0xaf, 0xe6, 0x82, 0xac, 0xda, 0x74, 0xa6, 0xe6, 0x00, 0x30, 0x15, 0xa9, 0x26, 0xc9, 0x3c, 0xae, 0x61, 0xa8, 0x0a, 0xec, 0x66, 0x3d, 0xe9, 0x31, 0xfe, 0x13, 0x37, 0x06, 0xad, 0x07, 0x84, 0x91, 0xf1, 0xf6, 0xcc, 0x85, 0x67, 0x76, 0x6c, 0x9d, 0xd2, 0x89, 0x8e, 0x55, 0x08, 0xe4, 0xb2, 0xfb, 0x4b, 0xdb, 0x10, 0x5e, 0x2a, 0x42, 0x9a, 0x46, 0xe0, 0xff, 0xf6, 0xf7, 0xfd, 0x73, 0xf8, 0x20, 0x81, 0x56, 0xed, 0xd7, 0xa1, 0x47, 0x2c, 0xeb, 0xf0, 0x70, 0xea, 0xa6, 0x52, 0x10, 0x71, 0x75, 0xdf, 0xaa, 0xf6, 0x68, 0xe9, 0x09, 0xa1, 0x43, 0x3d, 0x6d, 0xff, 0x1f, 0x6e, 0xdc, 0x42, 0x63, 0x94, 0xb6, 0x28, 0x28, 0x71, 0x8e, 0xf1, 0xfa, 0xa5, 0xb5, 0x49, 0xd5, 0x2b, 0xfd, 0xab, 0x80, 0xbd, 0xb1, 0x56, 0x55, 0x75, 0x55, 0xf5, 0xf7, 0x46, 0x1b, 0x6c, 0xff, 0x4c, 0x3b, 0xa8, 0x0f, 0x3f, 0x71, 0xf1, 0xe6, 0x5c, 0x80, 0xdb, 0x3b, 0xad, 0x9c, 0xe2, 0x8a, 0x1c, 0x82, 0xa2, 0xb2, 0x06, 0x7c, 0xe8, 0xcc, 0xb8, 0x04, 0x56, 0xb3, 0x11, 0x0e, 0x3c, 0x7a, 0xfe, 0x37, 0xd7, 0x92, 0xe8, 0x07, 0x5b, 0xa4, 0x0a, 0x62, 0x0c, 0x95, 0xc8, 0x7a, 0x3d, 0xe3, 0x77, 0xfb, 0x51, 0x2a, 0x86, 0x8e, 0xa0, 0xd7, 0x0f, 0xd9, 0x8b, 0x86, 0xcc, 0xb4, 0x38, 0xfe, 0xc0, 0xff
  data_078d: .byte 0xd5, 0x0a, 0x12, 0x1b, 0xd7, 0x65, 0x7c, 0x55, 0x29, 0xef, 0xcf, 0x84, 0x26, 0x85, 0x91, 0x76, 0x96, 0x65, 0x8e, 0x29, 0x22, 0xe6, 0xfc, 0x4a, 0xe9, 0x4a, 0xbe, 0x0e, 0x98, 0xc7, 0x0f, 0x8f, 0xff, 0xd0, 0xcd, 0x33, 0x59, 0x9d, 0x1d, 0x2f, 0xbd, 0xef, 0x85, 0x0a, 0x0b, 0xa7, 0xbb, 0x15, 0x0f, 0x33, 0xa8, 0xae, 0x88, 0x14, 0x47, 0xf1, 0xc4, 0xdf, 0x2f, 0x6f, 0x96, 0xae, 0x22, 0x99, 0x6c, 0xfe, 0xde, 0x18, 0x3a, 0x93, 0x46, 0x8a, 0x09, 0x3c, 0x23, 0x14, 0x10, 0x44, 0x18, 0x35, 0x7d, 0xc2, 0xf8, 0x2c, 0xbd, 0xc8, 0xbd, 0x1b, 0xd8, 0x4b, 0x46, 0xce, 0xb1, 0x2a, 0x04, 0x00, 0x82, 0x64, 0xff, 0xac, 0xf3, 0x88, 0x54, 0xa5, 0xba, 0xdc, 0x0c, 0x3c, 0x3d, 0xf8, 0xfd, 0x5d, 0x8e, 0x10, 0x69, 0xf4, 0xb5, 0xf6, 0x47, 0x20, 0x4b, 0x10, 0x62, 0xe3, 0x7c, 0x40, 0x56, 0xad, 0x8e, 0x79, 0xb9, 0xfd, 0x1b, 0x3a, 0x1f, 0xd3, 0xa1, 0x11, 0xd0, 0x2b, 0x28, 0xdc, 0xb6, 0xc7, 0xae, 0x58, 0x4f, 0x9a, 0xdf, 0xec, 0x98, 0xb5, 0xb7, 0x3d, 0xb1, 0xc2, 0x9e, 0x27, 0xf9, 0xc3, 0x49, 0xde, 0xc0, 0x5c, 0xff, 0xc7, 0xb5, 0x49, 0xa2, 0x69, 0x4d, 0xe0, 0x9a, 0x59, 0xe0, 0xf5, 0xb6, 0x96, 0x0a, 0x7e, 0xac, 0x4a, 0x0c, 0x75, 0xd9, 0x0d, 0xc0, 0xd8, 0x6a, 0xd7, 0x9d, 0xcd, 0x7a, 0xa1, 0xc8, 0x84, 0x20, 0xff, 0xb7, 0xdb, 0x6d, 0x98, 0xbd, 0x4c, 0x21, 0x50, 0x93, 0x37, 0x8b, 0x68, 0x83, 0xfa, 0xe2, 0xad, 0x21, 0x8a, 0x8d, 0xea, 0x02, 0x40, 0xc7, 0x07, 0xd8, 0x44, 0xae, 0x9a, 0x0d, 0xca, 0x8e, 0x1e, 0xff, 0x82, 0xa4, 0x56, 0x43, 0x88, 0xba, 0x2a, 0xaf, 0xdf, 0x72, 0x29, 0xee, 0xde, 0x38, 0xf0, 0x2a, 0xad, 0xd9, 0xc8, 0xd4, 0x89, 0xdf, 0x81, 0xc1, 0xd2, 0x60, 0x7d, 0x31, 0x63, 0x23, 0xc4, 0x6b, 0xfe, 0x6a, 0x99, 0xe4, 0x9d, 0xc5, 0xbb, 0x3f, 0x01, 0xdd, 0x8e, 0x8b, 0x97, 0xab, 0xc3, 0xcc, 0xa3, 0xb2, 0xb8, 0xba, 0xff, 0xb5, 0xfc, 0xc1, 0x8d, 0xb5, 0x53, 0xb4, 0xa4, 0x29, 0x11, 0xe0, 0x75, 0xff, 0x7c, 0x70, 0x54, 0x5f, 0xab, 0x5a, 0xd7, 0x67, 0x1c, 0x0c, 0xa3, 0xc6, 0x68, 0xdd, 0x78, 0x66, 0xf6, 0xee, 0x9d, 0xf0, 0x0f, 0x35, 0xf3, 0xfa, 0xf2, 0x88, 0x31, 0x72, 0x28, 0xdd, 0x96, 0xd3, 0xfe, 0x0c, 0xa0, 0xc2, 0xcd, 0x96, 0xdc, 0x8c, 0xde, 0xe3, 0x8a, 0x49, 0xf4, 0x29, 0x81, 0x1b, 0xdc, 0x37, 0xa8, 0x3f, 0x61, 0xb7, 0x49, 0x4f, 0x9b, 0xeb, 0x1e, 0xc8, 0xae, 0x43, 0x01, 0xd2, 0x5e, 0xff, 0x8e, 0x9a, 0xbf, 0xfd, 0x53, 0x1d, 0xf7, 0x06, 0x06, 0x6f, 0x96, 0x9e, 0x33, 0xfc, 0x0f, 0x40, 0x23, 0x8b, 0xa4, 0xe4, 0x1b, 0xaf, 0xf3, 0xe9, 0xe7, 0x99, 0xb2, 0x6d, 0x18, 0xd9, 0xb4, 0x4b, 0xff, 0x97, 0xde, 0x90, 0x95, 0xa8, 0xbd, 0x0c, 0xed, 0x45, 0x56, 0x13, 0xda, 0x1e, 0xec, 0x22, 0xeb, 0x71, 0x87, 0x06, 0xa4, 0xd7, 0xf7, 0x3a, 0x7a, 0x2e, 0x76, 0x9f, 0xc2, 0xf4, 0xbb, 0x03, 0x55, 0xff, 0x6b, 0xdf, 0xa3, 0xbe, 0x22, 0xe8, 0xe8, 0x6f, 0x44, 0xdd, 0xfb, 0x15, 0x8b, 0x57, 0x26, 0x91, 0x00, 0x7a, 0x11, 0xe5, 0x8d, 0xa9, 0xba, 0x6d, 0x13, 0x0d, 0xdd, 0xe4, 0x8c, 0xf7, 0x53, 0x52, 0xfd, 0x73, 0x72, 0x63, 0x2f, 0x75, 0x74, 0x69, 0x6c, 0x73, 0x2f, 0x73, 0x77, 0x61, 0x70, 0x5f, 0x6d, 0x61, 0x74, 0x68, 0x2e, 0x72, 0x73, 0x73, 0x72, 0x63, 0x2f, 0x65, 0x6e, 0x74, 0x72, 0x79, 0x70, 0x6f, 0x69, 0x6e, 0x74, 0x2e, 0x72, 0x73, 0x55, 0x6e, 0x65, 0x78, 0x70, 0x65, 0x63, 0x74, 0x65, 0x64, 0x20, 0x76, 0x61, 0x72, 0x69, 0x61, 0x6e, 0x74, 0x20, 0x74, 0x61, 0x67, 0x3a, 0x20
  data_099a: .byte 0x69, 0x6e, 0x74, 0x65, 0x72, 0x6e, 0x61, 0x6c, 0x20, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x65, 0x6e, 0x74, 0x65, 0x72, 0x65, 0x64, 0x20, 0x75, 0x6e, 0x72, 0x65, 0x61, 0x63, 0x68, 0x61, 0x62, 0x6c, 0x65, 0x20, 0x63, 0x6f, 0x64, 0x65, 0x73, 0x72, 0x63, 0x2f, 0x69, 0x6e, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x2e, 0x72, 0x73, 0x00, 0x00, 0x00, 0x00
  data_09d8: .byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x73, 0x72, 0x63, 0x2f, 0x73, 0x74, 0x61, 0x74, 0x65, 0x2e, 0x72, 0x73, 0x73, 0x72, 0x63, 0x2f, 0x6c, 0x69, 0x62, 0x2e, 0x72, 0x73, 0x73, 0x72, 0x63, 0x2f, 0x6c, 0x69, 0x62, 0x2e, 0x72, 0x73, 0x73, 0x72, 0x63, 0x2f, 0x6c, 0x69, 0x62, 0x2e, 0x72, 0x73, 0x73, 0x72, 0x63, 0x2f, 0x6c, 0x69, 0x62, 0x2e, 0x72, 0x73
  str_0a5c: .ascii "called `Result::unwrap()` on an `Err` valuesrc/lib.rs"
  str_0a91: .ascii "Io"
  str_0a93: .ascii "InvalidUtf8Encoding"
  str_0aa6: .ascii "InvalidBoolEncoding"
  str_0ab9: .ascii "InvalidCharEncoding"
  str_0acc: .ascii "InvalidTagEncoding"
  str_0ade: .ascii "DeserializeAnyNotSupported"
  str_0af8: .ascii "SizeLimit"
  str_0b01: .ascii "SequenceMustHaveLength"
  str_0b17: .ascii "Custom"
  str_0b1d: .ascii "Utf8Error"
  str_0b26: .ascii "valid_up_to"
  str_0b31: .ascii "error_lensrc/encode.rs"
  str_0b47: .ascii "BufferTooSmall"
  str_0b55: .ascii "Utf8Error"
  str_0b5e: .ascii "valid_up_to"
  str_0b69: .ascii "error_lensrc/lib.rs"
  data_0b7c: .byte 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0xff, 0x11, 0x12, 0x13, 0x14, 0x15, 0xff, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0xff, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0xff, 0xff, 0xff, 0xff, 0xff, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x55, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x20, 0x74, 0x6f, 0x20, 0x66, 0x69, 0x6e, 0x64, 0x20, 0x61, 0x20, 0x76, 0x69, 0x61, 0x62, 0x6c, 0x65, 0x20, 0x70, 0x72, 0x6f, 0x67, 0x72, 0x61, 0x6d, 0x20, 0x61, 0x64, 0x64, 0x72, 0x65, 0x73, 0x73, 0x20, 0x62, 0x75, 0x6d, 0x70, 0x20, 0x73, 0x65, 0x65, 0x64
  str_0c67: .ascii "called `Result::unwrap()` on an `Err` value"
  str_0c92: .ascii "sequence"
  str_0c9a: .ascii "NotFound"
  str_0ca2: .ascii "TimedOut (bytes "
  str_0cb2: .ascii "Deadlock"
  str_0cba: .ascii "deadlock"
  str_0cc2: .ascii "byte arrayboolean ``integer `character `string "
  str_0cf1: .ascii "unit value"
  str_0cfb: .ascii "Option value"
  str_0d07: .ascii "newtype struct"
  str_0d15: .ascii "map"
  str_0d18: .ascii "unit variant"
  str_0d24: .ascii "newtype variant"
  str_0d33: .ascii "tuple variant"
  str_0d40: .ascii "struct variant"
  str_0d4e: .ascii ".0"
  str_0d50: .ascii "permission denied"
  str_0d61: .ascii "connection refused"
  str_0d73: .ascii "network unreachable"
  str_0d86: .ascii "connection aborted"
  str_0d98: .ascii "not connected"
  str_0da5: .ascii "address in use"
  str_0db3: .ascii "address not available"
  str_0dc8: .ascii "network down"
  str_0dd4: .ascii "broken pipe"
  str_0ddf: .ascii "entity already exists"
  str_0df4: .ascii "operation would block"
  str_0e09: .ascii "not a directory"
  str_0e18: .ascii "is a directory"
  str_0e26: .ascii "directory not empty"
  str_0e39: .ascii "read-only filesystem or storage medium"
  str_0e5f: .ascii "filesystem loop or indirection limit (e.g. symlink loop)"
  str_0e97: .ascii "stale network file handle"
  str_0eb0: .ascii "invalid input parameter"
  str_0ec7: .ascii "invalid data"
  str_0ed3: .ascii "timed out"
  str_0edc: .ascii "write zero"
  str_0ee6: .ascii "seek on unseekable file"
  str_0efd: .ascii "filesystem quota exceeded"
  str_0f16: .ascii "file too large"
  str_0f24: .ascii "resource busy"
  str_0f31: .ascii "executable file busy"
  str_0f45: .ascii "cross-device link or rename"
  str_0f60: .ascii "too many links"
  str_0f6e: .ascii "argument list too long"
  str_0f84: .ascii "operation interrupted"
  str_0f99: .ascii "unsupported"
  str_0fa4: .ascii "unexpected end of file"
  str_0fba: .ascii "out of memory"
  str_0fc7: .ascii "other error"
  str_0fd2: .ascii "uncategorized error"
  str_0fe5: .ascii "Os"
  str_0fe7: .ascii "message"
  str_0fee: .ascii "Error"
  str_0ff3: .ascii "Custom"
  str_0ff9: .ascii "error (os error )"
  str_100a: .ascii "ConnectionRefused"
  str_101b: .ascii "ConnectionReset"
  str_102a: .ascii "HostUnreachable"
  str_1039: .ascii "NetworkUnreachable"
  str_104b: .ascii "ConnectionAborted"
  str_105c: .ascii "NotConnected"
  str_1068: .ascii "AddrInUse"
  str_1071: .ascii "NetworkDown"
  str_107c: .ascii "BrokenPipe"
  str_1086: .ascii "AlreadyExists"
  str_1093: .ascii "WouldBlock"
  str_109d: .ascii "NotADirectory"
  str_10aa: .ascii "IsADirectory"
  str_10b6: .ascii "DirectoryNotEmpty"
  str_10c7: .ascii "ReadOnlyFilesystem"
  str_10d9: .ascii "FilesystemLoop"
  str_10e7: .ascii "StaleNetworkFileHandle"
  str_10fd: .ascii "InvalidInput"
  str_1109: .ascii "InvalidData"
  str_1114: .ascii "WriteZero"
  str_111d: .ascii "StorageFull"
  str_1128: .ascii "NotSeekable"
  str_1133: .ascii "FilesystemQuotaExceeded"
  str_114a: .ascii "FileTooLarge"
  str_1156: .ascii "ResourceBusy"
  str_1162: .ascii "ExecutableFileBusy"
  str_1174: .ascii "CrossesDevices"
  str_1182: .ascii "TooManyLinks"
  str_118e: .ascii "InvalidFilename"
  str_119d: .ascii "ArgumentListTooLong"
  str_11b0: .ascii "Interrupted"
  str_11bb: .ascii "Unsupported"
  str_11c6: .ascii "UnexpectedEof"
  str_11d3: .ascii "OutOfMemory"
  str_11de: .ascii "Other"
  str_11e3: .ascii "Uncategorized"
  str_11f0: .ascii "Error: memory allocation failed, out of memory"
  str_121e: .ascii "Errorcapacity overflowlibrary/alloc/src/raw_vec.rs"
  str_1250: .ascii "a formatting trait implementation returned an errorlibrary/alloc/src/fmt.rs"
  data_129b: .byte 0x61, 0x73, 0x73, 0x65, 0x72, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x66, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x3a, 0x20, 0x65, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x20, 0x3e, 0x3d, 0x20, 0x30, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2f, 0x63, 0x6f, 0x72, 0x65, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x6e, 0x75, 0x6d, 0x2f, 0x64, 0x69, 0x79, 0x5f, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x2e, 0x72, 0x73, 0x00, 0x00, 0x00
  data_12dc: .byte 0x02, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0xc8, 0x00, 0x00, 0x00, 0xd0, 0x07, 0x00, 0x00, 0x20, 0x4e, 0x00, 0x00, 0x40, 0x0d, 0x03, 0x00, 0x80, 0x84, 0x1e, 0x00, 0x00, 0x2d, 0x31, 0x01, 0x00, 0xc2, 0xeb, 0x0b, 0x00, 0x94, 0x35, 0x77
  data_1304: .quad 0x002386f26fc10000
  data_130c: .byte 0x00, 0x00, 0x00, 0x00, 0x81, 0xef, 0xac, 0x85, 0x5b, 0x41, 0x6d, 0x2d, 0xee, 0x04, 0x00, 0x00
  data_131c: .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x1f, 0x6a, 0xbf, 0x64, 0xed, 0x38, 0x6e, 0xed, 0x97, 0xa7, 0xda, 0xf4, 0xf9, 0x3f, 0xe9, 0x03, 0x4f, 0x18, 0x00
  data_1338: .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x3e, 0x95, 0x2e, 0x09, 0x99, 0xdf, 0x03, 0xfd, 0x38, 0x15, 0x0f, 0x2f, 0xe4, 0x74, 0x23, 0xec, 0xf5, 0xcf, 0xd3, 0x08, 0xdc, 0x04, 0xc4, 0xda, 0xb0, 0xcd, 0xbc, 0x19, 0x7f, 0x33, 0xa6, 0x03, 0x26, 0x1f, 0xe9, 0x4e, 0x02, 0x00, 0x00
  data_1370: .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x7c, 0x2e, 0x98, 0x5b, 0x87, 0xd3, 0xbe, 0x72, 0x9f, 0xd9, 0xd8, 0x87, 0x2f, 0x15, 0x12, 0xc6, 0x50, 0xde, 0x6b, 0x70, 0x6e, 0x4a, 0xcf, 0x0f, 0xd8, 0x95, 0xd5, 0x6e, 0x71, 0xb2, 0x26, 0xb0, 0x66, 0xc6, 0xad, 0x24, 0x36, 0x15, 0x1d, 0x5a, 0xd3, 0x42, 0x3c, 0x0e, 0x54, 0xff, 0x63, 0xc0, 0x73, 0x55, 0xcc, 0x17, 0xef, 0xf9, 0x65, 0xf2, 0x28, 0xbc, 0x55, 0xf7, 0xc7, 0xdc, 0x80, 0xdc, 0xed, 0x6e, 0xf4, 0xce, 0xef, 0xdc, 0x5f, 0xf7, 0x53, 0x05, 0x00, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2f, 0x63, 0x6f, 0x72, 0x65, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x6e, 0x75, 0x6d, 0x2f, 0x66, 0x6c, 0x74, 0x32, 0x64, 0x65, 0x63, 0x2f, 0x73, 0x74, 0x72, 0x61, 0x74, 0x65, 0x67, 0x79, 0x2f, 0x64, 0x72, 0x61, 0x67, 0x6f, 0x6e, 0x2e, 0x72, 0x73
  str_140b: .ascii "assertion failed: d.mant > 0"
  str_1427: .ascii "assertion failed: d.minus > 0"
  str_1444: .ascii "assertion failed: d.plus > 0"
  str_1460: .ascii "assertion failed: buf.len() >= MAX_SIG_DIGITS"
  str_148d: .ascii "assertion failed: d.mant.checked_sub(d.minus).is_some()"
  data_14c4: .byte 0x61, 0x73, 0x73, 0x65, 0x72, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x66, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x3a, 0x20, 0x64, 0x2e, 0x6d, 0x61, 0x6e, 0x74, 0x2e, 0x63, 0x68, 0x65, 0x63, 0x6b, 0x65, 0x64, 0x5f, 0x61, 0x64, 0x64, 0x28, 0x64, 0x2e, 0x70, 0x6c, 0x75, 0x73, 0x29, 0x2e, 0x69, 0x73, 0x5f, 0x73, 0x6f, 0x6d, 0x65, 0x28, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_1500: .byte 0xdf, 0x45, 0x1a, 0x3d, 0x03, 0xcf, 0x1a, 0xe6, 0xc1, 0xfb, 0xcc, 0xfe, 0x00, 0x00, 0x00, 0x00, 0xca, 0xc6, 0x9a, 0xc7, 0x17, 0xfe, 0x70, 0xab, 0xdc, 0xfb, 0xd4, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x4f, 0xdc, 0xbc, 0xbe, 0xfc, 0xb1, 0x77, 0xff, 0xf6, 0xfb, 0xdc, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x0c, 0xd6, 0x6b, 0x41, 0xef, 0x91, 0x56, 0xbe, 0x11, 0xfc, 0xe4, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x3c, 0xfc, 0x7f, 0x90, 0xad, 0x1f, 0xd0, 0x8d, 0x2c, 0xfc, 0xec, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x83, 0x9a, 0x55, 0x31, 0x28, 0x5c, 0x51, 0xd3, 0x46, 0xfc, 0xf4, 0xfe, 0x00, 0x00, 0x00, 0x00, 0xb5, 0xc9, 0xa6, 0xad, 0x8f, 0xac, 0x71, 0x9d, 0x61, 0xfc, 0xfc, 0xfe, 0x00, 0x00, 0x00, 0x00, 0xcb, 0x8b, 0xee, 0x23, 0x77, 0x22, 0x9c, 0xea, 0x7b, 0xfc, 0x04, 0xff, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x53, 0x78, 0x40, 0x91, 0x49, 0xcc, 0xae, 0x96, 0xfc, 0x0c, 0xff, 0x00, 0x00, 0x00, 0x00, 0x57, 0xce, 0xb6, 0x5d, 0x79, 0x12, 0x3c, 0x82, 0xb1, 0xfc, 0x14, 0xff, 0x00, 0x00, 0x00, 0x00, 0x37, 0x56, 0xfb, 0x4d, 0x36, 0x94, 0x10, 0xc2, 0xcb, 0xfc, 0x1c, 0xff, 0x00, 0x00, 0x00, 0x00, 0x4f, 0x98, 0x48, 0x38, 0x6f, 0xea, 0x96, 0x90, 0xe6, 0xfc, 0x24, 0xff, 0x00, 0x00, 0x00, 0x00, 0xc7, 0x3a, 0x82, 0x25, 0xcb, 0x85, 0x74, 0xd7, 0x00, 0xfd, 0x2c, 0xff, 0x00, 0x00, 0x00, 0x00, 0xf4, 0x97, 0xbf, 0x97, 0xcd, 0xcf, 0x86, 0xa0, 0x1b, 0xfd, 0x34, 0xff, 0x00, 0x00, 0x00, 0x00, 0xe5, 0xac, 0x2a, 0x17, 0x98, 0x0a, 0x34, 0xef, 0x35, 0xfd, 0x3c, 0xff, 0x00, 0x00, 0x00, 0x00, 0x8e, 0xb2, 0x35, 0x2a, 0xfb, 0x67, 0x38, 0xb2, 0x50, 0xfd, 0x44, 0xff, 0x00, 0x00, 0x00, 0x00, 0x3b, 0x3f, 0xc6, 0xd2, 0xdf, 0xd4, 0xc8, 0x84, 0x6b, 0xfd, 0x4c, 0xff, 0x00, 0x00, 0x00, 0x00, 0xba, 0xcd, 0xd3, 0x1a, 0x27, 0x44, 0xdd, 0xc5, 0x85, 0xfd, 0x54, 0xff, 0x00, 0x00, 0x00, 0x00, 0x96, 0xc9, 0x25, 0xbb, 0xce, 0x9f, 0x6b, 0x93, 0xa0, 0xfd, 0x5c, 0xff, 0x00, 0x00, 0x00, 0x00, 0x84, 0xa5, 0x62, 0x7d, 0x24, 0x6c, 0xac, 0xdb, 0xba, 0xfd, 0x64, 0xff, 0x00, 0x00, 0x00, 0x00, 0xf6, 0xda, 0x5f, 0x0d, 0x58, 0x66, 0xab, 0xa3, 0xd5, 0xfd, 0x6c, 0xff, 0x00, 0x00, 0x00, 0x00, 0x26, 0xf1, 0xc3, 0xde, 0x93, 0xf8, 0xe2, 0xf3, 0xef, 0xfd, 0x74, 0xff, 0x00, 0x00, 0x00, 0x00, 0xb8, 0x80, 0xff, 0xaa, 0xa8, 0xad, 0xb5, 0xb5, 0x0a, 0xfe, 0x7c, 0xff, 0x00, 0x00, 0x00, 0x00, 0x8b, 0x4a, 0x7c, 0x6c, 0x05, 0x5f, 0x62, 0x87, 0x25, 0xfe, 0x84, 0xff, 0x00, 0x00, 0x00, 0x00, 0x53, 0x30, 0xc1, 0x34, 0x60, 0xff, 0xbc, 0xc9, 0x3f, 0xfe, 0x8c, 0xff, 0x00, 0x00, 0x00, 0x00, 0x55, 0x26, 0xba, 0x91, 0x8c, 0x85, 0x4e, 0x96, 0x5a, 0xfe, 0x94, 0xff, 0x00, 0x00, 0x00, 0x00, 0xbd, 0x7e, 0x29, 0x70, 0x24, 0x77, 0xf9, 0xdf, 0x74, 0xfe, 0x9c, 0xff, 0x00, 0x00, 0x00, 0x00, 0x8f, 0xb8, 0xe5, 0xb8, 0x9f, 0xbd, 0xdf, 0xa6, 0x8f, 0xfe, 0xa4, 0xff, 0x00, 0x00, 0x00, 0x00, 0x94, 0x7d, 0x74, 0x88, 0xcf, 0x5f, 0xa9, 0xf8, 0xa9, 0xfe, 0xac, 0xff, 0x00, 0x00, 0x00, 0x00, 0xcf, 0x9b, 0xa8, 0x8f, 0x93, 0x70, 0x44, 0xb9, 0xc4, 0xfe, 0xb4, 0xff, 0x00, 0x00, 0x00, 0x00, 0x6b, 0x15, 0x0f, 0xbf, 0xf8, 0xf0, 0x08, 0x8a, 0xdf, 0xfe, 0xbc, 0xff, 0x00, 0x00, 0x00, 0x00, 0xb6, 0x31, 0x31, 0x65, 0x55, 0x25, 0xb0, 0xcd, 0xf9, 0xfe, 0xc4, 0xff, 0x00, 0x00, 0x00, 0x00, 0xac, 0x7f, 0x7b, 0xd0, 0xc6, 0xe2, 0x3f, 0x99, 0x14, 0xff, 0xcc, 0xff, 0x00, 0x00, 0x00, 0x00, 0x06, 0x3b, 0x2b, 0x2a, 0xc4, 0x10, 0x5c, 0xe4, 0x2e, 0xff, 0xd4, 0xff, 0x00, 0x00, 0x00, 0x00, 0xd3, 0x92, 0x73, 0x69, 0x99, 0x24, 0x24, 0xaa, 0x49, 0xff, 0xdc, 0xff, 0x00, 0x00, 0x00, 0x00, 0x0e, 0xca, 0x00, 0x83, 0xf2, 0xb5, 0x87, 0xfd, 0x63, 0xff, 0xe4, 0xff, 0x00, 0x00, 0x00, 0x00, 0xeb, 0x1a, 0x11, 0x92, 0x64, 0x08, 0xe5, 0xbc, 0x7e, 0xff, 0xec, 0xff, 0x00, 0x00, 0x00, 0x00, 0xcc, 0x88, 0x50, 0x6f, 0x09, 0xcc, 0xbc, 0x8c, 0x99, 0xff, 0xf4, 0xff, 0x00, 0x00, 0x00, 0x00, 0x2c, 0x65, 0x19, 0xe2, 0x58, 0x17, 0xb7, 0xd1, 0xb3, 0xff, 0xfc, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x9c, 0xce, 0xff, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0xa5, 0xd4, 0xe8, 0xe8, 0xff, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x62, 0xac, 0xc5, 0xeb, 0x78, 0xad, 0x03, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x84, 0x09, 0x94, 0xf8, 0x78, 0x39, 0x3f, 0x81, 0x1e, 0x00, 0x1c, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb3, 0x15, 0x07, 0xc9, 0x7b, 0xce, 0x97, 0xc0, 0x38, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x5c, 0xea, 0x7b, 0xce, 0x32, 0x7e, 0x8f, 0x53, 0x00, 0x2c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x80, 0xe9, 0xab, 0xa4, 0x38, 0xd2, 0xd5, 0x6d, 0x00, 0x34, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x22, 0x9a, 0x17, 0x26, 0x27, 0x4f, 0x9f, 0x88, 0x00, 0x3c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 0xfb, 0xc4, 0xd4, 0x31, 0xa2, 0x63, 0xed, 0xa2, 0x00, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0xa8, 0xad, 0xc8, 0x8c, 0x38, 0x65, 0xde, 0xb0, 0xbd, 0x00, 0x4c, 0x00, 0x00, 0x00, 0x00, 0x00, 0xdb, 0x65, 0xab, 0x1a, 0x8e, 0x08, 0xc7, 0x83, 0xd8, 0x00, 0x54, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9a, 0x1d, 0x71, 0x42, 0xf9, 0x1d, 0x5d, 0xc4, 0xf2, 0x00, 0x5c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x58, 0xe7, 0x1b, 0xa6, 0x2c, 0x69, 0x4d, 0x92, 0x0d, 0x01, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0xea, 0x8d, 0x70, 0x1a, 0x64, 0xee, 0x01, 0xda, 0x27, 0x01, 0x6c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4a, 0x77, 0xef, 0x9a, 0x99, 0xa3, 0x6d, 0xa2, 0x42, 0x01, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x85, 0x6b, 0x7d, 0xb4, 0x7b, 0x78, 0x09, 0xf2, 0x5c, 0x01, 0x7c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x18, 0xdd, 0x79, 0xa1, 0xe4, 0x54, 0xb4, 0x77, 0x01, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc2, 0xc5, 0x9b, 0x5b, 0x92, 0x86, 0x5b, 0x86, 0x92, 0x01, 0x8c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3d, 0x5d, 0x96, 0xc8, 0xc5, 0x53, 0x35, 0xc8, 0xac, 0x01, 0x94, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb3, 0xa0, 0x97, 0xfa, 0x5c, 0xb4, 0x2a, 0x95, 0xc7, 0x01, 0x9c, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe3, 0x5f, 0xa0, 0x99, 0xbd, 0x9f, 0x46, 0xde, 0xe1, 0x01, 0xa4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x8c, 0x39, 0xdb, 0x34, 0xc2, 0x9b, 0xa5, 0xfc, 0x01, 0xac, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5c, 0x9f, 0x98, 0xa3, 0x72, 0x9a, 0xc6, 0xf6, 0x16, 0x02, 0xb4, 0x00, 0x00, 0x00, 0x00, 0x00, 0xce, 0xbe, 0xe9, 0x54, 0x53, 0xbf, 0xdc, 0xb7, 0x31, 0x02, 0xbc, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe2, 0x41, 0x22, 0xf2, 0x17, 0xf3, 0xfc, 0x88, 0x4c, 0x02, 0xc4, 0x00, 0x00, 0x00, 0x00, 0x00, 0xa5, 0x78, 0x5c, 0xd3, 0x9b, 0xce, 0x20, 0xcc, 0x66, 0x02, 0xcc, 0x00, 0x00, 0x00, 0x00, 0x00, 0xdf, 0x53, 0x21, 0x7b, 0xf3, 0x5a, 0x16, 0x98, 0x81, 0x02, 0xd4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3a, 0x30, 0x1f, 0x97, 0xdc, 0xb5, 0xa0, 0xe2, 0x9b, 0x02, 0xdc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x96, 0xb3, 0xe3, 0x5c, 0x53, 0xd1, 0xd9, 0xa8, 0xb6, 0x02, 0xe4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3c, 0x44, 0xa7, 0xa4, 0xd9, 0x7c, 0x9b, 0xfb, 0xd0, 0x02, 0xec, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x44, 0xa4, 0xa7, 0x4c, 0x4c, 0x76, 0xbb, 0xeb, 0x02, 0xf4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1a, 0x9c, 0x40, 0xb6, 0xef, 0x8e, 0xab, 0x8b, 0x06, 0x03, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2c, 0x84, 0x57, 0xa6, 0x10, 0xef, 0x1f, 0xd0, 0x20, 0x03, 0x04, 0x01, 0x00, 0x00, 0x00, 0x00, 0x29, 0x31, 0x91, 0xe9, 0xe5, 0xa4, 0x10, 0x9b, 0x3b, 0x03, 0x0c, 0x01, 0x00, 0x00, 0x00, 0x00, 0x9d, 0x0c, 0x9c, 0xa1, 0xfb, 0x9b, 0x10, 0xe7, 0x55, 0x03, 0x14, 0x01, 0x00, 0x00, 0x00, 0x00, 0x29, 0xf4, 0x3b, 0x62, 0xd9, 0x20, 0x28, 0xac, 0x70, 0x03, 0x1c, 0x01, 0x00, 0x00, 0x00, 0x00, 0x85, 0xcf, 0xa7, 0x7a, 0x5e, 0x4b, 0x44, 0x80, 0x8b, 0x03, 0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x2d, 0xdd, 0xac, 0x03, 0x40, 0xe4, 0x21, 0xbf, 0xa5, 0x03, 0x2c, 0x01, 0x00, 0x00, 0x00, 0x00, 0x8f, 0xff, 0x44, 0x5e, 0x2f, 0x9c, 0x67, 0x8e, 0xc0, 0x03, 0x34, 0x01, 0x00, 0x00, 0x00, 0x00, 0x41, 0xb8, 0x8c, 0x9c, 0x9d, 0x17, 0x33, 0xd4, 0xda, 0x03, 0x3c, 0x01, 0x00, 0x00, 0x00, 0x00, 0xa9, 0x1b, 0xe3, 0xb4, 0x92, 0xdb, 0x19, 0x9e, 0xf5, 0x03, 0x44, 0x01, 0x00, 0x00, 0x00, 0x00, 0xd9, 0x77, 0xdf, 0xba, 0x6e, 0xbf, 0x96, 0xeb, 0x0f, 0x04, 0x4c, 0x01, 0x00, 0x00, 0x00, 0x00, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2f, 0x63, 0x6f, 0x72, 0x65, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x6e, 0x75, 0x6d, 0x2f, 0x66, 0x6c, 0x74, 0x32, 0x64, 0x65, 0x63, 0x2f, 0x73, 0x74, 0x72, 0x61, 0x74, 0x65, 0x67, 0x79, 0x2f, 0x67, 0x72, 0x69, 0x73, 0x75, 0x2e, 0x72, 0x73
  str_1a3e: .ascii "assertion failed: d.mant + d.plus < (1 << 61)"
  str_1a6b: .ascii "assertion failed: !buf.is_empty()"
  str_1a8c: .ascii "assertion failed: d.mant < (1 << 61)"
  data_1ab0: .byte 0x01, 0x00, 0x00, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0xe8, 0x03, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00, 0xa0, 0x86, 0x01, 0x00, 0x40, 0x42, 0x0f, 0x00, 0x80, 0x96, 0x98, 0x00, 0x00, 0xe1, 0xf5, 0x05, 0x00, 0xca, 0x9a, 0x3b, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2f, 0x63, 0x6f, 0x72, 0x65, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x6e, 0x75, 0x6d, 0x2f, 0x66, 0x6c, 0x74, 0x32, 0x64, 0x65, 0x63, 0x2f, 0x6d, 0x6f, 0x64, 0x2e, 0x72, 0x73
  str_1afb: .ascii "assertion failed: buf[0] > b'0'"
  str_1b1a: .ascii "assertion failed: parts.len() >= 4"
  str_1b3c: .ascii "."
  str_1b3d: .ascii "0."
  str_1b3f: .ascii "-"
  str_1b40: .ascii "+"
  str_1b41: .ascii "NaN"
  str_1b44: .ascii "inf"
  str_1b47: .ascii "0"
  str_1b48: .ascii "assertion failed: buf.len() >= maxlenlibrary/core/src/fmt/mod.rs"
  str_1b88: .ascii ")"
  str_1b89: .ascii ".."
  str_1b8b: .ascii "BorrowError"
  str_1b96: .ascii "BorrowMutErroralready borrowed: already mutably borrowed: "
  str_1bd0: .ascii ":"
  str_1bd1: .ascii "["
  str_1bd2: .ascii "called `Option::unwrap()` on a `None` value"
  str_1bfd: .ascii "panicked at "
  str_1c09: .ascii "
 but the index is "
  str_1c1c: .ascii "=="
  str_1c1e: .ascii "!="
  str_1c20: .ascii "matches right` failed
  left: 
 right: 
  left: "
  str_1c50: .ascii ": "
  str_1c52: .ascii " { "
  str_1c55: .ascii ", "
  str_1c57: .ascii " {
"
  str_1c5a: .ascii ",
"
  str_1c5c: .ascii "}"
  str_1c5d: .ascii " }"
  str_1c5f: .ascii "("
  str_1c60: .ascii "(
"
  str_1c62: .ascii ","
  str_1c63: .ascii "]library/core/src/fmt/num.rs"
  str_1c7f: .ascii "0x"
  str_1c81: .ascii "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
  str_1d49: .ascii "0000000000000000000000000000000000000000000000000000000000000000"
  str_1d89: .ascii "falserange start index  out of range for slice of length slice index starts at  but ends at source slice length () does not match destination slice length ("
  data_1e25: .byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  str_1f25: .ascii "[...]begin <= end (`byte index  is not a char boundary; it is inside ) of ` is out of bounds of `library/core/src/str/mod.rslibrary/core/src/unicode/printable.rs"
  data_1fc6: .byte 0x00, 0x06, 0x01, 0x01, 0x03, 0x01, 0x04, 0x02, 0x05, 0x07, 0x07, 0x02, 0x08, 0x08, 0x09, 0x02, 0x0a, 0x05, 0x0b, 0x02, 0x0e, 0x04, 0x10, 0x01, 0x11, 0x02, 0x12, 0x05, 0x13, 0x11, 0x14, 0x01, 0x15, 0x02, 0x17, 0x02, 0x19, 0x0d, 0x1c, 0x05, 0x1d, 0x08, 0x1f, 0x01, 0x24, 0x01, 0x6a, 0x04, 0x6b, 0x02, 0xaf, 0x03, 0xb1, 0x02, 0xbc, 0x02, 0xcf, 0x02, 0xd1, 0x02, 0xd4, 0x0c, 0xd5, 0x09, 0xd6, 0x02, 0xd7, 0x02, 0xda, 0x01, 0xe0, 0x05, 0xe1, 0x02, 0xe7, 0x04, 0xe8, 0x02, 0xee, 0x20, 0xf0, 0x04, 0xf8, 0x02, 0xfa, 0x03, 0xfb, 0x01
  data_201e: .byte 0x0c, 0x27, 0x3b, 0x3e, 0x4e, 0x4f, 0x8f, 0x9e, 0x9e, 0x9f, 0x7b, 0x8b, 0x93, 0x96, 0xa2, 0xb2, 0xba, 0x86, 0xb1, 0x06, 0x07, 0x09, 0x36, 0x3d, 0x3e, 0x56, 0xf3, 0xd0, 0xd1, 0x04, 0x14, 0x18, 0x36, 0x37, 0x56, 0x57, 0x7f, 0xaa, 0xae, 0xaf, 0xbd, 0x35, 0xe0, 0x12, 0x87, 0x89, 0x8e, 0x9e, 0x04, 0x0d, 0x0e, 0x11, 0x12, 0x29, 0x31, 0x34, 0x3a, 0x45, 0x46, 0x49, 0x4a, 0x4e, 0x4f, 0x64, 0x65, 0x5c, 0xb6, 0xb7, 0x1b, 0x1c, 0x07, 0x08, 0x0a, 0x0b, 0x14, 0x17, 0x36, 0x39, 0x3a, 0xa8, 0xa9, 0xd8, 0xd9, 0x09, 0x37, 0x90, 0x91, 0xa8, 0x07, 0x0a, 0x3b, 0x3e, 0x66, 0x69, 0x8f, 0x92, 0x11, 0x6f, 0x5f, 0xbf, 0xee, 0xef, 0x5a, 0x62, 0xf4, 0xfc, 0xff, 0x53, 0x54, 0x9a, 0x9b, 0x2e, 0x2f, 0x27, 0x28, 0x55, 0x9d, 0xa0, 0xa1, 0xa3, 0xa4, 0xa7, 0xa8, 0xad, 0xba, 0xbc, 0xc4, 0x06, 0x0b, 0x0c, 0x15, 0x1d, 0x3a, 0x3f, 0x45, 0x51, 0xa6, 0xa7, 0xcc, 0xcd, 0xa0, 0x07, 0x19, 0x1a, 0x22, 0x25, 0x3e, 0x3f, 0xe7, 0xec, 0xef, 0xff, 0xc5, 0xc6, 0x04, 0x20, 0x23, 0x25, 0x26, 0x28, 0x33, 0x38, 0x3a, 0x48, 0x4a, 0x4c, 0x50, 0x53, 0x55, 0x56, 0x58, 0x5a, 0x5c, 0x5e, 0x60, 0x63, 0x65, 0x66, 0x6b, 0x73, 0x78, 0x7d, 0x7f, 0x8a, 0xa4, 0xaa, 0xaf, 0xb0, 0xc0, 0xd0, 0xae, 0xaf, 0x6e, 0x6f, 0xbe, 0x93
  data_20e2: .byte 0x5e, 0x22, 0x7b, 0x05, 0x03, 0x04, 0x2d, 0x03, 0x66, 0x03, 0x01, 0x2f, 0x2e, 0x80, 0x82, 0x1d, 0x03, 0x31, 0x0f, 0x1c, 0x04, 0x24, 0x09, 0x1e, 0x05, 0x2b, 0x05, 0x44, 0x04, 0x0e, 0x2a, 0x80, 0xaa, 0x06, 0x24, 0x04, 0x24, 0x04, 0x28, 0x08, 0x34, 0x0b, 0x4e, 0x43, 0x81, 0x37, 0x09, 0x16, 0x0a, 0x08, 0x18, 0x3b, 0x45, 0x39, 0x03, 0x63, 0x08, 0x09, 0x30, 0x16, 0x05, 0x21, 0x03, 0x1b, 0x05, 0x01, 0x40, 0x38, 0x04, 0x4b, 0x05, 0x2f, 0x04, 0x0a, 0x07, 0x09, 0x07, 0x40, 0x20, 0x27, 0x04, 0x0c, 0x09, 0x36, 0x03, 0x3a, 0x05, 0x1a, 0x07, 0x04, 0x0c, 0x07, 0x50, 0x49, 0x37, 0x33, 0x0d, 0x33, 0x07, 0x2e, 0x08, 0x0a, 0x81, 0x26, 0x52, 0x4b, 0x2b, 0x08, 0x2a, 0x16, 0x1a, 0x26, 0x1c, 0x14, 0x17, 0x09, 0x4e, 0x04, 0x24, 0x09, 0x44, 0x0d, 0x19, 0x07, 0x0a, 0x06, 0x48, 0x08, 0x27, 0x09, 0x75, 0x0b, 0x42, 0x3e, 0x2a, 0x06, 0x3b, 0x05, 0x0a, 0x06, 0x51, 0x06, 0x01, 0x05, 0x10, 0x03, 0x05, 0x80, 0x8b, 0x62, 0x1e, 0x48, 0x08, 0x0a, 0x80, 0xa6, 0x5e, 0x22, 0x45, 0x0b, 0x0a, 0x06, 0x0d, 0x13, 0x3a, 0x06, 0x0a, 0x36, 0x2c, 0x04, 0x17, 0x80, 0xb9, 0x3c, 0x64, 0x53, 0x0c, 0x48, 0x09, 0x0a, 0x46, 0x45, 0x1b, 0x48, 0x08, 0x53, 0x0d, 0x49, 0x07, 0x0a, 0x80, 0xf6, 0x46, 0x0a, 0x1d, 0x03, 0x47, 0x49, 0x37, 0x03, 0x0e, 0x08, 0x0a, 0x06, 0x39, 0x07, 0x0a, 0x81, 0x36, 0x19, 0x07, 0x3b, 0x03, 0x1c, 0x56, 0x01, 0x0f, 0x32, 0x0d, 0x83, 0x9b, 0x66, 0x75, 0x0b, 0x80, 0xc4, 0x8a, 0x4c, 0x63, 0x0d, 0x84, 0x30, 0x10, 0x16, 0x8f, 0xaa, 0x82, 0x47, 0xa1, 0xb9, 0x82, 0x39, 0x07, 0x2a, 0x04, 0x5c, 0x06, 0x26, 0x0a, 0x46, 0x0a, 0x28, 0x05, 0x13, 0x82, 0xb0, 0x5b, 0x65, 0x4b, 0x04, 0x39, 0x07, 0x11, 0x40, 0x05, 0x0b, 0x02, 0x0e, 0x97, 0xf8, 0x08, 0x84, 0xd6, 0x2a, 0x09, 0xa2, 0xe7, 0x81, 0x33, 0x0f, 0x01, 0x1d, 0x06, 0x0e, 0x04, 0x08, 0x81, 0x8c, 0x89, 0x04, 0x6b, 0x05, 0x0d, 0x03, 0x09, 0x07, 0x10, 0x92, 0x60, 0x47, 0x09, 0x74, 0x3c, 0x80, 0xf6, 0x0a, 0x73, 0x08, 0x70, 0x15, 0x46, 0x7a, 0x14, 0x0c, 0x14, 0x0c, 0x57, 0x09, 0x19, 0x80, 0x87, 0x81, 0x47, 0x03, 0x85, 0x42, 0x0f, 0x15, 0x84, 0x50, 0x1f, 0x06, 0x06, 0x80, 0xd5, 0x2b, 0x05, 0x3e, 0x21, 0x01, 0x70, 0x2d, 0x03, 0x1a, 0x04, 0x02, 0x81, 0x40, 0x1f, 0x11, 0x3a, 0x05, 0x01, 0x81, 0xd0, 0x2a, 0x82, 0xe6, 0x80, 0xf7, 0x29, 0x4c, 0x04, 0x0a, 0x04, 0x02, 0x83, 0x11, 0x44, 0x4c, 0x3d, 0x80, 0xc2, 0x3c, 0x06, 0x01, 0x04, 0x55, 0x05, 0x1b, 0x34, 0x02, 0x81, 0x0e, 0x2c, 0x04, 0x64, 0x0c, 0x56, 0x0a, 0x80, 0xae, 0x38, 0x1d, 0x0d, 0x2c, 0x04, 0x09, 0x07, 0x02, 0x0e, 0x06, 0x80, 0x9a, 0x83, 0xd8, 0x04, 0x11, 0x03, 0x0d, 0x03, 0x77, 0x04, 0x5f, 0x06, 0x0c, 0x04, 0x01, 0x0f, 0x0c, 0x04, 0x38, 0x08, 0x0a, 0x06, 0x28, 0x08, 0x22, 0x4e, 0x81, 0x54, 0x0c, 0x1d, 0x03, 0x09, 0x07, 0x36, 0x08, 0x0e, 0x04, 0x09, 0x07, 0x09, 0x07, 0x80, 0xcb, 0x25, 0x0a, 0x84, 0x06
  data_22a4: .byte 0x00, 0x01, 0x03, 0x05, 0x05, 0x06, 0x06, 0x02, 0x07, 0x06, 0x08, 0x07, 0x09, 0x11, 0x0a, 0x1c, 0x0b, 0x19, 0x0c, 0x1a, 0x0d, 0x10, 0x0e, 0x0c, 0x0f, 0x04, 0x10, 0x03, 0x12, 0x12, 0x13, 0x09, 0x16, 0x01, 0x17, 0x04, 0x18, 0x01, 0x19, 0x03, 0x1a, 0x07, 0x1b, 0x01, 0x1c, 0x02, 0x1f, 0x16, 0x20, 0x03, 0x2b, 0x03, 0x2d, 0x0b, 0x2e, 0x01, 0x30, 0x04, 0x31, 0x02, 0x32, 0x01, 0xa7, 0x02, 0xa9, 0x02, 0xaa, 0x04, 0xab, 0x08, 0xfa, 0x02, 0xfb, 0x05, 0xfd, 0x02, 0xfe, 0x03, 0xff, 0x09
  data_22f4: .byte 0xad, 0x78, 0x79, 0x8b, 0x8d, 0xa2, 0x30, 0x57, 0x58, 0x8b, 0x8c, 0x90, 0x1c, 0xdd, 0x0e, 0x0f, 0x4b, 0x4c, 0xfb, 0xfc, 0x2e, 0x2f, 0x3f, 0x5c, 0x5d, 0x5f, 0xe2, 0x84, 0x8d, 0x8e, 0x91, 0x92, 0xa9, 0xb1, 0xba, 0xbb, 0xc5, 0xc6, 0xc9, 0xca, 0xde, 0xe4, 0xe5, 0xff, 0x00, 0x04, 0x11, 0x12, 0x29, 0x31, 0x34, 0x37, 0x3a, 0x3b, 0x3d, 0x49, 0x4a, 0x5d, 0x84, 0x8e, 0x92, 0xa9, 0xb1, 0xb4, 0xba, 0xbb, 0xc6, 0xca, 0xce, 0xcf, 0xe4, 0xe5, 0x00, 0x04, 0x0d, 0x0e, 0x11, 0x12, 0x29, 0x31, 0x34, 0x3a, 0x3b, 0x45, 0x46, 0x49, 0x4a, 0x5e, 0x64, 0x65, 0x84, 0x91, 0x9b, 0x9d, 0xc9, 0xce, 0xcf, 0x0d, 0x11, 0x29, 0x3a, 0x3b, 0x45, 0x49, 0x57, 0x5b, 0x5c, 0x5e, 0x5f, 0x64, 0x65, 0x8d, 0x91, 0xa9, 0xb4, 0xba, 0xbb, 0xc5, 0xc9, 0xdf, 0xe4, 0xe5, 0xf0, 0x0d, 0x11, 0x45, 0x49, 0x64, 0x65, 0x80, 0x84, 0xb2, 0xbc, 0xbe, 0xbf, 0xd5, 0xd7, 0xf0, 0xf1, 0x83, 0x85, 0x8b, 0xa4, 0xa6, 0xbe, 0xbf, 0xc5, 0xc7, 0xcf, 0xda, 0xdb, 0x48, 0x98, 0xbd, 0xcd, 0xc6, 0xce, 0xcf, 0x49, 0x4e, 0x4f, 0x57, 0x59, 0x5e, 0x5f, 0x89, 0x8e, 0x8f, 0xb1, 0xb6, 0xb7, 0xbf, 0xc1, 0xc6, 0xc7, 0xd7, 0x11, 0x16, 0x17, 0x5b, 0x5c, 0xf6, 0xf7, 0xfe, 0xff, 0x80, 0x6d, 0x71, 0xde, 0xdf, 0x0e, 0x1f, 0x6e, 0x6f, 0x1c, 0x1d, 0x5f, 0x7d, 0x7e, 0xae, 0xaf, 0x7f, 0xbb, 0xbc, 0x16, 0x17, 0x1e, 0x1f, 0x46, 0x47, 0x4e, 0x4f, 0x58, 0x5a, 0x5c, 0x5e, 0x7e, 0x7f, 0xb5, 0xc5, 0xd4, 0xd5, 0xdc, 0xf0, 0xf1, 0xf5, 0x72, 0x73, 0x8f, 0x74, 0x75, 0x96, 0x26, 0x2e, 0x2f, 0xa7, 0xaf, 0xb7, 0xbf, 0xc7, 0xcf, 0xd7, 0xdf, 0x9a, 0x00, 0x40, 0x97, 0x98, 0x30, 0x8f, 0x1f, 0xd2, 0xd4, 0xce, 0xff, 0x4e, 0x4f, 0x5a, 0x5b, 0x07, 0x08, 0x0f, 0x10, 0x27, 0x2f, 0xee, 0xef, 0x6e, 0x6f, 0x37, 0x3d, 0x3f, 0x42, 0x45, 0x90, 0x91, 0x53, 0x67, 0x75, 0xc8, 0xc9, 0xd0, 0xd1, 0xd8, 0xd9, 0xe7, 0xfe, 0xff
  data_2414: .byte 0x00, 0x20, 0x5f, 0x22, 0x82, 0xdf, 0x04, 0x82, 0x44, 0x08, 0x1b, 0x04, 0x06, 0x11, 0x81, 0xac, 0x0e, 0x80, 0xab, 0x05, 0x1f, 0x09, 0x81, 0x1b, 0x03, 0x19, 0x08, 0x01, 0x04, 0x2f, 0x04, 0x34, 0x04, 0x07, 0x03, 0x01, 0x07, 0x06, 0x07, 0x11, 0x0a, 0x50, 0x0f, 0x12, 0x07, 0x55, 0x07, 0x03, 0x04, 0x1c, 0x0a, 0x09, 0x03, 0x08, 0x03, 0x07, 0x03, 0x02, 0x03, 0x03, 0x03, 0x0c, 0x04, 0x05, 0x03, 0x0b, 0x06, 0x01, 0x0e, 0x15, 0x05, 0x4e, 0x07, 0x1b, 0x07, 0x57, 0x07, 0x02, 0x06, 0x17, 0x0c, 0x50, 0x04, 0x43, 0x03, 0x2d, 0x03, 0x01, 0x04, 0x11, 0x06, 0x0f, 0x0c, 0x3a, 0x04, 0x1d, 0x25, 0x5f, 0x20, 0x6d, 0x04, 0x6a, 0x25, 0x80, 0xc8, 0x05, 0x82, 0xb0, 0x03, 0x1a, 0x06, 0x82, 0xfd, 0x03, 0x59, 0x07, 0x16, 0x09, 0x18, 0x09, 0x14, 0x0c, 0x14, 0x0c, 0x6a, 0x06, 0x0a, 0x06, 0x1a, 0x06, 0x59, 0x07, 0x2b, 0x05, 0x46, 0x0a, 0x2c, 0x04, 0x0c, 0x04, 0x01, 0x03, 0x31, 0x0b, 0x2c, 0x04, 0x1a, 0x06, 0x0b, 0x03, 0x80, 0xac, 0x06, 0x0a, 0x06, 0x2f, 0x31, 0x4d, 0x03, 0x80, 0xa4, 0x08, 0x3c, 0x03, 0x0f, 0x03, 0x3c, 0x07, 0x38, 0x08, 0x2b, 0x05, 0x82, 0xff, 0x11, 0x18, 0x08, 0x2f, 0x11, 0x2d, 0x03, 0x21, 0x0f, 0x21, 0x0f, 0x80, 0x8c, 0x04, 0x82, 0x97, 0x19, 0x0b, 0x15, 0x88, 0x94, 0x05, 0x2f, 0x05, 0x3b, 0x07, 0x02, 0x0e, 0x18, 0x09, 0x80, 0xbe, 0x22, 0x74, 0x0c, 0x80, 0xd6, 0x1a, 0x81, 0x10, 0x05, 0x80, 0xdf, 0x0b, 0xf2, 0x9e, 0x03, 0x37, 0x09, 0x81, 0x5c, 0x14, 0x80, 0xb8, 0x08, 0x80, 0xcb, 0x05, 0x0a, 0x18, 0x3b, 0x03, 0x0a, 0x06, 0x38, 0x08, 0x46, 0x08, 0x0c, 0x06, 0x74, 0x0b, 0x1e, 0x03, 0x5a, 0x04, 0x59, 0x09, 0x80, 0x83, 0x18, 0x1c, 0x0a, 0x16, 0x09, 0x4c, 0x04, 0x80, 0x8a, 0x06, 0xab, 0xa4, 0x0c, 0x17, 0x04, 0x31, 0xa1, 0x04, 0x81, 0xda, 0x26, 0x07, 0x0c, 0x05, 0x05, 0x80, 0xa6, 0x10, 0x81, 0xf5, 0x07, 0x01, 0x20, 0x2a, 0x06, 0x4c, 0x04, 0x80, 0x8d, 0x04, 0x80, 0xbe, 0x03, 0x1b, 0x03, 0x0f, 0x0d, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2f, 0x63, 0x6f, 0x72, 0x65, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x75, 0x6e, 0x69, 0x63, 0x6f, 0x64, 0x65, 0x2f, 0x75, 0x6e, 0x69, 0x63, 0x6f, 0x64, 0x65, 0x5f, 0x64, 0x61, 0x74, 0x61, 0x2e, 0x72, 0x73, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2f, 0x63, 0x6f, 0x72, 0x65, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x65, 0x73, 0x63, 0x61, 0x70, 0x65, 0x2e, 0x72, 0x73, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2f, 0x63, 0x6f, 0x72, 0x65, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x6e, 0x75, 0x6d, 0x2f, 0x62, 0x69, 0x67, 0x6e, 0x75, 0x6d, 0x2e, 0x72, 0x73
  str_25a1: .ascii "assertion failed: noborrow"
  str_25bb: .ascii "assertion failed: digits < 40"
  data_25d8: .byte 0x61, 0x73, 0x73, 0x65, 0x72, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x66, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x3a, 0x20, 0x6f, 0x74, 0x68, 0x65, 0x72, 0x20, 0x3e, 0x20, 0x30, 0x61, 0x74, 0x74, 0x65, 0x6d, 0x70, 0x74, 0x20, 0x74, 0x6f, 0x20, 0x64, 0x69, 0x76, 0x69, 0x64, 0x65, 0x20, 0x62, 0x79, 0x20, 0x7a, 0x65, 0x72, 0x6f, 0x61, 0x74, 0x74, 0x65, 0x6d, 0x70, 0x74, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x61, 0x6c, 0x63, 0x75, 0x6c, 0x61, 0x74, 0x65, 0x20, 0x74, 0x68, 0x65, 0x20, 0x72, 0x65, 0x6d, 0x61, 0x69, 0x6e, 0x64, 0x65, 0x72, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x61, 0x20, 0x64, 0x69, 0x76, 0x69, 0x73, 0x6f, 0x72, 0x20, 0x6f, 0x66, 0x20, 0x7a, 0x65, 0x72, 0x6f, 0x00, 0x00, 0x00
  data_2648: .byte 0x00, 0x03, 0x00, 0x00, 0x83, 0x04, 0x20, 0x00, 0x91, 0x05, 0x60, 0x00, 0x5d, 0x13, 0xa0, 0x00, 0x12, 0x17, 0x20, 0x1f, 0x0c, 0x20, 0x60, 0x1f, 0xef, 0x2c, 0xa0, 0x2b, 0x2a, 0x30, 0x20, 0x2c, 0x6f, 0xa6, 0xe0, 0x2c, 0x02, 0xa8, 0x60, 0x2d, 0x1e, 0xfb, 0x60, 0x2e, 0x00, 0xfe, 0x20, 0x36, 0x9e, 0xff, 0x60, 0x36, 0xfd, 0x01, 0xe1, 0x36, 0x01, 0x0a, 0x21, 0x37, 0x24, 0x0d, 0xe1, 0x37, 0xab, 0x0e, 0x61, 0x39, 0x2f, 0x18, 0xa1, 0x39, 0x30, 0x1c, 0x61, 0x48, 0xf3, 0x1e, 0xa1, 0x4c, 0x40, 0x34, 0x61, 0x50, 0xf0, 0x6a, 0xa1, 0x51, 0x4f, 0x6f, 0x21, 0x52, 0x9d, 0xbc, 0xa1, 0x52, 0x00, 0xcf, 0x61, 0x53, 0x65, 0xd1, 0xa1, 0x53, 0x00, 0xda, 0x21, 0x54, 0x00, 0xe0, 0xe1, 0x55, 0xae, 0xe2, 0x61, 0x57, 0xec, 0xe4, 0x21, 0x59, 0xd0, 0xe8, 0xa1, 0x59, 0x20, 0x00, 0xee, 0x59, 0xf0, 0x01, 0x7f, 0x5a
  data_26cc: .byte 0x00, 0x70, 0x00, 0x07, 0x00, 0x2d, 0x01, 0x01, 0x01, 0x02, 0x01, 0x02, 0x01, 0x01, 0x48, 0x0b, 0x30, 0x15, 0x10, 0x01, 0x65, 0x07, 0x02, 0x06, 0x02, 0x02, 0x01, 0x04, 0x23, 0x01, 0x1e, 0x1b, 0x5b, 0x0b, 0x3a, 0x09, 0x09, 0x01, 0x18, 0x04, 0x01, 0x09, 0x01, 0x03, 0x01, 0x05, 0x2b, 0x03, 0x3c, 0x08, 0x2a, 0x18, 0x01, 0x20, 0x37, 0x01, 0x01, 0x01, 0x04, 0x08, 0x04, 0x01, 0x03, 0x07, 0x0a, 0x02, 0x1d, 0x01, 0x3a, 0x01, 0x01, 0x01, 0x02, 0x04, 0x08, 0x01, 0x09, 0x01, 0x0a, 0x02, 0x1a, 0x01, 0x02, 0x02, 0x39, 0x01, 0x04, 0x02, 0x04, 0x02, 0x02, 0x03, 0x03, 0x01, 0x1e, 0x02, 0x03, 0x01, 0x0b, 0x02, 0x39, 0x01, 0x04, 0x05, 0x01, 0x02, 0x04, 0x01, 0x14, 0x02, 0x16, 0x06, 0x01, 0x01, 0x3a, 0x01, 0x01, 0x02, 0x01, 0x04, 0x08, 0x01, 0x07, 0x03, 0x0a, 0x02, 0x1e, 0x01, 0x3b, 0x01, 0x01, 0x01, 0x0c, 0x01, 0x09, 0x01, 0x28, 0x01, 0x03, 0x01, 0x37, 0x01, 0x01, 0x03, 0x05, 0x03, 0x01, 0x04, 0x07, 0x02, 0x0b, 0x02, 0x1d, 0x01, 0x3a, 0x01, 0x02, 0x01, 0x02, 0x01, 0x03, 0x01, 0x05, 0x02, 0x07, 0x02, 0x0b, 0x02, 0x1c, 0x02, 0x39, 0x02, 0x01, 0x01, 0x02, 0x04, 0x08, 0x01, 0x09, 0x01, 0x0a, 0x02, 0x1d, 0x01, 0x48, 0x01, 0x04, 0x01, 0x02, 0x03, 0x01, 0x01, 0x08, 0x01, 0x51, 0x01, 0x02, 0x07, 0x0c, 0x08, 0x62, 0x01, 0x02, 0x09, 0x0b, 0x07, 0x49, 0x02, 0x1b, 0x01, 0x01, 0x01, 0x01, 0x01, 0x37, 0x0e, 0x01, 0x05, 0x01, 0x02, 0x05, 0x0b, 0x01, 0x24, 0x09, 0x01, 0x66, 0x04, 0x01, 0x06, 0x01, 0x02, 0x02, 0x02, 0x19, 0x02, 0x04, 0x03, 0x10, 0x04, 0x0d, 0x01, 0x02, 0x02, 0x06, 0x01, 0x0f, 0x01, 0x00, 0x03, 0x00, 0x03, 0x1d, 0x02, 0x1e, 0x02, 0x1e, 0x02, 0x40, 0x02, 0x01, 0x07, 0x08, 0x01, 0x02, 0x0b, 0x09, 0x01, 0x2d, 0x03, 0x01, 0x01, 0x75, 0x02, 0x22, 0x01, 0x76, 0x03, 0x04, 0x02, 0x09, 0x01, 0x06, 0x03, 0xdb, 0x02, 0x02, 0x01, 0x3a, 0x01, 0x01, 0x07, 0x01, 0x01, 0x01, 0x01, 0x02, 0x08, 0x06, 0x0a, 0x02, 0x01, 0x30, 0x1f, 0x31, 0x04, 0x30, 0x07, 0x01, 0x01, 0x05, 0x01, 0x28, 0x09, 0x0c, 0x02, 0x20, 0x04, 0x02, 0x02, 0x01, 0x03, 0x38, 0x01, 0x01, 0x02, 0x03, 0x01, 0x01, 0x03, 0x3a, 0x08, 0x02, 0x02, 0x98, 0x03, 0x01, 0x0d, 0x01, 0x07, 0x04, 0x01, 0x06, 0x01, 0x03, 0x02, 0xc6, 0x40, 0x00, 0x01, 0xc3, 0x21, 0x00, 0x03, 0x8d, 0x01, 0x60, 0x20, 0x00, 0x06, 0x69, 0x02, 0x00, 0x04, 0x01, 0x0a, 0x20, 0x02, 0x50, 0x02, 0x00, 0x01, 0x03, 0x01, 0x04, 0x01, 0x19, 0x02, 0x05, 0x01, 0x97, 0x02, 0x1a, 0x12, 0x0d, 0x01, 0x26, 0x08, 0x19, 0x0b, 0x2e, 0x03, 0x30, 0x01, 0x02, 0x04, 0x02, 0x02, 0x27, 0x01, 0x43, 0x06, 0x02, 0x02, 0x02, 0x02, 0x0c, 0x01, 0x08, 0x01, 0x2f, 0x01, 0x33, 0x01, 0x01, 0x03, 0x02, 0x02, 0x05, 0x02, 0x01, 0x01, 0x2a, 0x02, 0x08, 0x01, 0xee, 0x01, 0x02, 0x01, 0x04, 0x01, 0x00, 0x01, 0x00, 0x10, 0x10, 0x10, 0x00, 0x02, 0x00, 0x01, 0xe2, 0x01, 0x95, 0x05, 0x00, 0x03, 0x01, 0x02, 0x05, 0x04, 0x28, 0x03, 0x04, 0x01, 0xa5, 0x02, 0x00, 0x04, 0x00, 0x02, 0x50, 0x03, 0x46, 0x0b, 0x31, 0x04, 0x7b, 0x01, 0x36, 0x0f, 0x29, 0x01, 0x02, 0x02, 0x0a, 0x03, 0x31, 0x04, 0x02, 0x02, 0x07, 0x01, 0x3d, 0x03, 0x24, 0x05, 0x01, 0x08, 0x3e, 0x01, 0x0c, 0x02, 0x34, 0x09, 0x0a, 0x04, 0x02, 0x01, 0x5f, 0x03, 0x02, 0x01, 0x01, 0x02, 0x06, 0x01, 0x02, 0x01, 0x9d, 0x01, 0x03, 0x08, 0x15, 0x02, 0x39, 0x02, 0x01, 0x01, 0x01, 0x01, 0x16, 0x01, 0x0e, 0x07, 0x03, 0x05, 0xc3, 0x08, 0x02, 0x03, 0x01, 0x01, 0x17, 0x01, 0x51, 0x01, 0x02, 0x06, 0x01, 0x01, 0x02, 0x01, 0x01, 0x02, 0x01, 0x02, 0xeb, 0x01, 0x02, 0x04, 0x06, 0x02, 0x01, 0x02, 0x1b, 0x02, 0x55, 0x08, 0x02, 0x01, 0x01, 0x02, 0x6a, 0x01, 0x01, 0x01, 0x02, 0x06, 0x01, 0x01, 0x65, 0x03, 0x02, 0x04, 0x01, 0x05, 0x00, 0x09, 0x01, 0x02, 0xf5, 0x01, 0x0a, 0x02, 0x01, 0x01, 0x04, 0x01, 0x90, 0x04, 0x02, 0x02, 0x04, 0x01, 0x20, 0x0a, 0x28, 0x06, 0x02, 0x04, 0x08, 0x01, 0x09, 0x06, 0x02, 0x03, 0x2e, 0x0d, 0x01, 0x02, 0x00, 0x07, 0x01, 0x06, 0x01, 0x01, 0x52, 0x16, 0x02, 0x07, 0x01, 0x02, 0x01, 0x02, 0x7a, 0x06, 0x03, 0x01, 0x01, 0x02, 0x01, 0x07, 0x01, 0x01, 0x48, 0x02, 0x03, 0x01, 0x01, 0x01, 0x00, 0x02, 0x0b, 0x02, 0x34, 0x05, 0x05, 0x01, 0x01, 0x01, 0x00, 0x01, 0x06, 0x0f, 0x00, 0x05, 0x3b, 0x07, 0x00, 0x01, 0x3f, 0x04, 0x51, 0x01, 0x00, 0x02, 0x00, 0x2e, 0x02, 0x17, 0x00, 0x01, 0x01, 0x03, 0x04, 0x05, 0x08, 0x08, 0x02, 0x07, 0x1e, 0x04, 0x94, 0x03, 0x00, 0x37, 0x04, 0x32, 0x08, 0x01, 0x0e, 0x01, 0x16, 0x05, 0x01, 0x0f, 0x00, 0x07, 0x01, 0x11, 0x02, 0x07, 0x01, 0x02, 0x01, 0x05, 0x64, 0x01, 0xa0, 0x07, 0x00, 0x01, 0x3d, 0x04, 0x00, 0x04, 0x00, 0x07, 0x6d, 0x07, 0x00, 0x60, 0x80, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_29a8: .byte 0x00, 0x00, 0x00, 0x00, 0xe0, 0xc2, 0x04, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xef, 0xc2, 0x04, 0x00, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_29c8: .byte 0x00, 0x00, 0x00, 0x00, 0xfa, 0xc2, 0x04, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xef, 0xc2, 0x04, 0x00, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_29e8: .byte 0x00, 0x00, 0x00, 0x00, 0x98, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xa0, 0x1b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0x23, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x7b, 0x03, 0x00
  data_2a28: .byte 0x00, 0x00, 0x00, 0x00, 0x88, 0x23, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0x7b, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x7b, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe8, 0xec, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb0, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd0, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x48, 0x7b, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb0, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc8, 0x27, 0x00, 0x00
  data_2a80: .byte 0x00, 0x00, 0x00, 0x00, 0x2b, 0xc3, 0x04, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_2a90: .byte 0x00, 0x00, 0x00, 0x00, 0x90, 0x23, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd0, 0x4d, 0x03, 0x00
  data_2ab0: .byte 0x00, 0x00, 0x00, 0x00, 0x44, 0xc3, 0x04, 0x00, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_2ac0: .byte 0x00, 0x00, 0x00, 0x00, 0x86, 0xc3, 0x04, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_2ad0: .byte 0x00, 0x00, 0x00, 0x00, 0xc6, 0xc3, 0x04, 0x00, 0x47, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_2ae0: .byte 0x00, 0x00, 0x00, 0x00, 0x0d, 0xc4, 0x04, 0x00, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_2af0: .byte 0x00, 0x00, 0x00, 0x00, 0x4f, 0xc4, 0x04, 0x00, 0x1b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_2b08: .byte 0x00, 0x00, 0x00, 0x00, 0x6a, 0xc4, 0x04, 0x00, 0x1c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_2b20: .byte 0x00, 0x00, 0x00, 0x00, 0xa0, 0x23, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x2a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x23, 0x00, 0x00
  data_2b50: .byte 0x00, 0x00, 0x00, 0x00, 0x98, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd0, 0x29, 0x00, 0x00
  data_2b70: .byte 0x00, 0x00, 0x00, 0x00, 0xbf, 0xc4, 0x04, 0x00, 0x54, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0x09, 0x00, 0x00, 0x0e, 0x00, 0x00, 0x00
  data_2b88: .byte 0x00, 0x00, 0x00, 0x00, 0x13, 0xc5, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd0, 0x01, 0x00, 0x00, 0x1b, 0x00, 0x00, 0x00
  data_2ba0: .byte 0x00, 0x00, 0x00, 0x00, 0x13, 0xc5, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd1, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
  data_2bb8: .byte 0x00, 0x00, 0x00, 0x00, 0x13, 0xc5, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xcc, 0x01, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_2bd0: .byte 0x00, 0x00, 0x00, 0x00, 0x13, 0xc5, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb9, 0x01, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
  data_2be8: .byte 0x00, 0x00, 0x00, 0x00, 0x98, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2a, 0x00, 0x00
  data_2c08: .byte 0x00, 0x00, 0x00, 0x00, 0x13, 0xc5, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3d, 0x01, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
  data_2c20: .byte 0x00, 0x00, 0x00, 0x00, 0x90, 0x23, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x1a, 0x00, 0x00
  data_2c40: .byte 0x00, 0x00, 0x00, 0x00, 0x1e, 0xc3, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xab, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00
  data_2c58: .byte 0x00, 0x00, 0x00, 0x00, 0x65, 0xc5, 0x04, 0x00, 0x1d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_2c68: .byte 0x00, 0x00, 0x00, 0x00, 0x90, 0x23, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0x22, 0x00, 0x00
  data_2c88: .byte 0x00, 0x00, 0x00, 0x00, 0x90, 0x23, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x19, 0x00, 0x00
  data_2ca8: .byte 0x00, 0x00, 0x00, 0x00, 0xa8, 0x23, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x69, 0x00, 0x00
  data_2cc8: .byte 0x00, 0x00, 0x00, 0x00, 0x90, 0x23, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd0, 0x19, 0x00, 0x00
  data_2ce8: .byte 0x00, 0x00, 0x00, 0x00, 0x90, 0x23, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0x1a, 0x00, 0x00
  data_2d08: .byte 0x00, 0x00, 0x00, 0x00, 0xb0, 0x23, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb0, 0x68, 0x00, 0x00
  data_2d28: .byte 0x00, 0x00, 0x00, 0x00, 0x13, 0xc5, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x93, 0x00, 0x00, 0x00, 0x2b, 0x00, 0x00, 0x00
  data_2d40: .byte 0x00, 0x00, 0x00, 0x00, 0x0e, 0xc6, 0x04, 0x00, 0x1f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2d, 0xc6, 0x04, 0x00, 0x1f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_2d60: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb1, 0x00, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_2d78: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2b, 0x01, 0x00, 0x00, 0x0e, 0x00, 0x00, 0x00
  data_2d90: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2a, 0x01, 0x00, 0x00, 0x0e, 0x00, 0x00, 0x00
  data_2da8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 0x01, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_2dc0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xea, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00
  data_2dd8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe7, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
  data_2df0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xca, 0x00, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_2e08: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x01, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_2e20: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3d, 0x01, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_2e38: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb7, 0x01, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_2e50: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0x01, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_2e68: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xee, 0x01, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_2e80: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc6, 0x01, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_2e98: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x02, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00
  data_2eb0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1a, 0x02, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
  data_2ec8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x02, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00
  data_2ee0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x5a, 0x00, 0x00, 0x00
  data_2ef8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x62, 0x02, 0x00, 0x00, 0x4c, 0x00, 0x00, 0x00
  data_2f10: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5d, 0x02, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
  data_2f28: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4f, 0x02, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00
  data_2f40: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x02, 0x00, 0x00, 0x5a, 0x00, 0x00, 0x00
  data_2f58: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x99, 0x02, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_2f70: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x02, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_2f88: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb1, 0x02, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_2fa0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xa9, 0x02, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_2fb8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc9, 0x02, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_2fd0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc1, 0x02, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_2fe8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe4, 0x02, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_3000: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd8, 0x02, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_3018: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf8, 0x02, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_3030: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf3, 0x02, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_3048: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x03, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_3060: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x03, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_3078: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x99, 0x03, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00
  data_3090: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8a, 0x03, 0x00, 0x00, 0x5a, 0x00, 0x00, 0x00
  data_30a8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf7, 0x03, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_30c0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd5, 0x03, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_30d8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x56, 0x04, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00
  data_30f0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0x04, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
  data_3108: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x05, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00
  data_3120: .byte 0x00, 0x00, 0x00, 0x00, 0x98, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x7d, 0x00, 0x00
  data_3140: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x35, 0x05, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
  data_3158: .byte 0x00, 0x00, 0x00, 0x00, 0xc2, 0xc7, 0x04, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_3168: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x82, 0x05, 0x00, 0x00, 0x0e, 0x00, 0x00, 0x00
  data_3180: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf7, 0x04, 0x00, 0x00, 0x4a, 0x00, 0x00, 0x00
  data_3198: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xcc, 0x04, 0x00, 0x00, 0x4c, 0x00, 0x00, 0x00
  data_31b0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc9, 0x04, 0x00, 0x00, 0x4a, 0x00, 0x00, 0x00
  data_31c8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc5, 0x04, 0x00, 0x00, 0x4e, 0x00, 0x00, 0x00
  data_31e0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc2, 0x04, 0x00, 0x00, 0x4c, 0x00, 0x00, 0x00
  data_31f8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xbc, 0x04, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
  data_3210: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb6, 0x04, 0x00, 0x00, 0x3e, 0x00, 0x00, 0x00
  data_3228: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2f, 0x04, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00
  data_3240: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x04, 0x00, 0x00, 0x5a, 0x00, 0x00, 0x00
  data_3258: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x06, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00
  data_3270: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb4, 0x06, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
  data_3288: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xbf, 0x06, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
  data_32a0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xeb, 0x06, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
  data_32b8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3a, 0x07, 0x00, 0x00, 0x0e, 0x00, 0x00, 0x00
  data_32d0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xac, 0x06, 0x00, 0x00, 0x4a, 0x00, 0x00, 0x00
  data_32e8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x06, 0x00, 0x00, 0x4c, 0x00, 0x00, 0x00
  data_3300: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7d, 0x06, 0x00, 0x00, 0x4a, 0x00, 0x00, 0x00
  data_3318: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x06, 0x00, 0x00, 0x4e, 0x00, 0x00, 0x00
  data_3330: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x76, 0x06, 0x00, 0x00, 0x4c, 0x00, 0x00, 0x00
  data_3348: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x06, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
  data_3360: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6a, 0x06, 0x00, 0x00, 0x3e, 0x00, 0x00, 0x00
  data_3378: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xdd, 0x05, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00
  data_3390: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xcd, 0x05, 0x00, 0x00, 0x5a, 0x00, 0x00, 0x00
  data_33a8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5c, 0x07, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_33c0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x07, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_33d8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x71, 0x07, 0x00, 0x00, 0x5a, 0x00, 0x00, 0x00
  data_33f0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xbc, 0x07, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00
  data_3408: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xbc, 0x07, 0x00, 0x00, 0x2e, 0x00, 0x00, 0x00
  data_3420: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb4, 0x07, 0x00, 0x00, 0x4b, 0x00, 0x00, 0x00
  data_3438: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0x07, 0x00, 0x00, 0x5a, 0x00, 0x00, 0x00
  data_3450: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe0, 0x07, 0x00, 0x00, 0x4b, 0x00, 0x00, 0x00
  data_3468: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd0, 0x07, 0x00, 0x00, 0x5a, 0x00, 0x00, 0x00
  data_3480: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0e, 0x08, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
  data_3498: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf7, 0x07, 0x00, 0x00, 0x5e, 0x00, 0x00, 0x00
  data_34b0: .byte 0x00, 0x00, 0x00, 0x00, 0x87, 0xc8, 0x04, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
  data_34c8: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0xc7, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1c, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
  data_34e0: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0xc7, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
  data_34f8: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0xc7, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2c, 0x00, 0x00, 0x00, 0x2d, 0x00, 0x00, 0x00
  data_3510: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0xc7, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2d, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
  data_3528: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0xc7, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3a, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
  data_3540: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0xc7, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_3558: .byte 0x00, 0x00, 0x00, 0x00, 0x3b, 0xcc, 0x04, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x00, 0x00
  data_3570: .byte 0x00, 0x00, 0x00, 0x00, 0x51, 0xcc, 0x04, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00
  data_3588: .byte 0x00, 0x00, 0x00, 0x00, 0x51, 0xcc, 0x04, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x00, 0x00, 0x3e, 0x00, 0x00, 0x00
  data_35a0: .byte 0x00, 0x00, 0x00, 0x00, 0x62, 0xcc, 0x04, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_35b0: .byte 0x00, 0x00, 0x00, 0x00, 0xa2, 0xcc, 0x04, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x03, 0x00, 0x00, 0x1a, 0x00, 0x00, 0x00
  data_35c8: .byte 0x00, 0x00, 0x00, 0x00, 0x08, 0xcd, 0x04, 0x00, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
  data_35e0: .byte 0x00, 0x00, 0x00, 0x00, 0x08, 0xcd, 0x04, 0x00, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x95, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
  data_35f8: .byte 0x00, 0x00, 0x00, 0x00, 0x14, 0xcd, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8d, 0x00, 0x00, 0x00, 0x2b, 0x00, 0x00, 0x00
  data_3610: .byte 0x00, 0x00, 0x00, 0x00, 0x1e, 0xcd, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00
  data_3628: .byte 0x00, 0x00, 0x00, 0x00, 0x1e, 0xcd, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2a, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
  data_3640: .byte 0x00, 0x00, 0x00, 0x00, 0x1e, 0xcd, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00
  data_3658: .byte 0x00, 0x00, 0x00, 0x00, 0x1e, 0xcd, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
  data_3670: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0xcd, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xad, 0x01, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
  data_3688: .byte 0x00, 0x00, 0x00, 0x00, 0x32, 0xcd, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
  data_36a0: .byte 0x00, 0x00, 0x00, 0x00, 0x32, 0xcd, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
  data_36b8: .byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x2d, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x48, 0x31, 0x03, 0x00
  data_36d8: .byte 0x00, 0x00, 0x00, 0x00, 0x67, 0xcd, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe5, 0x00, 0x00, 0x00, 0x2d, 0x00, 0x00, 0x00
  data_36f0: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x2d, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xa8, 0x2a, 0x03, 0x00
  data_3710: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x2d, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd0, 0x2b, 0x03, 0x00
  data_3730: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x2d, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x2a, 0x03, 0x00
  data_3750: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x2d, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x2b, 0x03, 0x00
  data_3770: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x2d, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0x2a, 0x03, 0x00
  data_3790: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x2d, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0x2c, 0x03, 0x00
  data_37b0: .byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x2d, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2a, 0x03, 0x00
  data_37d0: .byte 0x00, 0x00, 0x00, 0x00, 0x1a, 0xce, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd0, 0x01, 0x00, 0x00, 0x1b, 0x00, 0x00, 0x00
  data_37e8: .byte 0x00, 0x00, 0x00, 0x00, 0x1a, 0xce, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd1, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
  data_3800: .byte 0x00, 0x00, 0x00, 0x00, 0x1a, 0xce, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xcc, 0x01, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_3818: .byte 0x00, 0x00, 0x00, 0x00, 0x1a, 0xce, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb9, 0x01, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
  data_3830: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0x3c, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x3c, 0x03, 0x00
  data_3850: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0x3c, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd8, 0x3b, 0x03, 0x00
  data_3870: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0x3c, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x3b, 0x03, 0x00
  data_3890: .byte 0x00, 0x00, 0x00, 0x00, 0x16, 0xcf, 0x04, 0x00, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_38a0: .byte 0x00, 0x00, 0x00, 0x00, 0x52, 0xce, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x02, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
  data_38b8: .byte 0x00, 0x00, 0x00, 0x00, 0x52, 0xce, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x03, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
  data_38d0: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0x3c, 0x03, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x3d, 0x03, 0x00
  data_38f0: .byte 0x00, 0x00, 0x00, 0x00, 0x52, 0xce, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x03, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00
  data_3908: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0x3c, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf8, 0x3c, 0x03, 0x00
  data_3928: .byte 0x00, 0x00, 0x00, 0x00, 0x52, 0xce, 0x04, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x31, 0x03, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00
  data_3940: .byte 0x00, 0x00, 0x00, 0x00, 0x50, 0x47, 0x03, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x50, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x51, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x47, 0x03, 0x00
  data_3970: .byte 0x00, 0x00, 0x00, 0x00, 0xac, 0xcf, 0x04, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb5, 0xcf, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_3990: .byte 0x00, 0x00, 0x00, 0x00, 0xb6, 0xcf, 0x04, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb5, 0xcf, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_39b0: .byte 0x00, 0x00, 0x00, 0x00, 0x98, 0xc7, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb5, 0xcf, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_39d0: .byte 0x00, 0x00, 0x00, 0x00, 0xbf, 0xcf, 0x04, 0x00, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb5, 0xcf, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_39f0: .byte 0x00, 0x00, 0x00, 0x00, 0xca, 0xcf, 0x04, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x58, 0x03, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x7b, 0x03, 0x00
  data_3a20: .byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x58, 0x03, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0x7b, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x7b, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe0, 0xfc, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x58, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x58, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x48, 0x7b, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x58, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x58, 0x58, 0x03, 0x00
  data_3a78: .byte 0x00, 0x00, 0x00, 0x00, 0xd8, 0x5a, 0x03, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x5a, 0x03, 0x00
  data_3a98: .byte 0x00, 0x00, 0x00, 0x00, 0xe0, 0x5a, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x6f, 0x03, 0x00
  data_3ab8: .byte 0x00, 0x00, 0x00, 0x00, 0xe8, 0x5a, 0x03, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x5b, 0x03, 0x00
  data_3ad8: .byte 0x00, 0x00, 0x00, 0x00, 0xd0, 0x5a, 0x03, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x5a, 0x03, 0x00
  data_3af8: .byte 0x00, 0x00, 0x00, 0x00, 0xd0, 0x5a, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe8, 0x59, 0x03, 0x00
  data_3b18: .byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xde, 0xd2, 0x04, 0x00, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe9, 0xd2, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_3b48: .byte 0x00, 0x00, 0x00, 0x00, 0x50, 0x76, 0x03, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe0, 0x80, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0x81, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x76, 0x03, 0x00
  data_3b78: .byte 0x00, 0x00, 0x00, 0x00, 0x03, 0xd5, 0x04, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_3b88: .byte 0x00, 0x00, 0x00, 0x00, 0x14, 0xd5, 0x04, 0x00, 0x1c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3ba0: .byte 0x00, 0x00, 0x00, 0x00, 0x48, 0x76, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x76, 0x03, 0x00
  data_3bc0: .byte 0x00, 0x00, 0x00, 0x00, 0x63, 0xd5, 0x04, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x02, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
  data_3bd8: .byte 0x00, 0x00, 0x00, 0x00, 0x98, 0xd5, 0x04, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4c, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_3bf0: .byte 0x00, 0x00, 0x00, 0x00, 0x98, 0xd5, 0x04, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4e, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_3c08: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x75, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3c20: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3c38: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3c50: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7a, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3c68: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc1, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_3c80: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xfa, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00
  data_3c98: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00
  data_3cb0: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3cc8: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3ce0: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3cf8: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0b, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3d10: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3d28: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x71, 0x01, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00
  data_3d40: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x76, 0x01, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00
  data_3d58: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x83, 0x01, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00
  data_3d70: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x65, 0x01, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00
  data_3d88: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4b, 0x01, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
  data_3da0: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0e, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3db8: .byte 0x00, 0x00, 0x00, 0x00, 0xbc, 0xd6, 0x04, 0x00, 0x2f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0d, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3dd0: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7d, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
  data_3de8: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xa9, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3e00: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xaa, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3e18: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xab, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3e30: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xae, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3e48: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xaf, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3e60: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x01, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
  data_3e78: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0d, 0x01, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_3e90: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_3ea8: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xad, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3ec0: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xac, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3ed8: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xdc, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3ef0: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xdd, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3f08: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xde, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3f20: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x33, 0x02, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
  data_3f38: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x36, 0x02, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_3f50: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6c, 0x02, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_3f68: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe3, 0x02, 0x00, 0x00, 0x4e, 0x00, 0x00, 0x00
  data_3f80: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xef, 0x02, 0x00, 0x00, 0x4a, 0x00, 0x00, 0x00
  data_3f98: .byte 0x00, 0x00, 0x00, 0x00, 0xf0, 0xdc, 0x04, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xcc, 0x02, 0x00, 0x00, 0x4a, 0x00, 0x00, 0x00
  data_3fb0: .byte 0x00, 0x00, 0x00, 0x00, 0xb8, 0xdd, 0x04, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xbc, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3fc8: .byte 0x00, 0x00, 0x00, 0x00, 0xb8, 0xdd, 0x04, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xbd, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3fe0: .byte 0x00, 0x00, 0x00, 0x00, 0xb8, 0xdd, 0x04, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xbe, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
  data_3ff8: .byte 0x00, 0x00, 0x00, 0x00, 0xb8, 0xdd, 0x04, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7f, 0x02, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00
  data_4010: .byte 0x00, 0x00, 0x00, 0x00, 0x84, 0xde, 0x04, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_4020: .byte 0x00, 0x00, 0x00, 0x00, 0x96, 0xde, 0x04, 0x00, 0x1a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_4030: .byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb0, 0xde, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb0, 0xde, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_4060: .byte 0x00, 0x00, 0x00, 0x00, 0xa8, 0x81, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0xf0, 0x03, 0x00
  data_4080: .byte 0x00, 0x00, 0x00, 0x00, 0x50, 0xc6, 0x04, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xea, 0xde, 0x04, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_40a0: .byte 0x00, 0x00, 0x00, 0x00, 0xa0, 0x81, 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xa0, 0x8e, 0x04, 0x00
  data_40c0: .byte 0x00, 0x00, 0x00, 0x00, 0xc8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0xdf, 0x04, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1e, 0xdf, 0x04, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_40f0: .byte 0x00, 0x00, 0x00, 0x00, 0xc8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0xc7, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 0xdf, 0x04, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1e, 0xdf, 0x04, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_4130: .byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0xdf, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_4150: .byte 0x00, 0x00, 0x00, 0x00, 0xa0, 0x81, 0x03, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x06, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x0b, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x25, 0x04, 0x00
  data_4180: .byte 0x00, 0x00, 0x00, 0x00, 0x44, 0xdf, 0x04, 0x00, 0x1b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
  data_4198: .byte 0x00, 0x00, 0x00, 0x00, 0x4d, 0xde, 0x04, 0x00, 0x1b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x09, 0x00, 0x00, 0x1a, 0x00, 0x00, 0x00
  data_41b0: .byte 0x00, 0x00, 0x00, 0x00, 0x4d, 0xde, 0x04, 0x00, 0x1b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5f, 0x09, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
  data_41c8: .byte 0x00, 0x00, 0x00, 0x00, 0x6e, 0xe0, 0x04, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xe0, 0x04, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_41e8: .byte 0x00, 0x00, 0x00, 0x00, 0x38, 0xc7, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xe0, 0x04, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_4208: .byte 0x00, 0x00, 0x00, 0x00, 0xa2, 0xe0, 0x04, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb8, 0xe0, 0x04, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_4228: .byte 0x00, 0x00, 0x00, 0x00, 0xc5, 0xe0, 0x04, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xda, 0xe0, 0x04, 0x00, 0x2b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0xde, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_4258: .byte 0x00, 0x00, 0x00, 0x00, 0x0a, 0xe2, 0x04, 0x00, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xeb, 0xc5, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd8, 0xc6, 0x04, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0xe2, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_4298: .byte 0x00, 0x00, 0x00, 0x00, 0x19, 0xe2, 0x04, 0x00, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0xe2, 0x04, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8a, 0xcf, 0x04, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4a, 0xe2, 0x04, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0xe2, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_42e8: .byte 0x00, 0x00, 0x00, 0x00, 0x19, 0xe2, 0x04, 0x00, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0xe2, 0x04, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0xe2, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_4318: .byte 0x00, 0x00, 0x00, 0x00, 0x66, 0xe2, 0x04, 0x00, 0x1b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x01, 0x00, 0x00, 0x2c, 0x00, 0x00, 0x00
  data_4330: .byte 0x00, 0x00, 0x00, 0x00, 0x81, 0xe2, 0x04, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1a, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00
  data_4348: .byte 0x00, 0x00, 0x00, 0x00, 0x81, 0xe2, 0x04, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x2b, 0x00, 0x00, 0x00
  data_4360: .byte 0x00, 0x00, 0x00, 0x00, 0x21, 0xe8, 0x04, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00
  data_4378: .byte 0x00, 0x00, 0x00, 0x00, 0x21, 0xe8, 0x04, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5c, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
  data_4390: .byte 0x00, 0x00, 0x00, 0x00, 0x49, 0xe8, 0x04, 0x00, 0x1a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x0b, 0x00, 0x00, 0x00
  data_43a8: .byte 0x00, 0x00, 0x00, 0x00, 0x49, 0xe8, 0x04, 0x00, 0x1a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
  data_43c0: .byte 0x00, 0x00, 0x00, 0x00, 0x63, 0xe8, 0x04, 0x00, 0x1e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xac, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
  data_43d8: .byte 0x00, 0x00, 0x00, 0x00, 0xd3, 0xe8, 0x04, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_43e8: .byte 0x00, 0x00, 0x00, 0x00, 0xec, 0xe8, 0x04, 0x00, 0x39
