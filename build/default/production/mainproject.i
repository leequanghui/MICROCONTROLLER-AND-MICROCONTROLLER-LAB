# 1 "mainproject.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "mainproject.c" 2
#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config BOREN = OFF
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF
# 24 "mainproject.c"
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdlib.h" 1 3




# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\__size_t.h" 1 3



typedef unsigned size_t;
# 6 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdlib.h" 2 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\__null.h" 1 3
# 7 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdlib.h" 2 3
typedef unsigned short wchar_t;







typedef struct {
 int rem;
 int quot;
} div_t;
typedef struct {
 unsigned rem;
 unsigned quot;
} udiv_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 unsigned long quot;
 unsigned long rem;
} uldiv_t;
# 65 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdlib.h" 3
extern double atof(const char *);
extern double strtod(const char *, const char **);
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);



extern long strtol(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);



extern unsigned long _lrotl(unsigned long value, unsigned int shift);
extern unsigned long _lrotr(unsigned long value, unsigned int shift);
extern unsigned int _rotl(unsigned int value, unsigned int shift);
extern unsigned int _rotr(unsigned int value, unsigned int shift);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);




# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\xc8debug.h" 1 3
# 13 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\xc8debug.h" 3
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 100 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdlib.h" 2 3




extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;
extern int system(char *);
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);




extern char * ltoa(char * buf, long val, int base);
extern char * ultoa(char * buf, unsigned long val, int base);

extern char * ftoa(float f, int * status);
# 24 "mainproject.c" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdio.h" 1 3
# 11 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdio.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdarg.h" 1 3






typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);
# 12 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdio.h" 2 3
# 43 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdio.h" 3
struct __prbuf
{
 char * ptr;
 void (* func)(char);
};
# 85 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdio.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\conio.h" 1 3







# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\errno.h" 1 3
# 29 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\errno.h" 3
extern int errno;
# 9 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\conio.h" 2 3



extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);



extern char * cgets(char *);
extern void cputs(const char *);
# 86 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdio.h" 2 3


extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);
# 180 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdio.h" 3
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);
# 25 "mainproject.c" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\string.h" 1 3
# 14 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\string.h" 3
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);
# 36 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\string.h" 3
extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);


extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int stricmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern int strnicmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * stristr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strichr(const char *, int);
extern char * strrchr(const char *, int);
extern char * strrichr(const char *, int);
# 26 "mainproject.c" 2


# 1 "./mainlcd.h" 1
#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config BOREN = OFF
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\xc.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);




# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 1 3
# 13 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef signed char int8_t;






typedef signed int int16_t;







typedef __int24 int24_t;







typedef signed long int int32_t;
# 52 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint8_t;





typedef unsigned int uint16_t;






typedef __uint24 uint24_t;






typedef unsigned long int uint32_t;
# 88 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_least8_t;







typedef signed int int_least16_t;
# 109 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_least24_t;
# 118 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef signed long int int_least32_t;
# 136 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_least8_t;






typedef unsigned int uint_least16_t;
# 154 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_least24_t;







typedef unsigned long int uint_least32_t;
# 181 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_fast8_t;






typedef signed int int_fast16_t;
# 200 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_fast24_t;







typedef signed long int int_fast32_t;
# 224 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
# 240 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_fast24_t;






typedef unsigned long int uint_fast32_t;
# 268 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef int32_t intmax_t;
# 282 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\c90\\stdint.h" 3
typedef uint32_t uintmax_t;






typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\builtins.h" 2 3



#pragma intrinsic(__nop)
extern void __nop(void);


#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);
# 24 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\xc.h" 2 3




# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\pic.h" 1 3




# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\htc.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\xc.h" 1 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\htc.h" 2 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\pic.h" 2 3








# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\pic_chip_select.h" 1 3
# 2854 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\pic_chip_select.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 1 3
# 44 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\__at.h" 1 3
# 44 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 2 3








extern volatile unsigned char INDF __attribute__((address(0x000)));

__asm("INDF equ 00h");




extern volatile unsigned char TMR0 __attribute__((address(0x001)));

__asm("TMR0 equ 01h");




extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");




extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned RP :2;
        unsigned IRP :1;
    };
    struct {
        unsigned :5;
        unsigned RP0 :1;
        unsigned RP1 :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 159 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char FSR __attribute__((address(0x004)));

__asm("FSR equ 04h");




extern volatile unsigned char PORTA __attribute__((address(0x005)));

__asm("PORTA equ 05h");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x005)));
# 216 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x006)));

__asm("PORTB equ 06h");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x006)));
# 278 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char PORTC __attribute__((address(0x007)));

__asm("PORTC equ 07h");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x007)));
# 340 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char PORTD __attribute__((address(0x008)));

__asm("PORTD equ 08h");


typedef union {
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0x008)));
# 402 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char PORTE __attribute__((address(0x009)));

__asm("PORTE equ 09h");


typedef union {
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0x009)));
# 434 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :5;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 454 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned RBIF :1;
        unsigned INTF :1;
        unsigned TMR0IF :1;
        unsigned RBIE :1;
        unsigned INTE :1;
        unsigned TMR0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :2;
        unsigned T0IF :1;
        unsigned :2;
        unsigned T0IE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 532 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x00C)));

__asm("PIR1 equ 0Ch");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSPIF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
        unsigned PSPIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x00C)));
# 594 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x00D)));

__asm("PIR2 equ 0Dh");


typedef union {
    struct {
        unsigned CCP2IF :1;
        unsigned :2;
        unsigned BCLIF :1;
        unsigned EEIF :1;
        unsigned :1;
        unsigned CMIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x00D)));
# 634 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x00E)));

__asm("TMR1 equ 0Eh");




extern volatile unsigned char TMR1L __attribute__((address(0x00E)));

__asm("TMR1L equ 0Eh");




extern volatile unsigned char TMR1H __attribute__((address(0x00F)));

__asm("TMR1H equ 0Fh");




extern volatile unsigned char T1CON __attribute__((address(0x010)));

__asm("T1CON equ 010h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned TMR1CS :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS :2;
    };
    struct {
        unsigned :2;
        unsigned T1SYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
    struct {
        unsigned :2;
        unsigned T1INSYNC :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x010)));
# 730 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0x011)));

__asm("TMR2 equ 011h");




extern volatile unsigned char T2CON __attribute__((address(0x012)));

__asm("T2CON equ 012h");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned TOUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned TOUTPS0 :1;
        unsigned TOUTPS1 :1;
        unsigned TOUTPS2 :1;
        unsigned TOUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x012)));
# 808 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char SSPBUF __attribute__((address(0x013)));

__asm("SSPBUF equ 013h");




extern volatile unsigned char SSPCON __attribute__((address(0x014)));

__asm("SSPCON equ 014h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0x014)));
# 885 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x015)));

__asm("CCPR1 equ 015h");




extern volatile unsigned char CCPR1L __attribute__((address(0x015)));

__asm("CCPR1L equ 015h");




extern volatile unsigned char CCPR1H __attribute__((address(0x016)));

__asm("CCPR1H equ 016h");




extern volatile unsigned char CCP1CON __attribute__((address(0x017)));

__asm("CCP1CON equ 017h");


typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned CCP1Y :1;
        unsigned CCP1X :1;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x017)));
