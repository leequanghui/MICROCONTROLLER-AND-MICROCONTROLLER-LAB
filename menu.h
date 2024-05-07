
// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)
#define _XTAL_FREQ 20000000
// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.
#include <stdio.h>
#include <stdlib.h>
#include <xc.h>

char mk[6] = {'0', '0', '0', '0', '0', '0'};
unsigned char readEEPROM(unsigned char address);
void writeEEPROM(unsigned char address, unsigned char DATA);
unsigned char check_dulieu_the(unsigned char number);
void failunlock(void){
    clear_lcd();
    lenh(0xc2);
    chuoi_kytu(" Mat khau sai");
        PORTAbits.RA0 = 1;
        __delay_ms(500);
        PORTAbits.RA0 = 0;
        PORTAbits.RA1 = 1;
        __delay_ms(500);
        PORTAbits.RA1 = 0;
        PORTAbits.RA2 = 1;
        __delay_ms(500);
        PORTAbits.RA2 = 0;
        clear_lcd();
}
void unlock(void){
   int i;
        PORTAbits.RA0 = 1;
        __delay_ms(500);
        PORTAbits.RA0 = 0;
        PORTAbits.RA1 = 1;
        __delay_ms(500);
        PORTAbits.RA1 = 0;
        PORTAbits.RA2 = 1;
        __delay_ms(500);
        PORTAbits.RA2 = 0;
            clear_lcd();
            lenh(0x82);
            chuoi_kytu(" Dang mo cua");    
            PORTAbits.RA5 = 1;
            lenh(0xc0);
            chuoi_kytu(" Cua se dong trong");
            for(i = 57; i>47; i--){
                unsigned char j = (unsigned char)i;
                lenh(0xDA);
                du_lieu(j);
                lenh(0xDC);
                chuoi_kytu("giay");
                __delay_ms(1000);
            } 
            PORTAbits.RA5 = 0;
            clear_lcd();
}
unsigned char lenh_mocua_quetthe(){
    int bienchay = 0, flag = 0, a = 0, tong =0, i, j, h=0x10 ;
    unsigned char address=0x00, x=0x00, y=0x00;
    unsigned int TagType; // almacena el tipo de tag
    unsigned char UID[10];
    clear_lcd();
    lenh(0xc0);
    chuoi_kytu("Xin moi quet the");
    /*unsigned char j = number*10 + 0x00;
               for(i=0;i<10;i++){
                   j = j + 0x01;
                   writeEEPROM(j,UID[i]);
               }*/
    while(1){
        if (MFRC522_isCard( &TagType )) //Check any card // okeee
        {   
            if( MFRC522_ReadCardSerial( &UID ) )
            {  
                
                for(i=0;i<10;i++){
                    PORTAbits.RA0 = 1;
                        __delay_ms(50);
                        PORTAbits.RA0 = 0;
                        __delay_ms(50);
                    for(j=0;j<10;j++){
                        address = x*h + y;
                        if(readEEPROM(address) == UID[j]){
                            tong = tong + 1; 
                            PORTAbits.RA1 = 1;
                            __delay_ms(100);
                            PORTAbits.RA1 = 0;
                            __delay_ms(100);
                        }
                        y = y + 0x01;
                    }
                    y = 0x00;
                    if(tong >= 6){//xet mk dung
                        unlock();
                        break;
                    }
                    tong = 0;
                    x = x + 0x01;
                }
                if(tong == 0){
                failunlock();
                break;
                }
                break;
            }
        } 
    }
}
unsigned char lenh_mocua_matkhau(){
    int i, flagmksai = 0;
    unsigned char j = 0xF0;
    char a[6] = {'0', '0', '0', '0', '0', '0'};
    clear_lcd();
    lenh(0x80);
    chuoi_kytu("Nhap pass");
    if(readEEPROM(0xE0)== 0xFF){
        PORTAbits.RA0 = 1;
        __delay_ms(100);
         for(i=0;i<6;i++){
            j = j + 0x01;
            writeEEPROM(j,0x30);
         }
    }
    ///
    lenh(0xc0);
    j = 0xF0;
    for(i=0;i<6;i++){
        j = j + 0x01;
        a[i]= readEEPROM(j);
    }
    ///
    for(i=0;i<6;i++){
        char nutnhan = switch_press_scan();
        du_lieu(nutnhan);
        if(nutnhan != a[i]){
            flagmksai = 1;
        }
        PORTAbits.RA0 = 1;
        __delay_ms(100);
        PORTAbits.RA0 = 0;
    }
    if(flagmksai != 1){
    unlock();}else if(flagmksai == 1){
        failunlock();
    }    
}
///
unsigned char lenh_themthe(){
    ////
    int i, flagmksai = 0;
    unsigned char j = 0xF0;
    char a[6] = {'0', '0', '0', '0', '0', '0'};
    clear_lcd();
    lenh(0x80);
    chuoi_kytu("Nhap pass");
    if(readEEPROM(0xE0)== 0xFF){
        PORTAbits.RA0 = 1;
        __delay_ms(100);
         for(i=0;i<6;i++){
            j = j + 0x01;
            writeEEPROM(j,0x30);
         }
    }
    ///
    lenh(0xc0);
    j = 0xF0;
    for(i=0;i<6;i++){
        j = j + 0x01;
        a[i]= readEEPROM(j);
    }
    ///
    for(i=0;i<6;i++){
        char nutnhan = switch_press_scan();
        du_lieu(nutnhan);
        if(nutnhan != a[i]){
            flagmksai = 1;
        }
        PORTAbits.RA0 = 1;
        __delay_ms(100);
        PORTAbits.RA0 = 0;
    }//
    if(flagmksai != 1){
    clear_lcd();
    lenh(0x84);
    chuoi_kytu("Them the");
    lenh(0xc0);
    chuoi_kytu("Them the so ? 0 - 9");
    lenh(0x94);
    unsigned char number;
    number = switch_press_scan();
    if(check_dulieu_the(number) == 1){
        clear_lcd();
        lenh(0x84);
        chuoi_kytu("The da ton tai");
        __delay_ms(1000);
        return 0;
    }
    if(check_dulieu_the(number)==0){
        clear_lcd();
        lenh(0xc0);
        chuoi_kytu("Xin moi quet the");
        int i;
        unsigned char h = 0x10;
        unsigned int TagType; // almacena el tipo de tag
        unsigned char UID[10];
    while(1){  
        if (MFRC522_isCard( &TagType )) //Check any card // okeee
        {   
            if( MFRC522_ReadCardSerial( &UID ) )
            {  
               unsigned char j = number*h + 0x00;
               for(i=0;i<10;i++){
                   writeEEPROM(j,UID[i]);
                   j = j + 0x01;
               }
                j = number*h + 0x0A;
                writeEEPROM(j,0x00); //dau hieu check_dulieu_the = 1
                if(readEEPROM(j)==0x00){
                    PORTAbits.RA0 = 1;
                    PORTAbits.RA1 = 1;
                    PORTAbits.RA2 = 1;
                    __delay_ms(500);
                    PORTAbits.RA0 = 0;
                    PORTAbits.RA1 = 0;
                    PORTAbits.RA2 = 0;
                }
                __delay_ms(1000);
                break;
               }
           }
        } 
    }
    clear_lcd();
    lenh(0xc0);
    chuoi_kytu("Them the thanh cong");
    __delay_ms(1000);
    }else if(flagmksai == 1){
        failunlock();    
    }  
    //////
    
    
}
unsigned char lenh_xoathe(){
    clear_lcd();
    lenh(0x84);
    chuoi_kytu("Xoa the");
    lenh(0xc0);
    __delay_ms(1000);
}
unsigned char lenh_doipass(){
    unsigned char j = 0xF0;
    int i, flagmksai = 0;
    char a[6] = {'0', '0', '0', '0', '0', '0'};
    clear_lcd();
    lenh(0x84);
    chuoi_kytu("Nhap pass cu");
    lenh(0xc0);// hàng2
    chuoi_kytu("MatKhau gom 6 so");
    lenh(0x95);// hàng3
    
    //doc pass
    for(i=0;i<6;i++){
        j = j + 0x01;
        a[i] = readEEPROM(j);
    }
    //xet truong hop mk sai tra ve 1, hay dung tra ve 0
    for(i=0;i<6;i++){// doc tung nut nhan, xet moi nut nhan co khac mang a[i] khong
        char nutnhan = switch_press_scan();
        PORTAbits.RA0 = 1;
        __delay_ms(100);
        PORTAbits.RA0 = 0;
        du_lieu(nutnhan);
        if(nutnhan != a[i]){
            flagmksai = 1;
        }
    }
    __delay_ms(1000);
    if(flagmksai == 0){// neu mat khau nhap vao dung thi thuc hien lenh nhap mat khau moi
        writeEEPROM(0xE0,0x00);
        clear_lcd();
        lenh(0x82);
        chuoi_kytu(" Nhap pass moi");
        lenh(0xc0);
        chuoi_kytu(" Gom 6 so");
        lenh(0x95);// hàng3
        j = 0xF0;
        for(i=0;i<6;i++){
            j = j + 0x01;
            mk[i] = switch_press_scan();
            __delay_us(100);
            writeEEPROM(j,mk[i]);
            du_lieu(readEEPROM(j));
        }
        ////
     
       // for(i=0;i<6;i++){
         //   j = j + 0x01;
            //writeEEPROM(j,mk[i]);
        //}
        ///
        __delay_ms(1000);
        clear_lcd();
        lenh(0x80);
        du_lieu(" ");
        lenh(0xc0);
        chuoi_kytu("Mat khau da duoc doi");
        PORTAbits.RA0 = 1;
        __delay_ms(500);
        PORTAbits.RA1 = 1; 
        __delay_ms(500);
        PORTAbits.RA2 = 1;
        __delay_ms(500);
        PORTAbits.RA0 = 0;        
        PORTAbits.RA1 = 0;
        PORTAbits.RA2 = 0;
        
    }else if(flagmksai == 1){
            failunlock();
        } 
    clear_lcd();
}

