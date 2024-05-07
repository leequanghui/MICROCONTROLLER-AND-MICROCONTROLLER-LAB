#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)
#include <xc.h>
#define RS PORTDbits.RD0
#define RW PORTDbits.RD1
#define E PORTDbits.RD2
#define _XTAL_FREQ 20000000
// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.
void lenh(unsigned char a){
    RS = 0;
    RW = 0;
    PORTD = a & 0xF0;
    
    E = 1;
    E = 0;
    a = a<<4;
    
    PORTD = a & 0xF0;
    E = 1;
    E = 0;
    __delay_us(40);
}
void gui_Lenh(unsigned char a){
    RS = 0;
    RW = 0;
    PORTD = a & 0xF0;
    E = 1;
    E = 0;
    __delay_us(40);
}
void khoi_taoLCD(){
    gui_Lenh(0x28);
    lenh(0x28);
    lenh(0x06);
    lenh(0x0e);
}
void du_lieu(unsigned char a){ // xuat mot 1 char
    PORTD = a & 0xF0; 
    RS = 1;
    RW = 0;
    E = 1;
    E = 0;
    a = a<<4;
    a = a + 0x1;
    PORTD = a;
    E = 1;
    E = 0;
    __delay_us(40);
}
void chuoi_kytu(unsigned char *a){
    unsigned char i;
    for(i =0; a[i] != '\0'; i++){
        du_lieu(a[i]);
    }
}
void clear_lcd(){ //clean_lcd bat o muc 1 man hinh xoa
    unsigned char a;
    a = 0x01;
    RS = 0;
    RW = 0;
    PORTD = a & 0xF0;
    __delay_us(40);
    E = 1;
    E = 0;
    a = a<<4;
    __delay_us(40);
    PORTD = a & 0xF0;
    E = 1;
    E = 0;
    __delay_ms(500);
}       
//lenh(0x80);// hàng1
//lenh(0xc0);//hang2
//lenh(0x94);//hang3
//lenh(0xD4);// hàng4