# 964 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char RCSTA __attribute__((address(0x018)));

__asm("RCSTA equ 018h");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned RCD8 :1;
        unsigned :5;
        unsigned RC9 :1;
    };
    struct {
        unsigned :6;
        unsigned nRC8 :1;
    };
    struct {
        unsigned :6;
        unsigned RC8_9 :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x018)));
# 1059 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char TXREG __attribute__((address(0x019)));

__asm("TXREG equ 019h");




extern volatile unsigned char RCREG __attribute__((address(0x01A)));

__asm("RCREG equ 01Ah");




extern volatile unsigned short CCPR2 __attribute__((address(0x01B)));

__asm("CCPR2 equ 01Bh");




extern volatile unsigned char CCPR2L __attribute__((address(0x01B)));

__asm("CCPR2L equ 01Bh");




extern volatile unsigned char CCPR2H __attribute__((address(0x01C)));

__asm("CCPR2H equ 01Ch");




extern volatile unsigned char CCP2CON __attribute__((address(0x01D)));

__asm("CCP2CON equ 01Dh");


typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned CCP2Y :1;
        unsigned CCP2X :1;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x01D)));
# 1152 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x01E)));

__asm("ADRESH equ 01Eh");




extern volatile unsigned char ADCON0 __attribute__((address(0x01F)));

__asm("ADCON0 equ 01Fh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned :1;
        unsigned GO_nDONE :1;
        unsigned CHS :3;
        unsigned ADCS :2;
    };
    struct {
        unsigned :2;
        unsigned GO :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
    };
    struct {
        unsigned :2;
        unsigned nDONE :1;
    };
    struct {
        unsigned :2;
        unsigned GO_DONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x01F)));
# 1255 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x081)));

__asm("OPTION_REG equ 081h");


typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned INTEDG :1;
        unsigned nRBPU :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x081)));
# 1325 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x085)));

__asm("TRISA equ 085h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x085)));
# 1375 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x086)));

__asm("TRISB equ 086h");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x086)));
# 1437 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char TRISC __attribute__((address(0x087)));

__asm("TRISC equ 087h");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x087)));
# 1499 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char TRISD __attribute__((address(0x088)));

__asm("TRISD equ 088h");


typedef union {
    struct {
        unsigned TRISD0 :1;
        unsigned TRISD1 :1;
        unsigned TRISD2 :1;
        unsigned TRISD3 :1;
        unsigned TRISD4 :1;
        unsigned TRISD5 :1;
        unsigned TRISD6 :1;
        unsigned TRISD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0x088)));
# 1561 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char TRISE __attribute__((address(0x089)));

__asm("TRISE equ 089h");


typedef union {
    struct {
        unsigned TRISE0 :1;
        unsigned TRISE1 :1;
        unsigned TRISE2 :1;
        unsigned :1;
        unsigned PSPMODE :1;
        unsigned IBOV :1;
        unsigned OBF :1;
        unsigned IBF :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0x089)));
# 1618 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x08C)));

__asm("PIE1 equ 08Ch");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSPIE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
        unsigned PSPIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x08C)));
# 1680 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x08D)));

__asm("PIE2 equ 08Dh");


typedef union {
    struct {
        unsigned CCP2IE :1;
        unsigned :2;
        unsigned BCLIE :1;
        unsigned EEIE :1;
        unsigned :1;
        unsigned CMIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x08D)));
# 1720 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char PCON __attribute__((address(0x08E)));

__asm("PCON equ 08Eh");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
    };
    struct {
        unsigned nBO :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x08E)));
# 1754 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char SSPCON2 __attribute__((address(0x091)));

__asm("SSPCON2 equ 091h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0x091)));
# 1816 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char PR2 __attribute__((address(0x092)));

__asm("PR2 equ 092h");




extern volatile unsigned char SSPADD __attribute__((address(0x093)));

__asm("SSPADD equ 093h");




extern volatile unsigned char SSPSTAT __attribute__((address(0x094)));

__asm("SSPSTAT equ 094h");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned :2;
        unsigned R :1;
        unsigned :2;
        unsigned D :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned I2C_DATA :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0x094)));
# 1999 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char TXSTA __attribute__((address(0x098)));

__asm("TXSTA equ 098h");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TXD8 :1;
        unsigned :5;
        unsigned nTX8 :1;
    };
    struct {
        unsigned :6;
        unsigned TX8_9 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x098)));
# 2080 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char SPBRG __attribute__((address(0x099)));

__asm("SPBRG equ 099h");




extern volatile unsigned char CMCON __attribute__((address(0x09C)));

__asm("CMCON equ 09Ch");


typedef union {
    struct {
        unsigned CM :3;
        unsigned CIS :1;
        unsigned C1INV :1;
        unsigned C2INV :1;
        unsigned C1OUT :1;
        unsigned C2OUT :1;
    };
    struct {
        unsigned CM0 :1;
        unsigned CM1 :1;
        unsigned CM2 :1;
    };
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __attribute__((address(0x09C)));
# 2157 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char CVRCON __attribute__((address(0x09D)));

__asm("CVRCON equ 09Dh");


typedef union {
    struct {
        unsigned CVR :4;
        unsigned :1;
        unsigned CVRR :1;
        unsigned CVROE :1;
        unsigned CVREN :1;
    };
    struct {
        unsigned CVR0 :1;
        unsigned CVR1 :1;
        unsigned CVR2 :1;
        unsigned CVR3 :1;
    };
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __attribute__((address(0x09D)));
# 2222 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char ADRESL __attribute__((address(0x09E)));

__asm("ADRESL equ 09Eh");




extern volatile unsigned char ADCON1 __attribute__((address(0x09F)));

__asm("ADCON1 equ 09Fh");


typedef union {
    struct {
        unsigned PCFG :4;
        unsigned :2;
        unsigned ADCS2 :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned PCFG0 :1;
        unsigned PCFG1 :1;
        unsigned PCFG2 :1;
        unsigned PCFG3 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x09F)));
# 2288 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char EEDATA __attribute__((address(0x10C)));

__asm("EEDATA equ 010Ch");




extern volatile unsigned char EEADR __attribute__((address(0x10D)));

__asm("EEADR equ 010Dh");




extern volatile unsigned char EEDATH __attribute__((address(0x10E)));

__asm("EEDATH equ 010Eh");




extern volatile unsigned char EEADRH __attribute__((address(0x10F)));

__asm("EEADRH equ 010Fh");




extern volatile unsigned char EECON1 __attribute__((address(0x18C)));

__asm("EECON1 equ 018Ch");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned :3;
        unsigned EEPGD :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0x18C)));
# 2361 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0x18D)));

__asm("EECON2 equ 018Dh");
# 2378 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\proc\\pic16f877a.h" 3
extern volatile __bit ACKDT __attribute__((address(0x48D)));


extern volatile __bit ACKEN __attribute__((address(0x48C)));


extern volatile __bit ACKSTAT __attribute__((address(0x48E)));


extern volatile __bit ADCS0 __attribute__((address(0xFE)));


extern volatile __bit ADCS1 __attribute__((address(0xFF)));


extern volatile __bit ADCS2 __attribute__((address(0x4FE)));


