;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module t_t
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ir_rx_isr
	.globl _main
	.globl _strlen
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
	.globl _LCD_GotoXY_PARM_2
	.globl _ir_in_progress
	.globl _ir_bit_count
	.globl _ir_code
	.globl _LCD_Send_Command
	.globl _Wait_For_LCD
	.globl _LCD_init
	.globl _LCD_Write_One_Char
	.globl _LCD_Write_String
	.globl _LCD_GotoXY
	.globl _Delay_ms
	.globl _Delay_us
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
_ir_code::
	.ds 4
_ir_bit_count::
	.ds 1
_ir_in_progress::
	.ds 2
_LCD_GotoXY_PARM_2:
	.ds 1
_ir_rx_isr_prev_bit_65536_56:
	.ds 1
_ir_rx_isr_data_byte_65536_56:
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
	ljmp	_ir_rx_isr
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
;------------------------------------------------------------
;Allocation info for local variables in function 'ir_rx_isr'
;------------------------------------------------------------
;prev_bit                  Allocated with name '_ir_rx_isr_prev_bit_65536_56'
;data_byte                 Allocated with name '_ir_rx_isr_data_byte_65536_56'
;curr_bit                  Allocated to registers r7 
;------------------------------------------------------------
;	tét.c:119: static unsigned char prev_bit = 1;
	mov	_ir_rx_isr_prev_bit_65536_56,#0x01
;	tét.c:120: static unsigned char data_byte = 0;
	mov	_ir_rx_isr_data_byte_65536_56,#0x00
;	tét.c:9: volatile unsigned long ir_code = 0;
	clr	a
	mov	_ir_code,a
	mov	(_ir_code + 1),a
	mov	(_ir_code + 2),a
	mov	(_ir_code + 3),a
;	tét.c:10: volatile unsigned char ir_bit_count = 0;
;	1-genFromRTrack replaced	mov	_ir_bit_count,#0x00
	mov	_ir_bit_count,a
;	tét.c:11: volatile int ir_in_progress = 0;
	mov	_ir_in_progress,a
	mov	(_ir_in_progress + 1),a
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
;Allocation info for local variables in function 'LCD_Send_Command'
;------------------------------------------------------------
;x                         Allocated to registers 
;------------------------------------------------------------
;	tét.c:15: void LCD_Send_Command(unsigned char x)
;	-----------------------------------------
;	 function LCD_Send_Command
;	-----------------------------------------
_LCD_Send_Command:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_P0,dpl
;	tét.c:18: LCD_RS=0; //Chon thanh ghi lenh
;	assignBit
	clr	_P2_6
;	tét.c:19: LCD_RW=0; //De ghi du lieu
;	assignBit
	clr	_P2_5
;	tét.c:20: LCD_EN=1;
;	assignBit
	setb	_P2_7
;	tét.c:21: Delay_us(100);
	mov	dptr,#0x0064
	lcall	_Delay_us
;	tét.c:22: LCD_EN=0;
;	assignBit
	clr	_P2_7
;	tét.c:23: Wait_For_LCD(); //Doi cho LCD san sang
	lcall	_Wait_For_LCD
;	tét.c:24: LCD_EN=1;
;	assignBit
	setb	_P2_7
;	tét.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Wait_For_LCD'
;------------------------------------------------------------
;	tét.c:27: void Wait_For_LCD()
;	-----------------------------------------
;	 function Wait_For_LCD
;	-----------------------------------------
_Wait_For_LCD:
;	tét.c:29: Delay_us(100);
	mov	dptr,#0x0064
;	tét.c:30: }
	ljmp	_Delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_init'
;------------------------------------------------------------
;	tét.c:31: void LCD_init()
;	-----------------------------------------
;	 function LCD_init
;	-----------------------------------------
_LCD_init:
;	tét.c:33: LCD_Send_Command(0x38); //Chon che do 8 bit, 2 hang cho LCD
	mov	dpl,#0x38
	lcall	_LCD_Send_Command
;	tét.c:34: LCD_Send_Command(0x0E); //Bat hien thi, nhap nhay con tro
	mov	dpl,#0x0e
	lcall	_LCD_Send_Command
;	tét.c:35: LCD_Send_Command(0x01); //Xoa man hinh
	mov	dpl,#0x01
	lcall	_LCD_Send_Command
;	tét.c:36: LCD_Send_Command(0x80); //Ve dau dong
	mov	dpl,#0x80
;	tét.c:37: }
	ljmp	_LCD_Send_Command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Write_One_Char'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	tét.c:40: void LCD_Write_One_Char(unsigned char c)
