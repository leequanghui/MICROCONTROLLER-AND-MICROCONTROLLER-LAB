
// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

#define _XTAL_FREQ 20000000 //Crystal Frequency, used in delay
#define X_1    RB0
#define X_2    RB1
#define X_3    RB2
#define X_4    RB3
#define Y_1    RB4
#define Y_2    RB5
#define Y_3    RB6
#define Y_4    RB7
#define Keypad_PORT          PORTB
#define Keypad_PORT_Direction     TRISB   

void khoi_taoKeypad(void);
char keypad_scanner(void);
char switch_press_scan(void)                       // Get key from user
{
            char key = 'n';              // Assume no key pressed
            while(key=='n')              // Wait untill a key is pressed
            key = keypad_scanner();   // Scan the keys again and again
            return key;                  //when key pressed then return its value
} 
char keypad_scanner(void)  // do an
{           
            X_1 = 0; X_2 = 1; X_3 = 1; X_4 = 1;
            if (Y_1 == 0) { __delay_ms(1); while (Y_1==0); return 'D'; }
            else if (Y_2 == 0) { __delay_ms(1); while (Y_2==0); return 'C'; }
            else if (Y_3 == 0) { __delay_ms(1); while (Y_3==0); return 'B'; }
            else if (Y_4 == 0) { __delay_ms(1); while (Y_4==0); return 'A'; }
            
            X_1 = 1; X_2 = 0; X_3 = 1; X_4 = 1;    
            if (Y_1 == 0) { __delay_ms(10); while (Y_1==0); return '#'; }
            else if (Y_2 == 0) { __delay_ms(1); while (Y_2==0); return '9'; }
            else if (Y_3 == 0) { __delay_ms(1); while (Y_3==0); return '6'; }
            else if (Y_4 == 0) { __delay_ms(1); while (Y_4==0); return '3'; }
            
            X_1 = 1; X_2 = 1; X_3 = 0; X_4 = 1;    
            if (Y_1 == 0) { __delay_ms(1); while (Y_1==0); return '0'; }
            else if (Y_2 == 0) { __delay_ms(1); while (Y_2==0); return '8'; }
            else if (Y_3 == 0) { __delay_ms(1); while (Y_3==0); return '5'; }
            else if (Y_4 == 0) { __delay_ms(1); while (Y_4==0); return '2'; }
           
            X_1 = 1; X_2 = 1; X_3 = 1; X_4 = 0;    
            if (Y_1 == 0) { __delay_ms(10); while (Y_1==0); return '*'; }
            else if (Y_2 == 0) { __delay_ms(1); while (Y_2==0); return '7'; }
            else if (Y_3 == 0) { __delay_ms(1); while (Y_3==0); return '4'; }
            else if (Y_4 == 0) { __delay_ms(1); while (Y_4==0); return '1'; }
            
    return 'n';                   
}
char keypad_scanner1(void) // proteus  
{   
   X_1 = 0; X_2 = 1; X_3 = 1; X_4 = 1;    

   if (Y_1 == 0) { __delay_ms(100); while (Y_1==0); return '1'; }
   if (Y_2 == 0) { __delay_ms(100); while (Y_2==0); return '2'; }
   if (Y_3 == 0) { __delay_ms(100); while (Y_3==0); return '3'; }
   if (Y_4 == 0) { __delay_ms(100); while (Y_4==0); return 'A'; }

   X_1 = 1; X_2 = 0; X_3 = 1; X_4 = 1;    

   if (Y_1 == 0) { __delay_ms(100); while (Y_1==0); return '4'; }
   if (Y_2 == 0) { __delay_ms(100); while (Y_2==0); return '5'; }
   if (Y_3 == 0) { __delay_ms(100); while (Y_3==0); return '6'; }
   if (Y_4 == 0) { __delay_ms(100); while (Y_4==0); return 'B'; }
   
   X_1 = 1; X_2 = 1; X_3 = 0; X_4 = 1;    

   if (Y_1 == 0) { __delay_ms(100); while (Y_1==0); return '7'; }
   if (Y_2 == 0) { __delay_ms(100); while (Y_2==0); return '8'; }
   if (Y_3 == 0) { __delay_ms(100); while (Y_3==0); return '9'; }
   if (Y_4 == 0) { __delay_ms(100); while (Y_4==0); return 'C'; }
   
   X_1 = 1; X_2 = 1; X_3 = 1; X_4 = 0;    

   if (Y_1 == 0) { __delay_ms(100); while (Y_1==0); return '*'; }
   if (Y_2 == 0) { __delay_ms(100); while (Y_2==0); return '0'; }
   if (Y_3 == 0) { __delay_ms(100); while (Y_3==0); return '#'; }
   if (Y_4 == 0) { __delay_ms(100); while (Y_4==0); return 'D'; }

   return 'n';    
}


void khoi_taoKeypad(void)
{
            Keypad_PORT                = 0x00;        // Set Keypad port pin values zero
            Keypad_PORT_Direction = 0xF0;      // Last 4 pins input, First 4 pins output        
            OPTION_REG &= 0x7F; // dien the keo len
}
/*int dich_nutnhan(char a){
    if(a == '1'){
        return 1;
    }
    else if(a == '2'){
        return 2;
    }
    else if(a == '3'){
        return 3;
    }
    else if(a == '4'){
        return 4;
    }
    else if(a == '5'){
        return 5;
    }
    else if(a == '6'){
        return 6;
    }
    else if(a == '7'){
        return 7;
    }
    else if(a == '8'){
        return 8;
    }
    else if(a == '9'){
        return 9;
    }
    else if(a == '0'){
        return 0;
    }
    else if(a == 'A'){
        return 10;
    }
    else if(a == 'B'){
        return 11;
    }
    else if(a == 'C'){
        return 12;
    }
    else if(a == 'D'){
        return 13;
    }
}
*/