extern volatile __bit ADDEN __attribute__((address(0xC3)));


extern volatile __bit ADFM __attribute__((address(0x4FF)));


extern volatile __bit ADIE __attribute__((address(0x466)));


extern volatile __bit ADIF __attribute__((address(0x66)));


extern volatile __bit ADON __attribute__((address(0xF8)));


extern volatile __bit BCLIE __attribute__((address(0x46B)));


extern volatile __bit BCLIF __attribute__((address(0x6B)));


extern volatile __bit BF __attribute__((address(0x4A0)));


extern volatile __bit BRGH __attribute__((address(0x4C2)));


extern volatile __bit C1INV __attribute__((address(0x4E4)));


extern volatile __bit C1OUT __attribute__((address(0x4E6)));


extern volatile __bit C2INV __attribute__((address(0x4E5)));


extern volatile __bit C2OUT __attribute__((address(0x4E7)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CCP1IE __attribute__((address(0x462)));


extern volatile __bit CCP1IF __attribute__((address(0x62)));


extern volatile __bit CCP1M0 __attribute__((address(0xB8)));


extern volatile __bit CCP1M1 __attribute__((address(0xB9)));


extern volatile __bit CCP1M2 __attribute__((address(0xBA)));


extern volatile __bit CCP1M3 __attribute__((address(0xBB)));


extern volatile __bit CCP1X __attribute__((address(0xBD)));


extern volatile __bit CCP1Y __attribute__((address(0xBC)));


extern volatile __bit CCP2IE __attribute__((address(0x468)));


extern volatile __bit CCP2IF __attribute__((address(0x68)));


extern volatile __bit CCP2M0 __attribute__((address(0xE8)));


extern volatile __bit CCP2M1 __attribute__((address(0xE9)));


extern volatile __bit CCP2M2 __attribute__((address(0xEA)));


extern volatile __bit CCP2M3 __attribute__((address(0xEB)));


extern volatile __bit CCP2X __attribute__((address(0xED)));


extern volatile __bit CCP2Y __attribute__((address(0xEC)));


extern volatile __bit CHS0 __attribute__((address(0xFB)));


extern volatile __bit CHS1 __attribute__((address(0xFC)));


extern volatile __bit CHS2 __attribute__((address(0xFD)));


extern volatile __bit CIS __attribute__((address(0x4E3)));


extern volatile __bit CKE __attribute__((address(0x4A6)));


extern volatile __bit CKP __attribute__((address(0xA4)));


extern volatile __bit CM0 __attribute__((address(0x4E0)));


extern volatile __bit CM1 __attribute__((address(0x4E1)));


extern volatile __bit CM2 __attribute__((address(0x4E2)));


extern volatile __bit CMIE __attribute__((address(0x46E)));


extern volatile __bit CMIF __attribute__((address(0x6E)));


extern volatile __bit CREN __attribute__((address(0xC4)));


extern volatile __bit CSRC __attribute__((address(0x4C7)));


extern volatile __bit CVR0 __attribute__((address(0x4E8)));


extern volatile __bit CVR1 __attribute__((address(0x4E9)));


extern volatile __bit CVR2 __attribute__((address(0x4EA)));


extern volatile __bit CVR3 __attribute__((address(0x4EB)));


extern volatile __bit CVREN __attribute__((address(0x4EF)));


extern volatile __bit CVROE __attribute__((address(0x4EE)));


extern volatile __bit CVRR __attribute__((address(0x4ED)));


extern volatile __bit DATA_ADDRESS __attribute__((address(0x4A5)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit D_A __attribute__((address(0x4A5)));


extern volatile __bit D_nA __attribute__((address(0x4A5)));


extern volatile __bit EEIE __attribute__((address(0x46C)));


extern volatile __bit EEIF __attribute__((address(0x6C)));


extern volatile __bit EEPGD __attribute__((address(0xC67)));


extern volatile __bit FERR __attribute__((address(0xC2)));


extern volatile __bit GCEN __attribute__((address(0x48F)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO __attribute__((address(0xFA)));


extern volatile __bit GO_DONE __attribute__((address(0xFA)));


extern volatile __bit GO_nDONE __attribute__((address(0xFA)));


extern volatile __bit I2C_DATA __attribute__((address(0x4A5)));


extern volatile __bit I2C_READ __attribute__((address(0x4A2)));


extern volatile __bit I2C_START __attribute__((address(0x4A3)));


extern volatile __bit I2C_STOP __attribute__((address(0x4A4)));


extern volatile __bit IBF __attribute__((address(0x44F)));


extern volatile __bit IBOV __attribute__((address(0x44D)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x40E)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IRP __attribute__((address(0x1F)));


extern volatile __bit OBF __attribute__((address(0x44E)));


extern volatile __bit OERR __attribute__((address(0xC1)));


extern volatile __bit PCFG0 __attribute__((address(0x4F8)));


extern volatile __bit PCFG1 __attribute__((address(0x4F9)));


extern volatile __bit PCFG2 __attribute__((address(0x4FA)));


extern volatile __bit PCFG3 __attribute__((address(0x4FB)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PEN __attribute__((address(0x48A)));


extern volatile __bit PS0 __attribute__((address(0x408)));


extern volatile __bit PS1 __attribute__((address(0x409)));


extern volatile __bit PS2 __attribute__((address(0x40A)));


extern volatile __bit PSA __attribute__((address(0x40B)));


extern volatile __bit PSPIE __attribute__((address(0x467)));


extern volatile __bit PSPIF __attribute__((address(0x67)));


extern volatile __bit PSPMODE __attribute__((address(0x44C)));


extern volatile __bit RA0 __attribute__((address(0x28)));


extern volatile __bit RA1 __attribute__((address(0x29)));


extern volatile __bit RA2 __attribute__((address(0x2A)));


extern volatile __bit RA3 __attribute__((address(0x2B)));


extern volatile __bit RA4 __attribute__((address(0x2C)));


extern volatile __bit RA5 __attribute__((address(0x2D)));


extern volatile __bit RB0 __attribute__((address(0x30)));


extern volatile __bit RB1 __attribute__((address(0x31)));


extern volatile __bit RB2 __attribute__((address(0x32)));


extern volatile __bit RB3 __attribute__((address(0x33)));


extern volatile __bit RB4 __attribute__((address(0x34)));


extern volatile __bit RB5 __attribute__((address(0x35)));


extern volatile __bit RB6 __attribute__((address(0x36)));


extern volatile __bit RB7 __attribute__((address(0x37)));


extern volatile __bit RBIE __attribute__((address(0x5B)));


extern volatile __bit RBIF __attribute__((address(0x58)));


extern volatile __bit RC0 __attribute__((address(0x38)));


extern volatile __bit RC1 __attribute__((address(0x39)));


extern volatile __bit RC2 __attribute__((address(0x3A)));


extern volatile __bit RC3 __attribute__((address(0x3B)));


extern volatile __bit RC4 __attribute__((address(0x3C)));


extern volatile __bit RC5 __attribute__((address(0x3D)));


extern volatile __bit RC6 __attribute__((address(0x3E)));


extern volatile __bit RC7 __attribute__((address(0x3F)));


extern volatile __bit RC8_9 __attribute__((address(0xC6)));


extern volatile __bit RC9 __attribute__((address(0xC6)));


extern volatile __bit RCD8 __attribute__((address(0xC0)));


extern volatile __bit RCEN __attribute__((address(0x48B)));


extern volatile __bit RCIE __attribute__((address(0x465)));


extern volatile __bit RCIF __attribute__((address(0x65)));


extern volatile __bit RD __attribute__((address(0xC60)));


extern volatile __bit RD0 __attribute__((address(0x40)));


extern volatile __bit RD1 __attribute__((address(0x41)));


extern volatile __bit RD2 __attribute__((address(0x42)));


extern volatile __bit RD3 __attribute__((address(0x43)));


extern volatile __bit RD4 __attribute__((address(0x44)));


extern volatile __bit RD5 __attribute__((address(0x45)));


extern volatile __bit RD6 __attribute__((address(0x46)));


extern volatile __bit RD7 __attribute__((address(0x47)));


extern volatile __bit RE0 __attribute__((address(0x48)));


extern volatile __bit RE1 __attribute__((address(0x49)));


extern volatile __bit RE2 __attribute__((address(0x4A)));


extern volatile __bit READ_WRITE __attribute__((address(0x4A2)));


extern volatile __bit RP0 __attribute__((address(0x1D)));


extern volatile __bit RP1 __attribute__((address(0x1E)));


extern volatile __bit RSEN __attribute__((address(0x489)));


extern volatile __bit RX9 __attribute__((address(0xC6)));


extern volatile __bit RX9D __attribute__((address(0xC0)));


extern volatile __bit R_W __attribute__((address(0x4A2)));


extern volatile __bit R_nW __attribute__((address(0x4A2)));


extern volatile __bit SEN __attribute__((address(0x488)));


extern volatile __bit SMP __attribute__((address(0x4A7)));


extern volatile __bit SPEN __attribute__((address(0xC7)));


extern volatile __bit SREN __attribute__((address(0xC5)));


extern volatile __bit SSPEN __attribute__((address(0xA5)));


extern volatile __bit SSPIE __attribute__((address(0x463)));


extern volatile __bit SSPIF __attribute__((address(0x63)));


extern volatile __bit SSPM0 __attribute__((address(0xA0)));


extern volatile __bit SSPM1 __attribute__((address(0xA1)));


extern volatile __bit SSPM2 __attribute__((address(0xA2)));


extern volatile __bit SSPM3 __attribute__((address(0xA3)));


extern volatile __bit SSPOV __attribute__((address(0xA6)));


extern volatile __bit SYNC __attribute__((address(0x4C4)));


extern volatile __bit T0CS __attribute__((address(0x40D)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x40C)));


extern volatile __bit T1CKPS0 __attribute__((address(0x84)));


extern volatile __bit T1CKPS1 __attribute__((address(0x85)));


extern volatile __bit T1INSYNC __attribute__((address(0x82)));


extern volatile __bit T1OSCEN __attribute__((address(0x83)));


extern volatile __bit T1SYNC __attribute__((address(0x82)));


extern volatile __bit T2CKPS0 __attribute__((address(0x90)));


extern volatile __bit T2CKPS1 __attribute__((address(0x91)));


extern volatile __bit TMR0IE __attribute__((address(0x5D)));


extern volatile __bit TMR0IF __attribute__((address(0x5A)));


extern volatile __bit TMR1CS __attribute__((address(0x81)));


extern volatile __bit TMR1IE __attribute__((address(0x460)));


extern volatile __bit TMR1IF __attribute__((address(0x60)));


extern volatile __bit TMR1ON __attribute__((address(0x80)));


extern volatile __bit TMR2IE __attribute__((address(0x461)));


extern volatile __bit TMR2IF __attribute__((address(0x61)));


extern volatile __bit TMR2ON __attribute__((address(0x92)));


extern volatile __bit TOUTPS0 __attribute__((address(0x93)));


extern volatile __bit TOUTPS1 __attribute__((address(0x94)));


extern volatile __bit TOUTPS2 __attribute__((address(0x95)));


extern volatile __bit TOUTPS3 __attribute__((address(0x96)));


extern volatile __bit TRISA0 __attribute__((address(0x428)));


extern volatile __bit TRISA1 __attribute__((address(0x429)));


extern volatile __bit TRISA2 __attribute__((address(0x42A)));


extern volatile __bit TRISA3 __attribute__((address(0x42B)));


extern volatile __bit TRISA4 __attribute__((address(0x42C)));


extern volatile __bit TRISA5 __attribute__((address(0x42D)));


extern volatile __bit TRISB0 __attribute__((address(0x430)));


extern volatile __bit TRISB1 __attribute__((address(0x431)));


extern volatile __bit TRISB2 __attribute__((address(0x432)));


extern volatile __bit TRISB3 __attribute__((address(0x433)));


extern volatile __bit TRISB4 __attribute__((address(0x434)));


extern volatile __bit TRISB5 __attribute__((address(0x435)));


extern volatile __bit TRISB6 __attribute__((address(0x436)));


extern volatile __bit TRISB7 __attribute__((address(0x437)));


extern volatile __bit TRISC0 __attribute__((address(0x438)));


extern volatile __bit TRISC1 __attribute__((address(0x439)));


extern volatile __bit TRISC2 __attribute__((address(0x43A)));


extern volatile __bit TRISC3 __attribute__((address(0x43B)));


extern volatile __bit TRISC4 __attribute__((address(0x43C)));


extern volatile __bit TRISC5 __attribute__((address(0x43D)));


extern volatile __bit TRISC6 __attribute__((address(0x43E)));


extern volatile __bit TRISC7 __attribute__((address(0x43F)));


extern volatile __bit TRISD0 __attribute__((address(0x440)));


extern volatile __bit TRISD1 __attribute__((address(0x441)));


extern volatile __bit TRISD2 __attribute__((address(0x442)));


extern volatile __bit TRISD3 __attribute__((address(0x443)));


extern volatile __bit TRISD4 __attribute__((address(0x444)));


extern volatile __bit TRISD5 __attribute__((address(0x445)));


extern volatile __bit TRISD6 __attribute__((address(0x446)));


extern volatile __bit TRISD7 __attribute__((address(0x447)));


extern volatile __bit TRISE0 __attribute__((address(0x448)));


extern volatile __bit TRISE1 __attribute__((address(0x449)));


extern volatile __bit TRISE2 __attribute__((address(0x44A)));


extern volatile __bit TRMT __attribute__((address(0x4C1)));


extern volatile __bit TX8_9 __attribute__((address(0x4C6)));


extern volatile __bit TX9 __attribute__((address(0x4C6)));


extern volatile __bit TX9D __attribute__((address(0x4C0)));


extern volatile __bit TXD8 __attribute__((address(0x4C0)));


extern volatile __bit TXEN __attribute__((address(0x4C5)));


extern volatile __bit TXIE __attribute__((address(0x464)));


extern volatile __bit TXIF __attribute__((address(0x64)));


extern volatile __bit UA __attribute__((address(0x4A1)));


extern volatile __bit WCOL __attribute__((address(0xA7)));


extern volatile __bit WR __attribute__((address(0xC61)));


extern volatile __bit WREN __attribute__((address(0xC62)));


extern volatile __bit WRERR __attribute__((address(0xC63)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit nA __attribute__((address(0x4A5)));


extern volatile __bit nADDRESS __attribute__((address(0x4A5)));


extern volatile __bit nBO __attribute__((address(0x470)));


extern volatile __bit nBOR __attribute__((address(0x470)));


extern volatile __bit nDONE __attribute__((address(0xFA)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x471)));


extern volatile __bit nRBPU __attribute__((address(0x40F)));


extern volatile __bit nRC8 __attribute__((address(0xC6)));


extern volatile __bit nT1SYNC __attribute__((address(0x82)));


extern volatile __bit nTO __attribute__((address(0x1C)));


extern volatile __bit nTX8 __attribute__((address(0x4C6)));


extern volatile __bit nW __attribute__((address(0x4A2)));


extern volatile __bit nWRITE __attribute__((address(0x4A2)));
# 2854 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\pic_chip_select.h" 2 3
# 13 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\pic.h" 2 3
# 76 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\eeprom_routines.h" 1 3
# 114 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\eeprom_routines.h" 3
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
# 83 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\pic.h" 2 3
# 118 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 28 "C:\\Program Files\\Microchip\\xc8\\v2.41\\pic\\include\\xc.h" 2 3
# 9 "./mainlcd.h" 2







void lenh(unsigned char a){
    PORTDbits.RD0 = 0;
    PORTDbits.RD1 = 0;
    PORTD = a & 0xF0;

    PORTDbits.RD2 = 1;
    PORTDbits.RD2 = 0;
    a = a<<4;

    PORTD = a & 0xF0;
    PORTDbits.RD2 = 1;
    PORTDbits.RD2 = 0;
    _delay((unsigned long)((40)*(20000000/4000000.0)));
}
void gui_Lenh(unsigned char a){
    PORTDbits.RD0 = 0;
    PORTDbits.RD1 = 0;
    PORTD = a & 0xF0;
    PORTDbits.RD2 = 1;
    PORTDbits.RD2 = 0;
    _delay((unsigned long)((40)*(20000000/4000000.0)));
}
void khoi_taoLCD(){
    gui_Lenh(0x28);
    lenh(0x28);
    lenh(0x06);
    lenh(0x0e);
}
void du_lieu(unsigned char a){
    PORTD = a & 0xF0;
    PORTDbits.RD0 = 1;
    PORTDbits.RD1 = 0;
    PORTDbits.RD2 = 1;
    PORTDbits.RD2 = 0;
    a = a<<4;
    a = a + 0x1;
    PORTD = a;
    PORTDbits.RD2 = 1;
    PORTDbits.RD2 = 0;
    _delay((unsigned long)((40)*(20000000/4000000.0)));
}
void chuoi_kytu(unsigned char *a){
    unsigned char i;
    for(i =0; a[i] != '\0'; i++){
        du_lieu(a[i]);
    }
}
void clear_lcd(){
    unsigned char a;
    a = 0x01;
    PORTDbits.RD0 = 0;
    PORTDbits.RD1 = 0;
    PORTD = a & 0xF0;
    _delay((unsigned long)((40)*(20000000/4000000.0)));
    PORTDbits.RD2 = 1;
    PORTDbits.RD2 = 0;
    a = a<<4;
    _delay((unsigned long)((40)*(20000000/4000000.0)));
    PORTD = a & 0xF0;
    PORTDbits.RD2 = 1;
    PORTDbits.RD2 = 0;
    _delay((unsigned long)((500)*(20000000/4000.0)));
}
# 28 "mainproject.c" 2

# 1 "./key_pad.h" 1






#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config BOREN = OFF
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF
# 33 "./key_pad.h"
void khoi_taoKeypad(void);
char keypad_scanner(void);
char switch_press_scan(void)
{
            char key = 'n';
            while(key=='n')
            key = keypad_scanner();
            return key;
}
char keypad_scanner(void)
{
            RB0 = 0; RB1 = 1; RB2 = 1; RB3 = 1;
            if (RB4 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB4==0); return 'D'; }
            else if (RB5 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB5==0); return 'C'; }
            else if (RB6 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB6==0); return 'B'; }
            else if (RB7 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB7==0); return 'A'; }

            RB0 = 1; RB1 = 0; RB2 = 1; RB3 = 1;
            if (RB4 == 0) { _delay((unsigned long)((10)*(20000000/4000.0))); while (RB4==0); return '#'; }
            else if (RB5 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB5==0); return '9'; }
            else if (RB6 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB6==0); return '6'; }
            else if (RB7 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB7==0); return '3'; }

            RB0 = 1; RB1 = 1; RB2 = 0; RB3 = 1;
            if (RB4 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB4==0); return '0'; }
            else if (RB5 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB5==0); return '8'; }
            else if (RB6 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB6==0); return '5'; }
            else if (RB7 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB7==0); return '2'; }

            RB0 = 1; RB1 = 1; RB2 = 1; RB3 = 0;
            if (RB4 == 0) { _delay((unsigned long)((10)*(20000000/4000.0))); while (RB4==0); return '*'; }
            else if (RB5 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB5==0); return '7'; }
            else if (RB6 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB6==0); return '4'; }
            else if (RB7 == 0) { _delay((unsigned long)((1)*(20000000/4000.0))); while (RB7==0); return '1'; }

    return 'n';
}
char keypad_scanner1(void)
{
   RB0 = 0; RB1 = 1; RB2 = 1; RB3 = 1;

   if (RB4 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB4==0); return '1'; }
   if (RB5 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB5==0); return '2'; }
   if (RB6 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB6==0); return '3'; }
   if (RB7 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB7==0); return 'A'; }

   RB0 = 1; RB1 = 0; RB2 = 1; RB3 = 1;

   if (RB4 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB4==0); return '4'; }
   if (RB5 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB5==0); return '5'; }
   if (RB6 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB6==0); return '6'; }
   if (RB7 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB7==0); return 'B'; }

   RB0 = 1; RB1 = 1; RB2 = 0; RB3 = 1;

   if (RB4 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB4==0); return '7'; }
   if (RB5 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB5==0); return '8'; }
   if (RB6 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB6==0); return '9'; }
   if (RB7 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB7==0); return 'C'; }

   RB0 = 1; RB1 = 1; RB2 = 1; RB3 = 0;

   if (RB4 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB4==0); return '*'; }
   if (RB5 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB5==0); return '0'; }
   if (RB6 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB6==0); return '#'; }
   if (RB7 == 0) { _delay((unsigned long)((100)*(20000000/4000.0))); while (RB7==0); return 'D'; }

   return 'n';
}