;	-----------------------------------------
;	 function LCD_Write_One_Char
;	-----------------------------------------
_LCD_Write_One_Char:
	mov	_P0,dpl
;	tét.c:43: LCD_RS=1; //Chon thanh ghi du lieu
;	assignBit
	setb	_P2_6
;	tét.c:44: LCD_RW=0;
;	assignBit
	clr	_P2_5
;	tét.c:45: LCD_EN=1;
;	assignBit
	setb	_P2_7
;	tét.c:46: Delay_us(10);
	mov	dptr,#0x000a
	lcall	_Delay_us
;	tét.c:47: LCD_EN=0;
;	assignBit
	clr	_P2_7
;	tét.c:48: Wait_For_LCD();
	lcall	_Wait_For_LCD
;	tét.c:49: LCD_EN=1;
;	assignBit
	setb	_P2_7
;	tét.c:50: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Write_String'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;length                    Allocated to registers 
;------------------------------------------------------------
;	tét.c:52: void LCD_Write_String(unsigned char *s)
;	-----------------------------------------
;	 function LCD_Write_String
;	-----------------------------------------
_LCD_Write_String:
;	tét.c:55: length=strlen(s); //Lay do dai xau
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	tét.c:56: while(length!=0)
00101$:
	mov	a,r3
	jz	00104$
;	tét.c:58: LCD_Write_One_Char(*s); //Ghi ra LCD gia tri duoc tro boi con tro
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_LCD_Write_One_Char
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	tét.c:59: s++; //Tang con tro
;	tét.c:60: length--;
	dec	r3
	sjmp	00101$
00104$:
;	tét.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_GotoXY'
;------------------------------------------------------------
;col                       Allocated with name '_LCD_GotoXY_PARM_2'
;row                       Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	tét.c:64: void LCD_GotoXY(char row, char col)
;	-----------------------------------------
;	 function LCD_GotoXY
;	-----------------------------------------
_LCD_GotoXY:
	mov	r7,dpl
;	tét.c:67: if (row == 2)
	cjne	r7,#0x02,00102$
;	tét.c:68: LCD_Send_Command(0xC0);      //cursor to fist col in row 2
	mov	dpl,#0xc0
	lcall	_LCD_Send_Command
	sjmp	00112$
00102$:
;	tét.c:70: LCD_Send_Command(0x80);      //cursor to fist col in row 1 (default)
	mov	dpl,#0x80
	lcall	_LCD_Send_Command
;	tét.c:71: for (i = 0; i < col; i++)
00112$:
	mov	r7,#0x00
00106$:
	clr	c
	mov	a,r7
	subb	a,_LCD_GotoXY_PARM_2
	jnc	00108$
;	tét.c:72: LCD_Send_Command(0x14);      //cursor to fist col in row 1 (default)
	mov	dpl,#0x14
	push	ar7
	lcall	_LCD_Send_Command
	pop	ar7
;	tét.c:71: for (i = 0; i < col; i++)
	inc	r7
	sjmp	00106$
00108$:
;	tét.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_ms'
;------------------------------------------------------------
;interval                  Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	tét.c:75: void Delay_ms(int interval)
;	-----------------------------------------
;	 function Delay_ms
;	-----------------------------------------
_Delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	tét.c:78: for(i=0;i<1000;i++)
	mov	r4,#0x00
	mov	r5,#0x00
;	tét.c:80: for(j=0;j<interval;j++);
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
;	tét.c:78: for(i=0;i<1000;i++)
	inc	r4
	cjne	r4,#0x00,00126$
	inc	r5
00126$:
	clr	c
	mov	a,r4
	subb	a,#0xe8
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x83
	jc	00111$
;	tét.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_us'
;------------------------------------------------------------
;interval                  Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	tét.c:84: void Delay_us(int interval)
;	-----------------------------------------
;	 function Delay_us
;	-----------------------------------------
_Delay_us:
	mov	r6,dpl
	mov	r7,dph
;	tét.c:87: for(j=0;j<interval;j++);
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	tét.c:88: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	tét.c:94: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	tét.c:96: TMOD = 0x01;    //timer 0 mode 1
	mov	_TMOD,#0x01
;	tét.c:97: TH0 = TH0_50us;
	mov	_TH0,#0x3c
;	tét.c:98: TL0 = TL0_50us;
	mov	_TL0,#0xb0
;	tét.c:100: IT0 = 1;        //external interrupt 0, falling edge trigger
;	assignBit
	setb	_IT0
;	tét.c:101: EX0 = 1;
;	assignBit
	setb	_EX0
