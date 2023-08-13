                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module t_t
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ir_rx_isr
                                     12 	.globl _main
                                     13 	.globl _strlen
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _LCD_GotoXY_PARM_2
                                    111 	.globl _ir_in_progress
                                    112 	.globl _ir_bit_count
                                    113 	.globl _ir_code
                                    114 	.globl _LCD_Send_Command
                                    115 	.globl _Wait_For_LCD
                                    116 	.globl _LCD_init
                                    117 	.globl _LCD_Write_One_Char
                                    118 	.globl _LCD_Write_String
                                    119 	.globl _LCD_GotoXY
                                    120 	.globl _Delay_ms
                                    121 	.globl _Delay_us
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable register banks
                                    230 ;--------------------------------------------------------
                                    231 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        232 	.ds 8
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable bit register bank
                                    235 ;--------------------------------------------------------
                                    236 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        237 bits:
      000020                        238 	.ds 1
                           008000   239 	b0 = bits[0]
                           008100   240 	b1 = bits[1]
                           008200   241 	b2 = bits[2]
                           008300   242 	b3 = bits[3]
                           008400   243 	b4 = bits[4]
                           008500   244 	b5 = bits[5]
                           008600   245 	b6 = bits[6]
                           008700   246 	b7 = bits[7]
                                    247 ;--------------------------------------------------------
                                    248 ; internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area DSEG    (DATA)
      000011                        251 _ir_code::
      000011                        252 	.ds 4
      000015                        253 _ir_bit_count::
      000015                        254 	.ds 1
      000016                        255 _ir_in_progress::
      000016                        256 	.ds 2
      000018                        257 _LCD_GotoXY_PARM_2:
      000018                        258 	.ds 1
      000019                        259 _ir_rx_isr_prev_bit_65536_56:
      000019                        260 	.ds 1
      00001A                        261 _ir_rx_isr_data_byte_65536_56:
      00001A                        262 	.ds 1
                                    263 ;--------------------------------------------------------
                                    264 ; overlayable items in internal ram
                                    265 ;--------------------------------------------------------
                                    266 	.area	OSEG    (OVR,DATA)
                                    267 	.area	OSEG    (OVR,DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; Stack segment in internal ram
                                    270 ;--------------------------------------------------------
                                    271 	.area	SSEG
      000021                        272 __start__stack:
      000021                        273 	.ds	1
                                    274 
                                    275 ;--------------------------------------------------------
                                    276 ; indirectly addressable internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area ISEG    (DATA)
                                    279 ;--------------------------------------------------------
                                    280 ; absolute internal ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area IABS    (ABS,DATA)
                                    283 	.area IABS    (ABS,DATA)
                                    284 ;--------------------------------------------------------
                                    285 ; bit data
                                    286 ;--------------------------------------------------------
                                    287 	.area BSEG    (BIT)
                                    288 ;--------------------------------------------------------
                                    289 ; paged external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area PSEG    (PAG,XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; external ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XSEG    (XDATA)
                                    296 ;--------------------------------------------------------
                                    297 ; absolute external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area XABS    (ABS,XDATA)
                                    300 ;--------------------------------------------------------
                                    301 ; external initialized ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area XISEG   (XDATA)
                                    304 	.area HOME    (CODE)
                                    305 	.area GSINIT0 (CODE)
                                    306 	.area GSINIT1 (CODE)
                                    307 	.area GSINIT2 (CODE)
                                    308 	.area GSINIT3 (CODE)
                                    309 	.area GSINIT4 (CODE)
                                    310 	.area GSINIT5 (CODE)
                                    311 	.area GSINIT  (CODE)
                                    312 	.area GSFINAL (CODE)
                                    313 	.area CSEG    (CODE)
                                    314 ;--------------------------------------------------------
                                    315 ; interrupt vector
                                    316 ;--------------------------------------------------------
                                    317 	.area HOME    (CODE)
      000009                        318 __interrupt_vect:
      000009 02 00 12         [24]  319 	ljmp	__sdcc_gsinit_startup
      00000C 02 02 EE         [24]  320 	ljmp	_ir_rx_isr
                                    321 ;--------------------------------------------------------
                                    322 ; global & static initialisations
                                    323 ;--------------------------------------------------------
                                    324 	.area HOME    (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.area GSFINAL (CODE)
                                    327 	.area GSINIT  (CODE)
                                    328 	.globl __sdcc_gsinit_startup
                                    329 	.globl __sdcc_program_startup
                                    330 	.globl __start__stack
                                    331 	.globl __mcs51_genXINIT
                                    332 	.globl __mcs51_genXRAMCLEAR
                                    333 	.globl __mcs51_genRAMCLEAR
                                    334 ;------------------------------------------------------------
                                    335 ;Allocation info for local variables in function 'ir_rx_isr'
                                    336 ;------------------------------------------------------------
                                    337 ;prev_bit                  Allocated with name '_ir_rx_isr_prev_bit_65536_56'
                                    338 ;data_byte                 Allocated with name '_ir_rx_isr_data_byte_65536_56'
                                    339 ;curr_bit                  Allocated to registers r7 
                                    340 ;------------------------------------------------------------
                                    341 ;	tét.c:119: static unsigned char prev_bit = 1;
      000080 75 19 01         [24]  342 	mov	_ir_rx_isr_prev_bit_65536_56,#0x01
                                    343 ;	tét.c:120: static unsigned char data_byte = 0;
      000083 75 1A 00         [24]  344 	mov	_ir_rx_isr_data_byte_65536_56,#0x00
                                    345 ;	tét.c:9: volatile unsigned long ir_code = 0;
      000086 E4               [12]  346 	clr	a
      000087 F5 11            [12]  347 	mov	_ir_code,a
      000089 F5 12            [12]  348 	mov	(_ir_code + 1),a
      00008B F5 13            [12]  349 	mov	(_ir_code + 2),a
      00008D F5 14            [12]  350 	mov	(_ir_code + 3),a
                                    351 ;	tét.c:10: volatile unsigned char ir_bit_count = 0;
                                    352 ;	1-genFromRTrack replaced	mov	_ir_bit_count,#0x00
      00008F F5 15            [12]  353 	mov	_ir_bit_count,a
                                    354 ;	tét.c:11: volatile int ir_in_progress = 0;
      000091 F5 16            [12]  355 	mov	_ir_in_progress,a
      000093 F5 17            [12]  356 	mov	(_ir_in_progress + 1),a
                                    357 	.area GSFINAL (CODE)
      000098 02 00 0F         [24]  358 	ljmp	__sdcc_program_startup
                                    359 ;--------------------------------------------------------
                                    360 ; Home
                                    361 ;--------------------------------------------------------
                                    362 	.area HOME    (CODE)
                                    363 	.area HOME    (CODE)
      00000F                        364 __sdcc_program_startup:
      00000F 02 02 CE         [24]  365 	ljmp	_main
                                    366 ;	return from main will return to caller
                                    367 ;--------------------------------------------------------
                                    368 ; code
                                    369 ;--------------------------------------------------------
                                    370 	.area CSEG    (CODE)
                                    371 ;------------------------------------------------------------
                                    372 ;Allocation info for local variables in function 'LCD_Send_Command'
                                    373 ;------------------------------------------------------------
                                    374 ;x                         Allocated to registers 
                                    375 ;------------------------------------------------------------
                                    376 ;	tét.c:15: void LCD_Send_Command(unsigned char x)
                                    377 ;	-----------------------------------------
                                    378 ;	 function LCD_Send_Command
                                    379 ;	-----------------------------------------
      0001C3                        380 _LCD_Send_Command:
                           000007   381 	ar7 = 0x07
                           000006   382 	ar6 = 0x06
                           000005   383 	ar5 = 0x05
                           000004   384 	ar4 = 0x04
                           000003   385 	ar3 = 0x03
                           000002   386 	ar2 = 0x02
                           000001   387 	ar1 = 0x01
                           000000   388 	ar0 = 0x00
      0001C3 85 82 80         [24]  389 	mov	_P0,dpl
                                    390 ;	tét.c:18: LCD_RS=0; //Chon thanh ghi lenh
                                    391 ;	assignBit
      0001C6 C2 A6            [12]  392 	clr	_P2_6
                                    393 ;	tét.c:19: LCD_RW=0; //De ghi du lieu
                                    394 ;	assignBit
      0001C8 C2 A5            [12]  395 	clr	_P2_5
                                    396 ;	tét.c:20: LCD_EN=1;
                                    397 ;	assignBit
      0001CA D2 A7            [12]  398 	setb	_P2_7
                                    399 ;	tét.c:21: Delay_us(100);
      0001CC 90 00 64         [24]  400 	mov	dptr,#0x0064
      0001CF 12 02 AF         [24]  401 	lcall	_Delay_us
                                    402 ;	tét.c:22: LCD_EN=0;
                                    403 ;	assignBit
      0001D2 C2 A7            [12]  404 	clr	_P2_7
                                    405 ;	tét.c:23: Wait_For_LCD(); //Doi cho LCD san sang
      0001D4 12 01 DA         [24]  406 	lcall	_Wait_For_LCD
                                    407 ;	tét.c:24: LCD_EN=1;
                                    408 ;	assignBit
      0001D7 D2 A7            [12]  409 	setb	_P2_7
                                    410 ;	tét.c:25: }
      0001D9 22               [24]  411 	ret
                                    412 ;------------------------------------------------------------
                                    413 ;Allocation info for local variables in function 'Wait_For_LCD'
                                    414 ;------------------------------------------------------------
                                    415 ;	tét.c:27: void Wait_For_LCD()
                                    416 ;	-----------------------------------------
                                    417 ;	 function Wait_For_LCD
                                    418 ;	-----------------------------------------
      0001DA                        419 _Wait_For_LCD:
                                    420 ;	tét.c:29: Delay_us(100);
      0001DA 90 00 64         [24]  421 	mov	dptr,#0x0064
                                    422 ;	tét.c:30: }
      0001DD 02 02 AF         [24]  423 	ljmp	_Delay_us
                                    424 ;------------------------------------------------------------
                                    425 ;Allocation info for local variables in function 'LCD_init'
                                    426 ;------------------------------------------------------------
                                    427 ;	tét.c:31: void LCD_init()
                                    428 ;	-----------------------------------------
                                    429 ;	 function LCD_init
                                    430 ;	-----------------------------------------
      0001E0                        431 _LCD_init:
                                    432 ;	tét.c:33: LCD_Send_Command(0x38); //Chon che do 8 bit, 2 hang cho LCD
      0001E0 75 82 38         [24]  433 	mov	dpl,#0x38
      0001E3 12 01 C3         [24]  434 	lcall	_LCD_Send_Command
                                    435 ;	tét.c:34: LCD_Send_Command(0x0E); //Bat hien thi, nhap nhay con tro
      0001E6 75 82 0E         [24]  436 	mov	dpl,#0x0e
      0001E9 12 01 C3         [24]  437 	lcall	_LCD_Send_Command
                                    438 ;	tét.c:35: LCD_Send_Command(0x01); //Xoa man hinh
      0001EC 75 82 01         [24]  439 	mov	dpl,#0x01
      0001EF 12 01 C3         [24]  440 	lcall	_LCD_Send_Command
                                    441 ;	tét.c:36: LCD_Send_Command(0x80); //Ve dau dong
      0001F2 75 82 80         [24]  442 	mov	dpl,#0x80
                                    443 ;	tét.c:37: }
      0001F5 02 01 C3         [24]  444 	ljmp	_LCD_Send_Command
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'LCD_Write_One_Char'
                                    447 ;------------------------------------------------------------
                                    448 ;c                         Allocated to registers 
                                    449 ;------------------------------------------------------------
                                    450 ;	tét.c:40: void LCD_Write_One_Char(unsigned char c)
                                    451 ;	-----------------------------------------
                                    452 ;	 function LCD_Write_One_Char
                                    453 ;	-----------------------------------------
      0001F8                        454 _LCD_Write_One_Char:
      0001F8 85 82 80         [24]  455 	mov	_P0,dpl
                                    456 ;	tét.c:43: LCD_RS=1; //Chon thanh ghi du lieu
                                    457 ;	assignBit
      0001FB D2 A6            [12]  458 	setb	_P2_6
                                    459 ;	tét.c:44: LCD_RW=0;
                                    460 ;	assignBit
      0001FD C2 A5            [12]  461 	clr	_P2_5
                                    462 ;	tét.c:45: LCD_EN=1;
                                    463 ;	assignBit
      0001FF D2 A7            [12]  464 	setb	_P2_7
                                    465 ;	tét.c:46: Delay_us(10);
      000201 90 00 0A         [24]  466 	mov	dptr,#0x000a
      000204 12 02 AF         [24]  467 	lcall	_Delay_us
                                    468 ;	tét.c:47: LCD_EN=0;
                                    469 ;	assignBit
      000207 C2 A7            [12]  470 	clr	_P2_7
                                    471 ;	tét.c:48: Wait_For_LCD();
      000209 12 01 DA         [24]  472 	lcall	_Wait_For_LCD
                                    473 ;	tét.c:49: LCD_EN=1;
                                    474 ;	assignBit
      00020C D2 A7            [12]  475 	setb	_P2_7
                                    476 ;	tét.c:50: }
      00020E 22               [24]  477 	ret
                                    478 ;------------------------------------------------------------
                                    479 ;Allocation info for local variables in function 'LCD_Write_String'
                                    480 ;------------------------------------------------------------
                                    481 ;s                         Allocated to registers r5 r6 r7 
                                    482 ;length                    Allocated to registers 
                                    483 ;------------------------------------------------------------
                                    484 ;	tét.c:52: void LCD_Write_String(unsigned char *s)
                                    485 ;	-----------------------------------------
                                    486 ;	 function LCD_Write_String
                                    487 ;	-----------------------------------------
      00020F                        488 _LCD_Write_String:
                                    489 ;	tét.c:55: length=strlen(s); //Lay do dai xau
      00020F AD 82            [24]  490 	mov	r5,dpl
      000211 AE 83            [24]  491 	mov	r6,dph
      000213 AF F0            [24]  492 	mov	r7,b
      000215 C0 07            [24]  493 	push	ar7
      000217 C0 06            [24]  494 	push	ar6
      000219 C0 05            [24]  495 	push	ar5
      00021B 12 03 A4         [24]  496 	lcall	_strlen
      00021E AB 82            [24]  497 	mov	r3,dpl
      000220 AC 83            [24]  498 	mov	r4,dph
      000222 D0 05            [24]  499 	pop	ar5
      000224 D0 06            [24]  500 	pop	ar6
      000226 D0 07            [24]  501 	pop	ar7
                                    502 ;	tét.c:56: while(length!=0)
      000228                        503 00101$:
      000228 EB               [12]  504 	mov	a,r3
      000229 60 27            [24]  505 	jz	00104$
                                    506 ;	tét.c:58: LCD_Write_One_Char(*s); //Ghi ra LCD gia tri duoc tro boi con tro
      00022B 8D 82            [24]  507 	mov	dpl,r5
      00022D 8E 83            [24]  508 	mov	dph,r6
      00022F 8F F0            [24]  509 	mov	b,r7
      000231 12 03 BC         [24]  510 	lcall	__gptrget
      000234 FC               [12]  511 	mov	r4,a
      000235 A3               [24]  512 	inc	dptr
      000236 AD 82            [24]  513 	mov	r5,dpl
      000238 AE 83            [24]  514 	mov	r6,dph
      00023A 8C 82            [24]  515 	mov	dpl,r4
      00023C C0 07            [24]  516 	push	ar7
      00023E C0 06            [24]  517 	push	ar6
      000240 C0 05            [24]  518 	push	ar5
      000242 C0 03            [24]  519 	push	ar3
      000244 12 01 F8         [24]  520 	lcall	_LCD_Write_One_Char
      000247 D0 03            [24]  521 	pop	ar3
      000249 D0 05            [24]  522 	pop	ar5
      00024B D0 06            [24]  523 	pop	ar6
      00024D D0 07            [24]  524 	pop	ar7
                                    525 ;	tét.c:59: s++; //Tang con tro
                                    526 ;	tét.c:60: length--;
      00024F 1B               [12]  527 	dec	r3
      000250 80 D6            [24]  528 	sjmp	00101$
      000252                        529 00104$:
                                    530 ;	tét.c:62: }
      000252 22               [24]  531 	ret
                                    532 ;------------------------------------------------------------
                                    533 ;Allocation info for local variables in function 'LCD_GotoXY'
                                    534 ;------------------------------------------------------------
                                    535 ;col                       Allocated with name '_LCD_GotoXY_PARM_2'
                                    536 ;row                       Allocated to registers r7 
                                    537 ;i                         Allocated to registers r7 
                                    538 ;------------------------------------------------------------
                                    539 ;	tét.c:64: void LCD_GotoXY(char row, char col)
                                    540 ;	-----------------------------------------
                                    541 ;	 function LCD_GotoXY
                                    542 ;	-----------------------------------------
      000253                        543 _LCD_GotoXY:
      000253 AF 82            [24]  544 	mov	r7,dpl
                                    545 ;	tét.c:67: if (row == 2)
      000255 BF 02 08         [24]  546 	cjne	r7,#0x02,00102$
                                    547 ;	tét.c:68: LCD_Send_Command(0xC0);      //cursor to fist col in row 2
      000258 75 82 C0         [24]  548 	mov	dpl,#0xc0
      00025B 12 01 C3         [24]  549 	lcall	_LCD_Send_Command
      00025E 80 06            [24]  550 	sjmp	00112$
      000260                        551 00102$:
                                    552 ;	tét.c:70: LCD_Send_Command(0x80);      //cursor to fist col in row 1 (default)
      000260 75 82 80         [24]  553 	mov	dpl,#0x80
      000263 12 01 C3         [24]  554 	lcall	_LCD_Send_Command
                                    555 ;	tét.c:71: for (i = 0; i < col; i++)
      000266                        556 00112$:
      000266 7F 00            [12]  557 	mov	r7,#0x00
      000268                        558 00106$:
      000268 C3               [12]  559 	clr	c
      000269 EF               [12]  560 	mov	a,r7
      00026A 95 18            [12]  561 	subb	a,_LCD_GotoXY_PARM_2
      00026C 50 0D            [24]  562 	jnc	00108$
                                    563 ;	tét.c:72: LCD_Send_Command(0x14);      //cursor to fist col in row 1 (default)
      00026E 75 82 14         [24]  564 	mov	dpl,#0x14
      000271 C0 07            [24]  565 	push	ar7
      000273 12 01 C3         [24]  566 	lcall	_LCD_Send_Command
      000276 D0 07            [24]  567 	pop	ar7
                                    568 ;	tét.c:71: for (i = 0; i < col; i++)
      000278 0F               [12]  569 	inc	r7
      000279 80 ED            [24]  570 	sjmp	00106$
      00027B                        571 00108$:
                                    572 ;	tét.c:73: }
      00027B 22               [24]  573 	ret
                                    574 ;------------------------------------------------------------
                                    575 ;Allocation info for local variables in function 'Delay_ms'
                                    576 ;------------------------------------------------------------
                                    577 ;interval                  Allocated to registers r6 r7 
                                    578 ;i                         Allocated to registers r4 r5 
                                    579 ;j                         Allocated to registers r2 r3 
                                    580 ;------------------------------------------------------------
                                    581 ;	tét.c:75: void Delay_ms(int interval)
                                    582 ;	-----------------------------------------
                                    583 ;	 function Delay_ms
                                    584 ;	-----------------------------------------
      00027C                        585 _Delay_ms:
      00027C AE 82            [24]  586 	mov	r6,dpl
      00027E AF 83            [24]  587 	mov	r7,dph
                                    588 ;	tét.c:78: for(i=0;i<1000;i++)
      000280 7C 00            [12]  589 	mov	r4,#0x00
      000282 7D 00            [12]  590 	mov	r5,#0x00
                                    591 ;	tét.c:80: for(j=0;j<interval;j++);
      000284                        592 00111$:
      000284 7A 00            [12]  593 	mov	r2,#0x00
      000286 7B 00            [12]  594 	mov	r3,#0x00
      000288                        595 00104$:
      000288 C3               [12]  596 	clr	c
      000289 EA               [12]  597 	mov	a,r2
      00028A 9E               [12]  598 	subb	a,r6
      00028B EB               [12]  599 	mov	a,r3
      00028C 64 80            [12]  600 	xrl	a,#0x80
      00028E 8F F0            [24]  601 	mov	b,r7
      000290 63 F0 80         [24]  602 	xrl	b,#0x80
      000293 95 F0            [12]  603 	subb	a,b
      000295 50 07            [24]  604 	jnc	00107$
      000297 0A               [12]  605 	inc	r2
      000298 BA 00 ED         [24]  606 	cjne	r2,#0x00,00104$
      00029B 0B               [12]  607 	inc	r3
      00029C 80 EA            [24]  608 	sjmp	00104$
      00029E                        609 00107$:
                                    610 ;	tét.c:78: for(i=0;i<1000;i++)
      00029E 0C               [12]  611 	inc	r4
      00029F BC 00 01         [24]  612 	cjne	r4,#0x00,00126$
      0002A2 0D               [12]  613 	inc	r5
      0002A3                        614 00126$:
      0002A3 C3               [12]  615 	clr	c
      0002A4 EC               [12]  616 	mov	a,r4
      0002A5 94 E8            [12]  617 	subb	a,#0xe8
      0002A7 ED               [12]  618 	mov	a,r5
      0002A8 64 80            [12]  619 	xrl	a,#0x80
      0002AA 94 83            [12]  620 	subb	a,#0x83
      0002AC 40 D6            [24]  621 	jc	00111$
                                    622 ;	tét.c:82: }
      0002AE 22               [24]  623 	ret
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'Delay_us'
                                    626 ;------------------------------------------------------------
                                    627 ;interval                  Allocated to registers r6 r7 
                                    628 ;j                         Allocated to registers r4 r5 
                                    629 ;------------------------------------------------------------
                                    630 ;	tét.c:84: void Delay_us(int interval)
                                    631 ;	-----------------------------------------
                                    632 ;	 function Delay_us
                                    633 ;	-----------------------------------------
      0002AF                        634 _Delay_us:
      0002AF AE 82            [24]  635 	mov	r6,dpl
      0002B1 AF 83            [24]  636 	mov	r7,dph
                                    637 ;	tét.c:87: for(j=0;j<interval;j++);
      0002B3 7C 00            [12]  638 	mov	r4,#0x00
      0002B5 7D 00            [12]  639 	mov	r5,#0x00
      0002B7                        640 00103$:
      0002B7 C3               [12]  641 	clr	c
      0002B8 EC               [12]  642 	mov	a,r4
      0002B9 9E               [12]  643 	subb	a,r6
      0002BA ED               [12]  644 	mov	a,r5
      0002BB 64 80            [12]  645 	xrl	a,#0x80
      0002BD 8F F0            [24]  646 	mov	b,r7
      0002BF 63 F0 80         [24]  647 	xrl	b,#0x80
      0002C2 95 F0            [12]  648 	subb	a,b
      0002C4 50 07            [24]  649 	jnc	00105$
      0002C6 0C               [12]  650 	inc	r4
      0002C7 BC 00 ED         [24]  651 	cjne	r4,#0x00,00103$
      0002CA 0D               [12]  652 	inc	r5
      0002CB 80 EA            [24]  653 	sjmp	00103$
      0002CD                        654 00105$:
                                    655 ;	tét.c:88: }
      0002CD 22               [24]  656 	ret
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'main'
                                    659 ;------------------------------------------------------------
                                    660 ;	tét.c:94: void main(void)
                                    661 ;	-----------------------------------------
                                    662 ;	 function main
                                    663 ;	-----------------------------------------
      0002CE                        664 _main:
                                    665 ;	tét.c:96: TMOD = 0x01;    //timer 0 mode 1
      0002CE 75 89 01         [24]  666 	mov	_TMOD,#0x01
                                    667 ;	tét.c:97: TH0 = TH0_50us;
      0002D1 75 8C 3C         [24]  668 	mov	_TH0,#0x3c
                                    669 ;	tét.c:98: TL0 = TL0_50us;
      0002D4 75 8A B0         [24]  670 	mov	_TL0,#0xb0
                                    671 ;	tét.c:100: IT0 = 1;        //external interrupt 0, falling edge trigger
                                    672 ;	assignBit
      0002D7 D2 88            [12]  673 	setb	_IT0
                                    674 ;	tét.c:101: EX0 = 1;
                                    675 ;	assignBit
      0002D9 D2 A8            [12]  676 	setb	_EX0
                                    677 ;	tét.c:102: EA  = 1;
                                    678 ;	assignBit
      0002DB D2 AF            [12]  679 	setb	_EA
                                    680 ;	tét.c:104: TR0 = 1;
                                    681 ;	assignBit
      0002DD D2 8C            [12]  682 	setb	_TR0
                                    683 ;	tét.c:106: while(1)
      0002DF                        684 00105$:
                                    685 ;	tét.c:108: if (!ir_in_progress && ir_bit_count > 0)
      0002DF E5 16            [12]  686 	mov	a,_ir_in_progress
      0002E1 45 17            [12]  687 	orl	a,(_ir_in_progress + 1)
      0002E3 70 FA            [24]  688 	jnz	00105$
      0002E5 E5 15            [12]  689 	mov	a,_ir_bit_count
      0002E7 60 F6            [24]  690 	jz	00105$
                                    691 ;	tét.c:112: ir_bit_count = 0;
      0002E9 75 15 00         [24]  692 	mov	_ir_bit_count,#0x00
                                    693 ;	tét.c:115: }
      0002EC 80 F1            [24]  694 	sjmp	00105$
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'ir_rx_isr'
                                    697 ;------------------------------------------------------------
                                    698 ;prev_bit                  Allocated with name '_ir_rx_isr_prev_bit_65536_56'
                                    699 ;data_byte                 Allocated with name '_ir_rx_isr_data_byte_65536_56'
                                    700 ;curr_bit                  Allocated to registers r7 
                                    701 ;------------------------------------------------------------
                                    702 ;	tét.c:117: void ir_rx_isr() __interrupt IE0_VECTOR
                                    703 ;	-----------------------------------------
                                    704 ;	 function ir_rx_isr
                                    705 ;	-----------------------------------------
      0002EE                        706 _ir_rx_isr:
      0002EE C0 20            [24]  707 	push	bits
      0002F0 C0 E0            [24]  708 	push	acc
      0002F2 C0 F0            [24]  709 	push	b
      0002F4 C0 82            [24]  710 	push	dpl
      0002F6 C0 83            [24]  711 	push	dph
      0002F8 C0 07            [24]  712 	push	(0+7)
      0002FA C0 06            [24]  713 	push	(0+6)
      0002FC C0 05            [24]  714 	push	(0+5)
      0002FE C0 04            [24]  715 	push	(0+4)
      000300 C0 03            [24]  716 	push	(0+3)
      000302 C0 02            [24]  717 	push	(0+2)
      000304 C0 01            [24]  718 	push	(0+1)
      000306 C0 00            [24]  719 	push	(0+0)
      000308 C0 D0            [24]  720 	push	psw
      00030A 75 D0 00         [24]  721 	mov	psw,#0x00
                                    722 ;	tét.c:122: if (ir_in_progress)
      00030D E5 16            [12]  723 	mov	a,_ir_in_progress
      00030F 45 17            [12]  724 	orl	a,(_ir_in_progress + 1)
      000311 60 53            [24]  725 	jz	00121$
                                    726 ;	tét.c:125: unsigned char curr_bit = IR_PIN;
      000313 A2 B2            [12]  727 	mov	c,_P3_2
      000315 E4               [12]  728 	clr	a
      000316 33               [12]  729 	rlc	a
                                    730 ;	tét.c:126: if (curr_bit && !prev_bit)
      000317 FF               [12]  731 	mov	r7,a
      000318 60 08            [24]  732 	jz	00115$
      00031A E5 19            [12]  733 	mov	a,_ir_rx_isr_prev_bit_65536_56
                                    734 ;	tét.c:129: data_byte = 0;
      00031C 70 04            [24]  735 	jnz	00115$
      00031E F5 1A            [12]  736 	mov	_ir_rx_isr_data_byte_65536_56,a
      000320 80 40            [24]  737 	sjmp	00116$
      000322                        738 00115$:
                                    739 ;	tét.c:131: else if (!curr_bit && prev_bit)
      000322 EF               [12]  740 	mov	a,r7
      000323 70 20            [24]  741 	jnz	00111$
      000325 E5 19            [12]  742 	mov	a,_ir_rx_isr_prev_bit_65536_56
      000327 60 1C            [24]  743 	jz	00111$
                                    744 ;	tét.c:134: if (ir_bit_count < 32)
      000329 74 E0            [12]  745 	mov	a,#0x100 - 0x20
      00032B 25 15            [12]  746 	add	a,_ir_bit_count
      00032D 40 33            [24]  747 	jc	00116$
                                    748 ;	tét.c:136: data_byte >>= 1;
      00032F E5 1A            [12]  749 	mov	a,_ir_rx_isr_data_byte_65536_56
      000331 C3               [12]  750 	clr	c
      000332 13               [12]  751 	rrc	a
      000333 F5 1A            [12]  752 	mov	_ir_rx_isr_data_byte_65536_56,a
                                    753 ;	tét.c:137: if (TH0 < 0x20)
      000335 74 E0            [12]  754 	mov	a,#0x100 - 0x20
      000337 25 8C            [12]  755 	add	a,_TH0
      000339 40 03            [24]  756 	jc	00102$
                                    757 ;	tét.c:139: data_byte |= 0x80;
      00033B 43 1A 80         [24]  758 	orl	_ir_rx_isr_data_byte_65536_56,#0x80
      00033E                        759 00102$:
                                    760 ;	tét.c:141: ir_bit_count++;
      00033E E5 15            [12]  761 	mov	a,_ir_bit_count
      000340 04               [12]  762 	inc	a
      000341 F5 15            [12]  763 	mov	_ir_bit_count,a
      000343 80 1D            [24]  764 	sjmp	00116$
      000345                        765 00111$:
                                    766 ;	tét.c:144: else if (!curr_bit && !prev_bit)
      000345 EF               [12]  767 	mov	a,r7
      000346 70 1A            [24]  768 	jnz	00116$
      000348 E5 19            [12]  769 	mov	a,_ir_rx_isr_prev_bit_65536_56
      00034A 70 16            [24]  770 	jnz	00116$
                                    771 ;	tét.c:147: if (ir_bit_count == 32)
      00034C 74 20            [12]  772 	mov	a,#0x20
      00034E B5 15 0C         [24]  773 	cjne	a,_ir_bit_count,00106$
                                    774 ;	tét.c:149: ir_code = (unsigned long)data_byte;
      000351 85 1A 11         [24]  775 	mov	_ir_code,_ir_rx_isr_data_byte_65536_56
      000354 75 12 00         [24]  776 	mov	(_ir_code + 1),#0x00
      000357 75 13 00         [24]  777 	mov	(_ir_code + 2),#0x00
      00035A 75 14 00         [24]  778 	mov	(_ir_code + 3),#0x00
      00035D                        779 00106$:
                                    780 ;	tét.c:151: ir_in_progress = 0;
      00035D E4               [12]  781 	clr	a
      00035E F5 16            [12]  782 	mov	_ir_in_progress,a
      000360 F5 17            [12]  783 	mov	(_ir_in_progress + 1),a
      000362                        784 00116$:
                                    785 ;	tét.c:153: prev_bit = curr_bit;
      000362 8F 19            [24]  786 	mov	_ir_rx_isr_prev_bit_65536_56,r7
      000364 80 0F            [24]  787 	sjmp	00122$
      000366                        788 00121$:
                                    789 ;	tét.c:158: if (!IR_PIN)
      000366 20 B2 0C         [24]  790 	jb	_P3_2,00122$
                                    791 ;	tét.c:160: ir_in_progress = 1;
      000369 75 16 01         [24]  792 	mov	_ir_in_progress,#0x01
      00036C 75 17 00         [24]  793 	mov	(_ir_in_progress + 1),#0x00
                                    794 ;	tét.c:161: ir_bit_count = 0;
      00036F 75 15 00         [24]  795 	mov	_ir_bit_count,#0x00
                                    796 ;	tét.c:162: prev_bit = 0;
      000372 75 19 00         [24]  797 	mov	_ir_rx_isr_prev_bit_65536_56,#0x00
      000375                        798 00122$:
                                    799 ;	tét.c:165: LCD_init();
      000375 12 01 E0         [24]  800 	lcall	_LCD_init
                                    801 ;	tét.c:166: LCD_Write_String(ir_code);
      000378 AD 11            [24]  802 	mov	r5,_ir_code
      00037A AE 12            [24]  803 	mov	r6,(_ir_code + 1)
      00037C AF 13            [24]  804 	mov	r7,(_ir_code + 2)
      00037E 8D 82            [24]  805 	mov	dpl,r5
      000380 8E 83            [24]  806 	mov	dph,r6
      000382 8F F0            [24]  807 	mov	b,r7
      000384 12 02 0F         [24]  808 	lcall	_LCD_Write_String
                                    809 ;	tét.c:168: }
      000387 D0 D0            [24]  810 	pop	psw
      000389 D0 00            [24]  811 	pop	(0+0)
      00038B D0 01            [24]  812 	pop	(0+1)
      00038D D0 02            [24]  813 	pop	(0+2)
      00038F D0 03            [24]  814 	pop	(0+3)
      000391 D0 04            [24]  815 	pop	(0+4)
      000393 D0 05            [24]  816 	pop	(0+5)
      000395 D0 06            [24]  817 	pop	(0+6)
      000397 D0 07            [24]  818 	pop	(0+7)
      000399 D0 83            [24]  819 	pop	dph
      00039B D0 82            [24]  820 	pop	dpl
      00039D D0 F0            [24]  821 	pop	b
      00039F D0 E0            [24]  822 	pop	acc
      0003A1 D0 20            [24]  823 	pop	bits
      0003A3 32               [24]  824 	reti
                                    825 	.area CSEG    (CODE)
                                    826 	.area CONST   (CODE)
                                    827 	.area XINIT   (CODE)
                                    828 	.area CABS    (ABS,CODE)