void khoi_taoKeypad(void)
{
            PORTB = 0x00;
            TRISB = 0xF0;
            OPTION_REG &= 0x7F;
}
# 29 "mainproject.c" 2

# 1 "./soft_spi.h" 1
# 39 "./soft_spi.h"
#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config BOREN = OFF
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF
# 64 "./soft_spi.h"
void Soft_SPI_Init()
{

   TRISCbits.TRISC2=0;
   TRISCbits.TRISC1=0;
   TRISCbits.TRISC3=0;
   TRISCbits.TRISC3=1;

  RC1=0;
  RC0=0;
  RC2=0;
  RC0 = 0;

}


unsigned char Soft_SPI_Read()
{
  unsigned char cont_s= 0;
  unsigned char dato_ = 0;

  for(cont_s= 0; cont_s < 8; cont_s++)
  {
      dato_ <<= 1;
      RC1 = 1;
      _delay((unsigned long)((10)*(20000000/4000000.0)));

      if(RC3 != 0)
      {
        dato_ |= 1;
      }
      RC1 = 0;
      _delay((unsigned long)((10)*(20000000/4000000.0)));
  }
  return dato_;
}

void Soft_SPI_Write(unsigned char dato_)
{
  unsigned char cont_s= 0;

  for(cont_s = 0;cont_s < 8; cont_s++)
  {

    if((dato_ & 0x80) != 0) RC2 = 1;
    else RC2 = 0;
    dato_ <<= 1;

    RC1 = 1;
    _delay((unsigned long)((10)*(20000000/4000000.0)));
    RC1 = 0;
    _delay((unsigned long)((10)*(20000000/4000000.0)));
  }
}
# 30 "mainproject.c" 2

