                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _keyscan
                                     13 	.globl _strlen
                                     14 	.globl _TF2
                                     15 	.globl _EXF2
                                     16 	.globl _RCLK
                                     17 	.globl _TCLK
                                     18 	.globl _EXEN2
                                     19 	.globl _TR2
                                     20 	.globl _C_T2
                                     21 	.globl _CP_RL2
                                     22 	.globl _T2CON_7
                                     23 	.globl _T2CON_6
                                     24 	.globl _T2CON_5
                                     25 	.globl _T2CON_4
                                     26 	.globl _T2CON_3
                                     27 	.globl _T2CON_2
                                     28 	.globl _T2CON_1
                                     29 	.globl _T2CON_0
                                     30 	.globl _PT2
                                     31 	.globl _ET2
                                     32 	.globl _CY
                                     33 	.globl _AC
                                     34 	.globl _F0
                                     35 	.globl _RS1
                                     36 	.globl _RS0
                                     37 	.globl _OV
                                     38 	.globl _F1
                                     39 	.globl _P
                                     40 	.globl _PS
                                     41 	.globl _PT1
                                     42 	.globl _PX1
                                     43 	.globl _PT0
                                     44 	.globl _PX0
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _EA
                                     62 	.globl _ES
                                     63 	.globl _ET1
                                     64 	.globl _EX1
                                     65 	.globl _ET0
                                     66 	.globl _EX0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _SM0
                                     76 	.globl _SM1
                                     77 	.globl _SM2
                                     78 	.globl _REN
                                     79 	.globl _TB8
                                     80 	.globl _RB8
                                     81 	.globl _TI
                                     82 	.globl _RI
                                     83 	.globl _P1_7
                                     84 	.globl _P1_6
                                     85 	.globl _P1_5
                                     86 	.globl _P1_4
                                     87 	.globl _P1_3
                                     88 	.globl _P1_2
                                     89 	.globl _P1_1
                                     90 	.globl _P1_0
                                     91 	.globl _TF1
                                     92 	.globl _TR1
                                     93 	.globl _TF0
                                     94 	.globl _TR0
                                     95 	.globl _IE1
                                     96 	.globl _IT1
                                     97 	.globl _IE0
                                     98 	.globl _IT0
                                     99 	.globl _P0_7
                                    100 	.globl _P0_6
                                    101 	.globl _P0_5
                                    102 	.globl _P0_4
                                    103 	.globl _P0_3
                                    104 	.globl _P0_2
                                    105 	.globl _P0_1
                                    106 	.globl _P0_0
                                    107 	.globl _TH2
                                    108 	.globl _TL2
                                    109 	.globl _RCAP2H
                                    110 	.globl _RCAP2L
                                    111 	.globl _T2CON
                                    112 	.globl _B
                                    113 	.globl _ACC
                                    114 	.globl _PSW
                                    115 	.globl _IP
                                    116 	.globl _P3
                                    117 	.globl _IE
                                    118 	.globl _P2
                                    119 	.globl _SBUF
                                    120 	.globl _SCON
                                    121 	.globl _P1
                                    122 	.globl _TH1
                                    123 	.globl _TH0
                                    124 	.globl _TL1
                                    125 	.globl _TL0
                                    126 	.globl _TMOD
                                    127 	.globl _TCON
                                    128 	.globl _PCON
                                    129 	.globl _DPH
                                    130 	.globl _DPL
                                    131 	.globl _SP
                                    132 	.globl _P0
                                    133 	.globl _key
                                    134 	.globl _keypressed
                                    135 	.globl _num_to_hex
                                    136 	.globl _num
                                    137 	.globl _LCD_GotoXY_PARM_2
                                    138 	.globl _LCD_Send_Command
                                    139 	.globl _Wait_For_LCD
                                    140 	.globl _LCD_init
                                    141 	.globl _LCD_Write_One_Char
                                    142 	.globl _LCD_Write_String
                                    143 	.globl _LCD_GotoXY
                                    144 	.globl _Delay_ms
                                    145 	.globl _Delay_us
                                    146 ;--------------------------------------------------------
                                    147 ; special function registers
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0	=	0x0080
                           000081   152 _SP	=	0x0081
                           000082   153 _DPL	=	0x0082
                           000083   154 _DPH	=	0x0083
                           000087   155 _PCON	=	0x0087
                           000088   156 _TCON	=	0x0088
                           000089   157 _TMOD	=	0x0089
                           00008A   158 _TL0	=	0x008a
                           00008B   159 _TL1	=	0x008b
                           00008C   160 _TH0	=	0x008c
                           00008D   161 _TH1	=	0x008d
                           000090   162 _P1	=	0x0090
                           000098   163 _SCON	=	0x0098
                           000099   164 _SBUF	=	0x0099
                           0000A0   165 _P2	=	0x00a0
                           0000A8   166 _IE	=	0x00a8
                           0000B0   167 _P3	=	0x00b0
                           0000B8   168 _IP	=	0x00b8
                           0000D0   169 _PSW	=	0x00d0
                           0000E0   170 _ACC	=	0x00e0
                           0000F0   171 _B	=	0x00f0
                           0000C8   172 _T2CON	=	0x00c8
                           0000CA   173 _RCAP2L	=	0x00ca
                           0000CB   174 _RCAP2H	=	0x00cb
                           0000CC   175 _TL2	=	0x00cc
                           0000CD   176 _TH2	=	0x00cd
                                    177 ;--------------------------------------------------------
                                    178 ; special function bits
                                    179 ;--------------------------------------------------------
                                    180 	.area RSEG    (ABS,DATA)
      000000                        181 	.org 0x0000
                           000080   182 _P0_0	=	0x0080
                           000081   183 _P0_1	=	0x0081
                           000082   184 _P0_2	=	0x0082
                           000083   185 _P0_3	=	0x0083
                           000084   186 _P0_4	=	0x0084
                           000085   187 _P0_5	=	0x0085
                           000086   188 _P0_6	=	0x0086
                           000087   189 _P0_7	=	0x0087
                           000088   190 _IT0	=	0x0088
                           000089   191 _IE0	=	0x0089
                           00008A   192 _IT1	=	0x008a
                           00008B   193 _IE1	=	0x008b
                           00008C   194 _TR0	=	0x008c
                           00008D   195 _TF0	=	0x008d
                           00008E   196 _TR1	=	0x008e
                           00008F   197 _TF1	=	0x008f
                           000090   198 _P1_0	=	0x0090
                           000091   199 _P1_1	=	0x0091
                           000092   200 _P1_2	=	0x0092
                           000093   201 _P1_3	=	0x0093
                           000094   202 _P1_4	=	0x0094
                           000095   203 _P1_5	=	0x0095
                           000096   204 _P1_6	=	0x0096
                           000097   205 _P1_7	=	0x0097
                           000098   206 _RI	=	0x0098
                           000099   207 _TI	=	0x0099
                           00009A   208 _RB8	=	0x009a
                           00009B   209 _TB8	=	0x009b
                           00009C   210 _REN	=	0x009c
                           00009D   211 _SM2	=	0x009d
                           00009E   212 _SM1	=	0x009e
                           00009F   213 _SM0	=	0x009f
                           0000A0   214 _P2_0	=	0x00a0
                           0000A1   215 _P2_1	=	0x00a1
                           0000A2   216 _P2_2	=	0x00a2
                           0000A3   217 _P2_3	=	0x00a3
                           0000A4   218 _P2_4	=	0x00a4
                           0000A5   219 _P2_5	=	0x00a5
                           0000A6   220 _P2_6	=	0x00a6
                           0000A7   221 _P2_7	=	0x00a7
                           0000A8   222 _EX0	=	0x00a8
                           0000A9   223 _ET0	=	0x00a9
                           0000AA   224 _EX1	=	0x00aa
                           0000AB   225 _ET1	=	0x00ab
                           0000AC   226 _ES	=	0x00ac
                           0000AF   227 _EA	=	0x00af
                           0000B0   228 _P3_0	=	0x00b0
                           0000B1   229 _P3_1	=	0x00b1
                           0000B2   230 _P3_2	=	0x00b2
                           0000B3   231 _P3_3	=	0x00b3
                           0000B4   232 _P3_4	=	0x00b4
                           0000B5   233 _P3_5	=	0x00b5
                           0000B6   234 _P3_6	=	0x00b6
                           0000B7   235 _P3_7	=	0x00b7
                           0000B0   236 _RXD	=	0x00b0
                           0000B1   237 _TXD	=	0x00b1
                           0000B2   238 _INT0	=	0x00b2
                           0000B3   239 _INT1	=	0x00b3
                           0000B4   240 _T0	=	0x00b4
                           0000B5   241 _T1	=	0x00b5
                           0000B6   242 _WR	=	0x00b6
                           0000B7   243 _RD	=	0x00b7
                           0000B8   244 _PX0	=	0x00b8
                           0000B9   245 _PT0	=	0x00b9
                           0000BA   246 _PX1	=	0x00ba
                           0000BB   247 _PT1	=	0x00bb
                           0000BC   248 _PS	=	0x00bc
                           0000D0   249 _P	=	0x00d0
                           0000D1   250 _F1	=	0x00d1
                           0000D2   251 _OV	=	0x00d2
                           0000D3   252 _RS0	=	0x00d3
                           0000D4   253 _RS1	=	0x00d4
                           0000D5   254 _F0	=	0x00d5
                           0000D6   255 _AC	=	0x00d6
                           0000D7   256 _CY	=	0x00d7
                           0000AD   257 _ET2	=	0x00ad
                           0000BD   258 _PT2	=	0x00bd
                           0000C8   259 _T2CON_0	=	0x00c8
                           0000C9   260 _T2CON_1	=	0x00c9
                           0000CA   261 _T2CON_2	=	0x00ca
                           0000CB   262 _T2CON_3	=	0x00cb
                           0000CC   263 _T2CON_4	=	0x00cc
                           0000CD   264 _T2CON_5	=	0x00cd
                           0000CE   265 _T2CON_6	=	0x00ce
                           0000CF   266 _T2CON_7	=	0x00cf
                           0000C8   267 _CP_RL2	=	0x00c8
                           0000C9   268 _C_T2	=	0x00c9
                           0000CA   269 _TR2	=	0x00ca
                           0000CB   270 _EXEN2	=	0x00cb
                           0000CC   271 _TCLK	=	0x00cc
                           0000CD   272 _RCLK	=	0x00cd
                           0000CE   273 _EXF2	=	0x00ce
                           0000CF   274 _TF2	=	0x00cf
                                    275 ;--------------------------------------------------------
                                    276 ; overlayable register banks
                                    277 ;--------------------------------------------------------
                                    278 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        279 	.ds 8
                                    280 ;--------------------------------------------------------
                                    281 ; internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area DSEG    (DATA)
      000008                        284 _LCD_GotoXY_PARM_2:
      000008                        285 	.ds 1
      000009                        286 _num::
      000009                        287 	.ds 2
      00000B                        288 _num_to_hex::
      00000B                        289 	.ds 17
      00001C                        290 _keypressed::
      00001C                        291 	.ds 2
      00001E                        292 _key::
      00001E                        293 	.ds 1
                                    294 ;--------------------------------------------------------
                                    295 ; overlayable items in internal ram
                                    296 ;--------------------------------------------------------
                                    297 	.area	OSEG    (OVR,DATA)
                                    298 	.area	OSEG    (OVR,DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; Stack segment in internal ram
                                    301 ;--------------------------------------------------------
                                    302 	.area	SSEG
      00001F                        303 __start__stack:
      00001F                        304 	.ds	1
                                    305 
                                    306 ;--------------------------------------------------------
                                    307 ; indirectly addressable internal ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area ISEG    (DATA)
                                    310 ;--------------------------------------------------------
                                    311 ; absolute internal ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area IABS    (ABS,DATA)
                                    314 	.area IABS    (ABS,DATA)
                                    315 ;--------------------------------------------------------
                                    316 ; bit data
                                    317 ;--------------------------------------------------------
                                    318 	.area BSEG    (BIT)
                                    319 ;--------------------------------------------------------
                                    320 ; paged external ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area PSEG    (PAG,XDATA)
                                    323 ;--------------------------------------------------------
                                    324 ; external ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area XSEG    (XDATA)
                                    327 ;--------------------------------------------------------
                                    328 ; absolute external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XABS    (ABS,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external initialized ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XISEG   (XDATA)
                                    335 	.area HOME    (CODE)
                                    336 	.area GSINIT0 (CODE)
                                    337 	.area GSINIT1 (CODE)
                                    338 	.area GSINIT2 (CODE)
                                    339 	.area GSINIT3 (CODE)
                                    340 	.area GSINIT4 (CODE)
                                    341 	.area GSINIT5 (CODE)
                                    342 	.area GSINIT  (CODE)
                                    343 	.area GSFINAL (CODE)
                                    344 	.area CSEG    (CODE)
                                    345 ;--------------------------------------------------------
                                    346 ; interrupt vector
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
      000000                        349 __interrupt_vect:
      000000 02 00 06         [24]  350 	ljmp	__sdcc_gsinit_startup
                                    351 ;--------------------------------------------------------
                                    352 ; global & static initialisations
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
                                    355 	.area GSINIT  (CODE)
                                    356 	.area GSFINAL (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.globl __sdcc_gsinit_startup
                                    359 	.globl __sdcc_program_startup
                                    360 	.globl __start__stack
                                    361 	.globl __mcs51_genXINIT
                                    362 	.globl __mcs51_genXRAMCLEAR
                                    363 	.globl __mcs51_genRAMCLEAR
                                    364 ;	main.c:5: unsigned char num_to_hex[17]="0123456789ABCDEF";
      00005F 75 0B 30         [24]  365 	mov	_num_to_hex,#0x30
      000062 75 0C 31         [24]  366 	mov	(_num_to_hex + 0x0001),#0x31
      000065 75 0D 32         [24]  367 	mov	(_num_to_hex + 0x0002),#0x32
      000068 75 0E 33         [24]  368 	mov	(_num_to_hex + 0x0003),#0x33
      00006B 75 0F 34         [24]  369 	mov	(_num_to_hex + 0x0004),#0x34
      00006E 75 10 35         [24]  370 	mov	(_num_to_hex + 0x0005),#0x35
      000071 75 11 36         [24]  371 	mov	(_num_to_hex + 0x0006),#0x36
      000074 75 12 37         [24]  372 	mov	(_num_to_hex + 0x0007),#0x37
      000077 75 13 38         [24]  373 	mov	(_num_to_hex + 0x0008),#0x38
      00007A 75 14 39         [24]  374 	mov	(_num_to_hex + 0x0009),#0x39
      00007D 75 15 41         [24]  375 	mov	(_num_to_hex + 0x000a),#0x41
      000080 75 16 42         [24]  376 	mov	(_num_to_hex + 0x000b),#0x42
      000083 75 17 43         [24]  377 	mov	(_num_to_hex + 0x000c),#0x43
      000086 75 18 44         [24]  378 	mov	(_num_to_hex + 0x000d),#0x44
      000089 75 19 45         [24]  379 	mov	(_num_to_hex + 0x000e),#0x45
      00008C 75 1A 46         [24]  380 	mov	(_num_to_hex + 0x000f),#0x46
      00008F 75 1B 00         [24]  381 	mov	(_num_to_hex + 0x0010),#0x00
                                    382 	.area GSFINAL (CODE)
      000092 02 00 03         [24]  383 	ljmp	__sdcc_program_startup
                                    384 ;--------------------------------------------------------
                                    385 ; Home
                                    386 ;--------------------------------------------------------
                                    387 	.area HOME    (CODE)
                                    388 	.area HOME    (CODE)
      000003                        389 __sdcc_program_startup:
      000003 02 03 41         [24]  390 	ljmp	_main
                                    391 ;	return from main will return to caller
                                    392 ;--------------------------------------------------------
                                    393 ; code
                                    394 ;--------------------------------------------------------
                                    395 	.area CSEG    (CODE)
                                    396 ;------------------------------------------------------------
                                    397 ;Allocation info for local variables in function 'LCD_Send_Command'
                                    398 ;------------------------------------------------------------
                                    399 ;x                         Allocated to registers 
                                    400 ;------------------------------------------------------------
                                    401 ;	lcd1602.c:6: void LCD_Send_Command(unsigned char x)
                                    402 ;	-----------------------------------------
                                    403 ;	 function LCD_Send_Command
                                    404 ;	-----------------------------------------
      000095                        405 _LCD_Send_Command:
                           000007   406 	ar7 = 0x07
                           000006   407 	ar6 = 0x06
                           000005   408 	ar5 = 0x05
                           000004   409 	ar4 = 0x04
                           000003   410 	ar3 = 0x03
                           000002   411 	ar2 = 0x02
                           000001   412 	ar1 = 0x01
                           000000   413 	ar0 = 0x00
      000095 85 82 80         [24]  414 	mov	_P0,dpl
                                    415 ;	lcd1602.c:9: LCD_RS=0; //Chon thanh ghi lenh
                                    416 ;	assignBit
      000098 C2 A6            [12]  417 	clr	_P2_6
                                    418 ;	lcd1602.c:10: LCD_RW=0; //De ghi du lieu
                                    419 ;	assignBit
      00009A C2 A5            [12]  420 	clr	_P2_5
                                    421 ;	lcd1602.c:11: LCD_EN=1;
                                    422 ;	assignBit
      00009C D2 A7            [12]  423 	setb	_P2_7
                                    424 ;	lcd1602.c:12: Delay_us(100);
      00009E 90 00 64         [24]  425 	mov	dptr,#0x0064
      0000A1 12 01 81         [24]  426 	lcall	_Delay_us
                                    427 ;	lcd1602.c:13: LCD_EN=0;
                                    428 ;	assignBit
      0000A4 C2 A7            [12]  429 	clr	_P2_7
                                    430 ;	lcd1602.c:14: Wait_For_LCD(); //Doi cho LCD san sang
      0000A6 12 00 AC         [24]  431 	lcall	_Wait_For_LCD
                                    432 ;	lcd1602.c:15: LCD_EN=1;
                                    433 ;	assignBit
      0000A9 D2 A7            [12]  434 	setb	_P2_7
                                    435 ;	lcd1602.c:16: }
      0000AB 22               [24]  436 	ret
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'Wait_For_LCD'
                                    439 ;------------------------------------------------------------
                                    440 ;	lcd1602.c:18: void Wait_For_LCD()
                                    441 ;	-----------------------------------------
                                    442 ;	 function Wait_For_LCD
                                    443 ;	-----------------------------------------
      0000AC                        444 _Wait_For_LCD:
                                    445 ;	lcd1602.c:20: Delay_us(100);
      0000AC 90 00 64         [24]  446 	mov	dptr,#0x0064
                                    447 ;	lcd1602.c:21: }
      0000AF 02 01 81         [24]  448 	ljmp	_Delay_us
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'LCD_init'
                                    451 ;------------------------------------------------------------
                                    452 ;	lcd1602.c:22: void LCD_init()
                                    453 ;	-----------------------------------------
                                    454 ;	 function LCD_init
                                    455 ;	-----------------------------------------
      0000B2                        456 _LCD_init:
                                    457 ;	lcd1602.c:24: LCD_Send_Command(0x38); //Chon che do 8 bit, 2 hang cho LCD
      0000B2 75 82 38         [24]  458 	mov	dpl,#0x38
      0000B5 12 00 95         [24]  459 	lcall	_LCD_Send_Command
                                    460 ;	lcd1602.c:25: LCD_Send_Command(0x0E); //Bat hien thi, nhap nhay con tro
      0000B8 75 82 0E         [24]  461 	mov	dpl,#0x0e
      0000BB 12 00 95         [24]  462 	lcall	_LCD_Send_Command
                                    463 ;	lcd1602.c:26: LCD_Send_Command(0x01); //Xoa man hinh
      0000BE 75 82 01         [24]  464 	mov	dpl,#0x01
      0000C1 12 00 95         [24]  465 	lcall	_LCD_Send_Command
                                    466 ;	lcd1602.c:27: LCD_Send_Command(0x80); //Ve dau dong
      0000C4 75 82 80         [24]  467 	mov	dpl,#0x80
                                    468 ;	lcd1602.c:28: }
      0000C7 02 00 95         [24]  469 	ljmp	_LCD_Send_Command
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'LCD_Write_One_Char'
                                    472 ;------------------------------------------------------------
                                    473 ;c                         Allocated to registers 
                                    474 ;------------------------------------------------------------
                                    475 ;	lcd1602.c:31: void LCD_Write_One_Char(unsigned char c)
                                    476 ;	-----------------------------------------
                                    477 ;	 function LCD_Write_One_Char
                                    478 ;	-----------------------------------------
      0000CA                        479 _LCD_Write_One_Char:
      0000CA 85 82 80         [24]  480 	mov	_P0,dpl
                                    481 ;	lcd1602.c:34: LCD_RS=1; //Chon thanh ghi du lieu
                                    482 ;	assignBit
      0000CD D2 A6            [12]  483 	setb	_P2_6
                                    484 ;	lcd1602.c:35: LCD_RW=0;
                                    485 ;	assignBit
      0000CF C2 A5            [12]  486 	clr	_P2_5
                                    487 ;	lcd1602.c:36: LCD_EN=1;
                                    488 ;	assignBit
      0000D1 D2 A7            [12]  489 	setb	_P2_7
                                    490 ;	lcd1602.c:37: Delay_us(10);
      0000D3 90 00 0A         [24]  491 	mov	dptr,#0x000a
      0000D6 12 01 81         [24]  492 	lcall	_Delay_us
                                    493 ;	lcd1602.c:38: LCD_EN=0;
                                    494 ;	assignBit
      0000D9 C2 A7            [12]  495 	clr	_P2_7
                                    496 ;	lcd1602.c:39: Wait_For_LCD();
      0000DB 12 00 AC         [24]  497 	lcall	_Wait_For_LCD
                                    498 ;	lcd1602.c:40: LCD_EN=1;
                                    499 ;	assignBit
      0000DE D2 A7            [12]  500 	setb	_P2_7
                                    501 ;	lcd1602.c:41: }
      0000E0 22               [24]  502 	ret
                                    503 ;------------------------------------------------------------
                                    504 ;Allocation info for local variables in function 'LCD_Write_String'
                                    505 ;------------------------------------------------------------
                                    506 ;s                         Allocated to registers r5 r6 r7 
                                    507 ;length                    Allocated to registers 
                                    508 ;------------------------------------------------------------
                                    509 ;	lcd1602.c:43: void LCD_Write_String(unsigned char *s)
                                    510 ;	-----------------------------------------
                                    511 ;	 function LCD_Write_String
                                    512 ;	-----------------------------------------
      0000E1                        513 _LCD_Write_String:
                                    514 ;	lcd1602.c:46: length=strlen(s); //Lay do dai xau
      0000E1 AD 82            [24]  515 	mov	r5,dpl
      0000E3 AE 83            [24]  516 	mov	r6,dph
      0000E5 AF F0            [24]  517 	mov	r7,b
      0000E7 C0 07            [24]  518 	push	ar7
      0000E9 C0 06            [24]  519 	push	ar6
      0000EB C0 05            [24]  520 	push	ar5
      0000ED 12 03 5E         [24]  521 	lcall	_strlen
      0000F0 AB 82            [24]  522 	mov	r3,dpl
      0000F2 AC 83            [24]  523 	mov	r4,dph
      0000F4 D0 05            [24]  524 	pop	ar5
      0000F6 D0 06            [24]  525 	pop	ar6
      0000F8 D0 07            [24]  526 	pop	ar7
                                    527 ;	lcd1602.c:47: while(length!=0)
      0000FA                        528 00101$:
      0000FA EB               [12]  529 	mov	a,r3
      0000FB 60 27            [24]  530 	jz	00104$
                                    531 ;	lcd1602.c:49: LCD_Write_One_Char(*s); //Ghi ra LCD gia tri duoc tro boi con tro
      0000FD 8D 82            [24]  532 	mov	dpl,r5
      0000FF 8E 83            [24]  533 	mov	dph,r6
      000101 8F F0            [24]  534 	mov	b,r7
      000103 12 03 76         [24]  535 	lcall	__gptrget
      000106 FC               [12]  536 	mov	r4,a
      000107 A3               [24]  537 	inc	dptr
      000108 AD 82            [24]  538 	mov	r5,dpl
      00010A AE 83            [24]  539 	mov	r6,dph
      00010C 8C 82            [24]  540 	mov	dpl,r4
      00010E C0 07            [24]  541 	push	ar7
      000110 C0 06            [24]  542 	push	ar6
      000112 C0 05            [24]  543 	push	ar5
      000114 C0 03            [24]  544 	push	ar3
      000116 12 00 CA         [24]  545 	lcall	_LCD_Write_One_Char
      000119 D0 03            [24]  546 	pop	ar3
      00011B D0 05            [24]  547 	pop	ar5
      00011D D0 06            [24]  548 	pop	ar6
      00011F D0 07            [24]  549 	pop	ar7
                                    550 ;	lcd1602.c:50: s++; //Tang con tro
                                    551 ;	lcd1602.c:51: length--;
      000121 1B               [12]  552 	dec	r3
      000122 80 D6            [24]  553 	sjmp	00101$
      000124                        554 00104$:
                                    555 ;	lcd1602.c:53: }
      000124 22               [24]  556 	ret
                                    557 ;------------------------------------------------------------
                                    558 ;Allocation info for local variables in function 'LCD_GotoXY'
                                    559 ;------------------------------------------------------------
                                    560 ;col                       Allocated with name '_LCD_GotoXY_PARM_2'
                                    561 ;row                       Allocated to registers r7 
                                    562 ;i                         Allocated to registers r7 
                                    563 ;------------------------------------------------------------
                                    564 ;	lcd1602.c:55: void LCD_GotoXY(char row, char col)
                                    565 ;	-----------------------------------------
                                    566 ;	 function LCD_GotoXY
                                    567 ;	-----------------------------------------
      000125                        568 _LCD_GotoXY:
      000125 AF 82            [24]  569 	mov	r7,dpl
                                    570 ;	lcd1602.c:58: if (row == 2)
      000127 BF 02 08         [24]  571 	cjne	r7,#0x02,00102$
                                    572 ;	lcd1602.c:59: LCD_Send_Command(0xC0);      //cursor to fist col in row 2
      00012A 75 82 C0         [24]  573 	mov	dpl,#0xc0
      00012D 12 00 95         [24]  574 	lcall	_LCD_Send_Command
      000130 80 06            [24]  575 	sjmp	00112$
      000132                        576 00102$:
                                    577 ;	lcd1602.c:61: LCD_Send_Command(0x80);      //cursor to fist col in row 1 (default)
      000132 75 82 80         [24]  578 	mov	dpl,#0x80
      000135 12 00 95         [24]  579 	lcall	_LCD_Send_Command
                                    580 ;	lcd1602.c:62: for (i = 0; i < col; i++)
      000138                        581 00112$:
      000138 7F 00            [12]  582 	mov	r7,#0x00
      00013A                        583 00106$:
      00013A C3               [12]  584 	clr	c
      00013B EF               [12]  585 	mov	a,r7
      00013C 95 08            [12]  586 	subb	a,_LCD_GotoXY_PARM_2
      00013E 50 0D            [24]  587 	jnc	00108$
                                    588 ;	lcd1602.c:63: LCD_Send_Command(0x14);      //cursor to fist col in row 1 (default)
      000140 75 82 14         [24]  589 	mov	dpl,#0x14
      000143 C0 07            [24]  590 	push	ar7
      000145 12 00 95         [24]  591 	lcall	_LCD_Send_Command
      000148 D0 07            [24]  592 	pop	ar7
                                    593 ;	lcd1602.c:62: for (i = 0; i < col; i++)
      00014A 0F               [12]  594 	inc	r7
      00014B 80 ED            [24]  595 	sjmp	00106$
      00014D                        596 00108$:
                                    597 ;	lcd1602.c:64: }
      00014D 22               [24]  598 	ret
                                    599 ;------------------------------------------------------------
                                    600 ;Allocation info for local variables in function 'Delay_ms'
                                    601 ;------------------------------------------------------------
                                    602 ;interval                  Allocated to registers r6 r7 
                                    603 ;i                         Allocated to registers r4 r5 
                                    604 ;j                         Allocated to registers r2 r3 
                                    605 ;------------------------------------------------------------
                                    606 ;	lcd1602.c:66: void Delay_ms(int interval)
                                    607 ;	-----------------------------------------
                                    608 ;	 function Delay_ms
                                    609 ;	-----------------------------------------
      00014E                        610 _Delay_ms:
      00014E AE 82            [24]  611 	mov	r6,dpl
      000150 AF 83            [24]  612 	mov	r7,dph
                                    613 ;	lcd1602.c:69: for(i=0;i<1000;i++)
      000152 7C 00            [12]  614 	mov	r4,#0x00
      000154 7D 00            [12]  615 	mov	r5,#0x00
                                    616 ;	lcd1602.c:71: for(j=0;j<interval;j++);
      000156                        617 00111$:
      000156 7A 00            [12]  618 	mov	r2,#0x00
      000158 7B 00            [12]  619 	mov	r3,#0x00
      00015A                        620 00104$:
      00015A C3               [12]  621 	clr	c
      00015B EA               [12]  622 	mov	a,r2
      00015C 9E               [12]  623 	subb	a,r6
      00015D EB               [12]  624 	mov	a,r3
      00015E 64 80            [12]  625 	xrl	a,#0x80
      000160 8F F0            [24]  626 	mov	b,r7
      000162 63 F0 80         [24]  627 	xrl	b,#0x80
      000165 95 F0            [12]  628 	subb	a,b
      000167 50 07            [24]  629 	jnc	00107$
      000169 0A               [12]  630 	inc	r2
      00016A BA 00 ED         [24]  631 	cjne	r2,#0x00,00104$
      00016D 0B               [12]  632 	inc	r3
      00016E 80 EA            [24]  633 	sjmp	00104$
      000170                        634 00107$:
                                    635 ;	lcd1602.c:69: for(i=0;i<1000;i++)
      000170 0C               [12]  636 	inc	r4
      000171 BC 00 01         [24]  637 	cjne	r4,#0x00,00126$
      000174 0D               [12]  638 	inc	r5
      000175                        639 00126$:
      000175 C3               [12]  640 	clr	c
      000176 EC               [12]  641 	mov	a,r4
      000177 94 E8            [12]  642 	subb	a,#0xe8
      000179 ED               [12]  643 	mov	a,r5
      00017A 64 80            [12]  644 	xrl	a,#0x80
      00017C 94 83            [12]  645 	subb	a,#0x83
      00017E 40 D6            [24]  646 	jc	00111$
                                    647 ;	lcd1602.c:73: }
      000180 22               [24]  648 	ret
                                    649 ;------------------------------------------------------------
                                    650 ;Allocation info for local variables in function 'Delay_us'
                                    651 ;------------------------------------------------------------
                                    652 ;interval                  Allocated to registers r6 r7 
                                    653 ;j                         Allocated to registers r4 r5 
                                    654 ;------------------------------------------------------------
                                    655 ;	lcd1602.c:75: void Delay_us(int interval)
                                    656 ;	-----------------------------------------
                                    657 ;	 function Delay_us
                                    658 ;	-----------------------------------------
      000181                        659 _Delay_us:
      000181 AE 82            [24]  660 	mov	r6,dpl
      000183 AF 83            [24]  661 	mov	r7,dph
                                    662 ;	lcd1602.c:78: for(j=0;j<interval;j++);
      000185 7C 00            [12]  663 	mov	r4,#0x00
      000187 7D 00            [12]  664 	mov	r5,#0x00
      000189                        665 00103$:
      000189 C3               [12]  666 	clr	c
      00018A EC               [12]  667 	mov	a,r4
      00018B 9E               [12]  668 	subb	a,r6
      00018C ED               [12]  669 	mov	a,r5
      00018D 64 80            [12]  670 	xrl	a,#0x80
      00018F 8F F0            [24]  671 	mov	b,r7
      000191 63 F0 80         [24]  672 	xrl	b,#0x80
      000194 95 F0            [12]  673 	subb	a,b
      000196 50 07            [24]  674 	jnc	00105$
      000198 0C               [12]  675 	inc	r4
      000199 BC 00 ED         [24]  676 	cjne	r4,#0x00,00103$
      00019C 0D               [12]  677 	inc	r5
      00019D 80 EA            [24]  678 	sjmp	00103$
      00019F                        679 00105$:
                                    680 ;	lcd1602.c:79: }
      00019F 22               [24]  681 	ret
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'keyscan'
                                    684 ;------------------------------------------------------------
                                    685 ;	main.c:8: void keyscan()
                                    686 ;	-----------------------------------------
                                    687 ;	 function keyscan
                                    688 ;	-----------------------------------------
      0001A0                        689 _keyscan:
                                    690 ;	main.c:10: keypressed=0;
      0001A0 E4               [12]  691 	clr	a
      0001A1 F5 1C            [12]  692 	mov	_keypressed,a
      0001A3 F5 1D            [12]  693 	mov	(_keypressed + 1),a
                                    694 ;	main.c:11: P1=0xfe;
                                    695 ;	main.c:12: if(P1!=0xfe){
      0001A5 74 FE            [12]  696 	mov	a,#0xfe
      0001A7 F5 90            [12]  697 	mov	_P1,a
      0001A9 B5 90 02         [24]  698 	cjne	a,_P1,00279$
      0001AC 80 5E            [24]  699 	sjmp	00112$
      0001AE                        700 00279$:
                                    701 ;	main.c:13: Delay_us(1000);
      0001AE 90 03 E8         [24]  702 	mov	dptr,#0x03e8
      0001B1 12 01 81         [24]  703 	lcall	_Delay_us
                                    704 ;	main.c:14: if(P1!=0xfe){
      0001B4 74 FE            [12]  705 	mov	a,#0xfe
      0001B6 B5 90 02         [24]  706 	cjne	a,_P1,00280$
      0001B9 80 46            [24]  707 	sjmp	00108$
      0001BB                        708 00280$:
                                    709 ;	main.c:15: num=1;
      0001BB 75 09 01         [24]  710 	mov	_num,#0x01
      0001BE 75 0A 00         [24]  711 	mov	(_num + 1),#0x00
                                    712 ;	main.c:16: key=P1&0xf0;
      0001C1 E5 90            [12]  713 	mov	a,_P1
      0001C3 54 F0            [12]  714 	anl	a,#0xf0
      0001C5 F5 1E            [12]  715 	mov	_key,a
                                    716 ;	main.c:17: switch(key){
      0001C7 74 70            [12]  717 	mov	a,#0x70
      0001C9 B5 1E 02         [24]  718 	cjne	a,_key,00281$
      0001CC 80 15            [24]  719 	sjmp	00101$
      0001CE                        720 00281$:
      0001CE 74 B0            [12]  721 	mov	a,#0xb0
      0001D0 B5 1E 02         [24]  722 	cjne	a,_key,00282$
      0001D3 80 16            [24]  723 	sjmp	00102$
      0001D5                        724 00282$:
      0001D5 74 D0            [12]  725 	mov	a,#0xd0
      0001D7 B5 1E 02         [24]  726 	cjne	a,_key,00283$
      0001DA 80 17            [24]  727 	sjmp	00103$
      0001DC                        728 00283$:
      0001DC 74 E0            [12]  729 	mov	a,#0xe0
                                    730 ;	main.c:18: case 0x70:
      0001DE B5 1E 20         [24]  731 	cjne	a,_key,00108$
      0001E1 80 18            [24]  732 	sjmp	00104$
      0001E3                        733 00101$:
                                    734 ;	main.c:19: num+=3;
      0001E3 75 09 04         [24]  735 	mov	_num,#0x04
      0001E6 75 0A 00         [24]  736 	mov	(_num + 1),#0x00
                                    737 ;	main.c:20: break;
                                    738 ;	main.c:21: case 0xb0:
      0001E9 80 16            [24]  739 	sjmp	00108$
      0001EB                        740 00102$:
                                    741 ;	main.c:22: num+=2;
      0001EB 75 09 03         [24]  742 	mov	_num,#0x03
      0001EE 75 0A 00         [24]  743 	mov	(_num + 1),#0x00
                                    744 ;	main.c:23: break;
                                    745 ;	main.c:24: case 0xd0:
      0001F1 80 0E            [24]  746 	sjmp	00108$
      0001F3                        747 00103$:
                                    748 ;	main.c:25: num+=1;
      0001F3 75 09 02         [24]  749 	mov	_num,#0x02
      0001F6 75 0A 00         [24]  750 	mov	(_num + 1),#0x00
                                    751 ;	main.c:26: break;
                                    752 ;	main.c:27: case 0xe0:
      0001F9 80 06            [24]  753 	sjmp	00108$
      0001FB                        754 00104$:
                                    755 ;	main.c:28: num+=0;
      0001FB 75 09 01         [24]  756 	mov	_num,#0x01
      0001FE 75 0A 00         [24]  757 	mov	(_num + 1),#0x00
                                    758 ;	main.c:33: while(P1!=0xfe);
      000201                        759 00108$:
      000201 74 FE            [12]  760 	mov	a,#0xfe
      000203 B5 90 FB         [24]  761 	cjne	a,_P1,00108$
                                    762 ;	main.c:34: keypressed = 1;
      000206 75 1C 01         [24]  763 	mov	_keypressed,#0x01
      000209 75 1D 00         [24]  764 	mov	(_keypressed + 1),#0x00
      00020C                        765 00112$:
                                    766 ;	main.c:36: P1=0xfd;
                                    767 ;	main.c:37: if(P1!=0xfd){
      00020C 74 FD            [12]  768 	mov	a,#0xfd
      00020E F5 90            [12]  769 	mov	_P1,a
      000210 B5 90 02         [24]  770 	cjne	a,_P1,00287$
      000213 80 5E            [24]  771 	sjmp	00124$
      000215                        772 00287$:
                                    773 ;	main.c:38: Delay_us(1000);
      000215 90 03 E8         [24]  774 	mov	dptr,#0x03e8
      000218 12 01 81         [24]  775 	lcall	_Delay_us
                                    776 ;	main.c:39: if(P1!=0xfd){
      00021B 74 FD            [12]  777 	mov	a,#0xfd
      00021D B5 90 02         [24]  778 	cjne	a,_P1,00288$
      000220 80 46            [24]  779 	sjmp	00120$
      000222                        780 00288$:
                                    781 ;	main.c:40: num=5;
      000222 75 09 05         [24]  782 	mov	_num,#0x05
      000225 75 0A 00         [24]  783 	mov	(_num + 1),#0x00
                                    784 ;	main.c:41: key=P1&0xf0;
      000228 E5 90            [12]  785 	mov	a,_P1
      00022A 54 F0            [12]  786 	anl	a,#0xf0
      00022C F5 1E            [12]  787 	mov	_key,a
                                    788 ;	main.c:42: switch(key){
      00022E 74 70            [12]  789 	mov	a,#0x70
      000230 B5 1E 02         [24]  790 	cjne	a,_key,00289$
      000233 80 15            [24]  791 	sjmp	00113$
      000235                        792 00289$:
      000235 74 B0            [12]  793 	mov	a,#0xb0
      000237 B5 1E 02         [24]  794 	cjne	a,_key,00290$
      00023A 80 16            [24]  795 	sjmp	00114$
      00023C                        796 00290$:
      00023C 74 D0            [12]  797 	mov	a,#0xd0
      00023E B5 1E 02         [24]  798 	cjne	a,_key,00291$
      000241 80 17            [24]  799 	sjmp	00115$
      000243                        800 00291$:
      000243 74 E0            [12]  801 	mov	a,#0xe0
                                    802 ;	main.c:43: case 0x70:
      000245 B5 1E 20         [24]  803 	cjne	a,_key,00120$
      000248 80 18            [24]  804 	sjmp	00116$
      00024A                        805 00113$:
                                    806 ;	main.c:44: num+=3;
      00024A 75 09 08         [24]  807 	mov	_num,#0x08
      00024D 75 0A 00         [24]  808 	mov	(_num + 1),#0x00
                                    809 ;	main.c:45: break;
                                    810 ;	main.c:46: case 0xb0:
      000250 80 16            [24]  811 	sjmp	00120$
      000252                        812 00114$:
                                    813 ;	main.c:47: num+=2;
      000252 75 09 07         [24]  814 	mov	_num,#0x07
      000255 75 0A 00         [24]  815 	mov	(_num + 1),#0x00
                                    816 ;	main.c:48: break;
                                    817 ;	main.c:49: case 0xd0:
      000258 80 0E            [24]  818 	sjmp	00120$
      00025A                        819 00115$:
                                    820 ;	main.c:50: num+=1;
      00025A 75 09 06         [24]  821 	mov	_num,#0x06
      00025D 75 0A 00         [24]  822 	mov	(_num + 1),#0x00
                                    823 ;	main.c:51: break;
                                    824 ;	main.c:52: case 0xe0:
      000260 80 06            [24]  825 	sjmp	00120$
      000262                        826 00116$:
                                    827 ;	main.c:53: num+=0;
      000262 75 09 05         [24]  828 	mov	_num,#0x05
      000265 75 0A 00         [24]  829 	mov	(_num + 1),#0x00
                                    830 ;	main.c:58: while(P1!=0xfe);
      000268                        831 00120$:
      000268 74 FE            [12]  832 	mov	a,#0xfe
      00026A B5 90 FB         [24]  833 	cjne	a,_P1,00120$
                                    834 ;	main.c:59: keypressed = 1;
      00026D 75 1C 01         [24]  835 	mov	_keypressed,#0x01
      000270 75 1D 00         [24]  836 	mov	(_keypressed + 1),#0x00
      000273                        837 00124$:
                                    838 ;	main.c:61: P1=0xfb;
                                    839 ;	main.c:62: if(P1!=0xfb){
      000273 74 FB            [12]  840 	mov	a,#0xfb
      000275 F5 90            [12]  841 	mov	_P1,a
      000277 B5 90 02         [24]  842 	cjne	a,_P1,00295$
      00027A 80 5E            [24]  843 	sjmp	00136$
      00027C                        844 00295$:
                                    845 ;	main.c:63: Delay_us(1000);
      00027C 90 03 E8         [24]  846 	mov	dptr,#0x03e8
      00027F 12 01 81         [24]  847 	lcall	_Delay_us
                                    848 ;	main.c:64: if(P1!=0xfb){
      000282 74 FB            [12]  849 	mov	a,#0xfb
      000284 B5 90 02         [24]  850 	cjne	a,_P1,00296$
      000287 80 46            [24]  851 	sjmp	00132$
      000289                        852 00296$:
                                    853 ;	main.c:65: num=9;
      000289 75 09 09         [24]  854 	mov	_num,#0x09
      00028C 75 0A 00         [24]  855 	mov	(_num + 1),#0x00
                                    856 ;	main.c:66: key=P1&0xf0;
      00028F E5 90            [12]  857 	mov	a,_P1
      000291 54 F0            [12]  858 	anl	a,#0xf0
      000293 F5 1E            [12]  859 	mov	_key,a
                                    860 ;	main.c:67: switch(key){
      000295 74 70            [12]  861 	mov	a,#0x70
      000297 B5 1E 02         [24]  862 	cjne	a,_key,00297$
      00029A 80 15            [24]  863 	sjmp	00125$
      00029C                        864 00297$:
      00029C 74 B0            [12]  865 	mov	a,#0xb0
      00029E B5 1E 02         [24]  866 	cjne	a,_key,00298$
      0002A1 80 16            [24]  867 	sjmp	00126$
      0002A3                        868 00298$:
      0002A3 74 D0            [12]  869 	mov	a,#0xd0
      0002A5 B5 1E 02         [24]  870 	cjne	a,_key,00299$
      0002A8 80 17            [24]  871 	sjmp	00127$
      0002AA                        872 00299$:
      0002AA 74 E0            [12]  873 	mov	a,#0xe0
                                    874 ;	main.c:68: case 0x70:
      0002AC B5 1E 20         [24]  875 	cjne	a,_key,00132$
      0002AF 80 18            [24]  876 	sjmp	00128$
      0002B1                        877 00125$:
                                    878 ;	main.c:69: num+=3;
      0002B1 75 09 0C         [24]  879 	mov	_num,#0x0c
      0002B4 75 0A 00         [24]  880 	mov	(_num + 1),#0x00
                                    881 ;	main.c:70: break;
                                    882 ;	main.c:71: case 0xb0:
      0002B7 80 16            [24]  883 	sjmp	00132$
      0002B9                        884 00126$:
                                    885 ;	main.c:72: num+=2;
      0002B9 75 09 0B         [24]  886 	mov	_num,#0x0b
      0002BC 75 0A 00         [24]  887 	mov	(_num + 1),#0x00
                                    888 ;	main.c:73: break;
                                    889 ;	main.c:74: case 0xd0:
      0002BF 80 0E            [24]  890 	sjmp	00132$
      0002C1                        891 00127$:
                                    892 ;	main.c:75: num+=1;
      0002C1 75 09 0A         [24]  893 	mov	_num,#0x0a
      0002C4 75 0A 00         [24]  894 	mov	(_num + 1),#0x00
                                    895 ;	main.c:76: break;
                                    896 ;	main.c:77: case 0xe0:
      0002C7 80 06            [24]  897 	sjmp	00132$
      0002C9                        898 00128$:
                                    899 ;	main.c:78: num+=0;
      0002C9 75 09 09         [24]  900 	mov	_num,#0x09
      0002CC 75 0A 00         [24]  901 	mov	(_num + 1),#0x00
                                    902 ;	main.c:83: while(P1!=0xfe);
      0002CF                        903 00132$:
      0002CF 74 FE            [12]  904 	mov	a,#0xfe
      0002D1 B5 90 FB         [24]  905 	cjne	a,_P1,00132$
                                    906 ;	main.c:84: keypressed = 1;
      0002D4 75 1C 01         [24]  907 	mov	_keypressed,#0x01
      0002D7 75 1D 00         [24]  908 	mov	(_keypressed + 1),#0x00
      0002DA                        909 00136$:
                                    910 ;	main.c:86: P1=0xf7;
                                    911 ;	main.c:87: if(P1!=0xf7){
      0002DA 74 F7            [12]  912 	mov	a,#0xf7
      0002DC F5 90            [12]  913 	mov	_P1,a
      0002DE B5 90 01         [24]  914 	cjne	a,_P1,00303$
      0002E1 22               [24]  915 	ret
      0002E2                        916 00303$:
                                    917 ;	main.c:88: Delay_us(1000);
      0002E2 90 03 E8         [24]  918 	mov	dptr,#0x03e8
      0002E5 12 01 81         [24]  919 	lcall	_Delay_us
                                    920 ;	main.c:89: if(P1!=0xf7){
      0002E8 74 F7            [12]  921 	mov	a,#0xf7
      0002EA B5 90 02         [24]  922 	cjne	a,_P1,00304$
      0002ED 80 46            [24]  923 	sjmp	00144$
      0002EF                        924 00304$:
                                    925 ;	main.c:90: num=13;
      0002EF 75 09 0D         [24]  926 	mov	_num,#0x0d
      0002F2 75 0A 00         [24]  927 	mov	(_num + 1),#0x00
                                    928 ;	main.c:91: key=P1&0xf0;
      0002F5 E5 90            [12]  929 	mov	a,_P1
      0002F7 54 F0            [12]  930 	anl	a,#0xf0
      0002F9 F5 1E            [12]  931 	mov	_key,a
                                    932 ;	main.c:92: switch(key){
      0002FB 74 70            [12]  933 	mov	a,#0x70
      0002FD B5 1E 02         [24]  934 	cjne	a,_key,00305$
      000300 80 15            [24]  935 	sjmp	00137$
      000302                        936 00305$:
      000302 74 B0            [12]  937 	mov	a,#0xb0
      000304 B5 1E 02         [24]  938 	cjne	a,_key,00306$
      000307 80 16            [24]  939 	sjmp	00138$
      000309                        940 00306$:
      000309 74 D0            [12]  941 	mov	a,#0xd0
      00030B B5 1E 02         [24]  942 	cjne	a,_key,00307$
      00030E 80 17            [24]  943 	sjmp	00139$
      000310                        944 00307$:
      000310 74 E0            [12]  945 	mov	a,#0xe0
                                    946 ;	main.c:93: case 0x70:
      000312 B5 1E 20         [24]  947 	cjne	a,_key,00144$
      000315 80 18            [24]  948 	sjmp	00140$
      000317                        949 00137$:
                                    950 ;	main.c:94: num+=3;
      000317 75 09 10         [24]  951 	mov	_num,#0x10
      00031A 75 0A 00         [24]  952 	mov	(_num + 1),#0x00
                                    953 ;	main.c:95: break;
                                    954 ;	main.c:96: case 0xb0:
      00031D 80 16            [24]  955 	sjmp	00144$
      00031F                        956 00138$:
                                    957 ;	main.c:97: num+=2;
      00031F 75 09 0F         [24]  958 	mov	_num,#0x0f
      000322 75 0A 00         [24]  959 	mov	(_num + 1),#0x00
                                    960 ;	main.c:98: break;
                                    961 ;	main.c:99: case 0xd0:
      000325 80 0E            [24]  962 	sjmp	00144$
      000327                        963 00139$:
                                    964 ;	main.c:100: num+=1;
      000327 75 09 0E         [24]  965 	mov	_num,#0x0e
      00032A 75 0A 00         [24]  966 	mov	(_num + 1),#0x00
                                    967 ;	main.c:101: break;
                                    968 ;	main.c:102: case 0xe0:
      00032D 80 06            [24]  969 	sjmp	00144$
      00032F                        970 00140$:
                                    971 ;	main.c:103: num+=0;
      00032F 75 09 0D         [24]  972 	mov	_num,#0x0d
      000332 75 0A 00         [24]  973 	mov	(_num + 1),#0x00
                                    974 ;	main.c:108: while(P1!=0xfe);
      000335                        975 00144$:
      000335 74 FE            [12]  976 	mov	a,#0xfe
      000337 B5 90 FB         [24]  977 	cjne	a,_P1,00144$
                                    978 ;	main.c:109: keypressed = 1;
      00033A 75 1C 01         [24]  979 	mov	_keypressed,#0x01
      00033D 75 1D 00         [24]  980 	mov	(_keypressed + 1),#0x00
                                    981 ;	main.c:112: }
      000340 22               [24]  982 	ret
                                    983 ;------------------------------------------------------------
                                    984 ;Allocation info for local variables in function 'main'
                                    985 ;------------------------------------------------------------
                                    986 ;	main.c:114: void main()
                                    987 ;	-----------------------------------------
                                    988 ;	 function main
                                    989 ;	-----------------------------------------
      000341                        990 _main:
                                    991 ;	main.c:116: LCD_init();
      000341 12 00 B2         [24]  992 	lcall	_LCD_init
                                    993 ;	main.c:117: while(1)
      000344                        994 00104$:
                                    995 ;	main.c:119: keyscan();
      000344 12 01 A0         [24]  996 	lcall	_keyscan
                                    997 ;	main.c:120: if (keypressed)
      000347 E5 1C            [12]  998 	mov	a,_keypressed
      000349 45 1D            [12]  999 	orl	a,(_keypressed + 1)
      00034B 60 F7            [24] 1000 	jz	00104$
                                   1001 ;	main.c:122: keypressed = 0;
      00034D E4               [12] 1002 	clr	a
      00034E F5 1C            [12] 1003 	mov	_keypressed,a
      000350 F5 1D            [12] 1004 	mov	(_keypressed + 1),a
                                   1005 ;	main.c:123: LCD_Write_One_Char(num_to_hex[num]);
      000352 E5 09            [12] 1006 	mov	a,_num
      000354 24 0B            [12] 1007 	add	a,#_num_to_hex
      000356 F9               [12] 1008 	mov	r1,a
      000357 87 82            [24] 1009 	mov	dpl,@r1
      000359 12 00 CA         [24] 1010 	lcall	_LCD_Write_One_Char
                                   1011 ;	main.c:126: }
      00035C 80 E6            [24] 1012 	sjmp	00104$
                                   1013 	.area CSEG    (CODE)
                                   1014 	.area CONST   (CODE)
                                   1015 	.area XINIT   (CODE)
                                   1016 	.area CABS    (ABS,CODE)
