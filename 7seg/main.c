#include <mcs51/8052.h>
#define TH0_50ms 0x4C
#define TL0_50ms 0x00



#define LED7SEG_DATA    P0
#define LED7SEG_ADDR0   P2_2
#define LED7SEG_ADDR1   P2_3
#define LED7SEG_ADDR2   P2_4



//global var
unsigned char count=0;
unsigned char const mask[10]={0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};



//Ham tao do tre
void delay(int interval)
{
    int i,j;
    for(i=0;i<100;i++)
    {
        for(j=0;j<interval;j++);
    }
}
//7-seg only
void output_7seg(unsigned char value)
{
    if (value < 10)
        LED7SEG_DATA = mask[value];
}
void output_7seg_off()
{
    LED7SEG_DATA = 0x00;
}



//Timer 0 interrupt handler
void TMR0_Process() __interrupt TF0_VECTOR{
    TF0  = 0;             //clear flag
    TR0  = 0;             //stop timer
    TH0  = TH0_50ms;    //reset T0 value
    TL0  = TL0_50ms;    //



    TR0  = 1;             //restart timer
}



//EXT 0 interrupt handler
void EXT0_Process() __interrupt IE0_VECTOR{
    EA=0;    //Cam ngat
    delay(2);
    count++;
    EA=1;    //Cho phep ngat
}



//EXT 1 interrupt handler
void EXT1_Process() __interrupt IE1_VECTOR{
    EA=0;    //Cam ngat
    delay(2);
    count--;
    EA=1;    //Cho phep ngat
}



//display 3 digits
void display_number(unsigned char iNum){
    unsigned char i;
    unsigned char temp;
    for(i=0; i<3; i++){
        temp = iNum % 10;
        iNum = iNum / 10;



        LED7SEG_ADDR0 = i & 0x01;
        LED7SEG_ADDR1 = i & 0x02;
        LED7SEG_ADDR2 = i & 0x04;
        output_7seg(temp);
        delay(1);
        output_7seg_off();
    }
}
//system initialization
void init(){
    P3_2 = 1;             //Thiet lap chan P3_2 lam chan vao
    P3_3 = 1;             //Thiet lap chan P3_3 lam chan vao
    //ext int 0
    EX0  = 1;             //Cho phep ngat ngoai 0
    IT0  = 1;            //Ngat theo suon
    //ext int 1
    EX1  = 1;             //Cho phep ngat ngoai 1
    IT1  = 1;            //Ngat theo suon
    EA   = 1;            //global interrupt enable



    //timer 0
    TMOD = TMOD & 0xF0;
    TMOD = TMOD | 0x01;
    TH0  = TH0_50ms;    //Khoi tao T0
    TL0  = TL0_50ms;    //Tuong duong 15536
    TF0  = 0;             //Xoa co tran timer 0
    TR0  = 1;             //Khoi dong timer 0
    ET0  = 1;            //cho phep ngat timer 0
}



void main(){
    init();
    while(1){
        display_number(count);
    }
}