# 1 "./RC522.h" 1






#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config BOREN = OFF
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF
# 115 "./RC522.h"
static void MFRC522_Wr( char addr, char value )
{
        RC0 = 0;
        Soft_SPI_Write( ( addr << 1 ) & 0x7E );
        Soft_SPI_Write( value );
        RC0 = 1;
}
unsigned char MFRC522_Rd( char addr )
{
char value;
        RC0 = 0;
        Soft_SPI_Write( (( addr << 1 ) & 0x7E) | 0x80 );
        value = Soft_SPI_Read();
        RC0 = 1;
        return value;
}
static void MFRC522_Clear_Bit( char addr, char mask )
{
     MFRC522_Wr( addr, MFRC522_Rd( addr ) & (~mask) );
}
static void MFRC522_Set_Bit( char addr, char mask )
{
     MFRC522_Wr( addr, MFRC522_Rd( addr ) | mask );
}
void MFRC522_Reset()
{
        MFRC522_Wr( 0x01, 0x0F );
}
void MFRC522_AntennaOn()
{
 MFRC522_Set_Bit( 0x14, 0x03 );
}
void MFRC522_AntennaOff()
{
 MFRC522_Clear_Bit( 0x14, 0x03 );
}
void MFRC522_Init()
{
     TRISCbits.TRISC0 = 0;
     TRISCbits.TRISC4 = 0;
     RC0 = 1;
     RC4 = 1;

     MFRC522_Reset();

     MFRC522_Wr( 0x2A, 0x8D );
     MFRC522_Wr( 0x2B, 0x3E );
     MFRC522_Wr( 0x2D, 30 );
     MFRC522_Wr( 0x2C, 0 );

     MFRC522_Wr( 0x15, 0x40 );
     MFRC522_Wr( 0x11, 0x3D );




     MFRC522_AntennaOff();
     MFRC522_AntennaOn();
}
char MFRC522_ToCard( char command, char *sendData, char sendLen, char *backData, unsigned *backLen )
{
  char _status = 2;
  char irqEn = 0x00;
  char waitIRq = 0x00;
  char lastBits;
  char n;
  unsigned i;

  switch (command)
  {
    case 0x0E:
    {
      irqEn = 0x12;
      waitIRq = 0x10;
      break;
    }
    case 0x0C:
    {
      irqEn = 0x77;
      waitIRq = 0x30;
      break;
    }
    default:
      break;
  }
  MFRC522_Wr( 0x02, irqEn | 0x80 );
  MFRC522_Clear_Bit( 0x04, 0x80 );
  MFRC522_Set_Bit( 0x0A, 0x80 );
  MFRC522_Wr( 0x01, 0x00 );




  for ( i=0; i < sendLen; i++ )
  {
    MFRC522_Wr( 0x09, sendData[i] );
  }

  MFRC522_Wr( 0x01, command );
  if (command == 0x0C )
  {
    MFRC522_Set_Bit( 0x0D, 0x80 );
  }


  i = 0xFFFF;
  do
  {


    n = MFRC522_Rd( 0x04 );
    i--;
  }
  while ( i && !(n & 0x01) && !( n & waitIRq ) );
  MFRC522_Clear_Bit( 0x0D, 0x80 );
  if (i != 0)
  {
    if( !( MFRC522_Rd( 0x06 ) & 0x1B ) )
    {
      _status = 0;
      if ( n & irqEn & 0x01 )
      {
        _status = 1;
      }
      if ( command == 0x0C )
      {
        n = MFRC522_Rd( 0x0A );
        lastBits = MFRC522_Rd( 0x0C ) & 0x07;
        if (lastBits)
        {
          *backLen = (n-1) * 8 + lastBits;
        }
        else
        {
          *backLen = n * 8;
        }
        if (n == 0)
        {
          n = 1;
        }
        if (n > 16)
        {
          n = 16;
        }

        for (i=0; i < n; i++)
        {
          backData[i] = MFRC522_Rd( 0x09 );
        }

  backData[i] = 0;
      }
    }
    else
    {
      _status = 2;
    }
  }


  return _status;
}
char MFRC522_Request( char reqMode, char *TagType )
{
  char _status;
  unsigned backBits;
  MFRC522_Wr( 0x0D, 0x07 );
  TagType[0] = reqMode;
  _status = MFRC522_ToCard( 0x0C, TagType, 1, TagType, &backBits );
  if ( (_status != 0) || (backBits != 0x10) )
  {
    _status = 2;
  }
  return _status;
}
void MFRC522_CRC( char *dataIn, char length, char *dataOut )
{
char i, n;
    MFRC522_Clear_Bit( 0x05, 0x04 );
    MFRC522_Set_Bit( 0x0A, 0x80 );


    for ( i = 0; i < length; i++ )
    {
        MFRC522_Wr( 0x09, *dataIn++ );
    }

    MFRC522_Wr( 0x01, 0x03 );

    i = 0xFF;

    do
    {
        n = MFRC522_Rd( 0x05 );
        i--;
    }
    while( i && !(n & 0x04) );

    dataOut[0] = MFRC522_Rd( 0x22 );
    dataOut[1] = MFRC522_Rd( 0x21 );
}
char MFRC522_SelectTag( char *serNum )
{
  char i;
  char _status;
  char size;
  unsigned recvBits;
  char buffer[9];



  buffer[0] = 0x93;
  buffer[1] = 0x70;

  for ( i=2; i < 7; i++ )
  {
    buffer[i] = *serNum++;
  }

  MFRC522_CRC( buffer, 7, &buffer[7] );

  _status = MFRC522_ToCard( 0x0C, buffer, 9, buffer, &recvBits );
  if ( (_status == 0) && (recvBits == 0x18) )
  {
    size = buffer[0];
  }
  else
  {
    size = 0;
  }
  return size;
}

