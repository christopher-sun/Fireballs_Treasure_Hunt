# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 37 "main.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();
void loadPalette(const unsigned short * palette);





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 176 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 187 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 227 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 38 "main.c" 2
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 15 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 16 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 17 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 12 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 2 3




# 1 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 1 3 4
# 216 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 3 4

# 216 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 1 3 4
# 149 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 12 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3






# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 27 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 41 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 63 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 89 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 120 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 146 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 168 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 186 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 200 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 8 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/_types.h" 2 3
# 13 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stdint.h" 1 3 4
# 9 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stdint.h" 3 4
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 14 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int8_t int8_t ;
typedef __uint8_t uint8_t ;




typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int16_t int16_t ;
typedef __uint16_t uint16_t ;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int32_t int32_t ;
typedef __uint32_t uint32_t ;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int64_t int64_t ;
typedef __uint64_t uint64_t ;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 74 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 84 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 94 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 104 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 153 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int intmax_t;
# 162 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long unsigned int uintmax_t;






typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 10 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stdint.h" 2 3 4
# 6 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 14 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long _off_t;



typedef int __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 55 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 67 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 1 3 4
# 357 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 68 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 16 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 91 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 115 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 179 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 285 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 569 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 762 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 45 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/lib/gcc/arm-none-eabi/5.3.0/include/stddef.h" 1 3 4
# 46 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 20 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/machine/stdlib.h" 1 3
# 21 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 29 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;




typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar)



                                ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 124 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 3
void qsort (void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void * __r, size_t __size) ;




void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);



float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);

int system (const char *__string);
# 161 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));
# 180 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 211 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 3
long long atoll (const char *__nptr);







long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);







unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);
# 246 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 279 "/Users/Chris/Documents/CS 2261/devkitARM/arm-none-eabi/include/stdlib.h" 3
extern long double strtold (const char *restrict, char **restrict);




# 39 "main.c" 2
# 1 "game.h" 1
# 13 "game.h"

# 13 "game.h"
typedef struct {
 int height;
 int width;
 int row;
 int col;
 int rdel;
 int cdel;
 int active;
 int aniCounter;
 int curFrame;
 int numFrames;
 int treasure;
} BULLET;


typedef struct {
 int row;
 int col;
 int rdel;
 int cdel;
 int height;
 int width;
 int active;
 int aniCounter;
 int curFrame;
 int numFrames;
} ENEMY;

typedef struct {
 int groundRow;
 int row;
 int col;
    int rdel;
    int cdel;
 int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
 int bulletTimer;
 int cDirection;
 int active;
 int number;
 int onScreen;
} ANISPRITE;
# 69 "game.h"
extern ANISPRITE player;
extern BULLET bullets[5];
extern ENEMY enemys[5];
extern int enemysRemaining;
extern int enemyBulletTimer;
extern ANISPRITE enemy;
extern int youLose;
extern int lives;
extern int scoreCol1;
extern int scoreCol2;




enum {BLACKID=(256-6), BLUEID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[6];


void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void drawPlayer();
void initBullets();
void fireBullet();
void updateBullet(BULLET *);
void drawBullet();
void initEnemys();
void updateEnemy(ENEMY *);
void drawEnemy();
void hideSprites();
void updateEnemyBullet(BULLET *);
void drawEnemyBullet();
void fireEnemyBullet();
void drawScore();
void drawLives();
void fireEnemy();
void initTreasure();
void updateTreasure(ANISPRITE *);
void drawTreasure();
void fireTreasure(int);
# 40 "main.c" 2
# 1 "sprites.h" 1
# 21 "sprites.h"
extern const unsigned short spritesTiles[16384];


extern const unsigned short spritesPal[256];
# 41 "main.c" 2
# 1 "startbg.h" 1
# 22 "startbg.h"
extern const unsigned short startbgTiles[1280];


extern const unsigned short startbgMap[1024];


extern const unsigned short startbgPal[256];
# 42 "main.c" 2
# 1 "pausebg.h" 1
# 22 "pausebg.h"
extern const unsigned short pausebgTiles[96];


extern const unsigned short pausebgMap[1024];


extern const unsigned short pausebgPal[256];
# 43 "main.c" 2
# 1 "winbg.h" 1
# 22 "winbg.h"
extern const unsigned short winbgTiles[384];


extern const unsigned short winbgMap[1024];


extern const unsigned short winbgPal[256];
# 44 "main.c" 2
# 1 "losebg.h" 1
# 22 "losebg.h"
extern const unsigned short losebgTiles[416];


extern const unsigned short losebgMap[1024];


extern const unsigned short losebgPal[256];
# 45 "main.c" 2
# 1 "starttopbg.h" 1
# 22 "starttopbg.h"
extern const unsigned short starttopbgTiles[912];


extern const unsigned short starttopbgMap[1024];


extern const unsigned short starttopbgPal[256];
# 46 "main.c" 2
# 1 "gamebg.h" 1
# 22 "gamebg.h"
extern const unsigned short gamebgTiles[736];


extern const unsigned short gamebgMap[1024];


extern const unsigned short gamebgPal[256];
# 47 "main.c" 2
# 1 "instructionsbg.h" 1
# 22 "instructionsbg.h"
extern const unsigned short instructionsbgTiles[448];


extern const unsigned short instructionsbgMap[1024];


extern const unsigned short instructionsbgPal[256];
# 48 "main.c" 2

void initialize();


void goToStart();
void start();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

enum {START, INSTRUCTIONS, GAME, PAUSE, WIN, LOSE};
int state;
int seed;

unsigned short buttons;
unsigned short oldButtons;

int hOff = 0;
int slower = 0;

int main() {

    initialize();

 while(1) {
  oldButtons = buttons;
  buttons = (*(volatile unsigned short *)0x04000130);


        switch(state) {

            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }

 }

 return 0;
}


void initialize() {
 (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<9) | (1<<12);

 (*(volatile unsigned short*)0x400000A) = (0<<14) | ((0)<<2) | ((31)<<8);
 (*(volatile unsigned short*)0x4000008) = (0<<14) | ((1)<<2) | ((30)<<8);

    goToStart();

}


void goToStart() {

 hideSprites();
 DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

 loadPalette(startbgPal);

 DMANow(3, startbgTiles, &((charblock *)0x6000000)[0], 2560/2);
 DMANow(3, startbgMap, &((screenblock *)0x6000000)[31], 2048/2);
 DMANow(3, starttopbgTiles, &((charblock *)0x6000000)[1], 1824/2);
 DMANow(3, starttopbgMap, &((screenblock *)0x6000000)[30], 2048/2);

    waitForVBlank();

    state = START;

    seed = 0;

}

void start() {
 seed++;
    slower++;
 if (slower % 10 == 0) {
  hOff++;
 }
 (*(volatile unsigned short *)0x04000010) = hOff;
    waitForVBlank();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        srand(seed);

        goToGame();
        initGame();
    }

    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToInstructions();
    }
}

