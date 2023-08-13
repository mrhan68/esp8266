void keyscan(){
    key_press=0;
    P1=0xfe;
    if(P1!=0xfe){
        delay(1000);
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
    P2=0xfd;
    if(P2!=0xfd){
        delay(1000);
        if(P2!=0xfd){
            num=5;
            key=P2&0xf0;
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
    P3=0xfb;
    if(P3!=0xfb){
        delay(1000);
        if(P3!=0xfb){
            num=9;
            key=P3&0xf0;
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
    P4=0xf7;
    if(P4!=0xf7){
        delay(1000);
        if(P4!=0xf7){
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