void MFRC522_Halt()
{
  unsigned unLen;
  char buff[4];

  buff[0] = 0x50;
  buff[1] = 0;
  MFRC522_CRC( buff, 2, &buff[2] );
  MFRC522_Clear_Bit( 0x08, 0x80 );
  MFRC522_ToCard( 0x0C, buff, 4, buff, &unLen );
  MFRC522_Clear_Bit( 0x08, 0x08 );
}
char MFRC522_Auth( char authMode, char BlockAddr, char *Sectorkey, char *serNum )
{
  char _status;
  unsigned recvBits;
  char i;
  char buff[12];


  buff[0] = authMode;
  buff[1] = BlockAddr;

  for ( i = 2; i < 8; i++ )
  {
    buff[i] = Sectorkey[i-2];
  }

  for ( i = 8; i < 12; i++ )
  {
    buff[i] = serNum[i-8];
  }

  _status = MFRC522_ToCard( 0x0E, buff, 12, buff, &recvBits );

  if ( ( _status != 0 ) || !( MFRC522_Rd( 0x08 ) & 0x08 ) )
  {
    _status = 2;
  }

  return _status;
}
char MFRC522_Write( char blockAddr, char *writeData )
{
  char _status;
  unsigned recvBits;
  char i;
  char buff[18];
  buff[0] = 0xA0;
  buff[1] = blockAddr;

  MFRC522_CRC( buff, 2, &buff[2] );
  _status = MFRC522_ToCard( 0x0C, buff, 4, buff, &recvBits );
  if ( (_status != 0) || (recvBits != 4) || ( (buff[0] & 0x0F) != 0x0A) )
  {
    _status = 2;
  }
  if (_status == 0)
  {
    for ( i = 0; i < 16; i++ )
    {
      buff[i] = writeData[i];
    }

    MFRC522_CRC( buff, 16, &buff[16] );
    _status = MFRC522_ToCard( 0x0C, buff, 18, buff, &recvBits );
    if ( (_status != 0) || (recvBits != 4) || ( (buff[0] & 0x0F) != 0x0A ) )
    {
      _status = 2;
    }
  }
  return _status;
}
char MFRC522_Read( char blockAddr, char *recvData )
{
  char _status;
  unsigned unLen;
  recvData[0] = 0x30;
  recvData[1] = blockAddr;

  MFRC522_CRC( recvData, 2, &recvData[2] );

  _status = MFRC522_ToCard( 0x0C, recvData, 4, recvData, &unLen );
  if ( (_status != 0) || (unLen != 0x90) )
  {
    _status = 2;
  }
  return _status;
}
char MFRC522_AntiColl( char *serNum )
{
  char _status;
  char i;
  char serNumCheck = 0;
  unsigned unLen;
  MFRC522_Wr( 0x0D, 0x00 );
  serNum[0] = 0x93;
  serNum[1] = 0x20;
  MFRC522_Clear_Bit( 0x08, 0x08 );
  _status = MFRC522_ToCard( 0x0C, serNum, 2, serNum, &unLen );
  if (_status == 0)
  {
    for ( i=0; i < 4; i++ )
    {
      serNumCheck ^= serNum[i];
    }

    if ( serNumCheck != serNum[4] )
    {
      _status = 2;
    }
  }
  return _status;
}





