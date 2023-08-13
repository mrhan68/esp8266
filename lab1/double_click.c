#include <mcs51/8051.h>

#define LED           	P2_7
#define LED7SEG_DATA    P0

int count;
int key_duration[4];
unsigned char key_count;

void main(void)
{
    count = 0;		//start t=0
    key_count = 0;	
    LED7SEG_DATA = 0x00;

    TMOD = 0x02;    //timer 0 mode 1
    TH0 = 25;       //auto reload, period ~0.25ms
    TL0 = 0;

    IT1 = 1;		
    IE  = 0b10000110;
    TF0 = 0;
    TR0 = 1;

    while(1)
    {
		if (key_count == 2) { // K4 was double-clicked
        	int duration = key_duration[2] - key_duration[1];
            if (duration < 500 && duration > 0) { // double-click interval is within 500ms
                LED = 1; // turn on D8
            }
            key_count = 0;
        }

        if (count - key_duration[2] > 500) { // more than 500ms since last button press
            LED = 0; // turn off D8
        }
    }
}

void TIMER0_ISR() __interrupt TF0_VECTOR
{
    count++;
}

void EX1_ISR() __interrupt IE1_VECTOR
{
    EX1 = 0;
    key_count++;
    if (key_count > 3)
        key_count = 3;
    key_duration[key_count] = count;
    count = 0;
    EX1 = 1;
}
