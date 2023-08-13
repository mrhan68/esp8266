#include <mcs51/8051.h>
#include "lcd1602.h"
#include "string.h"
#define TH0_50us        0x3C
#define TL0_50us        0xB0
#define IR_PIN          P3_2
#define LED_1           P2_0

volatile unsigned long ir_code = 0;
volatile unsigned char ir_bit_count = 0;
volatile bit ir_in_progress = 0;



void LCD_Send_Command(unsigned char x)
{
	LCD_DATA=x;
	LCD_RS=0; //Chon thanh ghi lenh
	LCD_RW=0; //De ghi du lieu
	LCD_EN=1;
	Delay_us(100);
	LCD_EN=0;
	Wait_For_LCD(); //Doi cho LCD san sang
	LCD_EN=1;
}
//Ham kiem tra va cho den khi LCD san sang
void Wait_For_LCD()
{
	Delay_us(100);
}
void LCD_init()
{
	LCD_Send_Command(0x38); //Chon che do 8 bit, 2 hang cho LCD
	LCD_Send_Command(0x0E); //Bat hien thi, nhap nhay con tro
	LCD_Send_Command(0x01); //Xoa man hinh
	LCD_Send_Command(0x80); //Ve dau dong
}

//Ham de LCD hien thi mot ky tu
void LCD_Write_One_Char(unsigned char c)
{
	LCD_DATA=c; //Dua du lieu vao thanh ghi
	LCD_RS=1; //Chon thanh ghi du lieu
	LCD_RW=0;
	LCD_EN=1;
	Delay_us(10);
	LCD_EN=0;
	Wait_For_LCD();
	LCD_EN=1;
}
//Ham de LCD hien thi mot xau
void LCD_Write_String(unsigned char *s)
{
	unsigned char length;
	length=strlen(s); //Lay do dai xau
	while(length!=0)
	{
		LCD_Write_One_Char(*s); //Ghi ra LCD gia tri duoc tro boi con tro
		s++; //Tang con tro
		length--;
	}
}

void LCD_GotoXY(char row, char col)
{
    char i;
    if (row == 2)
        LCD_Send_Command(0xC0);      //cursor to fist col in row 2
    else
       	LCD_Send_Command(0x80);      //cursor to fist col in row 1 (default)
	for (i = 0; i < col; i++)
        LCD_Send_Command(0x14);      //cursor to fist col in row 1 (default)
}

void Delay_ms(int interval)
{
	int i,j;
	for(i=0;i<1000;i++)
	{
		for(j=0;j<interval;j++);
	}
}

void Delay_us(int interval)
{
	int j;
	for(j=0;j<interval;j++);
}





void main(void)
{
    TMOD = 0x01;    //timer 0 mode 1
    TH0 = TH0_50us;
    TL0 = TL0_50us;

    IT0 = 1;        //external interrupt 0, falling edge trigger
    EX0 = 1;
    EA  = 1;

    TR0 = 1;

    while(1)
    {
        if (!ir_in_progress && ir_bit_count > 0)
        {
            //decode the received IR code
            //process the ir_code variable here
            ir_bit_count = 0;
        }
    }
}

void ir_rx_isr() __interrupt IE0_VECTOR
{
    static unsigned char prev_bit = 1;
    static unsigned char data_byte = 0;

    if (ir_in_progress)
    {
        //continue decoding
        unsigned char curr_bit = IR_PIN;
        if (curr_bit && !prev_bit)
        {
            //start bit detected, reset data byte
            data_byte = 0;
        }
        else if (!curr_bit && prev_bit)
        {
            //data bit detected, add to data byte
            if (ir_bit_count < 32)
            {
                data_byte >>= 1;
                if (TH0 < 0x20)
                {
                    data_byte |= 0x80;
                }
                ir_bit_count++;
            }
        }
        else if (!curr_bit && !prev_bit)
        {
            //end bit detected, save data byte
            if (ir_bit_count == 32)
            {
                ir_code = (unsigned long)data_byte;
            }
            ir_in_progress = 0;
        }
        prev_bit = curr_bit;
    }
    else
    {
        //start decoding
        if (!IR_PIN)
        {
            ir_in_progress = 1;
            ir_bit_count = 0;
            prev_bit = 0;
        }
    }
    LCD_init();
    LCD_Write_String(ir_code);

}