char MFRC522_isCard( char *TagType )
{
    if (MFRC522_Request( 0x26, TagType ) == 0)
        return 1;
    else
        return 0;
}
char MFRC522_ReadCardSerial( char *str )
{
char _status;
 _status = MFRC522_AntiColl( str );
 str[5] = 0;
 if (_status == 0)
  return 1;
 else
  return 0;
}
# 31 "mainproject.c" 2

# 1 "./menu.h" 1






#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config BOREN = OFF
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF







char mk[6] = {'0', '0', '0', '0', '0', '0'};
unsigned char readEEPROM(unsigned char address);
void writeEEPROM(unsigned char address, unsigned char DATA);
unsigned char check_dulieu_the(unsigned char number);
void failunlock(void){
    clear_lcd();
    lenh(0xc2);
    chuoi_kytu(" Mat khau sai");
        PORTAbits.RA0 = 1;
        _delay((unsigned long)((500)*(20000000/4000.0)));
        PORTAbits.RA0 = 0;
        PORTAbits.RA1 = 1;
        _delay((unsigned long)((500)*(20000000/4000.0)));
        PORTAbits.RA1 = 0;
        PORTAbits.RA2 = 1;
        _delay((unsigned long)((500)*(20000000/4000.0)));
        PORTAbits.RA2 = 0;
        clear_lcd();
}
void unlock(void){
   int i;
        PORTAbits.RA0 = 1;
        _delay((unsigned long)((500)*(20000000/4000.0)));
        PORTAbits.RA0 = 0;
        PORTAbits.RA1 = 1;
        _delay((unsigned long)((500)*(20000000/4000.0)));
        PORTAbits.RA1 = 0;
        PORTAbits.RA2 = 1;
        _delay((unsigned long)((500)*(20000000/4000.0)));
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
                _delay((unsigned long)((1000)*(20000000/4000.0)));
            }
            PORTAbits.RA5 = 0;
            clear_lcd();
}
unsigned char lenh_mocua_quetthe(){
    int bienchay = 0, flag = 0, a = 0, tong =0, i, j, h=0x10 ;
    unsigned char address=0x00, x=0x00, y=0x00;
    unsigned int TagType;
    unsigned char UID[10];
    clear_lcd();
    lenh(0xc0);
    chuoi_kytu("Xin moi quet the");





    while(1){
        if (MFRC522_isCard( &TagType ))
        {
            if( MFRC522_ReadCardSerial( &UID ) )
            {

                for(i=0;i<10;i++){
                    PORTAbits.RA0 = 1;
                        _delay((unsigned long)((50)*(20000000/4000.0)));
                        PORTAbits.RA0 = 0;
                        _delay((unsigned long)((50)*(20000000/4000.0)));
                    for(j=0;j<10;j++){
                        address = x*h + y;
                        if(readEEPROM(address) == UID[j]){
                            tong = tong + 1;
                            PORTAbits.RA1 = 1;
                            _delay((unsigned long)((100)*(20000000/4000.0)));
                            PORTAbits.RA1 = 0;
                            _delay((unsigned long)((100)*(20000000/4000.0)));
                        }
                        y = y + 0x01;
                    }
                    y = 0x00;
                    if(tong >= 6){
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
        _delay((unsigned long)((100)*(20000000/4000.0)));
         for(i=0;i<6;i++){
            j = j + 0x01;
            writeEEPROM(j,0x30);
         }
    }

    lenh(0xc0);
    j = 0xF0;
    for(i=0;i<6;i++){
        j = j + 0x01;
        a[i]= readEEPROM(j);
    }

    for(i=0;i<6;i++){
        char nutnhan = switch_press_scan();
        du_lieu(nutnhan);
        if(nutnhan != a[i]){
            flagmksai = 1;
        }
        PORTAbits.RA0 = 1;
        _delay((unsigned long)((100)*(20000000/4000.0)));
        PORTAbits.RA0 = 0;
    }
    if(flagmksai != 1){
    unlock();}else if(flagmksai == 1){
        failunlock();
    }
}

unsigned char lenh_themthe(){

    int i, flagmksai = 0;
    unsigned char j = 0xF0;
    char a[6] = {'0', '0', '0', '0', '0', '0'};
    clear_lcd();
    lenh(0x80);
    chuoi_kytu("Nhap pass");
    if(readEEPROM(0xE0)== 0xFF){
        PORTAbits.RA0 = 1;
        _delay((unsigned long)((100)*(20000000/4000.0)));
         for(i=0;i<6;i++){
            j = j + 0x01;
            writeEEPROM(j,0x30);
         }
    }

    lenh(0xc0);
    j = 0xF0;
    for(i=0;i<6;i++){
        j = j + 0x01;
        a[i]= readEEPROM(j);
    }

    for(i=0;i<6;i++){
        char nutnhan = switch_press_scan();
        du_lieu(nutnhan);
        if(nutnhan != a[i]){
            flagmksai = 1;
        }
        PORTAbits.RA0 = 1;
        _delay((unsigned long)((100)*(20000000/4000.0)));
        PORTAbits.RA0 = 0;
    }
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
        _delay((unsigned long)((1000)*(20000000/4000.0)));
        return 0;
    }
    if(check_dulieu_the(number)==0){
        clear_lcd();
        lenh(0xc0);
        chuoi_kytu("Xin moi quet the");
        int i;
        unsigned char h = 0x10;
        unsigned int TagType;
        unsigned char UID[10];
    while(1){
        if (MFRC522_isCard( &TagType ))
        {
            if( MFRC522_ReadCardSerial( &UID ) )
            {
               unsigned char j = number*h + 0x00;
               for(i=0;i<10;i++){
                   writeEEPROM(j,UID[i]);
                   j = j + 0x01;
               }
                j = number*h + 0x0A;
                writeEEPROM(j,0x00);
                if(readEEPROM(j)==0x00){
                    PORTAbits.RA0 = 1;
                    PORTAbits.RA1 = 1;
                    PORTAbits.RA2 = 1;
                    _delay((unsigned long)((500)*(20000000/4000.0)));
                    PORTAbits.RA0 = 0;
                    PORTAbits.RA1 = 0;
                    PORTAbits.RA2 = 0;
                }
                _delay((unsigned long)((1000)*(20000000/4000.0)));
                break;
               }
           }
        }
    }
    clear_lcd();
    lenh(0xc0);
    chuoi_kytu("Them the thanh cong");
    _delay((unsigned long)((1000)*(20000000/4000.0)));
    }else if(flagmksai == 1){
        failunlock();
    }



}
unsigned char lenh_xoathe(){
    clear_lcd();
    lenh(0x84);
    chuoi_kytu("Xoa the");
    lenh(0xc0);
    _delay((unsigned long)((1000)*(20000000/4000.0)));
}
unsigned char lenh_doipass(){
    unsigned char j = 0xF0;
    int i, flagmksai = 0;
    char a[6] = {'0', '0', '0', '0', '0', '0'};
    clear_lcd();
    lenh(0x84);
    chuoi_kytu("Nhap pass cu");
    lenh(0xc0);
    chuoi_kytu("MatKhau gom 6 so");
    lenh(0x95);


    for(i=0;i<6;i++){
        j = j + 0x01;
        a[i] = readEEPROM(j);
    }

    for(i=0;i<6;i++){
        char nutnhan = switch_press_scan();
        PORTAbits.RA0 = 1;
        _delay((unsigned long)((100)*(20000000/4000.0)));
        PORTAbits.RA0 = 0;
        du_lieu(nutnhan);
        if(nutnhan != a[i]){
            flagmksai = 1;
        }
    }
    _delay((unsigned long)((1000)*(20000000/4000.0)));
    if(flagmksai == 0){
        writeEEPROM(0xE0,0x00);
        clear_lcd();
        lenh(0x82);
        chuoi_kytu(" Nhap pass moi");
        lenh(0xc0);
        chuoi_kytu(" Gom 6 so");
        lenh(0x95);
        j = 0xF0;
        for(i=0;i<6;i++){
            j = j + 0x01;
            mk[i] = switch_press_scan();
            _delay((unsigned long)((100)*(20000000/4000000.0)));
            writeEEPROM(j,mk[i]);
            du_lieu(readEEPROM(j));
        }







        _delay((unsigned long)((1000)*(20000000/4000.0)));
        clear_lcd();
        lenh(0x80);
        du_lieu(" ");
        lenh(0xc0);
        chuoi_kytu("Mat khau da duoc doi");
        PORTAbits.RA0 = 1;
        _delay((unsigned long)((500)*(20000000/4000.0)));
        PORTAbits.RA1 = 1;
        _delay((unsigned long)((500)*(20000000/4000.0)));
        PORTAbits.RA2 = 1;
        _delay((unsigned long)((500)*(20000000/4000.0)));
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
    lenh(0x80);
    chuoi_kytu("Nhanphim A#MOCUA");
    lenh(0xc0);
    chuoi_kytu("Nhanphim B#THEMTHE");
    lenh(0x94);
    chuoi_kytu("Nhanphim C#XOATHE");
    lenh(0xD4);
    chuoi_kytu("Nhanphim D#THAYPASS");
}
unsigned char taplenh_menu(char a){
    if(a =='A'){
        PORTAbits.RA1 = 1;
        _delay((unsigned long)((100)*(20000000/4000.0)));
        PORTAbits.RA1 = 0;
        clear_lcd();
        lenh(0x80);
        chuoi_kytu("A mo cua quet the");
        lenh(0xc0);
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
        _delay((unsigned long)((100)*(20000000/4000.0)));
        PORTAbits.RA1 = 0;
        lenh_themthe();
    }
    if(a=='C'){
        PORTAbits.RA1 = 1;
        _delay((unsigned long)((100)*(20000000/4000.0)));
        PORTAbits.RA1 = 0;
        lenh_xoathe();
    }
    if(a=='D'){
        PORTAbits.RA1 = 1;
        _delay((unsigned long)((100)*(20000000/4000.0)));
        PORTAbits.RA1 = 0;
        lenh_doipass();
    }
}
unsigned char check_dulieu_the(unsigned char number){
    unsigned char h = 0x10;
    number = number*h + 0x0A;
    if(readEEPROM(number)==0xFF){
        return 0;
    }
    return 1;
}
# 32 "mainproject.c" 2






unsigned char readEEPROM(unsigned char address){
    EEADR = address;
    EECON1bits.EEPGD = 0;
    EECON1bits.RD = 1;
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
    EECON1bits.WR = 1;
    EECON1bits.WREN = 0;
    while(PIR2bits.EEIF == 0);
    PIR2bits.EEIF = 0;
}
void main(){
    TRISD = 0x00;
    TRISA = 0xD8;
    PORTD = 0x00;
    Soft_SPI_Init();
    MFRC522_Init();
    khoi_taoLCD();
    khoi_taoKeypad();
    PORTAbits.RA0 = 1;
    _delay((unsigned long)((250)*(20000000/4000.0)));
    PORTAbits.RA0 = 0;
     _delay((unsigned long)((250)*(20000000/4000.0)));
     PORTAbits.RA1 = 1;
    _delay((unsigned long)((250)*(20000000/4000.0)));
    PORTAbits.RA1 = 0;
    _delay((unsigned long)((250)*(20000000/4000.0)));
     PORTAbits.RA2 = 1;
    _delay((unsigned long)((250)*(20000000/4000.0)));
    PORTAbits.RA2 = 0;
     _delay((unsigned long)((250)*(20000000/4000.0)));
     char nut;




    unsigned int TagType;
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
