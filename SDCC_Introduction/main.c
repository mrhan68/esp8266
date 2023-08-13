#include <mcs51/8052.h>
#include "lcd1602.c"

int num;
unsigned char num_to_hex[17]="0123456789ABCDEF";
int keypressed;
unsigned char key;
void keyscan()
{
    keypressed=0;
    P1=0xfe;
    if(P1!=0xfe){
        Delay_us(1000);
        if(P1!=0xfe){
            num=1;
            key=P1&0xf0;
            switch(key){
                case 0x70:
                    num+=3;
                    break;
                case 0xb0:
                    num+=2;
                    break;
                case 0xd0:
                    num+=1;
                    break;
                case 0xe0:
                    num+=0;
                    break;
            }
        }

        while(P1!=0xfe);
        keypressed = 1;
    }
    P1=0xfd;
    if(P1!=0xfd){
        Delay_us(1000);
        if(P1!=0xfd){
            num=5;
            key=P1&0xf0;
            switch(key){
                case 0x70:
                    num+=3;
                    break;
                case 0xb0:
                    num+=2;
                    break;
                case 0xd0:
                    num+=1;
                    break;
                case 0xe0:
                    num+=0;
                    break;
            }
        }

        while(P1!=0xfe);
        keypressed = 1;
    }
    P1=0xfb;
    if(P1!=0xfb){
        Delay_us(1000);
        if(P1!=0xfb){
            num=9;
            key=P1&0xf0;
            switch(key){
                case 0x70:
                    num+=3;
                    break;
                case 0xb0:
                    num+=2;
                    break;
                case 0xd0:
                    num+=1;
                    break;
                case 0xe0:
                    num+=0;
                    break;
            }
        }

        while(P1!=0xfe);
        keypressed = 1;
    }
    P1=0xf7;
    if(P1!=0xf7){
        Delay_us(1000);
        if(P1!=0xf7){
            num=13;
            key=P1&0xf0;
            switch(key){
                case 0x70:
                    num+=3;
                    break;
                case 0xb0:
                    num+=2;
                    break;
                case 0xd0:
                    num+=1;
                    break;
                case 0xe0:
                    num+=0;
                    break;
            }
        }

        while(P1!=0xfe);
        keypressed = 1;
    }

}

void main()
{
    LCD_init();
    while(1)
    {
        keyscan();
        if (keypressed)
        {
            keypressed = 0;
            LCD_Write_One_Char(num_to_hex[num]);
        }
    }
}