;	tét.c:102: EA  = 1;
;	assignBit
	setb	_EA
;	tét.c:104: TR0 = 1;
;	assignBit
	setb	_TR0
;	tét.c:106: while(1)
00105$:
;	tét.c:108: if (!ir_in_progress && ir_bit_count > 0)
	mov	a,_ir_in_progress
	orl	a,(_ir_in_progress + 1)
	jnz	00105$
	mov	a,_ir_bit_count
	jz	00105$
;	tét.c:112: ir_bit_count = 0;
	mov	_ir_bit_count,#0x00
;	tét.c:115: }
	sjmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'ir_rx_isr'
;------------------------------------------------------------
;prev_bit                  Allocated with name '_ir_rx_isr_prev_bit_65536_56'
;data_byte                 Allocated with name '_ir_rx_isr_data_byte_65536_56'
;curr_bit                  Allocated to registers r7 
;------------------------------------------------------------
;	tét.c:117: void ir_rx_isr() __interrupt IE0_VECTOR
;	-----------------------------------------
;	 function ir_rx_isr
;	-----------------------------------------
_ir_rx_isr:
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
;	tét.c:122: if (ir_in_progress)
	mov	a,_ir_in_progress
	orl	a,(_ir_in_progress + 1)
	jz	00121$
;	tét.c:125: unsigned char curr_bit = IR_PIN;
	mov	c,_P3_2
	clr	a
	rlc	a
;	tét.c:126: if (curr_bit && !prev_bit)
	mov	r7,a
	jz	00115$
	mov	a,_ir_rx_isr_prev_bit_65536_56
;	tét.c:129: data_byte = 0;
	jnz	00115$
	mov	_ir_rx_isr_data_byte_65536_56,a
	sjmp	00116$
00115$:
;	tét.c:131: else if (!curr_bit && prev_bit)
	mov	a,r7
	jnz	00111$
	mov	a,_ir_rx_isr_prev_bit_65536_56
	jz	00111$
;	tét.c:134: if (ir_bit_count < 32)
	mov	a,#0x100 - 0x20
	add	a,_ir_bit_count
	jc	00116$
;	tét.c:136: data_byte >>= 1;
	mov	a,_ir_rx_isr_data_byte_65536_56
	clr	c
	rrc	a
	mov	_ir_rx_isr_data_byte_65536_56,a
;	tét.c:137: if (TH0 < 0x20)
	mov	a,#0x100 - 0x20
	add	a,_TH0
	jc	00102$
;	tét.c:139: data_byte |= 0x80;
	orl	_ir_rx_isr_data_byte_65536_56,#0x80
00102$:
;	tét.c:141: ir_bit_count++;
	mov	a,_ir_bit_count
	inc	a
	mov	_ir_bit_count,a
	sjmp	00116$
00111$:
;	tét.c:144: else if (!curr_bit && !prev_bit)
	mov	a,r7
	jnz	00116$
	mov	a,_ir_rx_isr_prev_bit_65536_56
	jnz	00116$
;	tét.c:147: if (ir_bit_count == 32)
	mov	a,#0x20
	cjne	a,_ir_bit_count,00106$
;	tét.c:149: ir_code = (unsigned long)data_byte;
	mov	_ir_code,_ir_rx_isr_data_byte_65536_56
	mov	(_ir_code + 1),#0x00
	mov	(_ir_code + 2),#0x00
	mov	(_ir_code + 3),#0x00
00106$:
;	tét.c:151: ir_in_progress = 0;
	clr	a
	mov	_ir_in_progress,a
	mov	(_ir_in_progress + 1),a
00116$:
;	tét.c:153: prev_bit = curr_bit;
	mov	_ir_rx_isr_prev_bit_65536_56,r7
	sjmp	00122$
00121$:
;	tét.c:158: if (!IR_PIN)
	jb	_P3_2,00122$
;	tét.c:160: ir_in_progress = 1;
	mov	_ir_in_progress,#0x01
	mov	(_ir_in_progress + 1),#0x00
;	tét.c:161: ir_bit_count = 0;
	mov	_ir_bit_count,#0x00
;	tét.c:162: prev_bit = 0;
	mov	_ir_rx_isr_prev_bit_65536_56,#0x00
00122$:
;	tét.c:165: LCD_init();
	lcall	_LCD_init
;	tét.c:166: LCD_Write_String(ir_code);
	mov	r5,_ir_code
	mov	r6,(_ir_code + 1)
	mov	r7,(_ir_code + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_LCD_Write_String
;	tét.c:168: }
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
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
