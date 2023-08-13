;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mask
	.globl _main
	.globl _init
	.globl _display_number
	.globl _EXT1_Process
	.globl _EXT0_Process
	.globl _TMR0_Process
	.globl _output_7seg_off
	.globl _output_7seg
	.globl _delay
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _count
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_count::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_EXT0_Process
	.ds	5
	ljmp	_TMR0_Process
	.ds	5
	ljmp	_EXT1_Process
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:15: unsigned char count=0;
	mov	_count,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;interval                  Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:21: void delay(int interval)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	main.c:24: for(i=0;i<100;i++)
	mov	r4,#0x00
	mov	r5,#0x00
;	main.c:26: for(j=0;j<interval;j++);
00111$:
	mov	r2,#0x00
	mov	r3,#0x00
00104$:
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r3
	sjmp	00104$
00107$:
;	main.c:24: for(i=0;i<100;i++)
	inc	r4
	cjne	r4,#0x00,00126$
	inc	r5
00126$:
	clr	c
	mov	a,r4
	subb	a,#0x64
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00111$
;	main.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_7seg'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	main.c:30: void output_7seg(unsigned char value)
;	-----------------------------------------
;	 function output_7seg
;	-----------------------------------------
_output_7seg:
	mov	r7,dpl
;	main.c:32: if (value < 10)
	cjne	r7,#0x0a,00109$
00109$:
	jnc	00103$
;	main.c:33: LED7SEG_DATA = mask[value];
	mov	a,r7
	mov	dptr,#_mask
	movc	a,@a+dptr
	mov	_P0,a
00103$:
;	main.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_7seg_off'
;------------------------------------------------------------
;	main.c:35: void output_7seg_off()
;	-----------------------------------------
;	 function output_7seg_off
;	-----------------------------------------
_output_7seg_off:
;	main.c:37: LED7SEG_DATA = 0x00;
	mov	_P0,#0x00
;	main.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TMR0_Process'
;------------------------------------------------------------
;	main.c:43: void TMR0_Process() __interrupt TF0_VECTOR{
;	-----------------------------------------
;	 function TMR0_Process
;	-----------------------------------------
_TMR0_Process:
;	main.c:44: TF0  = 0;             //clear flag
;	assignBit
	clr	_TF0
;	main.c:45: TR0  = 0;             //stop timer
;	assignBit
	clr	_TR0
;	main.c:46: TH0  = TH0_50ms;    //reset T0 value
	mov	_TH0,#0x4c
;	main.c:47: TL0  = TL0_50ms;    //
	mov	_TL0,#0x00
;	main.c:51: TR0  = 1;             //restart timer
;	assignBit
	setb	_TR0
;	main.c:52: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'EXT0_Process'
;------------------------------------------------------------
;	main.c:57: void EXT0_Process() __interrupt IE0_VECTOR{
;	-----------------------------------------
;	 function EXT0_Process
;	-----------------------------------------
_EXT0_Process:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:58: EA=0;    //Cam ngat
;	assignBit
	clr	_EA
;	main.c:59: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	main.c:60: count++;
	inc	_count
;	main.c:61: EA=1;    //Cho phep ngat
;	assignBit
	setb	_EA
;	main.c:62: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'EXT1_Process'
;------------------------------------------------------------
;	main.c:67: void EXT1_Process() __interrupt IE1_VECTOR{
;	-----------------------------------------
;	 function EXT1_Process
;	-----------------------------------------
_EXT1_Process:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:68: EA=0;    //Cam ngat
;	assignBit
	clr	_EA
;	main.c:69: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	main.c:70: count--;
	dec	_count
;	main.c:71: EA=1;    //Cho phep ngat
;	assignBit
	setb	_EA
;	main.c:72: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'display_number'
;------------------------------------------------------------
;iNum                      Allocated to registers r7 
;i                         Allocated to registers r6 
;temp                      Allocated to registers r2 
;------------------------------------------------------------
;	main.c:77: void display_number(unsigned char iNum){
;	-----------------------------------------
;	 function display_number
;	-----------------------------------------
_display_number:
	mov	r7,dpl
;	main.c:80: for(i=0; i<3; i++){
	mov	r6,#0x00
00102$:
;	main.c:81: temp = iNum % 10;
	mov	ar4,r7
	mov	r5,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	mov	dpl,r4
	mov	dph,r5
	push	ar6
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r2,dpl
	pop	ar4
	pop	ar5
;	main.c:82: iNum = iNum / 10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	lcall	__divsint
	mov	r4,dpl
	pop	ar2
	pop	ar6
	mov	ar7,r4
;	main.c:86: LED7SEG_ADDR0 = i & 0x01;
	mov	a,r6
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_2,c
;	main.c:87: LED7SEG_ADDR1 = i & 0x02;
	mov	a,r6
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_3,c
;	main.c:88: LED7SEG_ADDR2 = i & 0x04;
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_4,c
;	main.c:89: output_7seg(temp);
	mov	dpl,r2
	push	ar7
	push	ar6
	lcall	_output_7seg
;	main.c:90: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	main.c:91: output_7seg_off();
	lcall	_output_7seg_off
	pop	ar6
	pop	ar7
;	main.c:80: for(i=0; i<3; i++){
	inc	r6
	cjne	r6,#0x03,00111$
00111$:
	jc	00102$
;	main.c:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	main.c:95: void init(){
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	main.c:96: P3_2 = 1;             //Thiet lap chan P3_2 lam chan vao
;	assignBit
	setb	_P3_2
;	main.c:97: P3_3 = 1;             //Thiet lap chan P3_3 lam chan vao
;	assignBit
	setb	_P3_3
;	main.c:99: EX0  = 1;             //Cho phep ngat ngoai 0
;	assignBit
	setb	_EX0
;	main.c:100: IT0  = 1;            //Ngat theo suon
;	assignBit
	setb	_IT0
;	main.c:102: EX1  = 1;             //Cho phep ngat ngoai 1
;	assignBit
	setb	_EX1
;	main.c:103: IT1  = 1;            //Ngat theo suon
;	assignBit
	setb	_IT1
;	main.c:104: EA   = 1;            //global interrupt enable
;	assignBit
	setb	_EA
;	main.c:109: TMOD = TMOD & 0xF0;
	anl	_TMOD,#0xf0
;	main.c:110: TMOD = TMOD | 0x01;
	orl	_TMOD,#0x01
;	main.c:111: TH0  = TH0_50ms;    //Khoi tao T0
	mov	_TH0,#0x4c
;	main.c:112: TL0  = TL0_50ms;    //Tuong duong 15536
	mov	_TL0,#0x00
;	main.c:113: TF0  = 0;             //Xoa co tran timer 0
;	assignBit
	clr	_TF0
;	main.c:114: TR0  = 1;             //Khoi dong timer 0
;	assignBit
	setb	_TR0
;	main.c:115: ET0  = 1;            //cho phep ngat timer 0
;	assignBit
	setb	_ET0
;	main.c:116: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:120: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:121: init();
	lcall	_init
;	main.c:122: while(1){
00102$:
;	main.c:123: display_number(count);
	mov	dpl,_count
	lcall	_display_number
;	main.c:125: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_mask:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x6f	; 111	'o'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
