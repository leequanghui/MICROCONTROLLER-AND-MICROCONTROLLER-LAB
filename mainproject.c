#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.
#define _XTAL_FREQ 20000000
#define MFRC522_CS  RC0   // SDA    SS
#define MFRC522_Rst  RC4    // RST
#define SoftSPI_SDO  RC2       //MOSI
#define SoftSPI_CLK  RC1         //SCK
#define SoftSPI_SDI  RC3           //MISO
#define MFRC522_CS_Direction  TRISCbits.TRISC0
#define MFRC522_Rst_Direction  TRISCbits.TRISC4
#define SoftSPI_SDO_Direction  TRISCbits.TRISC2
#define SoftSPI_CLK_Direction  TRISCbits.TRISC1
#define SoftSPI_SDI_Direction  TRISCbits.TRISC3

#include "stdlib.h"
#include "stdio.h"
#include "string.h"

#include "mainlcd.h"
#include "key_pad.h"
#include "soft_spi.h"
#include "RC522.h"
#include "menu.h"
#define FNV_PRIME 16777619
#define FNV_BASIS  2166136261

#include <xc.h>

unsigned char readEEPROM(unsigned char address){
    EEADR = address;
    EECON1bits.EEPGD = 0;
    EECON1bits.RD = 1; //init read eeprom
    return EEDATA;
}
void writeEEPROM(unsigned char address, unsigned char DATA){
    EEADR = address;
    EEDATA = DATA;
    EECON1bits.EEPGD = 0;
    EECON1bits.WREN = 1;
    INTCONbits.GIE = 0;
    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;//init write eeprom
    EECON1bits.WREN = 0;
    while(PIR2bits.EEIF == 0);
    PIR2bits.EEIF = 0;
}
void main(){
    TRISD = 0x00; //LCD
    TRISA = 0xD8; //LED //1101 1000 // Rb7 - > Rb6, rr4 -> r3 input, Rb2 -> Rb0 output, r5 output
    PORTD = 0x00; //cho port d = 0
    Soft_SPI_Init();    //nicia modulo SPI
    MFRC522_Init();  //inicializa la tarjeta
    khoi_taoLCD();
    khoi_taoKeypad();
    PORTAbits.RA0 = 1;
    __delay_ms(250);
    PORTAbits.RA0 = 0;
     __delay_ms(250);
     PORTAbits.RA1 = 1;
    __delay_ms(250);
    PORTAbits.RA1 = 0;
    __delay_ms(250);
     PORTAbits.RA2 = 1;
    __delay_ms(250);
    PORTAbits.RA2 = 0;
     __delay_ms(250);
     char nut;
    //int i = 0;
    //unsigned char address;
    //address = 0x94;
    //int mkd[6]={0, 8, 0, 4, 0, 3};
    unsigned int TagType; // almacena el tipo de tag
    unsigned char UID[10];
    while(1){
        
        menu();
        nut = switch_press_scan();
        while(nut == ('1','2','3','4','5','6','7','8','9','0','*','#')){
            nut = switch_press_scan();
        }
        taplenh_menu(nut); 
    }
}