void menu(void){
    clear_lcd();
    lenh(0x80);// hàng1
    chuoi_kytu("Nhanphim A#MOCUA");
    lenh(0xc0);// hàng2
    chuoi_kytu("Nhanphim B#THEMTHE");
    lenh(0x94);// hàng3
    chuoi_kytu("Nhanphim C#XOATHE");
    lenh(0xD4);// hàng4
    chuoi_kytu("Nhanphim D#THAYPASS");
}
unsigned char taplenh_menu(char a){
    if(a =='A'){
        PORTAbits.RA1 = 1;
        __delay_ms(100);
        PORTAbits.RA1 = 0;
        clear_lcd();
        lenh(0x80);// hàng1
        chuoi_kytu("A mo cua quet the");
        lenh(0xc0);// hàng2
        chuoi_kytu("B nhap mat khau");
        char nut;
        nut = switch_press_scan();
        while(nut == ('1','2','3','4','5','6','7','8','9','0','*','#','C','D')){
                nut = switch_press_scan();
        }
        if(nut == 'A'){
            lenh_mocua_quetthe();
        }
        if(nut == 'B'){
            lenh_mocua_matkhau();
        }
    }
    if(a=='B'){
        PORTAbits.RA1 = 1;
        __delay_ms(100);
        PORTAbits.RA1 = 0;
        lenh_themthe();
    }
    if(a=='C'){
        PORTAbits.RA1 = 1;
        __delay_ms(100);
        PORTAbits.RA1 = 0;
        lenh_xoathe();
    }
    if(a=='D'){
        PORTAbits.RA1 = 1;
        __delay_ms(100);
        PORTAbits.RA1 = 0;
        lenh_doipass();
    }
}
unsigned char check_dulieu_the(unsigned char number){
    unsigned char h = 0x10;
    number = number*h + 0x0A; // kiem tra du lieu o thu 0xXA
    if(readEEPROM(number)==0xFF){
        return 0;
    }
    return 1;
}
//void dulieu_the()