void goToInstructions() {
    (*(unsigned short *)0x4000000) ^= (1<<8);
    loadPalette(instructionsbgPal);

 DMANow(3, instructionsbgTiles, &((charblock *)0x6000000)[0], 896/2);
 DMANow(3, instructionsbgMap, &((screenblock *)0x6000000)[31], 2048/2);

    state = INSTRUCTIONS;
}

void instructions() {

    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        (*(unsigned short *)0x4000000) ^= (1<<8);
        goToStart();
    }
}

void goToGame() {
 (*(unsigned short *)0x4000000) ^= (1<<8);
 loadPalette(gamebgPal);

 DMANow(3, gamebgTiles, &((charblock *)0x6000000)[0], 1472/2);
 DMANow(3, gamebgMap, &((screenblock *)0x6000000)[31], 2048/2);

 DMANow(3, spritesTiles, &((charblock *)0x6000000)[4], 32768/2);
 DMANow(3, spritesPal, ((unsigned short *)0x5000200), 512/2);



 state = GAME;
}

void game() {

    updateGame();
    drawGame();





    waitForVBlank();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
        goToPause();
    else if (youLose == 1 || lives == 0)
        goToLose();
    else if (enemysRemaining == 0 || (!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2)))))
        goToWin();


}

void goToPause() {
 hideSprites();
 DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

 loadPalette(pausebgPal);

 DMANow(3, pausebgTiles, &((charblock *)0x6000000)[0], 192/2);
 DMANow(3, pausebgMap, &((screenblock *)0x6000000)[31], 2048/2);


    waitForVBlank();

    state = PAUSE;
}

void pause() {

    waitForVBlank();

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {


  loadPalette(gamebgPal);

  DMANow(3, gamebgTiles, &((charblock *)0x6000000)[0], 1472/2);
  DMANow(3, gamebgMap, &((screenblock *)0x6000000)[31], 2048/2);

  DMANow(3, spritesTiles, &((charblock *)0x6000000)[4], 32768/2);
  DMANow(3, spritesPal, ((unsigned short *)0x5000200), 512/2);
  state = GAME;
 } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        (*(unsigned short *)0x4000000) ^= (1<<8);
        goToStart();
    }
}

void goToWin() {

 hideSprites();
 DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
  loadPalette(winbgPal);

  DMANow(3, winbgTiles, &((charblock *)0x6000000)[0], 768/2);
  DMANow(3, winbgMap, &((screenblock *)0x6000000)[31], 2048/2);
  hideSprites();

    waitForVBlank();


    state = WIN;
}

void win() {


    waitForVBlank();

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  (*(unsigned short *)0x4000000) ^= (1<<8);
        goToStart();
 }
}

void goToLose() {
 hideSprites();
 DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

  loadPalette(losebgPal);

  DMANow(3, losebgTiles, &((charblock *)0x6000000)[0], 832/2);
  DMANow(3, losebgMap, &((screenblock *)0x6000000)[31], 2048/2);

  hideSprites();
    waitForVBlank();


    state = LOSE;
}

void lose() {


    waitForVBlank();

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
  (*(unsigned short *)0x4000000) ^= (1<<8);
  goToStart();
 }
}