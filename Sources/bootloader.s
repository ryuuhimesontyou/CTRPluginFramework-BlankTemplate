.arm
.align(4);
.section .text
.global _start
_start:
stmfd   sp!, {r0-r12, lr}
mrs     r0, cpsr
stmfd   sp!, {r0}

@ Clear the BSS section
ldr     r0, = __c_bss_start
ldr     r1, = __c_bss_end
sub     r1, r1, r0
bl      ClearMem

bl      LaunchMainThread

ldmfd	sp!, {r0}
msr		cpsr, r0
ldmfd	sp!, {r0-r12, pc}
bx      lr

@---------------------------------------------------------------------------------
@ Clear memory to 0x00 if length != 0
@  r0 = Start Address
@  r1 = Length
@---------------------------------------------------------------------------------
ClearMem:
@---------------------------------------------------------------------------------
    mov  r2, #3     @ Round down to nearest word boundary
    add  r1, r1, r2 @ Shouldnt be needed
    bics r1, r1, r2 @ Clear 2 LSB (and set Z)
    bxeq lr         @ Quit if copy size is 0

    mov r2, #0
ClrLoop:
    stmia r0!, {r2}
    subs  r1, r1, #4
    bne   ClrLoop
    bx lr

.section .__bss_start
.global __c_bss_start
__c_bss_start:

.section .__bss_end
.global __c_bss_end
__c_bss_end:
//銅貨Max
void BronzeCoinMax(MenuEntry *entry)
{
	offset = 0x00000000;
	Process::Write32(offset + 0x0091196C , 0x0098967F);
	
}
//木材Max
void WoodMax(MenuEntry *entry)
{
	offset = 0x00000000;
	Process::Write32(offset + 0x0091249C , 0x0098967F);
	
}
//石材Max
void StoneMax(MenuEntry *entry)
{
	offset = 0x00000000;
	Process::Write32(offset + 0x009124A0 , 0x0098967F);
	
}
//鉱石Max
void OreMax(MenuEntry *entry)
{
	offset = 0x00000000;
	Process::Write32(offset + 0x009124A4 , 0x0098967F);
	
}
//食糧Max
void FoodMax(MenuEntry *entry)
{
	offset = 0x00000000;
	Process::Write32(offset + 0x00912498 , 0x0098967F);
	
}
