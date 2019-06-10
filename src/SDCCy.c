/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 24 "SDCC.y" /* yacc.c:339  */

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "SDCCglobl.h"
#include "SDCCsymt.h"
#include "SDCChasht.h"
#include "SDCCval.h"
#include "SDCCmem.h"
#include "SDCCast.h"
#include "port.h"
#include "newalloc.h"
#include "SDCCerr.h"
#include "SDCCutil.h"
#include "SDCCbtree.h"
#include "SDCCopt.h"

extern int yyerror (char *);
extern FILE     *yyin;
long NestLevel = 0;     /* current NestLevel       */
int stackPtr  = 1;      /* stack pointer           */
int xstackPtr = 0;      /* xstack pointer          */
int reentrant = 0;
int blockNo   = 0;      /* sequential block number  */
int currBlockno=0;
int inCriticalFunction = 0;
int inCriticalBlock = 0;
int seqPointNo= 1;      /* sequence point number */
int ignoreTypedefType=0;
extern int yylex();
int yyparse(void);
extern int noLineno;
char lbuff[1024];       /* local buffer */
char function_name[256] = {0};

/* break & continue stacks */
STACK_DCL(continueStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(breakStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(forStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(swStk   ,ast   *,MAX_NEST_LEVEL)
STACK_DCL(blockNum,int,MAX_NEST_LEVEL*3)

value *cenum = NULL;        /* current enumeration  type chain*/
bool uselessDecl = TRUE;

#define YYDEBUG 1


#line 115 "y.tab.c" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "y.tab.h".  */
#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    IDENTIFIER = 258,
    TYPE_NAME = 259,
    ADDRSPACE_NAME = 260,
    CONSTANT = 261,
    SIZEOF = 262,
    ALIGNOF = 263,
    TYPEOF = 264,
    OFFSETOF = 265,
    PTR_OP = 266,
    INC_OP = 267,
    DEC_OP = 268,
    LEFT_OP = 269,
    RIGHT_OP = 270,
    LE_OP = 271,
    GE_OP = 272,
    EQ_OP = 273,
    NE_OP = 274,
    AND_OP = 275,
    OR_OP = 276,
    MUL_ASSIGN = 277,
    DIV_ASSIGN = 278,
    MOD_ASSIGN = 279,
    ADD_ASSIGN = 280,
    SUB_ASSIGN = 281,
    LEFT_ASSIGN = 282,
    RIGHT_ASSIGN = 283,
    AND_ASSIGN = 284,
    XOR_ASSIGN = 285,
    OR_ASSIGN = 286,
    TYPEDEF = 287,
    EXTERN = 288,
    STATIC = 289,
    AUTO = 290,
    REGISTER = 291,
    CODE = 292,
    EEPROM = 293,
    INTERRUPT = 294,
    SFR = 295,
    SFR16 = 296,
    SFR32 = 297,
    ADDRESSMOD = 298,
    STATIC_ASSERT = 299,
    AT = 300,
    SBIT = 301,
    REENTRANT = 302,
    USING = 303,
    XDATA = 304,
    DATA = 305,
    IDATA = 306,
    PDATA = 307,
    VAR_ARGS = 308,
    CRITICAL = 309,
    NONBANKED = 310,
    BANKED = 311,
    SHADOWREGS = 312,
    SD_WPARAM = 313,
    SD_BOOL = 314,
    SD_CHAR = 315,
    SD_SHORT = 316,
    SD_INT = 317,
    SD_LONG = 318,
    SIGNED = 319,
    UNSIGNED = 320,
    SD_FLOAT = 321,
    DOUBLE = 322,
    FIXED16X16 = 323,
    SD_CONST = 324,
    VOLATILE = 325,
    SD_VOID = 326,
    BIT = 327,
    STRUCT = 328,
    UNION = 329,
    ENUM = 330,
    RANGE = 331,
    SD_FAR = 332,
    CASE = 333,
    DEFAULT = 334,
    IF = 335,
    ELSE = 336,
    SWITCH = 337,
    WHILE = 338,
    DO = 339,
    FOR = 340,
    GOTO = 341,
    CONTINUE = 342,
    BREAK = 343,
    RETURN = 344,
    NAKED = 345,
    JAVANATIVE = 346,
    OVERLAY = 347,
    TRAP = 348,
    STRING_LITERAL = 349,
    INLINEASM = 350,
    IFX = 351,
    ADDRESS_OF = 352,
    GET_VALUE_AT_ADDRESS = 353,
    SET_VALUE_AT_ADDRESS = 354,
    SPIL = 355,
    UNSPIL = 356,
    GETHBIT = 357,
    GETABIT = 358,
    GETBYTE = 359,
    GETWORD = 360,
    BITWISEAND = 361,
    UNARYMINUS = 362,
    IPUSH = 363,
    IPOP = 364,
    PCALL = 365,
    ENDFUNCTION = 366,
    JUMPTABLE = 367,
    RRC = 368,
    RLC = 369,
    CAST = 370,
    CALL = 371,
    PARAM = 372,
    NULLOP = 373,
    BLOCK = 374,
    LABEL = 375,
    RECEIVE = 376,
    SEND = 377,
    ARRAYINIT = 378,
    DUMMY_READ_VOLATILE = 379,
    ENDCRITICAL = 380,
    SWAP = 381,
    INLINE = 382,
    NORETURN = 383,
    RESTRICT = 384,
    SMALLC = 385,
    PRESERVES_REGS = 386,
    Z88DK_FASTCALL = 387,
    Z88DK_CALLEE = 388,
    ALIGNAS = 389,
    Z88DK_SHORTCALL = 390,
    Z88DK_PARAMS_OFFSET = 391,
    GENERIC = 392,
    GENERIC_ASSOC_LIST = 393,
    GENERIC_ASSOCIATION = 394,
    ASM = 395
  };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define TYPE_NAME 259
#define ADDRSPACE_NAME 260
#define CONSTANT 261
#define SIZEOF 262
#define ALIGNOF 263
#define TYPEOF 264
#define OFFSETOF 265
#define PTR_OP 266
#define INC_OP 267
#define DEC_OP 268
#define LEFT_OP 269
#define RIGHT_OP 270
#define LE_OP 271
#define GE_OP 272
#define EQ_OP 273
#define NE_OP 274
#define AND_OP 275
#define OR_OP 276
#define MUL_ASSIGN 277
#define DIV_ASSIGN 278
#define MOD_ASSIGN 279
#define ADD_ASSIGN 280
#define SUB_ASSIGN 281
#define LEFT_ASSIGN 282
#define RIGHT_ASSIGN 283
#define AND_ASSIGN 284
#define XOR_ASSIGN 285
#define OR_ASSIGN 286
#define TYPEDEF 287
#define EXTERN 288
#define STATIC 289
#define AUTO 290
#define REGISTER 291
#define CODE 292
#define EEPROM 293
#define INTERRUPT 294
#define SFR 295
#define SFR16 296
#define SFR32 297
#define ADDRESSMOD 298
#define STATIC_ASSERT 299
#define AT 300
#define SBIT 301
#define REENTRANT 302
#define USING 303
#define XDATA 304
#define DATA 305
#define IDATA 306
#define PDATA 307
#define VAR_ARGS 308
#define CRITICAL 309
#define NONBANKED 310
#define BANKED 311
#define SHADOWREGS 312
#define SD_WPARAM 313
#define SD_BOOL 314
#define SD_CHAR 315
#define SD_SHORT 316
#define SD_INT 317
#define SD_LONG 318
#define SIGNED 319
#define UNSIGNED 320
#define SD_FLOAT 321
#define DOUBLE 322
#define FIXED16X16 323
#define SD_CONST 324
#define VOLATILE 325
#define SD_VOID 326
#define BIT 327
#define STRUCT 328
#define UNION 329
#define ENUM 330
#define RANGE 331
#define SD_FAR 332
#define CASE 333
#define DEFAULT 334
#define IF 335
#define ELSE 336
#define SWITCH 337
#define WHILE 338
#define DO 339
#define FOR 340
#define GOTO 341
#define CONTINUE 342
#define BREAK 343
#define RETURN 344
#define NAKED 345
#define JAVANATIVE 346
#define OVERLAY 347
#define TRAP 348
#define STRING_LITERAL 349
#define INLINEASM 350
#define IFX 351
#define ADDRESS_OF 352
#define GET_VALUE_AT_ADDRESS 353
#define SET_VALUE_AT_ADDRESS 354
#define SPIL 355
#define UNSPIL 356
#define GETHBIT 357
#define GETABIT 358
#define GETBYTE 359
#define GETWORD 360
#define BITWISEAND 361
#define UNARYMINUS 362
#define IPUSH 363
#define IPOP 364
#define PCALL 365
#define ENDFUNCTION 366
#define JUMPTABLE 367
#define RRC 368
#define RLC 369
#define CAST 370
#define CALL 371
#define PARAM 372
#define NULLOP 373
#define BLOCK 374
#define LABEL 375
#define RECEIVE 376
#define SEND 377
#define ARRAYINIT 378
#define DUMMY_READ_VOLATILE 379
#define ENDCRITICAL 380
#define SWAP 381
#define INLINE 382
#define NORETURN 383
#define RESTRICT 384
#define SMALLC 385
#define PRESERVES_REGS 386
#define Z88DK_FASTCALL 387
#define Z88DK_CALLEE 388
#define ALIGNAS 389
#define Z88DK_SHORTCALL 390
#define Z88DK_PARAMS_OFFSET 391
#define GENERIC 392
#define GENERIC_ASSOC_LIST 393
#define GENERIC_ASSOCIATION 394
#define ASM 395

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 74 "SDCC.y" /* yacc.c:355  */

    symbol     *sym;        /* symbol table pointer                   */
    structdef  *sdef;       /* structure definition                   */
    char       yychar[SDCC_NAME_MAX+1];
    sym_link   *lnk;        /* declarator  or specifier               */
    int        yyint;       /* integer value returned                 */
    value      *val;        /* for integer constant                   */
    initList   *ilist;      /* initial list                           */
    designation*dsgn;       /* designator                             */
    const char *yystr;      /* pointer to dynamicaly allocated string */
    ast        *asts;       /* expression tree                        */

#line 448 "y.tab.c" /* yacc.c:355  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 465 "y.tab.c" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  117
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   2759

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  165
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  129
/* YYNRULES -- Number of rules.  */
#define YYNRULES  346
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  552

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   395

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   153,     2,     2,     2,   155,   148,     2,
     141,   142,   149,   150,   143,   151,   144,   154,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,   147,   162,
     156,   161,   157,   160,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,   145,     2,   146,   158,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   163,   159,   164,   152,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      95,    96,    97,    98,    99,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,   122,   123,   124,
     125,   126,   127,   128,   129,   130,   131,   132,   133,   134,
     135,   136,   137,   138,   139,   140
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   150,   150,   153,   157,   158,   162,   166,   187,   195,
     194,   209,   208,   234,   235,   239,   243,   246,   249,   252,
     255,   258,   264,   267,   270,   276,   282,   288,   291,   294,
     297,   306,   330,   348,   349,   357,   358,   358,   365,   372,
     373,   374,   375,   376,   380,   384,   385,   389,   390,   394,
     421,   422,   423,   425,   429,   429,   436,   436,   443,   445,
     450,   451,   455,   456,   457,   458,   467,   468,   469,   470,
     471,   475,   476,   477,   478,   479,   480,   484,   485,   489,
     490,   491,   492,   496,   497,   498,   502,   503,   504,   508,
     509,   510,   511,   512,   516,   517,   518,   522,   523,   527,
     528,   532,   533,   537,   538,   538,   543,   544,   544,   549,
     550,   550,   558,   559,   604,   605,   606,   607,   608,   609,
     610,   611,   612,   613,   614,   618,   619,   619,   623,   627,
     651,   686,   692,   695,   696,   701,   702,   707,   708,   713,
     714,   722,   723,   727,   728,   732,   733,   737,   741,   742,
     746,   768,   772,   776,   780,   784,   788,   795,   799,   806,
     812,   827,   828,   843,   847,   851,   855,   859,   863,   867,
     871,   875,   879,   886,   887,   894,   895,   900,   905,   910,
     915,   920,   925,   930,   935,   940,   945,   953,   960,   965,
     971,   980,   984,   992,   996,  1004,  1015,  1026,  1039,  1038,
    1131,  1161,  1162,  1166,  1167,  1178,  1197,  1198,  1211,  1236,
    1237,  1245,  1246,  1256,  1270,  1274,  1279,  1300,  1316,  1317,
    1318,  1326,  1346,  1359,  1373,  1374,  1382,  1383,  1387,  1393,
    1403,  1404,  1436,  1437,  1438,  1447,  1466,  1495,  1530,  1569,
    1611,  1656,  1661,  1660,  1694,  1704,  1705,  1718,  1724,  1764,
    1771,  1774,  1776,  1784,  1785,  1793,  1794,  1798,  1799,  1807,
    1824,  1834,  1842,  1868,  1869,  1870,  1877,  1878,  1883,  1889,
    1895,  1903,  1904,  1905,  1918,  1917,  1948,  1949,  1950,  1954,
    1955,  1964,  1972,  1985,  1986,  1987,  1988,  1989,  1990,  1991,
    1992,  1996,  2007,  2016,  2017,  2030,  2032,  2039,  2039,  2049,
    2060,  2068,  2069,  2074,  2078,  2079,  2080,  2084,  2085,  2094,
    2094,  2105,  2112,  2122,  2135,  2161,  2162,  2166,  2167,  2171,
    2172,  2177,  2177,  2185,  2185,  2210,  2224,  2239,  2264,  2264,
    2273,  2283,  2309,  2308,  2348,  2349,  2353,  2363,  2376,  2386,
    2395,  2407,  2411,  2421,  2434,  2445,  2463
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IDENTIFIER", "TYPE_NAME",
  "ADDRSPACE_NAME", "CONSTANT", "SIZEOF", "ALIGNOF", "TYPEOF", "OFFSETOF",
  "PTR_OP", "INC_OP", "DEC_OP", "LEFT_OP", "RIGHT_OP", "LE_OP", "GE_OP",
  "EQ_OP", "NE_OP", "AND_OP", "OR_OP", "MUL_ASSIGN", "DIV_ASSIGN",
  "MOD_ASSIGN", "ADD_ASSIGN", "SUB_ASSIGN", "LEFT_ASSIGN", "RIGHT_ASSIGN",
  "AND_ASSIGN", "XOR_ASSIGN", "OR_ASSIGN", "TYPEDEF", "EXTERN", "STATIC",
  "AUTO", "REGISTER", "CODE", "EEPROM", "INTERRUPT", "SFR", "SFR16",
  "SFR32", "ADDRESSMOD", "STATIC_ASSERT", "AT", "SBIT", "REENTRANT",
  "USING", "XDATA", "DATA", "IDATA", "PDATA", "VAR_ARGS", "CRITICAL",
  "NONBANKED", "BANKED", "SHADOWREGS", "SD_WPARAM", "SD_BOOL", "SD_CHAR",
  "SD_SHORT", "SD_INT", "SD_LONG", "SIGNED", "UNSIGNED", "SD_FLOAT",
  "DOUBLE", "FIXED16X16", "SD_CONST", "VOLATILE", "SD_VOID", "BIT",
  "STRUCT", "UNION", "ENUM", "RANGE", "SD_FAR", "CASE", "DEFAULT", "IF",
  "ELSE", "SWITCH", "WHILE", "DO", "FOR", "GOTO", "CONTINUE", "BREAK",
  "RETURN", "NAKED", "JAVANATIVE", "OVERLAY", "TRAP", "STRING_LITERAL",
  "INLINEASM", "IFX", "ADDRESS_OF", "GET_VALUE_AT_ADDRESS",
  "SET_VALUE_AT_ADDRESS", "SPIL", "UNSPIL", "GETHBIT", "GETABIT",
  "GETBYTE", "GETWORD", "BITWISEAND", "UNARYMINUS", "IPUSH", "IPOP",
  "PCALL", "ENDFUNCTION", "JUMPTABLE", "RRC", "RLC", "CAST", "CALL",
  "PARAM", "NULLOP", "BLOCK", "LABEL", "RECEIVE", "SEND", "ARRAYINIT",
  "DUMMY_READ_VOLATILE", "ENDCRITICAL", "SWAP", "INLINE", "NORETURN",
  "RESTRICT", "SMALLC", "PRESERVES_REGS", "Z88DK_FASTCALL", "Z88DK_CALLEE",
  "ALIGNAS", "Z88DK_SHORTCALL", "Z88DK_PARAMS_OFFSET", "GENERIC",
  "GENERIC_ASSOC_LIST", "GENERIC_ASSOCIATION", "ASM", "'('", "')'", "','",
  "'.'", "'['", "']'", "':'", "'&'", "'*'", "'+'", "'-'", "'~'", "'!'",
  "'/'", "'%'", "'<'", "'>'", "'^'", "'|'", "'?'", "'='", "';'", "'{'",
  "'}'", "$accept", "file", "program", "external_definition",
  "function_definition", "$@1", "$@2", "function_attribute",
  "function_attributes", "function_body", "offsetof_member_designator",
  "$@3", "primary_expr", "generic_selection", "generic_assoc_list",
  "generic_association", "string_literal_val", "postfix_expr", "$@4",
  "$@5", "argument_expr_list", "unary_expr", "unary_operator", "cast_expr",
  "multiplicative_expr", "additive_expr", "shift_expr", "relational_expr",
  "equality_expr", "and_expr", "exclusive_or_expr", "inclusive_or_expr",
  "logical_and_expr", "$@6", "logical_or_expr", "$@7", "conditional_expr",
  "$@8", "assignment_expr", "assignment_operator", "expr", "$@9",
  "constant_expr", "declaration", "declaration_specifiers",
  "declaration_specifiers_", "init_declarator_list", "init_declarator",
  "designation_opt", "designation", "designator_list", "designator",
  "storage_class_specifier", "function_specifier", "alignment_specifier",
  "Interrupt_storage", "type_qualifier", "type_qualifier_list",
  "type_specifier", "sfr_reg_bit", "sfr_attributes",
  "struct_or_union_specifier", "$@10", "struct_or_union", "opt_stag",
  "stag", "struct_declaration_list", "struct_declaration",
  "struct_declarator_list", "struct_declarator", "enum_specifier",
  "enumerator_list", "enumerator", "opt_assign_expr", "declarator",
  "declarator3", "function_declarator", "declarator2_function_attributes",
  "declarator2", "function_declarator2", "$@11", "pointer",
  "unqualified_pointer", "type_specifier_list", "type_specifier_list_",
  "identifier_list", "parameter_type_list", "parameter_list",
  "parameter_declaration", "type_name", "abstract_declarator",
  "abstract_declarator2", "$@12", "initializer", "initializer_list",
  "static_assert_declaration", "statement", "critical",
  "critical_statement", "labeled_statement", "label", "@13", "start_block",
  "end_block", "compound_statement", "block_item_list",
  "statements_and_implicit", "declaration_after_statement", "$@14",
  "implicit_block", "declaration_list", "statement_list",
  "expression_statement", "else_statement", "selection_statement", "$@15",
  "@16", "while", "do", "for", "iteration_statement", "$@17", "$@18",
  "expr_opt", "jump_statement", "asm_string_literal", "asm_statement",
  "addressmod", "identifier", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,   321,   322,   323,   324,
     325,   326,   327,   328,   329,   330,   331,   332,   333,   334,
     335,   336,   337,   338,   339,   340,   341,   342,   343,   344,
     345,   346,   347,   348,   349,   350,   351,   352,   353,   354,
     355,   356,   357,   358,   359,   360,   361,   362,   363,   364,
     365,   366,   367,   368,   369,   370,   371,   372,   373,   374,
     375,   376,   377,   378,   379,   380,   381,   382,   383,   384,
     385,   386,   387,   388,   389,   390,   391,   392,   393,   394,
     395,    40,    41,    44,    46,    91,    93,    58,    38,    42,
      43,    45,   126,    33,    47,    37,    60,    62,    94,   124,
      63,    61,    59,   123,   125
};
# endif

#define YYPACT_NINF -457

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-457)))

#define YYTABLE_NINF -313

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
    2027,  -457,  -457,  -457,  -457,  -457,  -457,  -457,  -457,  -457,
    -457,   -15,  -457,  -457,    36,   -74,  1972,  -457,  -457,  -457,
    -457,  -457,  -457,  -457,  -457,  -457,  -457,  -457,  -457,  -457,
    -457,  -457,  -457,  -457,  -457,  -457,  -457,    12,  -457,  -457,
    -457,   -64,    24,  -457,    82,  2027,  -457,  -457,  -457,    14,
    -457,  2625,  2625,  2625,  -457,  2625,  -457,  -457,  -457,    36,
    -457,    -8,  -457,   -56,    11,   813,    28,  2321,   -18,  -457,
    -457,  -457,    26,  1972,  -457,  1990,    31,  2043,    42,  2043,
    2043,  -457,    47,  1637,  -457,  -457,  -457,  -457,  -457,  -457,
    -457,  -457,  -457,    67,  -457,  1972,  -457,   -16,   -57,    89,
      39,   100,     2,    52,    18,   193,    -1,  -457,  -457,  -457,
      36,    58,  1637,    73,    -8,  -457,    28,  -457,  -457,  -457,
     -72,  -457,    69,  -457,    28,  -457,  -457,  -457,  -457,  -457,
      74,  -457,  1710,  1239,    19,  1972,  -457,  1972,  -457,  -457,
    -457,  -457,  -457,  -457,  -457,  -457,  -457,  -457,    98,  -457,
    -457,   102,   111,  -457,   813,  -457,   -56,  -457,  -457,   106,
    2572,  -457,    36,   101,    51,  1637,  -457,  2625,  1972,  -457,
    2625,  -457,  -457,  1972,   265,  -457,  -457,    63,    -9,   131,
    -457,  -457,  -457,  1587,  -457,  1972,  -457,  1972,  1972,  1972,
    1972,  1972,  1972,  1972,  1972,  1972,  1972,  1972,  1972,  1972,
    1972,  1972,  1972,  -457,  -457,  -457,  -113,  -457,   114,    36,
     139,   141,  -457,    -8,    24,  -457,   556,  1239,   121,  1872,
    -457,   152,  -457,  1803,   153,  -457,  -457,  -457,    14,   597,
    -457,  1239,  -457,  2625,    84,  -457,  -457,  -457,    36,  1972,
    1972,  -457,  -457,  -457,   154,  -457,  -457,   191,   176,   177,
     178,   180,  -457,  -457,  -457,  -457,  -457,  -457,  -457,  -457,
    -457,  -457,  -457,  1972,  -457,  -457,  2215,  1821,     6,  -457,
      37,  1972,    36,  -457,   182,   184,    36,   -96,  -457,  -457,
    -457,   -16,   -16,   -57,   -57,    89,    89,    89,    89,    39,
      39,   100,     2,    52,  1972,  1972,  1972,    36,  -457,  1972,
    -457,   -99,  -457,  -457,  -457,    88,  -457,  -457,  -457,  2572,
     174,  1872,  -457,  1972,  -457,   179,  -457,  -457,  -457,  1972,
    -457,   187,   188,  -457,  -457,  -457,    36,   168,   170,  1198,
     172,   196,  -457,  -457,   -62,  -457,  1321,  -457,  -457,  1015,
    -457,  -457,   186,  -457,   761,   925,  -457,  -457,   199,  1321,
     202,  -457,  -457,  -457,   201,  -457,  -457,    15,   204,   211,
    -457,  -457,  -457,    36,    93,   212,   214,  -457,   218,  -457,
    -457,    36,  2370,  -457,  1972,  -457,   219,   220,  -457,   221,
      37,   224,  1892,  -457,  -457,  -457,  1972,  -457,  -457,    18,
     193,    10,  -457,  -457,  -457,    36,  1972,   556,  -457,   -47,
    -457,   -95,  1380,  -457,    40,  -457,   226,   228,  -457,   223,
     229,  1972,  1972,   213,  -457,  -457,  -457,   -41,  -457,   283,
    -457,  -457,  -457,  -457,  -457,  -457,  -457,  1105,  2473,  -457,
    1972,   295,  1486,  -457,  2166,  -457,    13,  -457,  2522,  -457,
    -457,  1972,  -457,  -457,    75,  -457,   233,    99,  -457,   235,
    -457,  -457,  -457,  -457,  -457,  2625,  -457,   239,  -457,  1972,
    -457,   242,  -457,  -457,  -457,   -37,  -457,  -457,  -457,  1972,
     -32,  -457,   244,  -457,  -457,  -457,  -457,   103,   115,  -457,
    -457,  -457,   251,  -457,  2473,   118,   255,   254,  1972,   236,
    -457,  -457,   257,  -457,  -457,  1972,  1972,  -457,  2370,  1972,
     258,  -457,  -457,  -457,  -457,   556,  -457,    40,  -457,  1972,
    -457,  -457,   240,  -457,  1972,   241,  1972,  -457,    36,   -82,
    -457,  -457,  -457,  -457,  -457,  -457,  -457,  1321,  1321,  -457,
    1321,   123,  1972,   243,  -457,  -457,   320,  -457,  -457,   246,
     267,  1972,  1321,  -457,  -457,  -457,   268,  -457,  1321,  1321,
    -457,  -457
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint16 yydefact[] =
{
       2,   346,   190,   166,   152,   153,   154,   155,   156,   168,
     169,   194,   196,   197,     0,     0,     0,   192,   167,   170,
     171,   172,   176,   177,   178,   179,   180,   181,   182,   184,
     185,   163,   165,   183,   186,   201,   202,     0,   157,   158,
     164,     0,     0,   249,     0,     3,     4,     6,     7,     0,
     132,   133,   137,   139,   175,   135,   191,   193,   188,   204,
     189,     0,     9,   228,   227,   230,     0,   245,     0,     8,
     232,   195,     0,     0,    40,     0,     0,     0,     0,     0,
       0,    49,     0,     0,    71,    72,    73,    74,    75,    76,
      50,    43,    41,    62,    77,     0,    79,    83,    86,    89,
      94,    97,    99,   101,   103,   106,   109,   128,   187,    39,
       0,   217,     0,     0,   224,   226,     0,     1,     5,   129,
       0,   141,   143,    11,     0,   134,   138,   140,   136,   198,
     200,   205,     0,     0,   242,   161,    16,     0,    17,    21,
      24,    22,    23,    18,    19,    20,    26,    27,     0,    28,
      29,     0,     0,   231,    13,    25,   229,   251,   247,   246,
     250,   131,     0,     0,     0,     0,    66,     0,     0,    69,
       0,    63,    64,     0,    79,   112,   125,     0,   261,     0,
      56,    58,    59,     0,    54,     0,    65,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   104,   107,   110,     0,   218,   223,     0,
       0,     0,   233,   225,     0,   130,     0,     0,     0,     0,
     234,     0,   173,     0,     0,   299,    10,   313,     0,     0,
      33,     0,   241,     0,     0,   253,   162,    15,     0,     0,
       0,    14,   248,   252,     0,   344,   282,     0,     0,     0,
       0,     0,   115,   116,   117,   118,   119,   120,   121,   122,
     123,   124,   114,     0,    42,   126,     0,     0,   263,   262,
     264,     0,     0,    52,     0,    60,     0,     0,    80,    81,
      82,    84,    85,    87,    88,    92,    93,    90,    91,    95,
      96,    98,   100,   102,     0,     0,     0,   219,   215,     0,
     221,     0,   160,   159,   142,   145,   276,   144,    12,     0,
       0,     0,   236,     0,   235,     0,   174,   303,   291,     0,
     297,     0,     0,   325,   326,   327,     0,     0,     0,     0,
       0,     0,   317,   300,     0,   315,     0,   289,   283,     0,
     301,   284,     0,   304,     0,     0,   285,   286,     0,     0,
       0,   287,   288,   290,    39,   314,    34,   261,     0,   255,
     257,   260,   244,     0,     0,     0,     0,   345,     0,    67,
      68,     0,     0,   113,     0,   271,     0,     0,   267,     0,
     265,   274,     0,    78,    57,    53,     0,    55,    51,   105,
     108,     0,   220,   222,   216,     0,     0,     0,   146,     0,
     148,     0,     0,   206,   214,   237,     0,     0,   238,     0,
       0,     0,     0,     0,   337,   338,   339,     0,   343,     0,
     318,   292,   294,   293,   302,   306,   316,     0,     0,   308,
       0,     0,   334,   295,     0,   259,   263,   243,     0,   254,
      32,     0,    30,   281,     0,    35,     0,     0,    45,     0,
     127,   272,   266,   268,   273,     0,   269,     0,    61,     0,
     151,     0,   279,   147,   149,   145,   277,   199,   207,     0,
       0,   209,   211,   239,   240,   296,   298,     0,     0,   336,
     340,   341,     0,   311,   310,     0,     0,   335,   334,     0,
     256,   258,     0,    70,    36,     0,     0,    44,     0,     0,
       0,   270,   111,   150,   278,     0,   212,   214,   208,     0,
     321,   323,     0,   328,     0,     0,   334,    31,     0,     0,
      48,    46,    47,   275,   280,   210,   213,     0,     0,   342,
       0,     0,   334,     0,    37,    38,   320,   324,   329,     0,
       0,   334,     0,   322,   330,   332,     0,   319,     0,     0,
     333,   331
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -457,  -457,  -457,   367,  -457,  -457,  -457,   259,  -457,   197,
    -457,  -457,  -457,  -457,  -457,   -83,  -457,  -457,  -457,  -457,
      30,    66,  -457,   112,    78,    85,     3,    81,   217,   227,
     222,   125,   126,  -457,  -457,  -457,   119,  -457,  -115,  -457,
     -43,  -457,   -49,     9,     1,   -17,  -457,   208,   -36,  -457,
    -457,    34,  -457,  -457,  -457,  -457,  -127,   225,   -61,  -457,
    -457,  -457,  -457,  -457,  -457,  -457,  -457,    35,  -457,   -67,
    -457,   237,   150,  -457,   -40,     7,   400,    25,  -457,  -457,
    -457,     8,  -457,   383,  -457,   215,  -230,  -457,    16,   -50,
    -255,  -256,  -457,  -376,  -457,  -457,  -326,  -457,  -457,  -457,
    -457,  -457,  -457,   109,  -105,  -457,  -318,  -457,  -457,  -457,
    -225,  -457,  -457,  -457,  -457,  -457,  -457,  -457,  -457,  -457,
    -457,  -457,  -457,  -456,  -457,  -457,  -457,  -457,     0
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    44,    45,    46,    47,   133,   217,   153,   154,   226,
     444,   518,    90,    91,   447,   448,    92,    93,   276,   272,
     274,    94,    95,   174,    97,    98,    99,   100,   101,   102,
     103,   104,   105,   294,   106,   295,   175,   296,   176,   263,
     334,   374,   108,   227,   228,    50,   120,   121,   397,   398,
     399,   400,    51,    52,    53,   155,    54,   223,    55,    56,
      57,    58,   218,    59,   129,   130,   402,   403,   470,   471,
      60,   206,   207,   300,   122,   114,    62,   115,    64,    65,
     233,   116,    67,   404,   160,   234,   376,   359,   360,   361,
     269,   270,   455,   307,   401,    68,   335,   336,   337,   338,
     339,   410,   229,   340,   341,   342,   343,   427,   428,   429,
     231,   345,   346,   543,   347,   527,   528,   348,   349,   350,
     351,   530,   548,   489,   352,   482,   353,    69,   109
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      70,    49,   113,   358,   344,   222,   157,    61,    66,    48,
     421,   377,   380,   423,    72,     1,     1,     1,     1,   426,
     204,   462,     1,   431,   164,    63,   425,     1,   230,     1,
     297,     1,   515,   179,   125,   126,   127,   111,   128,     1,
     177,    71,    70,     1,   297,    70,    49,   265,   465,    70,
     388,   298,    61,    66,    48,   194,   195,   124,   251,   131,
     533,   265,   211,   210,   535,   394,    70,    73,   275,   466,
      63,   214,   163,    61,    63,   158,   540,   112,   180,   181,
     182,   265,   117,   221,   178,   546,   236,  -226,   237,  -226,
     215,   156,   222,   190,   191,   162,   316,   395,   396,   243,
     420,   306,   265,   192,   193,  -226,  -226,   395,   396,   483,
     208,   507,   230,   178,   463,   248,    70,   249,   198,   199,
     250,   480,   177,   213,    70,   177,   356,   504,    96,   524,
     508,   213,   266,   187,   235,   107,   267,   132,   188,   189,
      43,   166,   277,   169,   161,   171,   172,   266,   373,   156,
     200,   267,   134,   265,   434,    42,   434,   459,   267,   205,
     267,   232,   244,    43,    43,    42,   178,   242,   178,    42,
     310,   178,   167,    43,   315,   110,   119,   202,   381,   377,
     380,    42,   382,   170,   316,    96,   268,   469,   173,    43,
     365,   366,   107,   246,   247,   196,   197,   285,   286,   287,
     288,   536,   537,   484,   538,   264,   265,   186,   183,   208,
     201,   184,   185,   203,    70,   212,   547,   493,   379,   494,
     495,   209,   550,   551,    96,   500,   362,   363,    70,   354,
     216,   107,   395,   396,   357,   440,   363,  -203,   235,   238,
     355,   497,   498,   239,    96,   510,   265,    96,   157,    96,
     393,   107,   240,   391,   107,    43,   107,   511,   265,   450,
     513,   265,   406,   245,   407,   539,   265,   357,   281,   282,
     409,   275,   384,   271,   268,   299,   387,   283,   284,   289,
     290,   302,   306,   303,   309,   368,   417,   252,   253,   254,
     255,   256,   257,   258,   259,   260,   261,   208,   312,   278,
     279,   280,    96,    96,    96,    96,    96,    96,    96,    96,
      96,    96,    96,    96,    96,   317,   367,   435,   369,   370,
     405,   371,   449,   372,   385,   408,   413,   386,   411,   412,
     414,    96,   415,   457,   418,    96,   354,   419,   107,   354,
     430,   157,   107,   432,   354,   354,   437,   461,   433,   354,
     333,    96,    96,   355,   438,   441,   442,    70,   107,   107,
     443,   451,   452,   439,   472,   436,   454,   453,   477,   478,
     475,   445,   473,   178,   474,   479,   476,   481,   486,    96,
     496,   520,   499,   383,   522,   501,   107,   485,   503,   487,
     306,   509,   492,   512,   113,   460,   514,   265,   516,   517,
     523,   542,   529,   532,    70,   541,    96,    96,   544,   545,
     549,    96,   118,   241,   308,   521,   458,   291,   107,   389,
     506,   390,   304,    96,   293,    96,   262,   354,   292,   505,
     107,    96,   107,   464,    70,   357,    70,   468,   107,   357,
     525,   488,   436,   213,   311,   487,   301,   392,   449,   123,
     159,   424,   519,   364,   491,     0,   357,     0,     0,     0,
     526,     0,     0,     0,     0,     0,     0,   472,     0,     0,
       0,   531,     0,   487,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   487,
       0,     0,     0,   355,    96,     0,     0,     0,   487,   178,
       0,   107,     0,     0,     0,     0,     0,    70,    96,     0,
       0,     0,     0,     0,     0,   107,     0,     0,   534,     0,
       0,     0,     0,     0,     0,     0,     0,   354,   354,     0,
     354,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   354,     0,     0,     0,     0,     0,   354,   354,
       0,     0,     0,    96,     0,     0,     0,     0,     0,     1,
     107,     0,    74,    75,    76,    77,    78,     0,    79,    80,
       0,    96,     0,     0,     0,     0,     0,     0,   502,     0,
       0,    96,     0,     0,     0,     0,     0,     0,   107,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   224,     0,
       1,     2,     3,    74,    75,    76,    77,    78,     0,    79,
      80,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    96,     0,     0,     0,     0,     0,     0,   107,     4,
       5,     6,     7,     8,     9,    10,     0,    11,    12,    13,
       0,    15,    16,    17,     0,     0,    18,    19,    20,    21,
      81,   318,     0,     0,     0,     0,    22,    23,    24,    25,
      26,    27,    28,    29,     0,    30,    31,    32,    33,    34,
      35,    36,    37,     0,     0,   319,   320,   321,     0,   322,
     323,   324,   325,   326,   327,   328,   329,     0,     0,     0,
       0,    81,   330,    82,     0,     0,     0,    83,     0,     0,
       0,     0,     0,     0,    84,    85,    86,    87,    88,    89,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   305,
       0,     0,     0,     0,    38,    39,    40,     0,     0,     0,
       0,    41,     0,     0,    82,     0,     0,   331,    83,     0,
       0,     0,     0,     0,     0,    84,    85,    86,    87,    88,
      89,     0,     0,     0,     0,     0,     0,     0,     0,   332,
     225,   333,   224,     0,     1,     2,     3,    74,    75,    76,
      77,    78,     0,    79,    80,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     4,     5,     6,     7,     8,     9,    10,
       0,    11,    12,    13,     0,    15,    16,    17,     0,     0,
      18,    19,    20,    21,     0,   318,     0,     0,     0,     0,
      22,    23,    24,    25,    26,    27,    28,    29,     0,    30,
      31,    32,    33,    34,    35,    36,    37,     0,     0,   319,
     320,   321,     0,   322,   323,   324,   325,   326,   327,   328,
     329,     0,   135,     0,     0,    81,   330,     0,     0,     0,
     136,   137,     0,     0,     0,     0,     0,   138,   139,   140,
     141,   142,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    38,    39,
      40,     0,     0,     0,     0,    41,     0,     0,    82,     0,
       0,   331,    83,   143,   144,   145,   146,     0,     0,    84,
      85,    86,    87,    88,    89,     0,     0,     0,     0,     0,
       0,     0,     0,   332,   225,  -305,   224,     0,     1,  -309,
    -309,    74,    75,    76,    77,    78,     0,    79,    80,     0,
       0,     0,     0,   147,   148,   149,   150,     0,   151,   152,
       0,     0,     0,     0,     0,     0,     0,  -309,  -309,  -309,
    -309,  -309,  -309,  -309,     0,  -309,  -309,  -309,     0,  -309,
    -309,  -309,     0,     0,  -309,  -309,  -309,  -309,     0,   318,
       0,     0,     0,     0,  -309,  -309,  -309,  -309,  -309,  -309,
    -309,  -309,     0,  -309,  -309,  -309,  -309,  -309,  -309,  -309,
    -309,     0,     0,   319,   320,   321,     0,   322,   323,   324,
     325,   326,   327,   328,   329,     0,   224,     0,     1,    81,
     330,    74,    75,    76,    77,    78,     0,    79,    80,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,  -309,  -309,  -309,     0,     0,     0,     0,  -309,
       0,     0,    82,     0,     0,   331,    83,     0,     0,   318,
       0,     0,     0,    84,    85,    86,    87,    88,    89,     0,
       0,     0,     0,     0,     0,     0,     0,   332,   225,  -307,
       0,     0,     0,   319,   320,   321,     0,   322,   323,   324,
     325,   326,   327,   328,   329,     0,   224,     0,     1,    81,
     330,    74,    75,    76,    77,    78,     0,    79,    80,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    82,     0,     0,   331,    83,     0,     0,   318,
       0,     0,     0,    84,    85,    86,    87,    88,    89,     0,
       0,     0,     0,     0,     0,     0,     0,   332,   225,   422,
       0,     0,     0,   319,   320,   321,     0,   322,   323,   324,
     325,   326,   327,   328,   329,     0,     0,     0,     0,    81,
     330,     1,     0,     0,    74,    75,    76,    77,    78,     0,
      79,    80,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     224,     0,    82,     2,     3,   331,    83,     0,     0,     0,
       0,     0,     0,    84,    85,    86,    87,    88,    89,     0,
       0,     0,     0,     0,     0,     0,     0,   332,   225,  -312,
       0,     4,     5,     6,     7,     8,     9,    10,     0,    11,
      12,    13,     0,    15,    16,    17,     0,     0,    18,    19,
      20,    21,    81,     0,     0,     0,     0,     0,    22,    23,
      24,    25,    26,    27,    28,    29,     0,    30,    31,    32,
      33,    34,    35,    36,    37,     0,     0,     0,     0,     0,
       0,     0,   224,     0,     1,     0,     0,    74,    75,    76,
      77,    78,     0,    79,    80,    82,     0,     0,     0,    83,
       0,     0,     0,     0,     0,     0,    84,    85,    86,    87,
      88,    89,     0,     0,     0,     0,     0,     0,     0,     0,
     416,     0,     0,     0,     0,     0,    38,    39,    40,     0,
       0,     0,     0,    41,     0,   318,     0,     0,     0,     0,
       0,     0,     0,     0,     2,     3,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   319,
     320,   321,   225,   322,   323,   324,   325,   326,   327,   328,
     329,     0,     0,     0,     0,    81,   330,     9,    10,     0,
      11,    12,    13,     0,     0,    16,    17,     0,     0,    18,
      19,    20,    21,     0,     0,     0,     0,     0,     0,    22,
      23,    24,    25,    26,    27,    28,    29,     0,    30,    31,
      32,    33,    34,    35,    36,    37,     0,     0,    82,     0,
       0,   331,    83,     0,     0,     0,     0,     0,     0,    84,
      85,    86,    87,    88,    89,     0,     0,     0,     0,     0,
       0,     0,     0,   332,   225,     0,     0,     0,     0,     1,
       2,     3,    74,    75,    76,    77,    78,     0,    79,    80,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    40,
       0,     0,     0,     0,     0,     0,     0,     0,     4,     5,
       6,     7,     8,     9,    10,     0,    11,    12,    13,     0,
      15,    16,    17,     0,     0,    18,    19,    20,    21,     0,
       0,     0,     0,     0,   467,    22,    23,    24,    25,    26,
      27,    28,    29,     0,    30,    31,    32,    33,    34,    35,
      36,    37,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      81,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       1,     0,     0,    74,    75,    76,    77,    78,     0,    79,
      80,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    38,    39,    40,     0,     0,     0,     0,
      41,     0,     0,    82,     0,     0,     0,    83,     0,     0,
       0,     0,     0,     0,    84,    85,    86,    87,    88,    89,
       1,     2,     3,    74,    75,    76,    77,    78,     0,    79,
      80,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     4,
       5,     6,     7,     8,     9,    10,     0,    11,    12,    13,
       0,    81,    16,    17,     0,     0,    18,    19,    20,    21,
       0,     0,     0,     0,     0,     0,    22,    23,    24,    25,
      26,    27,    28,    29,     0,    30,    31,    32,    33,    34,
      35,    36,    37,     1,     0,     3,    74,    75,    76,    77,
      78,     0,    79,    80,    82,     0,     0,     0,    83,   273,
       0,    81,     0,     0,     0,    84,    85,    86,    87,    88,
      89,     0,     0,     0,   219,     0,     0,     9,    10,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    18,
      19,    20,    21,     0,    38,    39,    40,     0,     0,     0,
       0,    41,     0,     0,    82,     0,     0,     0,    83,    31,
      32,     0,     0,     0,     0,    84,    85,    86,    87,    88,
      89,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    81,     0,     1,     0,     3,    74,
      75,    76,    77,    78,     0,    79,    80,     0,     0,     0,
       0,     0,     0,     0,     1,     0,     0,    74,    75,    76,
      77,    78,     0,    79,    80,     0,     0,   313,     0,    40,
       9,    10,     0,     0,     0,     0,     0,    82,     0,     0,
       0,    83,    18,    19,    20,    21,   220,     0,    84,    85,
      86,    87,    88,    89,     0,     0,     0,     0,     0,     0,
       0,     0,    31,    32,     0,     1,     0,     3,    74,    75,
      76,    77,    78,     0,    79,    80,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     1,     0,    81,    74,    75,
      76,    77,    78,     0,    79,    80,     0,     0,     0,     9,
      10,     0,     0,     0,     0,    81,     0,     0,     0,     0,
       0,    18,    19,    20,    21,     0,     0,     0,     0,     0,
       0,     0,    40,     0,     0,     0,     0,     0,     0,     0,
      82,    31,    32,     0,    83,     0,     0,     0,     0,   314,
       0,    84,    85,    86,    87,    88,    89,     0,    82,     0,
       0,     0,    83,     0,     0,     0,    81,   378,     0,    84,
      85,    86,    87,    88,    89,     1,     0,     0,    74,    75,
      76,    77,    78,     0,    79,    80,    81,     0,     0,     0,
       0,     0,     0,     1,     0,     0,    74,    75,    76,    77,
      78,    40,    79,    80,     0,     0,     0,     0,     0,    82,
       0,     0,     0,    83,     0,     0,     0,     0,     0,     0,
      84,    85,    86,    87,    88,    89,     0,     0,     0,    82,
       1,     2,     3,    83,     0,     0,     0,     0,   456,     0,
      84,    85,    86,    87,    88,    89,     1,     0,     0,    74,
      75,    76,    77,    78,     0,    79,    80,     0,     0,     4,
       5,     6,     7,     8,     9,    10,    81,    11,    12,    13,
      14,    15,    16,    17,     0,     0,    18,    19,    20,    21,
       0,     0,     0,     0,    81,     0,    22,    23,    24,    25,
      26,    27,    28,    29,     0,    30,    31,    32,    33,    34,
      35,    36,    37,     0,     0,     0,     0,     0,     0,    82,
       0,     0,     0,    83,     0,     0,     0,     0,     0,     0,
      84,    85,    86,    87,    88,    89,     0,    82,     0,     0,
       0,   165,     0,     0,     0,     0,     0,    81,    84,    85,
      86,    87,    88,    89,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    38,    39,    40,     0,     0,     0,
       0,    41,     0,     0,     0,     0,     0,     0,    42,     1,
       2,     3,     0,     0,     0,     0,    43,     0,     0,     0,
      82,     0,     0,     0,   168,     0,     0,     0,     0,     0,
       0,    84,    85,    86,    87,    88,    89,     0,     4,     5,
       6,     7,     8,     9,    10,     0,    11,    12,    13,     0,
       0,    16,    17,     0,     0,    18,    19,    20,    21,     2,
       3,     0,     0,     0,     0,    22,    23,    24,    25,    26,
      27,    28,    29,     0,    30,    31,    32,    33,    34,    35,
      36,    37,     0,     0,     0,     0,     0,     4,     5,     6,
       7,     8,     9,    10,     0,    11,    12,    13,     0,     0,
      16,    17,     0,     0,    18,    19,    20,    21,     0,     0,
       0,     0,     0,     0,    22,    23,    24,    25,    26,    27,
      28,    29,     0,    30,    31,    32,    33,    34,    35,    36,
      37,     0,     0,    38,    39,    40,     0,     0,     0,     0,
      41,     0,     0,     0,     0,     0,     0,   434,   375,     0,
       0,   267,     0,     0,     0,    43,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     2,     3,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    38,    39,    40,     0,     0,     0,     0,    41,
       0,     0,     0,     0,     0,     0,   266,   375,     9,    10,
     267,    11,    12,    13,    43,     0,    16,    17,     0,     0,
      18,    19,    20,    21,     2,     3,     0,     0,     0,     0,
      22,    23,    24,    25,    26,    27,    28,    29,     0,    30,
      31,    32,    33,    34,    35,    36,    37,     0,     0,     0,
       0,     0,     4,     5,     6,     7,     8,     9,    10,     0,
      11,    12,    13,     0,     0,    16,    17,     0,     0,    18,
      19,    20,    21,     0,     0,     0,     0,     0,     0,    22,
      23,    24,    25,    26,    27,    28,    29,     0,    30,    31,
      32,    33,    34,    35,    36,    37,     0,     0,     0,   446,
      40,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
      43,     0,     0,     0,     0,     0,     0,     2,     3,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    38,    39,    40,
       0,     0,     0,     0,    41,     4,     5,     6,     7,     8,
       9,    10,     0,    11,    12,    13,     0,    15,    16,    17,
       0,     0,    18,    19,    20,    21,     2,     3,     0,     0,
       0,     0,    22,    23,    24,    25,    26,    27,    28,    29,
       0,    30,    31,    32,    33,    34,    35,    36,    37,     0,
       0,     0,     0,     0,     4,     5,     6,     7,     8,     9,
      10,     0,    11,    12,    13,     0,     0,    16,    17,     0,
       0,    18,    19,    20,    21,   490,     2,     3,     0,     0,
       0,    22,    23,    24,    25,    26,    27,    28,    29,     0,
      30,    31,    32,    33,    34,    35,    36,    37,     0,     0,
      38,    39,    40,     0,     0,     0,     0,    41,     0,     9,
      10,     0,    11,    12,    13,     0,     0,    16,    17,     0,
       0,    18,    19,    20,    21,     0,     0,     0,     0,     2,
       3,    22,    23,    24,    25,    26,    27,    28,    29,     0,
      30,    31,    32,    33,    34,    35,    36,    37,     0,    38,
      39,    40,     0,     0,     0,     0,    41,     4,     5,     6,
       7,     8,     9,    10,     0,    11,    12,    13,     0,     0,
      16,    17,     0,     0,    18,    19,    20,    21,     0,     0,
       0,     0,     0,     0,    22,    23,    24,    25,    26,    27,
      28,    29,     0,    30,    31,    32,    33,    34,    35,    36,
      37,    40,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    38,    39,    40,     0,     0,     0,     0,    41
};

static const yytype_int16 yycheck[] =
{
       0,     0,    42,   233,   229,   132,    67,     0,     0,     0,
     336,   266,   268,   339,    14,     3,     3,     3,     3,   345,
      21,   397,     3,   349,    73,     0,   344,     3,   133,     3,
     143,     3,   488,    83,    51,    52,    53,    37,    55,     3,
      83,    56,    42,     3,   143,    45,    45,   143,   143,    49,
     146,   164,    45,    45,    45,    16,    17,    49,   173,    59,
     516,   143,   112,   112,   146,   164,    66,   141,   183,   164,
      45,   143,    72,    66,    49,    67,   532,   141,    11,    12,
      13,   143,     0,   132,    83,   541,   135,   143,   137,   145,
     162,    66,   219,   150,   151,    69,   223,   144,   145,   160,
     162,   216,   143,    14,    15,   161,   162,   144,   145,   427,
     110,   143,   217,   112,   161,   165,   116,   167,    18,    19,
     170,   162,   165,   116,   124,   168,   231,   164,    16,   505,
     162,   124,   141,   149,   134,    16,   145,   145,   154,   155,
     149,    75,   185,    77,   162,    79,    80,   141,   263,   124,
     148,   145,   141,   143,   141,   141,   141,   147,   145,   160,
     145,   142,   162,   149,   149,   141,   165,   159,   167,   141,
     219,   170,   141,   149,   223,   163,   162,   159,   141,   434,
     436,   141,   145,   141,   311,    73,   178,   147,   141,   149,
     239,   240,    73,   142,   143,   156,   157,   194,   195,   196,
     197,   527,   528,   428,   530,   142,   143,    95,   141,   209,
     158,   144,   145,    20,   214,   142,   542,   142,   267,   144,
     145,   163,   548,   549,   112,   455,   142,   143,   228,   229,
     161,   112,   144,   145,   233,   142,   143,   163,   238,   141,
     231,   142,   143,   141,   132,   142,   143,   135,   309,   137,
     299,   132,   141,   296,   135,   149,   137,   142,   143,   374,
     142,   143,   311,   162,   313,   142,   143,   266,   190,   191,
     319,   386,   272,   142,   266,   161,   276,   192,   193,   198,
     199,   142,   397,   142,   163,    94,   329,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,   297,   146,   187,
     188,   189,   190,   191,   192,   193,   194,   195,   196,   197,
     198,   199,   200,   201,   202,   162,   162,   357,   142,   142,
     146,   143,   372,   143,   142,   146,   326,   143,   141,   141,
     162,   219,   162,   382,   162,   223,   336,   141,   219,   339,
     141,   402,   223,   141,   344,   345,   142,   396,   147,   349,
     164,   239,   240,   344,   143,   143,   142,   357,   239,   240,
     142,   142,   142,   363,   404,   357,   142,   146,   411,   412,
     147,   371,   146,   372,   146,   162,   147,    94,    83,   267,
     147,   496,   147,   271,   499,   146,   267,   430,   146,   432,
     505,   147,   441,   142,   434,   395,   141,   143,   162,   142,
     142,    81,   162,   162,   404,   162,   294,   295,   162,   142,
     142,   299,    45,   154,   217,   498,   386,   200,   299,   294,
     469,   295,   214,   311,   202,   313,   161,   427,   201,   465,
     311,   319,   313,   399,   434,   434,   436,   402,   319,   438,
     507,   432,   434,   436,   219,   488,   209,   297,   498,    49,
      67,   342,   495,   238,   438,    -1,   455,    -1,    -1,    -1,
     509,    -1,    -1,    -1,    -1,    -1,    -1,   507,    -1,    -1,
      -1,   514,    -1,   516,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   532,
      -1,    -1,    -1,   484,   382,    -1,    -1,    -1,   541,   498,
      -1,   382,    -1,    -1,    -1,    -1,    -1,   507,   396,    -1,
      -1,    -1,    -1,    -1,    -1,   396,    -1,    -1,   518,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   527,   528,    -1,
     530,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   542,    -1,    -1,    -1,    -1,    -1,   548,   549,
      -1,    -1,    -1,   441,    -1,    -1,    -1,    -1,    -1,     3,
     441,    -1,     6,     7,     8,     9,    10,    -1,    12,    13,
      -1,   459,    -1,    -1,    -1,    -1,    -1,    -1,   459,    -1,
      -1,   469,    -1,    -1,    -1,    -1,    -1,    -1,   469,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     1,    -1,
       3,     4,     5,     6,     7,     8,     9,    10,    -1,    12,
      13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   509,    -1,    -1,    -1,    -1,    -1,    -1,   509,    32,
      33,    34,    35,    36,    37,    38,    -1,    40,    41,    42,
      -1,    44,    45,    46,    -1,    -1,    49,    50,    51,    52,
      94,    54,    -1,    -1,    -1,    -1,    59,    60,    61,    62,
      63,    64,    65,    66,    -1,    68,    69,    70,    71,    72,
      73,    74,    75,    -1,    -1,    78,    79,    80,    -1,    82,
      83,    84,    85,    86,    87,    88,    89,    -1,    -1,    -1,
      -1,    94,    95,   137,    -1,    -1,    -1,   141,    -1,    -1,
      -1,    -1,    -1,    -1,   148,   149,   150,   151,   152,   153,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   163,
      -1,    -1,    -1,    -1,   127,   128,   129,    -1,    -1,    -1,
      -1,   134,    -1,    -1,   137,    -1,    -1,   140,   141,    -1,
      -1,    -1,    -1,    -1,    -1,   148,   149,   150,   151,   152,
     153,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   162,
     163,   164,     1,    -1,     3,     4,     5,     6,     7,     8,
       9,    10,    -1,    12,    13,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    32,    33,    34,    35,    36,    37,    38,
      -1,    40,    41,    42,    -1,    44,    45,    46,    -1,    -1,
      49,    50,    51,    52,    -1,    54,    -1,    -1,    -1,    -1,
      59,    60,    61,    62,    63,    64,    65,    66,    -1,    68,
      69,    70,    71,    72,    73,    74,    75,    -1,    -1,    78,
      79,    80,    -1,    82,    83,    84,    85,    86,    87,    88,
      89,    -1,    39,    -1,    -1,    94,    95,    -1,    -1,    -1,
      47,    48,    -1,    -1,    -1,    -1,    -1,    54,    55,    56,
      57,    58,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   127,   128,
     129,    -1,    -1,    -1,    -1,   134,    -1,    -1,   137,    -1,
      -1,   140,   141,    90,    91,    92,    93,    -1,    -1,   148,
     149,   150,   151,   152,   153,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   162,   163,   164,     1,    -1,     3,     4,
       5,     6,     7,     8,     9,    10,    -1,    12,    13,    -1,
      -1,    -1,    -1,   130,   131,   132,   133,    -1,   135,   136,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    32,    33,    34,
      35,    36,    37,    38,    -1,    40,    41,    42,    -1,    44,
      45,    46,    -1,    -1,    49,    50,    51,    52,    -1,    54,
      -1,    -1,    -1,    -1,    59,    60,    61,    62,    63,    64,
      65,    66,    -1,    68,    69,    70,    71,    72,    73,    74,
      75,    -1,    -1,    78,    79,    80,    -1,    82,    83,    84,
      85,    86,    87,    88,    89,    -1,     1,    -1,     3,    94,
      95,     6,     7,     8,     9,    10,    -1,    12,    13,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   127,   128,   129,    -1,    -1,    -1,    -1,   134,
      -1,    -1,   137,    -1,    -1,   140,   141,    -1,    -1,    54,
      -1,    -1,    -1,   148,   149,   150,   151,   152,   153,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   162,   163,   164,
      -1,    -1,    -1,    78,    79,    80,    -1,    82,    83,    84,
      85,    86,    87,    88,    89,    -1,     1,    -1,     3,    94,
      95,     6,     7,     8,     9,    10,    -1,    12,    13,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   137,    -1,    -1,   140,   141,    -1,    -1,    54,
      -1,    -1,    -1,   148,   149,   150,   151,   152,   153,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   162,   163,   164,
      -1,    -1,    -1,    78,    79,    80,    -1,    82,    83,    84,
      85,    86,    87,    88,    89,    -1,    -1,    -1,    -1,    94,
      95,     3,    -1,    -1,     6,     7,     8,     9,    10,    -1,
      12,    13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
       1,    -1,   137,     4,     5,   140,   141,    -1,    -1,    -1,
      -1,    -1,    -1,   148,   149,   150,   151,   152,   153,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   162,   163,   164,
      -1,    32,    33,    34,    35,    36,    37,    38,    -1,    40,
      41,    42,    -1,    44,    45,    46,    -1,    -1,    49,    50,
      51,    52,    94,    -1,    -1,    -1,    -1,    -1,    59,    60,
      61,    62,    63,    64,    65,    66,    -1,    68,    69,    70,
      71,    72,    73,    74,    75,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,     1,    -1,     3,    -1,    -1,     6,     7,     8,
       9,    10,    -1,    12,    13,   137,    -1,    -1,    -1,   141,
      -1,    -1,    -1,    -1,    -1,    -1,   148,   149,   150,   151,
     152,   153,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     162,    -1,    -1,    -1,    -1,    -1,   127,   128,   129,    -1,
      -1,    -1,    -1,   134,    -1,    54,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,     4,     5,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    78,
      79,    80,   163,    82,    83,    84,    85,    86,    87,    88,
      89,    -1,    -1,    -1,    -1,    94,    95,    37,    38,    -1,
      40,    41,    42,    -1,    -1,    45,    46,    -1,    -1,    49,
      50,    51,    52,    -1,    -1,    -1,    -1,    -1,    -1,    59,
      60,    61,    62,    63,    64,    65,    66,    -1,    68,    69,
      70,    71,    72,    73,    74,    75,    -1,    -1,   137,    -1,
      -1,   140,   141,    -1,    -1,    -1,    -1,    -1,    -1,   148,
     149,   150,   151,   152,   153,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   162,   163,    -1,    -1,    -1,    -1,     3,
       4,     5,     6,     7,     8,     9,    10,    -1,    12,    13,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   129,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    32,    33,
      34,    35,    36,    37,    38,    -1,    40,    41,    42,    -1,
      44,    45,    46,    -1,    -1,    49,    50,    51,    52,    -1,
      -1,    -1,    -1,    -1,   164,    59,    60,    61,    62,    63,
      64,    65,    66,    -1,    68,    69,    70,    71,    72,    73,
      74,    75,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
       3,    -1,    -1,     6,     7,     8,     9,    10,    -1,    12,
      13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   127,   128,   129,    -1,    -1,    -1,    -1,
     134,    -1,    -1,   137,    -1,    -1,    -1,   141,    -1,    -1,
      -1,    -1,    -1,    -1,   148,   149,   150,   151,   152,   153,
       3,     4,     5,     6,     7,     8,     9,    10,    -1,    12,
      13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    32,
      33,    34,    35,    36,    37,    38,    -1,    40,    41,    42,
      -1,    94,    45,    46,    -1,    -1,    49,    50,    51,    52,
      -1,    -1,    -1,    -1,    -1,    -1,    59,    60,    61,    62,
      63,    64,    65,    66,    -1,    68,    69,    70,    71,    72,
      73,    74,    75,     3,    -1,     5,     6,     7,     8,     9,
      10,    -1,    12,    13,   137,    -1,    -1,    -1,   141,   142,
      -1,    94,    -1,    -1,    -1,   148,   149,   150,   151,   152,
     153,    -1,    -1,    -1,    34,    -1,    -1,    37,    38,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    49,
      50,    51,    52,    -1,   127,   128,   129,    -1,    -1,    -1,
      -1,   134,    -1,    -1,   137,    -1,    -1,    -1,   141,    69,
      70,    -1,    -1,    -1,    -1,   148,   149,   150,   151,   152,
     153,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    94,    -1,     3,    -1,     5,     6,
       7,     8,     9,    10,    -1,    12,    13,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,     3,    -1,    -1,     6,     7,     8,
       9,    10,    -1,    12,    13,    -1,    -1,    34,    -1,   129,
      37,    38,    -1,    -1,    -1,    -1,    -1,   137,    -1,    -1,
      -1,   141,    49,    50,    51,    52,   146,    -1,   148,   149,
     150,   151,   152,   153,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    69,    70,    -1,     3,    -1,     5,     6,     7,
       8,     9,    10,    -1,    12,    13,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,     3,    -1,    94,     6,     7,
       8,     9,    10,    -1,    12,    13,    -1,    -1,    -1,    37,
      38,    -1,    -1,    -1,    -1,    94,    -1,    -1,    -1,    -1,
      -1,    49,    50,    51,    52,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   129,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     137,    69,    70,    -1,   141,    -1,    -1,    -1,    -1,   146,
      -1,   148,   149,   150,   151,   152,   153,    -1,   137,    -1,
      -1,    -1,   141,    -1,    -1,    -1,    94,   146,    -1,   148,
     149,   150,   151,   152,   153,     3,    -1,    -1,     6,     7,
       8,     9,    10,    -1,    12,    13,    94,    -1,    -1,    -1,
      -1,    -1,    -1,     3,    -1,    -1,     6,     7,     8,     9,
      10,   129,    12,    13,    -1,    -1,    -1,    -1,    -1,   137,
      -1,    -1,    -1,   141,    -1,    -1,    -1,    -1,    -1,    -1,
     148,   149,   150,   151,   152,   153,    -1,    -1,    -1,   137,
       3,     4,     5,   141,    -1,    -1,    -1,    -1,   146,    -1,
     148,   149,   150,   151,   152,   153,     3,    -1,    -1,     6,
       7,     8,     9,    10,    -1,    12,    13,    -1,    -1,    32,
      33,    34,    35,    36,    37,    38,    94,    40,    41,    42,
      43,    44,    45,    46,    -1,    -1,    49,    50,    51,    52,
      -1,    -1,    -1,    -1,    94,    -1,    59,    60,    61,    62,
      63,    64,    65,    66,    -1,    68,    69,    70,    71,    72,
      73,    74,    75,    -1,    -1,    -1,    -1,    -1,    -1,   137,
      -1,    -1,    -1,   141,    -1,    -1,    -1,    -1,    -1,    -1,
     148,   149,   150,   151,   152,   153,    -1,   137,    -1,    -1,
      -1,   141,    -1,    -1,    -1,    -1,    -1,    94,   148,   149,
     150,   151,   152,   153,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   127,   128,   129,    -1,    -1,    -1,
      -1,   134,    -1,    -1,    -1,    -1,    -1,    -1,   141,     3,
       4,     5,    -1,    -1,    -1,    -1,   149,    -1,    -1,    -1,
     137,    -1,    -1,    -1,   141,    -1,    -1,    -1,    -1,    -1,
      -1,   148,   149,   150,   151,   152,   153,    -1,    32,    33,
      34,    35,    36,    37,    38,    -1,    40,    41,    42,    -1,
      -1,    45,    46,    -1,    -1,    49,    50,    51,    52,     4,
       5,    -1,    -1,    -1,    -1,    59,    60,    61,    62,    63,
      64,    65,    66,    -1,    68,    69,    70,    71,    72,    73,
      74,    75,    -1,    -1,    -1,    -1,    -1,    32,    33,    34,
      35,    36,    37,    38,    -1,    40,    41,    42,    -1,    -1,
      45,    46,    -1,    -1,    49,    50,    51,    52,    -1,    -1,
      -1,    -1,    -1,    -1,    59,    60,    61,    62,    63,    64,
      65,    66,    -1,    68,    69,    70,    71,    72,    73,    74,
      75,    -1,    -1,   127,   128,   129,    -1,    -1,    -1,    -1,
     134,    -1,    -1,    -1,    -1,    -1,    -1,   141,   142,    -1,
      -1,   145,    -1,    -1,    -1,   149,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,     4,     5,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   127,   128,   129,    -1,    -1,    -1,    -1,   134,
      -1,    -1,    -1,    -1,    -1,    -1,   141,   142,    37,    38,
     145,    40,    41,    42,   149,    -1,    45,    46,    -1,    -1,
      49,    50,    51,    52,     4,     5,    -1,    -1,    -1,    -1,
      59,    60,    61,    62,    63,    64,    65,    66,    -1,    68,
      69,    70,    71,    72,    73,    74,    75,    -1,    -1,    -1,
      -1,    -1,    32,    33,    34,    35,    36,    37,    38,    -1,
      40,    41,    42,    -1,    -1,    45,    46,    -1,    -1,    49,
      50,    51,    52,    -1,    -1,    -1,    -1,    -1,    -1,    59,
      60,    61,    62,    63,    64,    65,    66,    -1,    68,    69,
      70,    71,    72,    73,    74,    75,    -1,    -1,    -1,    79,
     129,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     149,    -1,    -1,    -1,    -1,    -1,    -1,     4,     5,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   127,   128,   129,
      -1,    -1,    -1,    -1,   134,    32,    33,    34,    35,    36,
      37,    38,    -1,    40,    41,    42,    -1,    44,    45,    46,
      -1,    -1,    49,    50,    51,    52,     4,     5,    -1,    -1,
      -1,    -1,    59,    60,    61,    62,    63,    64,    65,    66,
      -1,    68,    69,    70,    71,    72,    73,    74,    75,    -1,
      -1,    -1,    -1,    -1,    32,    33,    34,    35,    36,    37,
      38,    -1,    40,    41,    42,    -1,    -1,    45,    46,    -1,
      -1,    49,    50,    51,    52,    53,     4,     5,    -1,    -1,
      -1,    59,    60,    61,    62,    63,    64,    65,    66,    -1,
      68,    69,    70,    71,    72,    73,    74,    75,    -1,    -1,
     127,   128,   129,    -1,    -1,    -1,    -1,   134,    -1,    37,
      38,    -1,    40,    41,    42,    -1,    -1,    45,    46,    -1,
      -1,    49,    50,    51,    52,    -1,    -1,    -1,    -1,     4,
       5,    59,    60,    61,    62,    63,    64,    65,    66,    -1,
      68,    69,    70,    71,    72,    73,    74,    75,    -1,   127,
     128,   129,    -1,    -1,    -1,    -1,   134,    32,    33,    34,
      35,    36,    37,    38,    -1,    40,    41,    42,    -1,    -1,
      45,    46,    -1,    -1,    49,    50,    51,    52,    -1,    -1,
      -1,    -1,    -1,    -1,    59,    60,    61,    62,    63,    64,
      65,    66,    -1,    68,    69,    70,    71,    72,    73,    74,
      75,   129,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   127,   128,   129,    -1,    -1,    -1,    -1,   134
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint16 yystos[] =
{
       0,     3,     4,     5,    32,    33,    34,    35,    36,    37,
      38,    40,    41,    42,    43,    44,    45,    46,    49,    50,
      51,    52,    59,    60,    61,    62,    63,    64,    65,    66,
      68,    69,    70,    71,    72,    73,    74,    75,   127,   128,
     129,   134,   141,   149,   166,   167,   168,   169,   208,   209,
     210,   217,   218,   219,   221,   223,   224,   225,   226,   228,
     235,   240,   241,   242,   243,   244,   246,   247,   260,   292,
     293,    56,   293,   141,     6,     7,     8,     9,    10,    12,
      13,    94,   137,   141,   148,   149,   150,   151,   152,   153,
     177,   178,   181,   182,   186,   187,   188,   189,   190,   191,
     192,   193,   194,   195,   196,   197,   199,   201,   207,   293,
     163,   293,   141,   239,   240,   242,   246,     0,   168,   162,
     211,   212,   239,   241,   246,   210,   210,   210,   210,   229,
     230,   293,   145,   170,   141,    39,    47,    48,    54,    55,
      56,    57,    58,    90,    91,    92,    93,   130,   131,   132,
     133,   135,   136,   172,   173,   220,   242,   223,   246,   248,
     249,   162,    69,   293,   207,   141,   186,   141,   141,   186,
     141,   186,   186,   141,   188,   201,   203,   205,   209,   254,
      11,    12,    13,   141,   144,   145,   188,   149,   154,   155,
     150,   151,    14,    15,    16,    17,   156,   157,    18,    19,
     148,   158,   159,    20,    21,   160,   236,   237,   293,   163,
     207,   254,   142,   240,   143,   162,   161,   171,   227,    34,
     146,   207,   221,   222,     1,   163,   174,   208,   209,   267,
     269,   275,   142,   245,   250,   293,   207,   207,   141,   141,
     141,   172,   246,   223,   293,   162,   142,   143,   254,   254,
     254,   203,    22,    23,    24,    25,    26,    27,    28,    29,
      30,    31,   161,   204,   142,   143,   141,   145,   246,   255,
     256,   142,   184,   142,   185,   203,   183,   205,   188,   188,
     188,   189,   189,   190,   190,   191,   191,   191,   191,   192,
     192,   193,   194,   195,   198,   200,   202,   143,   164,   161,
     238,   236,   142,   142,   212,   163,   203,   258,   174,   163,
     207,   222,   146,    34,   146,   207,   221,   162,    54,    78,
      79,    80,    82,    83,    84,    85,    86,    87,    88,    89,
      95,   140,   162,   164,   205,   261,   262,   263,   264,   265,
     268,   269,   270,   271,   275,   276,   277,   279,   282,   283,
     284,   285,   289,   291,   293,   208,   269,   209,   251,   252,
     253,   254,   142,   143,   250,   207,   207,   162,    94,   142,
     142,   143,   143,   203,   206,   142,   251,   255,   146,   207,
     256,   141,   145,   188,   293,   142,   143,   293,   146,   196,
     197,   205,   237,   207,   164,   144,   145,   213,   214,   215,
     216,   259,   231,   232,   248,   146,   207,   207,   146,   207,
     266,   141,   141,   293,   162,   162,   162,   205,   162,   141,
     162,   261,   164,   261,   268,   271,   261,   272,   273,   274,
     141,   261,   141,   147,   141,   239,   246,   142,   143,   293,
     142,   143,   142,   142,   175,   293,    79,   179,   180,   254,
     203,   142,   142,   146,   142,   257,   146,   207,   185,   147,
     293,   207,   258,   161,   216,   143,   164,   164,   232,   147,
     233,   234,   239,   146,   146,   147,   147,   205,   205,   162,
     162,    94,   290,   271,   275,   205,    83,   205,   208,   288,
      53,   253,   207,   142,   144,   145,   147,   142,   143,   147,
     251,   146,   201,   146,   164,   213,   207,   143,   162,   147,
     142,   142,   142,   142,   141,   288,   162,   142,   176,   205,
     203,   180,   203,   142,   258,   234,   207,   280,   281,   162,
     286,   205,   162,   288,   293,   146,   261,   261,   261,   142,
     288,   162,    81,   278,   162,   142,   288,   261,   287,   142,
     261,   261
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint16 yyr1[] =
{
       0,   165,   166,   166,   167,   167,   168,   168,   168,   170,
     169,   171,   169,   172,   172,   173,   173,   173,   173,   173,
     173,   173,   173,   173,   173,   173,   173,   173,   173,   173,
     173,   173,   173,   174,   174,   175,   176,   175,   175,   177,
     177,   177,   177,   177,   178,   179,   179,   180,   180,   181,
     182,   182,   182,   182,   183,   182,   184,   182,   182,   182,
     185,   185,   186,   186,   186,   186,   186,   186,   186,   186,
     186,   187,   187,   187,   187,   187,   187,   188,   188,   189,
     189,   189,   189,   190,   190,   190,   191,   191,   191,   192,
     192,   192,   192,   192,   193,   193,   193,   194,   194,   195,
     195,   196,   196,   197,   198,   197,   199,   200,   199,   201,
     202,   201,   203,   203,   204,   204,   204,   204,   204,   204,
     204,   204,   204,   204,   204,   205,   206,   205,   207,   208,
     208,   208,   209,   210,   210,   210,   210,   210,   210,   210,
     210,   211,   211,   212,   212,   213,   213,   214,   215,   215,
     216,   216,   217,   217,   217,   217,   217,   218,   218,   219,
     219,   220,   220,   221,   221,   221,   221,   221,   221,   221,
     221,   221,   221,   222,   222,   223,   223,   223,   223,   223,
     223,   223,   223,   223,   223,   223,   223,   223,   223,   223,
     223,   223,   224,   224,   225,   225,   225,   225,   227,   226,
     226,   228,   228,   229,   229,   230,   231,   231,   232,   233,
     233,   234,   234,   234,   234,   235,   235,   235,   236,   236,
     236,   237,   238,   238,   239,   239,   240,   240,   241,   241,
     242,   242,   243,   243,   243,   243,   243,   243,   243,   243,
     243,   244,   245,   244,   244,   246,   246,   246,   246,   247,
     248,   249,   249,   250,   250,   251,   251,   252,   252,   253,
     253,   254,   254,   255,   255,   255,   256,   256,   256,   256,
     256,   256,   256,   256,   257,   256,   258,   258,   258,   259,
     259,   260,   260,   261,   261,   261,   261,   261,   261,   261,
     261,   262,   263,   264,   264,   265,   265,   266,   265,   267,
     268,   269,   269,   269,   270,   270,   270,   271,   271,   273,
     272,   274,   274,   275,   275,   276,   276,   277,   277,   278,
     278,   280,   279,   281,   279,   282,   283,   284,   286,   285,
     285,   285,   287,   285,   288,   288,   289,   289,   289,   289,
     289,   290,   291,   291,   292,   292,   293
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     0,     1,     1,     2,     1,     1,     1,     0,
       3,     0,     4,     1,     2,     2,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       4,     6,     4,     1,     2,     1,     0,     4,     4,     1,
       1,     1,     3,     1,     6,     1,     3,     3,     3,     1,
       1,     4,     3,     4,     0,     4,     0,     4,     2,     2,
       1,     3,     1,     2,     2,     2,     2,     4,     4,     2,
       6,     1,     1,     1,     1,     1,     1,     1,     4,     1,
       3,     3,     3,     1,     3,     3,     1,     3,     3,     1,
       3,     3,     3,     3,     1,     3,     3,     1,     3,     1,
       3,     1,     3,     1,     0,     4,     1,     0,     4,     1,
       0,     6,     1,     3,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     0,     4,     1,     2,
       3,     2,     1,     1,     2,     1,     2,     1,     2,     1,
       2,     1,     3,     1,     3,     0,     1,     2,     1,     2,
       3,     2,     1,     1,     1,     1,     1,     1,     1,     4,
       4,     1,     2,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     2,     1,     1,
       1,     1,     1,     1,     1,     2,     1,     1,     0,     6,
       2,     1,     1,     1,     0,     1,     1,     2,     3,     1,
       3,     1,     2,     3,     0,     4,     5,     2,     1,     2,
       3,     2,     2,     0,     1,     2,     1,     1,     1,     2,
       1,     2,     1,     3,     3,     4,     4,     5,     5,     6,
       6,     3,     0,     5,     4,     1,     2,     2,     3,     1,
       1,     1,     2,     1,     3,     1,     3,     1,     3,     2,
       1,     1,     2,     1,     1,     2,     3,     2,     3,     3,
       4,     2,     3,     3,     0,     5,     1,     3,     4,     2,
       4,     6,     4,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     2,     2,     2,     2,     3,     0,     3,     1,
       1,     2,     3,     2,     1,     1,     2,     1,     2,     0,
       2,     2,     1,     1,     2,     1,     2,     1,     2,     2,
       0,     0,     7,     0,     6,     1,     1,     1,     0,     6,
       7,     9,     0,     9,     0,     1,     3,     2,     2,     2,
       3,     1,     5,     2,     4,     5,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 150 "SDCC.y" /* yacc.c:1646  */
    {
          werror(W_EMPTY_SOURCE_FILE);
        }
#line 2462 "y.tab.c" /* yacc.c:1646  */
    break;

  case 6:
#line 163 "SDCC.y" /* yacc.c:1646  */
    {
          // blockNo = 0;
        }
#line 2470 "y.tab.c" /* yacc.c:1646  */
    break;

  case 7:
#line 167 "SDCC.y" /* yacc.c:1646  */
    {
          ignoreTypedefType = 0;
          if ((yyvsp[0].sym) && (yyvsp[0].sym)->type && IS_FUNC((yyvsp[0].sym)->type))
            {
              /* The only legal storage classes for
               * a function prototype (declaration)
               * are extern and static. extern is the
               * default. Thus, if this function isn't
               * explicitly marked static, mark it
               * extern.
               */
              if ((yyvsp[0].sym)->etype && IS_SPEC((yyvsp[0].sym)->etype) && !SPEC_STAT((yyvsp[0].sym)->etype))
                {
                  SPEC_EXTR((yyvsp[0].sym)->etype) = 1;
                }
            }
          addSymChain (&(yyvsp[0].sym));
          allocVariables ((yyvsp[0].sym));
          cleanUpLevel (SymbolTab, 1);
        }
#line 2495 "y.tab.c" /* yacc.c:1646  */
    break;

  case 8:
#line 188 "SDCC.y" /* yacc.c:1646  */
    {
          /* These empty braces here are apparently required by some version of GNU bison on MS Windows. See bug #2858. */
        }
#line 2503 "y.tab.c" /* yacc.c:1646  */
    break;

  case 9:
#line 195 "SDCC.y" /* yacc.c:1646  */
    {   /* function type not specified */
            /* assume it to be 'int'       */
            addDecl((yyvsp[0].sym),0,newIntLink());
            (yyvsp[0].sym) = createFunctionDecl((yyvsp[0].sym));
            if ((yyvsp[0].sym) && FUNC_ISCRITICAL ((yyvsp[0].sym)->type))
                inCriticalFunction = 1;
        }
#line 2515 "y.tab.c" /* yacc.c:1646  */
    break;

  case 10:
#line 203 "SDCC.y" /* yacc.c:1646  */
    {
            (yyval.asts) = createFunction((yyvsp[-2].sym),(yyvsp[0].asts));
            if ((yyvsp[-2].sym) && FUNC_ISCRITICAL ((yyvsp[-2].sym)->type))
                inCriticalFunction = 0;
        }
#line 2525 "y.tab.c" /* yacc.c:1646  */
    break;

  case 11:
#line 209 "SDCC.y" /* yacc.c:1646  */
    {
            sym_link *p = copyLinkChain((yyvsp[-1].lnk));
            pointerTypes((yyvsp[0].sym)->type,p);
            addDecl((yyvsp[0].sym),0,p);
            (yyvsp[0].sym) = createFunctionDecl((yyvsp[0].sym));
            if ((yyvsp[0].sym) && FUNC_ISCRITICAL ((yyvsp[0].sym)->type))
                inCriticalFunction = 1;
            /* warn for loss of calling convention for inlined functions. */
            if ((yyvsp[0].sym) && FUNC_ISINLINE ((yyvsp[0].sym)->type) &&
                ( FUNC_ISZ88DK_CALLEE ((yyvsp[0].sym)->type) || FUNC_ISZ88DK_FASTCALL ((yyvsp[0].sym)->type) ||
                  FUNC_BANKED ((yyvsp[0].sym)->type)         || FUNC_REGBANK ((yyvsp[0].sym)->type)          ||
                  FUNC_ISOVERLAY ((yyvsp[0].sym)->type)      || FUNC_ISISR ((yyvsp[0].sym)->type) ))
              {
                werror (W_INLINE_FUNCATTR, (yyvsp[0].sym)->name);
              }
        }
#line 2546 "y.tab.c" /* yacc.c:1646  */
    break;

  case 12:
#line 226 "SDCC.y" /* yacc.c:1646  */
    {
            (yyval.asts) = createFunction((yyvsp[-2].sym),(yyvsp[0].asts));
            if ((yyvsp[-2].sym) && FUNC_ISCRITICAL ((yyvsp[-2].sym)->type))
                inCriticalFunction = 0;
        }
#line 2556 "y.tab.c" /* yacc.c:1646  */
    break;

  case 14:
#line 235 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = mergeSpec((yyvsp[-1].lnk),(yyvsp[0].lnk),"function_attribute"); }
#line 2562 "y.tab.c" /* yacc.c:1646  */
    break;

  case 15:
#line 239 "SDCC.y" /* yacc.c:1646  */
    {
                        (yyval.lnk) = newLink(SPECIFIER);
                        FUNC_REGBANK((yyval.lnk)) = (int) ulFromVal(constExprValue((yyvsp[0].asts),TRUE));
                     }
#line 2571 "y.tab.c" /* yacc.c:1646  */
    break;

  case 16:
#line 243 "SDCC.y" /* yacc.c:1646  */
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISREENT((yyval.lnk))=1;
                     }
#line 2579 "y.tab.c" /* yacc.c:1646  */
    break;

  case 17:
#line 246 "SDCC.y" /* yacc.c:1646  */
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISCRITICAL((yyval.lnk)) = 1;
                     }
#line 2587 "y.tab.c" /* yacc.c:1646  */
    break;

  case 18:
#line 249 "SDCC.y" /* yacc.c:1646  */
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISNAKED((yyval.lnk))=1;
                     }
#line 2595 "y.tab.c" /* yacc.c:1646  */
    break;

  case 19:
#line 252 "SDCC.y" /* yacc.c:1646  */
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISJAVANATIVE((yyval.lnk))=1;
                     }
#line 2603 "y.tab.c" /* yacc.c:1646  */
    break;

  case 20:
#line 255 "SDCC.y" /* yacc.c:1646  */
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISOVERLAY((yyval.lnk))=1;
                     }
#line 2611 "y.tab.c" /* yacc.c:1646  */
    break;

  case 21:
#line 258 "SDCC.y" /* yacc.c:1646  */
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_NONBANKED((yyval.lnk)) = 1;
                        if (FUNC_BANKED((yyval.lnk))) {
                            werror(W_BANKED_WITH_NONBANKED);
                        }
                     }
#line 2622 "y.tab.c" /* yacc.c:1646  */
    break;

  case 22:
#line 264 "SDCC.y" /* yacc.c:1646  */
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISSHADOWREGS((yyval.lnk)) = 1;
                     }
#line 2630 "y.tab.c" /* yacc.c:1646  */
    break;

  case 23:
#line 267 "SDCC.y" /* yacc.c:1646  */
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISWPARAM((yyval.lnk)) = 1;
                     }
#line 2638 "y.tab.c" /* yacc.c:1646  */
    break;

  case 24:
#line 270 "SDCC.y" /* yacc.c:1646  */
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_BANKED((yyval.lnk)) = 1;
                        if (FUNC_NONBANKED((yyval.lnk))) {
                            werror(W_BANKED_WITH_NONBANKED);
                        }
                     }
#line 2649 "y.tab.c" /* yacc.c:1646  */
    break;

  case 25:
#line 277 "SDCC.y" /* yacc.c:1646  */
    {
                        (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_INTNO((yyval.lnk)) = (yyvsp[0].yyint);
                        FUNC_ISISR((yyval.lnk)) = 1;
                     }
#line 2659 "y.tab.c" /* yacc.c:1646  */
    break;

  case 26:
#line 283 "SDCC.y" /* yacc.c:1646  */
    {
                        (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_INTNO((yyval.lnk)) = INTNO_TRAP;
                        FUNC_ISISR((yyval.lnk)) = 1;
                     }
#line 2669 "y.tab.c" /* yacc.c:1646  */
    break;

  case 27:
#line 288 "SDCC.y" /* yacc.c:1646  */
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISSMALLC((yyval.lnk)) = 1;
                     }
#line 2677 "y.tab.c" /* yacc.c:1646  */
    break;

  case 28:
#line 291 "SDCC.y" /* yacc.c:1646  */
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISZ88DK_FASTCALL((yyval.lnk)) = 1;
                     }
#line 2685 "y.tab.c" /* yacc.c:1646  */
    break;

  case 29:
#line 294 "SDCC.y" /* yacc.c:1646  */
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISZ88DK_CALLEE((yyval.lnk)) = 1;
                     }
#line 2693 "y.tab.c" /* yacc.c:1646  */
    break;

  case 30:
#line 298 "SDCC.y" /* yacc.c:1646  */
    {
                        value *offset_v = constExprValue ((yyvsp[-1].asts), TRUE);
                        int    offset = 0;
                        (yyval.lnk) = newLink(SPECIFIER);
                        if  ( offset_v ) 
                          offset = ulFromVal(offset_v);
                        (yyval.lnk)->funcAttrs.z88dk_params_offset = offset;
                     }
#line 2706 "y.tab.c" /* yacc.c:1646  */
    break;

  case 31:
#line 307 "SDCC.y" /* yacc.c:1646  */
    {
                        value *rst_v = constExprValue ((yyvsp[-3].asts), TRUE);
                        value *value_v = constExprValue ((yyvsp[-1].asts), TRUE);
                        int rst = -1, value = -1;
                        (yyval.lnk) = newLink(SPECIFIER);

                        if  ( rst_v ) 
                          rst = ulFromVal(rst_v);
                        if  ( value_v ) 
                          value = ulFromVal(value_v);
          
                        if ( rst < 0 || rst > 56 || ( rst % 8 ) )
                          {
                            werror(E_SHORTCALL_INVALID_VALUE, "rst", rst);
                          }
                        if ( value < 0 || value > 0xfff )
                          {
                            werror(E_SHORTCALL_INVALID_VALUE, "value", value);
                          }
                        (yyval.lnk)->funcAttrs.z88dk_shortcall_rst = rst;
                        (yyval.lnk)->funcAttrs.z88dk_shortcall_val = value;
                        FUNC_ISZ88DK_SHORTCALL((yyval.lnk)) = 1;
                     }
#line 2734 "y.tab.c" /* yacc.c:1646  */
    break;

  case 32:
#line 331 "SDCC.y" /* yacc.c:1646  */
    {
                        const struct symbol *regsym;
                        (yyval.lnk) = newLink (SPECIFIER);

                        for(regsym = (yyvsp[-1].sym); regsym; regsym = regsym->next)
                          {
                            int regnum;

                            if (!port->getRegByName || ((regnum = port->getRegByName(regsym->name)) < 0))
                              werror (W_UNKNOWN_REG, regsym->name);
                            else
                              (yyval.lnk)->funcAttrs.preserved_regs[regnum] = TRUE;
                          }
                     }
#line 2753 "y.tab.c" /* yacc.c:1646  */
    break;

  case 34:
#line 350 "SDCC.y" /* yacc.c:1646  */
    {
                       werror (E_OLD_STYLE, ((yyvsp[-1].sym) ? (yyvsp[-1].sym)->name: ""));
                       exit (1);
                     }
#line 2762 "y.tab.c" /* yacc.c:1646  */
    break;

  case 35:
#line 357 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newAst_VALUE (symbolVal ((yyvsp[0].sym))); }
#line 2768 "y.tab.c" /* yacc.c:1646  */
    break;

  case 36:
#line 358 "SDCC.y" /* yacc.c:1646  */
    { ignoreTypedefType = 1; }
#line 2774 "y.tab.c" /* yacc.c:1646  */
    break;

  case 37:
#line 359 "SDCC.y" /* yacc.c:1646  */
    {
                       ignoreTypedefType = 0;
                       (yyvsp[0].sym) = newSymbol ((yyvsp[0].sym)->name, NestLevel);
                       (yyvsp[0].sym)->implicit = 1;
                       (yyval.asts) = newNode ('.', (yyvsp[-3].asts), newAst_VALUE (symbolVal ((yyvsp[0].sym))));
                     }
#line 2785 "y.tab.c" /* yacc.c:1646  */
    break;

  case 38:
#line 366 "SDCC.y" /* yacc.c:1646  */
    {
                       (yyval.asts) = newNode ('[', (yyvsp[-3].asts), (yyvsp[-1].asts));
                     }
#line 2793 "y.tab.c" /* yacc.c:1646  */
    break;

  case 39:
#line 372 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newAst_VALUE (symbolVal ((yyvsp[0].sym))); }
#line 2799 "y.tab.c" /* yacc.c:1646  */
    break;

  case 40:
#line 373 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newAst_VALUE ((yyvsp[0].val)); }
#line 2805 "y.tab.c" /* yacc.c:1646  */
    break;

  case 42:
#line 375 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = (yyvsp[-1].asts); }
#line 2811 "y.tab.c" /* yacc.c:1646  */
    break;

  case 44:
#line 380 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode (GENERIC, (yyvsp[-3].asts), (yyvsp[-1].asts)); }
#line 2817 "y.tab.c" /* yacc.c:1646  */
    break;

  case 45:
#line 384 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode  (GENERIC_ASSOC_LIST, NULL, (yyvsp[0].asts)); }
#line 2823 "y.tab.c" /* yacc.c:1646  */
    break;

  case 46:
#line 385 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode  (GENERIC_ASSOC_LIST, (yyvsp[-2].asts), (yyvsp[0].asts)); }
#line 2829 "y.tab.c" /* yacc.c:1646  */
    break;

  case 47:
#line 389 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode  (GENERIC_ASSOCIATION, newAst_LINK((yyvsp[-2].lnk)), (yyvsp[0].asts)); }
#line 2835 "y.tab.c" /* yacc.c:1646  */
    break;

  case 48:
#line 390 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode  (GENERIC_ASSOCIATION,NULL,(yyvsp[0].asts)); }
#line 2841 "y.tab.c" /* yacc.c:1646  */
    break;

  case 49:
#line 394 "SDCC.y" /* yacc.c:1646  */
    {
                       int cnt = 1;
                       int max = 253, min = 1;
                       char fb[256];
                       /* refer to support/cpp/libcpp/macro.c for details */
                       while ((((int) ((yyvsp[0].yystr)[cnt] & 0xff)) & 0xff) == 0xff)
                         cnt++;

                       if (cnt <= max)
                         {
                           (yyval.asts) = newAst_VALUE (strVal ((yyvsp[0].yystr)));
                         }
                       else
                         {
                           memset (fb, 0x00, sizeof (fb));
                           fb[0] = '"';
                           strncpy (fb + 1, function_name, max - min + 1);
                           fb[max + 1] = '"';
                           fb[max + 2] = 0;
                           fb[strlen (fb)] = '"';
                           fb[strlen (fb) + 1] = 0;
                           (yyval.asts) = newAst_VALUE (strVal (fb));
                         }
                     }
#line 2870 "y.tab.c" /* yacc.c:1646  */
    break;

  case 51:
#line 422 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode  ('[', (yyvsp[-3].asts), (yyvsp[-1].asts)); }
#line 2876 "y.tab.c" /* yacc.c:1646  */
    break;

  case 52:
#line 423 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode  (CALL,(yyvsp[-2].asts),NULL);
                                          (yyval.asts)->left->funcName = 1;}
#line 2883 "y.tab.c" /* yacc.c:1646  */
    break;

  case 53:
#line 426 "SDCC.y" /* yacc.c:1646  */
    {
            (yyval.asts) = newNode  (CALL,(yyvsp[-3].asts),(yyvsp[-1].asts)); (yyval.asts)->left->funcName = 1;
          }
#line 2891 "y.tab.c" /* yacc.c:1646  */
    break;

  case 54:
#line 429 "SDCC.y" /* yacc.c:1646  */
    { ignoreTypedefType = 1; }
#line 2897 "y.tab.c" /* yacc.c:1646  */
    break;

  case 55:
#line 430 "SDCC.y" /* yacc.c:1646  */
    {
                        ignoreTypedefType = 0;
                        (yyvsp[0].sym) = newSymbol((yyvsp[0].sym)->name,NestLevel);
                        (yyvsp[0].sym)->implicit = 1;
                        (yyval.asts) = newNode(PTR_OP,newNode('&',(yyvsp[-3].asts),NULL),newAst_VALUE(symbolVal((yyvsp[0].sym))));
                      }
#line 2908 "y.tab.c" /* yacc.c:1646  */
    break;

  case 56:
#line 436 "SDCC.y" /* yacc.c:1646  */
    { ignoreTypedefType = 1; }
#line 2914 "y.tab.c" /* yacc.c:1646  */
    break;

  case 57:
#line 437 "SDCC.y" /* yacc.c:1646  */
    {
                        ignoreTypedefType = 0;
                        (yyvsp[0].sym) = newSymbol((yyvsp[0].sym)->name,NestLevel);
                        (yyvsp[0].sym)->implicit = 1;
                        (yyval.asts) = newNode(PTR_OP,(yyvsp[-3].asts),newAst_VALUE(symbolVal((yyvsp[0].sym))));
                      }
#line 2925 "y.tab.c" /* yacc.c:1646  */
    break;

  case 58:
#line 444 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(INC_OP,(yyvsp[-1].asts),NULL);}
#line 2931 "y.tab.c" /* yacc.c:1646  */
    break;

  case 59:
#line 446 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(DEC_OP,(yyvsp[-1].asts),NULL); }
#line 2937 "y.tab.c" /* yacc.c:1646  */
    break;

  case 61:
#line 451 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(PARAM,(yyvsp[-2].asts),(yyvsp[0].asts)); }
#line 2943 "y.tab.c" /* yacc.c:1646  */
    break;

  case 63:
#line 456 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode (INC_OP, NULL, (yyvsp[0].asts)); }
#line 2949 "y.tab.c" /* yacc.c:1646  */
    break;

  case 64:
#line 457 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode (DEC_OP, NULL, (yyvsp[0].asts)); }
#line 2955 "y.tab.c" /* yacc.c:1646  */
    break;

  case 65:
#line 459 "SDCC.y" /* yacc.c:1646  */
    {
         if ((yyvsp[-1].yyint) == '&' && IS_AST_OP ((yyvsp[0].asts)) && (yyvsp[0].asts)->opval.op == '*' && (yyvsp[0].asts)->right == NULL)
           (yyval.asts) = (yyvsp[0].asts)->left;
         else if ((yyvsp[-1].yyint) == '*' && IS_AST_OP ((yyvsp[0].asts)) && (yyvsp[0].asts)->opval.op == '&' && (yyvsp[0].asts)->right == NULL)
           (yyval.asts) = (yyvsp[0].asts)->left;
         else
           (yyval.asts) = newNode ((yyvsp[-1].yyint), (yyvsp[0].asts), NULL);
       }
#line 2968 "y.tab.c" /* yacc.c:1646  */
    break;

  case 66:
#line 467 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode (SIZEOF, NULL, (yyvsp[0].asts)); }
#line 2974 "y.tab.c" /* yacc.c:1646  */
    break;

  case 67:
#line 468 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newAst_VALUE (sizeofOp ((yyvsp[-1].lnk))); }
#line 2980 "y.tab.c" /* yacc.c:1646  */
    break;

  case 68:
#line 469 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newAst_VALUE (alignofOp ((yyvsp[-1].lnk))); }
#line 2986 "y.tab.c" /* yacc.c:1646  */
    break;

  case 69:
#line 470 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode (TYPEOF, NULL, (yyvsp[0].asts)); }
#line 2992 "y.tab.c" /* yacc.c:1646  */
    break;

  case 70:
#line 471 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = offsetofOp((yyvsp[-3].lnk), (yyvsp[-1].asts)); }
#line 2998 "y.tab.c" /* yacc.c:1646  */
    break;

  case 71:
#line 475 "SDCC.y" /* yacc.c:1646  */
    { (yyval.yyint) = '&';}
#line 3004 "y.tab.c" /* yacc.c:1646  */
    break;

  case 72:
#line 476 "SDCC.y" /* yacc.c:1646  */
    { (yyval.yyint) = '*';}
#line 3010 "y.tab.c" /* yacc.c:1646  */
    break;

  case 73:
#line 477 "SDCC.y" /* yacc.c:1646  */
    { (yyval.yyint) = '+';}
#line 3016 "y.tab.c" /* yacc.c:1646  */
    break;

  case 74:
#line 478 "SDCC.y" /* yacc.c:1646  */
    { (yyval.yyint) = '-';}
#line 3022 "y.tab.c" /* yacc.c:1646  */
    break;

  case 75:
#line 479 "SDCC.y" /* yacc.c:1646  */
    { (yyval.yyint) = '~';}
#line 3028 "y.tab.c" /* yacc.c:1646  */
    break;

  case 76:
#line 480 "SDCC.y" /* yacc.c:1646  */
    { (yyval.yyint) = '!';}
#line 3034 "y.tab.c" /* yacc.c:1646  */
    break;

  case 78:
#line 485 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(CAST,newAst_LINK((yyvsp[-2].lnk)),(yyvsp[0].asts)); }
#line 3040 "y.tab.c" /* yacc.c:1646  */
    break;

  case 80:
#line 490 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode('*',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3046 "y.tab.c" /* yacc.c:1646  */
    break;

  case 81:
#line 491 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode('/',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3052 "y.tab.c" /* yacc.c:1646  */
    break;

  case 82:
#line 492 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode('%',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3058 "y.tab.c" /* yacc.c:1646  */
    break;

  case 84:
#line 497 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts)=newNode('+',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3064 "y.tab.c" /* yacc.c:1646  */
    break;

  case 85:
#line 498 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts)=newNode('-',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3070 "y.tab.c" /* yacc.c:1646  */
    break;

  case 87:
#line 503 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(LEFT_OP,(yyvsp[-2].asts),(yyvsp[0].asts)); }
#line 3076 "y.tab.c" /* yacc.c:1646  */
    break;

  case 88:
#line 504 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(RIGHT_OP,(yyvsp[-2].asts),(yyvsp[0].asts)); }
#line 3082 "y.tab.c" /* yacc.c:1646  */
    break;

  case 90:
#line 509 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode('<',  (yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3088 "y.tab.c" /* yacc.c:1646  */
    break;

  case 91:
#line 510 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode('>',  (yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3094 "y.tab.c" /* yacc.c:1646  */
    break;

  case 92:
#line 511 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(LE_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3100 "y.tab.c" /* yacc.c:1646  */
    break;

  case 93:
#line 512 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(GE_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3106 "y.tab.c" /* yacc.c:1646  */
    break;

  case 95:
#line 517 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(EQ_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3112 "y.tab.c" /* yacc.c:1646  */
    break;

  case 96:
#line 518 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(NE_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3118 "y.tab.c" /* yacc.c:1646  */
    break;

  case 98:
#line 523 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode('&',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3124 "y.tab.c" /* yacc.c:1646  */
    break;

  case 100:
#line 528 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode('^',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3130 "y.tab.c" /* yacc.c:1646  */
    break;

  case 102:
#line 533 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode('|',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3136 "y.tab.c" /* yacc.c:1646  */
    break;

  case 104:
#line 538 "SDCC.y" /* yacc.c:1646  */
    { seqPointNo++;}
#line 3142 "y.tab.c" /* yacc.c:1646  */
    break;

  case 105:
#line 539 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(AND_OP,(yyvsp[-3].asts),(yyvsp[0].asts));}
#line 3148 "y.tab.c" /* yacc.c:1646  */
    break;

  case 107:
#line 544 "SDCC.y" /* yacc.c:1646  */
    { seqPointNo++;}
#line 3154 "y.tab.c" /* yacc.c:1646  */
    break;

  case 108:
#line 545 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(OR_OP,(yyvsp[-3].asts),(yyvsp[0].asts)); }
#line 3160 "y.tab.c" /* yacc.c:1646  */
    break;

  case 110:
#line 550 "SDCC.y" /* yacc.c:1646  */
    { seqPointNo++;}
#line 3166 "y.tab.c" /* yacc.c:1646  */
    break;

  case 111:
#line 551 "SDCC.y" /* yacc.c:1646  */
    {
                        (yyval.asts) = newNode(':',(yyvsp[-2].asts),(yyvsp[0].asts));
                        (yyval.asts) = newNode('?',(yyvsp[-5].asts),(yyval.asts));
                     }
#line 3175 "y.tab.c" /* yacc.c:1646  */
    break;

  case 113:
#line 560 "SDCC.y" /* yacc.c:1646  */
    {

                             switch ((yyvsp[-1].yyint)) {
                             case '=':
                                     (yyval.asts) = newNode((yyvsp[-1].yyint),(yyvsp[-2].asts),(yyvsp[0].asts));
                                     break;
                             case MUL_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '*', (yyvsp[0].asts));
                                     break;
                             case DIV_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '/', (yyvsp[0].asts));
                                     break;
                             case MOD_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '%', (yyvsp[0].asts));
                                     break;
                             case ADD_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '+', (yyvsp[0].asts));
                                     break;
                             case SUB_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '-', (yyvsp[0].asts));
                                     break;
                             case LEFT_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), LEFT_OP, (yyvsp[0].asts));
                                     break;
                             case RIGHT_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), RIGHT_OP, (yyvsp[0].asts));
                                     break;
                             case AND_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '&', (yyvsp[0].asts));
                                     break;
                             case XOR_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '^', (yyvsp[0].asts));
                                     break;
                             case OR_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '|', (yyvsp[0].asts));
                                     break;
                             default :
                                     (yyval.asts) = NULL;
                             }

                     }
#line 3221 "y.tab.c" /* yacc.c:1646  */
    break;

  case 114:
#line 604 "SDCC.y" /* yacc.c:1646  */
    { (yyval.yyint) = '=';}
#line 3227 "y.tab.c" /* yacc.c:1646  */
    break;

  case 126:
#line 619 "SDCC.y" /* yacc.c:1646  */
    { seqPointNo++;}
#line 3233 "y.tab.c" /* yacc.c:1646  */
    break;

  case 127:
#line 619 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(',',(yyvsp[-3].asts),(yyvsp[0].asts));}
#line 3239 "y.tab.c" /* yacc.c:1646  */
    break;

  case 129:
#line 628 "SDCC.y" /* yacc.c:1646  */
    {
         /* Special case: if incomplete struct/union declared without name, */
         /* make sure an incomplete type for it exists in the current scope */
         if (IS_STRUCT((yyvsp[-1].lnk)))
           {
             structdef *sdef = SPEC_STRUCT((yyvsp[-1].lnk));
             structdef *osdef;
             osdef = findSymWithBlock (StructTab, sdef->tagsym, currBlockno, NestLevel);
             if (osdef && osdef->block != currBlockno)
               {
                 sdef = newStruct(osdef->tagsym->name);
                 sdef->level = NestLevel;
                 sdef->block = currBlockno;
                 sdef->tagsym = newSymbol (osdef->tagsym->name, NestLevel);
                 addSym (StructTab, sdef, sdef->tag, sdef->level, currBlockno, 0);
                 uselessDecl = FALSE;
               }
           }
         if (uselessDecl)
           werror(W_USELESS_DECL);
         uselessDecl = TRUE;
         (yyval.sym) = NULL;
      }
#line 3267 "y.tab.c" /* yacc.c:1646  */
    break;

  case 130:
#line 652 "SDCC.y" /* yacc.c:1646  */
    {
         /* add the specifier list to the id */
         symbol *sym , *sym1;

         for (sym1 = sym = reverseSyms((yyvsp[-1].sym));sym != NULL;sym = sym->next) {
             sym_link *lnk = copyLinkChain((yyvsp[-2].lnk));
             sym_link *l0 = NULL, *l1 = NULL, *l2 = NULL;
             /* check illegal declaration */
             for (l0 = sym->type; l0 != NULL; l0 = l0->next)
               if (IS_PTR (l0))
                 break;
             /* check if creating intances of structs with flexible arrays */
             for (l1 = lnk; l1 != NULL; l1 = l1->next)
               if (IS_STRUCT (l1) && SPEC_STRUCT (l1)->b_flexArrayMember)
                 break;
             if (!options.std_c99 && l0 == NULL && l1 != NULL && SPEC_EXTR((yyvsp[-2].lnk)) != 1)
               werror (W_FLEXARRAY_INSTRUCT, sym->name);
             /* check if creating intances of function type */
             for (l1 = lnk; l1 != NULL; l1 = l1->next)
               if (IS_FUNC (l1))
                 break;
             for (l2 = lnk; l2 != NULL; l2 = l2->next)
               if (IS_PTR (l2))
                 break;
             if (l0 == NULL && l2 == NULL && l1 != NULL)
               werrorfl(sym->fileDef, sym->lineDef, E_TYPE_IS_FUNCTION, sym->name);
             /* do the pointer stuff */
             pointerTypes(sym->type,lnk);
             addDecl (sym,0,lnk);
         }

         uselessDecl = TRUE;
         (yyval.sym) = sym1;
      }
#line 3306 "y.tab.c" /* yacc.c:1646  */
    break;

  case 131:
#line 687 "SDCC.y" /* yacc.c:1646  */
    {
         (yyval.sym) = NULL;
      }
#line 3314 "y.tab.c" /* yacc.c:1646  */
    break;

  case 132:
#line 692 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = finalizeSpec((yyvsp[0].lnk)); }
#line 3320 "y.tab.c" /* yacc.c:1646  */
    break;

  case 133:
#line 695 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3326 "y.tab.c" /* yacc.c:1646  */
    break;

  case 134:
#line 696 "SDCC.y" /* yacc.c:1646  */
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "storage_class_specifier declaration_specifiers - skipped");
   }
#line 3336 "y.tab.c" /* yacc.c:1646  */
    break;

  case 135:
#line 701 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3342 "y.tab.c" /* yacc.c:1646  */
    break;

  case 136:
#line 702 "SDCC.y" /* yacc.c:1646  */
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "type_specifier declaration_specifiers - skipped");
   }
#line 3352 "y.tab.c" /* yacc.c:1646  */
    break;

  case 137:
#line 707 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3358 "y.tab.c" /* yacc.c:1646  */
    break;

  case 138:
#line 708 "SDCC.y" /* yacc.c:1646  */
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "function_specifier declaration_specifiers - skipped");
   }
#line 3368 "y.tab.c" /* yacc.c:1646  */
    break;

  case 139:
#line 713 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3374 "y.tab.c" /* yacc.c:1646  */
    break;

  case 140:
#line 714 "SDCC.y" /* yacc.c:1646  */
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "alignment_specifier declaration_specifiers - skipped");
   }
#line 3384 "y.tab.c" /* yacc.c:1646  */
    break;

  case 142:
#line 723 "SDCC.y" /* yacc.c:1646  */
    { (yyvsp[0].sym)->next = (yyvsp[-2].sym); (yyval.sym) = (yyvsp[0].sym);}
#line 3390 "y.tab.c" /* yacc.c:1646  */
    break;

  case 143:
#line 727 "SDCC.y" /* yacc.c:1646  */
    { (yyvsp[0].sym)->ival = NULL; }
#line 3396 "y.tab.c" /* yacc.c:1646  */
    break;

  case 144:
#line 728 "SDCC.y" /* yacc.c:1646  */
    { (yyvsp[-2].sym)->ival = (yyvsp[0].ilist); seqPointNo++; }
#line 3402 "y.tab.c" /* yacc.c:1646  */
    break;

  case 145:
#line 732 "SDCC.y" /* yacc.c:1646  */
    { (yyval.dsgn) = NULL; }
#line 3408 "y.tab.c" /* yacc.c:1646  */
    break;

  case 147:
#line 737 "SDCC.y" /* yacc.c:1646  */
    { (yyval.dsgn) = revDesignation((yyvsp[-1].dsgn)); }
#line 3414 "y.tab.c" /* yacc.c:1646  */
    break;

  case 149:
#line 742 "SDCC.y" /* yacc.c:1646  */
    { (yyvsp[0].dsgn)->next = (yyvsp[-1].dsgn); (yyval.dsgn) = (yyvsp[0].dsgn); }
#line 3420 "y.tab.c" /* yacc.c:1646  */
    break;

  case 150:
#line 747 "SDCC.y" /* yacc.c:1646  */
    {
            value *tval;
            int elemno;

            tval = constExprValue((yyvsp[-1].asts), TRUE);
            /* if it is not a constant then Error  */
            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror (E_CONST_EXPECTED);
                elemno = 0; /* arbitrary fixup */
              }
            else
              {
                if ((elemno = (int) ulFromVal(tval)) < 0)
                  {
                    werror (E_BAD_DESIGNATOR);
                    elemno = 0; /* arbitrary fixup */
                  }
              }
            (yyval.dsgn) = newDesignation(DESIGNATOR_ARRAY, &elemno);
         }
#line 3446 "y.tab.c" /* yacc.c:1646  */
    break;

  case 151:
#line 768 "SDCC.y" /* yacc.c:1646  */
    { (yyval.dsgn) = newDesignation(DESIGNATOR_STRUCT,(yyvsp[0].sym)); }
#line 3452 "y.tab.c" /* yacc.c:1646  */
    break;

  case 152:
#line 772 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_TYPEDEF((yyval.lnk)) = 1;
               }
#line 3461 "y.tab.c" /* yacc.c:1646  */
    break;

  case 153:
#line 776 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink(SPECIFIER);
                  SPEC_EXTR((yyval.lnk)) = 1;
               }
#line 3470 "y.tab.c" /* yacc.c:1646  */
    break;

  case 154:
#line 780 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_STAT((yyval.lnk)) = 1;
               }
#line 3479 "y.tab.c" /* yacc.c:1646  */
    break;

  case 155:
#line 784 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_AUTO;
               }
#line 3488 "y.tab.c" /* yacc.c:1646  */
    break;

  case 156:
#line 788 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_REGISTER;
               }
#line 3497 "y.tab.c" /* yacc.c:1646  */
    break;

  case 157:
#line 795 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_INLINE((yyval.lnk)) = 1;
               }
#line 3506 "y.tab.c" /* yacc.c:1646  */
    break;

  case 158:
#line 799 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_NORETURN((yyval.lnk)) = 1;
               }
#line 3515 "y.tab.c" /* yacc.c:1646  */
    break;

  case 159:
#line 807 "SDCC.y" /* yacc.c:1646  */
    {
                 checkTypeSanity ((yyvsp[-1].lnk), "(_Alignas)");
                 (yyval.lnk) = newLink (SPECIFIER);
                 SPEC_ALIGNAS((yyval.lnk)) = 1;
              }
#line 3525 "y.tab.c" /* yacc.c:1646  */
    break;

  case 160:
#line 813 "SDCC.y" /* yacc.c:1646  */
    {
                 value *val = constExprValue ((yyvsp[-1].asts), TRUE);
                 (yyval.lnk) = newLink (SPECIFIER);
                 SPEC_ALIGNAS((yyval.lnk)) = 0;
                 if (!val)
                   werror (E_CONST_EXPECTED);
                 else if (ulFromVal (val) == 0 || isPowerOf2 (ulFromVal (val)) && ulFromVal (val) <= port->mem.maxextalign)
                   SPEC_ALIGNAS((yyval.lnk)) = ulFromVal(val);
                 else
                   werror (E_ALIGNAS, ulFromVal(val));
              }
#line 3541 "y.tab.c" /* yacc.c:1646  */
    break;

  case 161:
#line 827 "SDCC.y" /* yacc.c:1646  */
    { (yyval.yyint) = INTNO_UNSPEC; }
#line 3547 "y.tab.c" /* yacc.c:1646  */
    break;

  case 162:
#line 829 "SDCC.y" /* yacc.c:1646  */
    { 
          value *val = constExprValue((yyvsp[0].asts),TRUE);
          int intno = (int) ulFromVal(val);
          if (val && (intno >= 0) && (intno <= INTNO_MAX))
            (yyval.yyint) = intno;
          else
            {
              werror(E_INT_BAD_INTNO, intno);
              (yyval.yyint) = INTNO_UNSPEC;
            }
        }
#line 3563 "y.tab.c" /* yacc.c:1646  */
    break;

  case 163:
#line 843 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_CONST((yyval.lnk)) = 1;
               }
#line 3572 "y.tab.c" /* yacc.c:1646  */
    break;

  case 164:
#line 847 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_RESTRICT((yyval.lnk)) = 1;
               }
#line 3581 "y.tab.c" /* yacc.c:1646  */
    break;

  case 165:
#line 851 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_VOLATILE((yyval.lnk)) = 1;
               }
#line 3590 "y.tab.c" /* yacc.c:1646  */
    break;

  case 166:
#line 855 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_ADDRSPACE((yyval.lnk)) = findSym (AddrspaceTab, 0, (yyvsp[0].yychar));
               }
#line 3599 "y.tab.c" /* yacc.c:1646  */
    break;

  case 167:
#line 859 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_XDATA;
               }
#line 3608 "y.tab.c" /* yacc.c:1646  */
    break;

  case 168:
#line 863 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_CODE;
               }
#line 3617 "y.tab.c" /* yacc.c:1646  */
    break;

  case 169:
#line 867 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_EEPROM;
               }
#line 3626 "y.tab.c" /* yacc.c:1646  */
    break;

  case 170:
#line 871 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_DATA;
               }
#line 3635 "y.tab.c" /* yacc.c:1646  */
    break;

  case 171:
#line 875 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_IDATA;
               }
#line 3644 "y.tab.c" /* yacc.c:1646  */
    break;

  case 172:
#line 879 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_PDATA;
               }
#line 3653 "y.tab.c" /* yacc.c:1646  */
    break;

  case 174:
#line 888 "SDCC.y" /* yacc.c:1646  */
    {
                 (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "type_qualifier_list type_qualifier skipped");
               }
#line 3661 "y.tab.c" /* yacc.c:1646  */
    break;

  case 175:
#line 894 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3667 "y.tab.c" /* yacc.c:1646  */
    break;

  case 176:
#line 895 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_BOOL;
                  ignoreTypedefType = 1;
               }
#line 3677 "y.tab.c" /* yacc.c:1646  */
    break;

  case 177:
#line 900 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_CHAR;
                  ignoreTypedefType = 1;
               }
#line 3687 "y.tab.c" /* yacc.c:1646  */
    break;

  case 178:
#line 905 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_SHORT((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
#line 3697 "y.tab.c" /* yacc.c:1646  */
    break;

  case 179:
#line 910 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_INT;
                  ignoreTypedefType = 1;
               }
#line 3707 "y.tab.c" /* yacc.c:1646  */
    break;

  case 180:
#line 915 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_LONG((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
#line 3717 "y.tab.c" /* yacc.c:1646  */
    break;

  case 181:
#line 920 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  (yyval.lnk)->select.s.b_signed = 1;
                  ignoreTypedefType = 1;
               }
#line 3727 "y.tab.c" /* yacc.c:1646  */
    break;

  case 182:
#line 925 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_USIGN((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
#line 3737 "y.tab.c" /* yacc.c:1646  */
    break;

  case 183:
#line 930 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_VOID;
                  ignoreTypedefType = 1;
               }
#line 3747 "y.tab.c" /* yacc.c:1646  */
    break;

  case 184:
#line 935 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_FLOAT;
                  ignoreTypedefType = 1;
               }
#line 3757 "y.tab.c" /* yacc.c:1646  */
    break;

  case 185:
#line 940 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_FIXED16X16;
                  ignoreTypedefType = 1;
               }
#line 3767 "y.tab.c" /* yacc.c:1646  */
    break;

  case 186:
#line 945 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_BIT;
                  SPEC_SCLS((yyval.lnk)) = S_BIT;
                  SPEC_BLEN((yyval.lnk)) = 1;
                  SPEC_BSTR((yyval.lnk)) = 0;
                  ignoreTypedefType = 1;
               }
#line 3780 "y.tab.c" /* yacc.c:1646  */
    break;

  case 187:
#line 953 "SDCC.y" /* yacc.c:1646  */
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  /* add this to the storage class specifier  */
                  SPEC_ABSA((yyval.lnk)) = 1;   /* set the absolute addr flag */
                  /* now get the abs addr from value */
                  SPEC_ADDR((yyval.lnk)) = (unsigned int) ulFromVal(constExprValue((yyvsp[0].asts),TRUE));
               }
#line 3792 "y.tab.c" /* yacc.c:1646  */
    break;

  case 188:
#line 960 "SDCC.y" /* yacc.c:1646  */
    {
                                   uselessDecl = FALSE;
                                   (yyval.lnk) = (yyvsp[0].lnk);
                                   ignoreTypedefType = 1;
                                }
#line 3802 "y.tab.c" /* yacc.c:1646  */
    break;

  case 189:
#line 965 "SDCC.y" /* yacc.c:1646  */
    {
                           cenum = NULL;
                           uselessDecl = FALSE;
                           ignoreTypedefType = 1;
                           (yyval.lnk) = (yyvsp[0].lnk);
                        }
#line 3813 "y.tab.c" /* yacc.c:1646  */
    break;

  case 190:
#line 972 "SDCC.y" /* yacc.c:1646  */
    {
            symbol *sym;
            sym_link *p;
            sym = findSym(TypedefTab,NULL,(yyvsp[0].yychar));
            (yyval.lnk) = p = copyLinkChain(sym ? sym->type : NULL);
            SPEC_TYPEDEF(getSpec(p)) = 0;
            ignoreTypedefType = 1;
         }
#line 3826 "y.tab.c" /* yacc.c:1646  */
    break;

  case 192:
#line 984 "SDCC.y" /* yacc.c:1646  */
    {
               (yyval.lnk) = newLink(SPECIFIER);
               SPEC_NOUN((yyval.lnk)) = V_SBIT;
               SPEC_SCLS((yyval.lnk)) = S_SBIT;
               SPEC_BLEN((yyval.lnk)) = 1;
               SPEC_BSTR((yyval.lnk)) = 0;
               ignoreTypedefType = 1;
            }
#line 3839 "y.tab.c" /* yacc.c:1646  */
    break;

  case 194:
#line 996 "SDCC.y" /* yacc.c:1646  */
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_CHAR;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 3852 "y.tab.c" /* yacc.c:1646  */
    break;

  case 195:
#line 1004 "SDCC.y" /* yacc.c:1646  */
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 1;
               SPEC_NOUN((yyval.lnk))    = V_CHAR;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 3865 "y.tab.c" /* yacc.c:1646  */
    break;

  case 196:
#line 1015 "SDCC.y" /* yacc.c:1646  */
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_INT;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 3878 "y.tab.c" /* yacc.c:1646  */
    break;

  case 197:
#line 1026 "SDCC.y" /* yacc.c:1646  */
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_INT;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_LONG((yyval.lnk))    = 1;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 3892 "y.tab.c" /* yacc.c:1646  */
    break;

  case 198:
#line 1039 "SDCC.y" /* yacc.c:1646  */
    {
          structdef *sdef;

          if (! (yyvsp[0].sdef)->tagsym)
            {
              /* no tag given, so new struct def for current scope */
              addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
            }
          else
            {
              sdef = findSymWithBlock (StructTab, (yyvsp[0].sdef)->tagsym, currBlockno, NestLevel);
              if (sdef)
                {
                  /* Error if a complete type already defined in this scope */
                  if (sdef->block == currBlockno)
                    {
                      if (sdef->fields)
                        {
                          werror(E_STRUCT_REDEF, (yyvsp[0].sdef)->tag);
                          werrorfl(sdef->tagsym->fileDef, sdef->tagsym->lineDef, E_PREVIOUS_DEF);
                        }
                      else
                        {
                          (yyvsp[0].sdef) = sdef; /* We are completing an incomplete type */
                        }
                    }
                  else
                    {
                      /* There is an existing struct def in an outer scope. */
                      /* Create new struct def for current scope */
                      addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
                    }
                }
              else
               {
                 /* There is no existing struct def at all. */
                 /* Create new struct def for current scope */
                 addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
               }
            }

          if (!(yyvsp[0].sdef)->type)
            {
              (yyvsp[0].sdef)->type = (yyvsp[-1].yyint);
            }
          else
            {
              if ((yyvsp[0].sdef)->type != (yyvsp[-1].yyint))
                  werror(E_BAD_TAG, (yyvsp[0].sdef)->tag, (yyvsp[-1].yyint)==STRUCT ? "struct" : "union");
            }
        }
#line 3948 "y.tab.c" /* yacc.c:1646  */
    break;

  case 199:
#line 1091 "SDCC.y" /* yacc.c:1646  */
    {
          structdef *sdef;
          symbol *sym, *dsym;

          // check for errors in structure members
          for (sym=(yyvsp[-1].sym); sym; sym=sym->next)
            {
              if (IS_ABSOLUTE(sym->etype))
                {
                  werrorfl(sym->fileDef, sym->lineDef, E_NOT_ALLOWED, "'at'");
                  SPEC_ABSA(sym->etype) = 0;
                }
              if (IS_SPEC(sym->etype) && SPEC_SCLS(sym->etype))
                {
                  werrorfl(sym->fileDef, sym->lineDef, E_NOT_ALLOWED, "storage class");
                  printTypeChainRaw (sym->type, NULL);
                  SPEC_SCLS(sym->etype) = 0;
                }
              for (dsym=sym->next; dsym; dsym=dsym->next)
                {
                  if (*dsym->name && strcmp(sym->name, dsym->name)==0)
                    {
                      werrorfl(sym->fileDef, sym->lineDef, E_DUPLICATE_MEMBER,
                               (yyvsp[-5].yyint)==STRUCT ? "struct" : "union", sym->name);
                      werrorfl(dsym->fileDef, dsym->lineDef, E_PREVIOUS_DEF);
                    }
                }
            }

          /* Create a structdef   */
          sdef = (yyvsp[-4].sdef);
          sdef->fields = reverseSyms((yyvsp[-1].sym));        /* link the fields */
          sdef->size = compStructSize((yyvsp[-5].yyint), sdef); /* update size of  */
          promoteAnonStructs ((yyvsp[-5].yyint), sdef);

          /* Create the specifier */
          (yyval.lnk) = newLink (SPECIFIER);
          SPEC_NOUN((yyval.lnk)) = V_STRUCT;
          SPEC_STRUCT((yyval.lnk))= sdef;
        }
#line 3993 "y.tab.c" /* yacc.c:1646  */
    break;

  case 200:
#line 1132 "SDCC.y" /* yacc.c:1646  */
    {
          structdef *sdef;

          sdef = findSymWithBlock (StructTab, (yyvsp[0].sdef)->tagsym, currBlockno, NestLevel);

          if (sdef)
            (yyvsp[0].sdef) = sdef;
          else
            {
              /* new struct def for current scope */
              addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
            }
          (yyval.lnk) = newLink(SPECIFIER);
          SPEC_NOUN((yyval.lnk)) = V_STRUCT;
          SPEC_STRUCT((yyval.lnk)) = (yyvsp[0].sdef);

          if (!(yyvsp[0].sdef)->type)
            {
              (yyvsp[0].sdef)->type = (yyvsp[-1].yyint);
            }
          else
            {
              if ((yyvsp[0].sdef)->type != (yyvsp[-1].yyint))
                  werror(E_BAD_TAG, (yyvsp[0].sdef)->tag, (yyvsp[-1].yyint)==STRUCT ? "struct" : "union");
            }
        }
#line 4024 "y.tab.c" /* yacc.c:1646  */
    break;

  case 201:
#line 1161 "SDCC.y" /* yacc.c:1646  */
    { (yyval.yyint) = STRUCT; ignoreTypedefType = 1; }
#line 4030 "y.tab.c" /* yacc.c:1646  */
    break;

  case 202:
#line 1162 "SDCC.y" /* yacc.c:1646  */
    { (yyval.yyint) = UNION; ignoreTypedefType = 1; }
#line 4036 "y.tab.c" /* yacc.c:1646  */
    break;

  case 204:
#line 1167 "SDCC.y" /* yacc.c:1646  */
    {  /* synthesize a name add to structtable */
          ignoreTypedefType = 0;
          (yyval.sdef) = newStruct(genSymName(NestLevel));
          (yyval.sdef)->level = NestLevel;
          (yyval.sdef)->block = currBlockno;
          (yyval.sdef)->tagsym = NULL;
          //addSym (StructTab, $$, $$->tag, $$->level, currBlockno, 0);
        }
#line 4049 "y.tab.c" /* yacc.c:1646  */
    break;

  case 205:
#line 1179 "SDCC.y" /* yacc.c:1646  */
    {  /* add name to structure table */
          ignoreTypedefType = 0;
          (yyval.sdef) = newStruct((yyvsp[0].sym)->name);
          (yyval.sdef)->level = NestLevel;
          (yyval.sdef)->block = currBlockno;
          (yyval.sdef)->tagsym = (yyvsp[0].sym);
          //$$ = findSymWithBlock (StructTab, $1, currBlockno);
          //if (! $$ )
          //  {
          //    $$ = newStruct($1->name);
          //    $$->level = NestLevel;
          //    $$->tagsym = $1;
          //    //addSym (StructTab, $$, $$->tag, $$->level, currBlockno, 0);
          //  }
        }
#line 4069 "y.tab.c" /* yacc.c:1646  */
    break;

  case 207:
#line 1199 "SDCC.y" /* yacc.c:1646  */
    {
          symbol *sym = (yyvsp[0].sym);

          /* go to the end of the chain */
          while (sym->next) sym = sym->next;
          sym->next = (yyvsp[-1].sym);

           (yyval.sym) = (yyvsp[0].sym);
        }
#line 4083 "y.tab.c" /* yacc.c:1646  */
    break;

  case 208:
#line 1212 "SDCC.y" /* yacc.c:1646  */
    {
          /* add this type to all the symbols */
          symbol *sym;
          for ( sym = (yyvsp[-1].sym); sym != NULL; sym = sym->next )
            {
              sym_link *btype = copyLinkChain((yyvsp[-2].lnk));

              pointerTypes(sym->type, btype);
              if (!sym->type)
                {
                  sym->type = btype;
                  sym->etype = getSpec(sym->type);
                }
              else
                  addDecl (sym, 0, btype);
              /* make sure the type is complete and sane */
              checkTypeSanity(sym->etype, sym->name);
            }
          ignoreTypedefType = 0;
          (yyval.sym) = (yyvsp[-1].sym);
        }
#line 4109 "y.tab.c" /* yacc.c:1646  */
    break;

  case 210:
#line 1238 "SDCC.y" /* yacc.c:1646  */
    {
          (yyvsp[0].sym)->next  = (yyvsp[-2].sym);
          (yyval.sym) = (yyvsp[0].sym);
        }
#line 4118 "y.tab.c" /* yacc.c:1646  */
    break;

  case 212:
#line 1247 "SDCC.y" /* yacc.c:1646  */
    {
          unsigned int bitsize;
          (yyval.sym) = newSymbol (genSymName(NestLevel), NestLevel);
          bitsize = (unsigned int) ulFromVal(constExprValue((yyvsp[0].asts), TRUE));
          if (!bitsize)
              bitsize = BITVAR_PAD;
          (yyval.sym)->bitVar = bitsize;
          (yyval.sym)->bitUnnamed = 1;
        }
#line 4132 "y.tab.c" /* yacc.c:1646  */
    break;

  case 213:
#line 1257 "SDCC.y" /* yacc.c:1646  */
    {
          unsigned int bitsize;
          bitsize = (unsigned int) ulFromVal(constExprValue((yyvsp[0].asts), TRUE));

          if (!bitsize)
            {
              (yyval.sym) = newSymbol (genSymName(NestLevel), NestLevel);
              (yyval.sym)->bitVar = BITVAR_PAD;
              werror(W_BITFLD_NAMED);
            }
          else
              (yyvsp[-2].sym)->bitVar = bitsize;
        }
#line 4150 "y.tab.c" /* yacc.c:1646  */
    break;

  case 214:
#line 1270 "SDCC.y" /* yacc.c:1646  */
    { (yyval.sym) = newSymbol ("", NestLevel); }
#line 4156 "y.tab.c" /* yacc.c:1646  */
    break;

  case 215:
#line 1275 "SDCC.y" /* yacc.c:1646  */
    {
          (yyval.lnk) = newEnumType ((yyvsp[-1].sym));
          SPEC_SCLS(getSpec((yyval.lnk))) = 0;
        }
#line 4165 "y.tab.c" /* yacc.c:1646  */
    break;

  case 216:
#line 1280 "SDCC.y" /* yacc.c:1646  */
    {
          symbol *csym;
          sym_link *enumtype;

          csym = findSymWithLevel(enumTab, (yyvsp[-3].sym));
          if ((csym && csym->level == (yyvsp[-3].sym)->level))
            {
              werrorfl((yyvsp[-3].sym)->fileDef, (yyvsp[-3].sym)->lineDef, E_DUPLICATE_TYPEDEF, csym->name);
              werrorfl(csym->fileDef, csym->lineDef, E_PREVIOUS_DEF);
            }

          enumtype = newEnumType ((yyvsp[-1].sym));
          SPEC_SCLS(getSpec(enumtype)) = 0;
          (yyvsp[-3].sym)->type = enumtype;

          /* add this to the enumerator table */
          if (!csym)
              addSym (enumTab, (yyvsp[-3].sym), (yyvsp[-3].sym)->name, (yyvsp[-3].sym)->level, (yyvsp[-3].sym)->block, 0);
          (yyval.lnk) = copyLinkChain(enumtype);
        }
#line 4190 "y.tab.c" /* yacc.c:1646  */
    break;

  case 217:
#line 1301 "SDCC.y" /* yacc.c:1646  */
    {
          symbol *csym;

          /* check the enumerator table */
          if ((csym = findSymWithLevel(enumTab, (yyvsp[0].sym))))
              (yyval.lnk) = copyLinkChain(csym->type);
          else
            {
              (yyval.lnk) = newLink(SPECIFIER);
              SPEC_NOUN((yyval.lnk)) = V_INT;
            }
        }
#line 4207 "y.tab.c" /* yacc.c:1646  */
    break;

  case 220:
#line 1319 "SDCC.y" /* yacc.c:1646  */
    {
          (yyvsp[0].sym)->next = (yyvsp[-2].sym);
          (yyval.sym) = (yyvsp[0].sym);
        }
#line 4216 "y.tab.c" /* yacc.c:1646  */
    break;

  case 221:
#line 1327 "SDCC.y" /* yacc.c:1646  */
    {
          symbol *sym;

          // check if the symbol at the same level already exists
          if ((sym = findSymWithLevel (SymbolTab, (yyvsp[-1].sym))) && sym->level == (yyvsp[-1].sym)->level)
            {
              werrorfl ((yyvsp[-1].sym)->fileDef, (yyvsp[-1].sym)->lineDef, E_DUPLICATE_MEMBER, "enum", (yyvsp[-1].sym)->name);
              werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
            }
          (yyvsp[-1].sym)->type = copyLinkChain ((yyvsp[0].val)->type);
          (yyvsp[-1].sym)->etype = getSpec ((yyvsp[-1].sym)->type);
          SPEC_ENUM ((yyvsp[-1].sym)->etype) = 1;
          (yyval.sym) = (yyvsp[-1].sym);
          // do this now, so we can use it for the next enums in the list
          addSymChain (&(yyvsp[-1].sym));
        }
#line 4237 "y.tab.c" /* yacc.c:1646  */
    break;

  case 222:
#line 1347 "SDCC.y" /* yacc.c:1646  */
    {
          value *val;

          val = constExprValue((yyvsp[0].asts), TRUE);
          if (!IS_INT(val->type) && !IS_CHAR(val->type) && !IS_BOOL(val->type))
            {
              werror(E_ENUM_NON_INTEGER);
              SNPRINTF(lbuff, sizeof(lbuff), "%d", (int) ulFromVal(val));
              val = constVal(lbuff);
            }
          (yyval.val) = cenum = val;
        }
#line 4254 "y.tab.c" /* yacc.c:1646  */
    break;

  case 223:
#line 1359 "SDCC.y" /* yacc.c:1646  */
    {
          if (cenum)
            {
              SNPRINTF(lbuff, sizeof(lbuff), "%d", (int) ulFromVal(cenum)+1);
              (yyval.val) = cenum = constVal(lbuff);
            }
          else
            {
              (yyval.val) = cenum = constCharVal(0);
            }
        }
#line 4270 "y.tab.c" /* yacc.c:1646  */
    break;

  case 224:
#line 1373 "SDCC.y" /* yacc.c:1646  */
    { (yyval.sym) = (yyvsp[0].sym); }
#line 4276 "y.tab.c" /* yacc.c:1646  */
    break;

  case 225:
#line 1375 "SDCC.y" /* yacc.c:1646  */
    {
             addDecl ((yyvsp[0].sym),0,reverseLink((yyvsp[-1].lnk)));
             (yyval.sym) = (yyvsp[0].sym);
         }
#line 4285 "y.tab.c" /* yacc.c:1646  */
    break;

  case 226:
#line 1382 "SDCC.y" /* yacc.c:1646  */
    { (yyval.sym) = (yyvsp[0].sym); }
#line 4291 "y.tab.c" /* yacc.c:1646  */
    break;

  case 227:
#line 1383 "SDCC.y" /* yacc.c:1646  */
    { (yyval.sym) = (yyvsp[0].sym); }
#line 4297 "y.tab.c" /* yacc.c:1646  */
    break;

  case 228:
#line 1388 "SDCC.y" /* yacc.c:1646  */
    {
             (yyval.sym) = (yyvsp[0].sym);
             strncpy (function_name, (yyval.sym)->name, sizeof (function_name) - 4);
             memset (function_name + sizeof (function_name) - 4, 0x00, 4);
         }
#line 4307 "y.tab.c" /* yacc.c:1646  */
    break;

  case 229:
#line 1394 "SDCC.y" /* yacc.c:1646  */
    {
             addDecl ((yyvsp[0].sym),0,reverseLink((yyvsp[-1].lnk)));
             (yyval.sym) = (yyvsp[0].sym);
             strncpy (function_name, (yyval.sym)->name, sizeof (function_name) - 4);
             memset (function_name + sizeof (function_name) - 4, 0x00, 4);
         }
#line 4318 "y.tab.c" /* yacc.c:1646  */
    break;

  case 230:
#line 1403 "SDCC.y" /* yacc.c:1646  */
    { (yyval.sym) = (yyvsp[0].sym); }
#line 4324 "y.tab.c" /* yacc.c:1646  */
    break;

  case 231:
#line 1404 "SDCC.y" /* yacc.c:1646  */
    {
           // copy the functionAttributes (not the args and hasVargs !!)
           struct value *args;
           unsigned hasVargs;
           sym_link *funcType=(yyvsp[-1].sym)->type;

           while (funcType && !IS_FUNC(funcType))
             funcType = funcType->next;

           if (!funcType)
             werror (E_FUNC_ATTR);
           else
             {
               args=FUNC_ARGS(funcType);
               hasVargs=FUNC_HASVARARGS(funcType);

               memcpy (&funcType->funcAttrs, &(yyvsp[0].lnk)->funcAttrs,
                   sizeof((yyvsp[0].lnk)->funcAttrs));

               FUNC_ARGS(funcType)=args;
               FUNC_HASVARARGS(funcType)=hasVargs;

               // just to be sure
               memset (&(yyvsp[0].lnk)->funcAttrs, 0,
                   sizeof((yyvsp[0].lnk)->funcAttrs));

               addDecl ((yyvsp[-1].sym),0,(yyvsp[0].lnk));
             }
   }
#line 4358 "y.tab.c" /* yacc.c:1646  */
    break;

  case 233:
#line 1437 "SDCC.y" /* yacc.c:1646  */
    { (yyval.sym) = (yyvsp[-1].sym); }
#line 4364 "y.tab.c" /* yacc.c:1646  */
    break;

  case 234:
#line 1439 "SDCC.y" /* yacc.c:1646  */
    {
            sym_link   *p;

            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;
            DCL_ELEM(p) = 0;
            addDecl((yyvsp[-2].sym),0,p);
         }
#line 4377 "y.tab.c" /* yacc.c:1646  */
    break;

  case 235:
#line 1448 "SDCC.y" /* yacc.c:1646  */
    {
            sym_link *p, *n;

            if (!options.std_c99)
              werror (E_QUALIFIED_ARRAY_PARAM_C99);

            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;
            DCL_ELEM(p) = 0;
            DCL_PTR_CONST(p) = SPEC_CONST ((yyvsp[-1].lnk));
            DCL_PTR_RESTRICT(p) = SPEC_RESTRICT ((yyvsp[-1].lnk));
            DCL_PTR_VOLATILE(p) = SPEC_VOLATILE ((yyvsp[-1].lnk));
            DCL_PTR_ADDRSPACE(p) = SPEC_ADDRSPACE ((yyvsp[-1].lnk));
            addDecl((yyvsp[-3].sym),0,p);
            n = newLink (SPECIFIER);
            SPEC_NEEDSPAR(n) = 1;
            addDecl((yyvsp[-3].sym),0,n);
         }
#line 4400 "y.tab.c" /* yacc.c:1646  */
    break;

  case 236:
#line 1467 "SDCC.y" /* yacc.c:1646  */
    {
            sym_link *p;
            value *tval;
            int size;

            tval = constExprValue((yyvsp[-1].asts), TRUE);
            /* if it is not a constant then Error  */
            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;

            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror(E_CONST_EXPECTED);
                /* Assume a single item array to limit the cascade */
                /* of additional errors. */
                size = 1;
              }
            else
              {
                if ((size = (int) ulFromVal(tval)) < 0)
                  {
                    werror(E_NEGATIVE_ARRAY_SIZE, (yyvsp[-3].sym)->name);
                    size = 1;
                  }
              }
            DCL_ELEM(p) = size;
            addDecl((yyvsp[-3].sym), 0, p);
         }
#line 4433 "y.tab.c" /* yacc.c:1646  */
    break;

  case 237:
#line 1496 "SDCC.y" /* yacc.c:1646  */
    {
            sym_link *p, *n;
            value *tval;
            int size;

            if (!options.std_c99)
              werror (E_STATIC_ARRAY_PARAM_C99);

            tval = constExprValue((yyvsp[-1].asts), TRUE);
            /* if it is not a constant then Error  */
            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;

            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror(E_CONST_EXPECTED);
                /* Assume a single item array to limit the cascade */
                /* of additional errors. */
                size = 1;
              }
            else
              {
                if ((size = (int) ulFromVal(tval)) < 0)
                  {
                    werror(E_NEGATIVE_ARRAY_SIZE, (yyvsp[-4].sym)->name);
                    size = 1;
                  }
              }
            DCL_ELEM(p) = size;
            addDecl((yyvsp[-4].sym), 0, p);
            n = newLink (SPECIFIER);
            SPEC_NEEDSPAR(n) = 1;
            addDecl((yyvsp[-4].sym),0,n);
         }
#line 4472 "y.tab.c" /* yacc.c:1646  */
    break;

  case 238:
#line 1531 "SDCC.y" /* yacc.c:1646  */
    {
            sym_link *p, *n;
            value *tval;
            int size;

            if (!options.std_c99)
              werror (E_QUALIFIED_ARRAY_PARAM_C99);

            tval = constExprValue((yyvsp[-1].asts), TRUE);
            /* if it is not a constant then Error  */
            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;

            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror(E_CONST_EXPECTED);
                /* Assume a single item array to limit the cascade */
                /* of additional errors. */
                size = 1;
              }
            else
              {
                if ((size = (int) ulFromVal(tval)) < 0)
                  {
                    werror(E_NEGATIVE_ARRAY_SIZE, (yyvsp[-4].sym)->name);
                    size = 1;
                  }
              }
            DCL_ELEM(p) = size;
            DCL_PTR_CONST(p) = SPEC_CONST ((yyvsp[-2].lnk));
            DCL_PTR_RESTRICT(p) = SPEC_RESTRICT ((yyvsp[-2].lnk));
            DCL_PTR_VOLATILE(p) = SPEC_VOLATILE ((yyvsp[-2].lnk));
            DCL_PTR_ADDRSPACE(p) = SPEC_ADDRSPACE ((yyvsp[-2].lnk));
            addDecl((yyvsp[-4].sym), 0, p);
            n = newLink (SPECIFIER);
            SPEC_NEEDSPAR(n) = 1;
            addDecl((yyvsp[-4].sym),0,n);
         }
#line 4515 "y.tab.c" /* yacc.c:1646  */
    break;

  case 239:
#line 1570 "SDCC.y" /* yacc.c:1646  */
    {
            sym_link *p, *n;
            value *tval;
            int size;

            if (!options.std_c99)
              {
                werror (E_STATIC_ARRAY_PARAM_C99);
                werror (E_QUALIFIED_ARRAY_PARAM_C99);
              }

            tval = constExprValue((yyvsp[-1].asts), TRUE);
            /* if it is not a constant then Error  */
            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;

            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror(E_CONST_EXPECTED);
                /* Assume a single item array to limit the cascade */
                /* of additional errors. */
                size = 1;
              }
            else
              {
                if ((size = (int) ulFromVal(tval)) < 0)
                  {
                    werror(E_NEGATIVE_ARRAY_SIZE, (yyvsp[-5].sym)->name);
                    size = 1;
                  }
              }
            DCL_ELEM(p) = size;
            DCL_PTR_CONST(p) = SPEC_CONST ((yyvsp[-2].lnk));
            DCL_PTR_RESTRICT(p) = SPEC_RESTRICT ((yyvsp[-2].lnk));
            DCL_PTR_VOLATILE(p) = SPEC_VOLATILE ((yyvsp[-2].lnk));
            DCL_PTR_ADDRSPACE(p) = SPEC_ADDRSPACE ((yyvsp[-2].lnk));
            addDecl((yyvsp[-5].sym), 0, p);
            n = newLink (SPECIFIER);
            SPEC_NEEDSPAR(n) = 1;
            addDecl((yyvsp[-5].sym),0,n);
         }
#line 4561 "y.tab.c" /* yacc.c:1646  */
    break;

  case 240:
#line 1612 "SDCC.y" /* yacc.c:1646  */
    {
            sym_link *p, *n;
            value *tval;
            int size;

            if (!options.std_c99)
              {
                werror (E_QUALIFIED_ARRAY_PARAM_C99);
                werror (E_STATIC_ARRAY_PARAM_C99);
              }

            tval = constExprValue((yyvsp[-1].asts), TRUE);
            /* if it is not a constant then Error  */
            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;

            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror(E_CONST_EXPECTED);
                /* Assume a single item array to limit the cascade */
                /* of additional errors. */
                size = 1;
              }
            else
              {
                if ((size = (int) ulFromVal(tval)) < 0)
                  {
                    werror(E_NEGATIVE_ARRAY_SIZE, (yyvsp[-5].sym)->name);
                    size = 1;
                  }
              }
            DCL_ELEM(p) = size;
            DCL_PTR_CONST(p) = SPEC_CONST ((yyvsp[-3].lnk));
            DCL_PTR_RESTRICT(p) = SPEC_RESTRICT ((yyvsp[-3].lnk));
            DCL_PTR_VOLATILE(p) = SPEC_VOLATILE ((yyvsp[-3].lnk));
            DCL_PTR_ADDRSPACE(p) = SPEC_ADDRSPACE ((yyvsp[-3].lnk));
            addDecl((yyvsp[-5].sym), 0, p);
            n = newLink (SPECIFIER);
            SPEC_NEEDSPAR(n) = 1;
            addDecl((yyvsp[-5].sym),0,n);
         }
#line 4607 "y.tab.c" /* yacc.c:1646  */
    break;

  case 241:
#line 1657 "SDCC.y" /* yacc.c:1646  */
    {
          addDecl ((yyvsp[-2].sym), FUNCTION, NULL);
        }
#line 4615 "y.tab.c" /* yacc.c:1646  */
    break;

  case 242:
#line 1661 "SDCC.y" /* yacc.c:1646  */
    {
          NestLevel += LEVEL_UNIT;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
          seqPointNo++; /* not a true sequence point, but helps resolve scope */
        }
#line 4627 "y.tab.c" /* yacc.c:1646  */
    break;

  case 243:
#line 1669 "SDCC.y" /* yacc.c:1646  */
    {
          sym_link *funcType;

          addDecl ((yyvsp[-4].sym), FUNCTION, NULL);

          funcType = (yyvsp[-4].sym)->type;
          while (funcType && !IS_FUNC(funcType))
              funcType = funcType->next;

          assert (funcType);

          FUNC_HASVARARGS(funcType) = IS_VARG((yyvsp[-1].val));
          FUNC_ARGS(funcType) = reverseVal((yyvsp[-1].val));

          /* nest level was incremented to take care of the parms  */
          NestLevel -= LEVEL_UNIT;
          currBlockno = STACK_POP(blockNum);
          seqPointNo++; /* not a true sequence point, but helps resolve scope */

          // if this was a pointer (to a function)
          if (!IS_FUNC((yyvsp[-4].sym)->type))
              cleanUpLevel(SymbolTab, NestLevel + LEVEL_UNIT);

          (yyval.sym) = (yyvsp[-4].sym);
        }
#line 4657 "y.tab.c" /* yacc.c:1646  */
    break;

  case 244:
#line 1695 "SDCC.y" /* yacc.c:1646  */
    {
          werror(E_OLD_STYLE,(yyvsp[-3].sym)->name);
          /* assume it returns an int */
          (yyvsp[-3].sym)->type = (yyvsp[-3].sym)->etype = newIntLink();
          (yyval.sym) = (yyvsp[-3].sym);
        }
#line 4668 "y.tab.c" /* yacc.c:1646  */
    break;

  case 245:
#line 1704 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = (yyvsp[0].lnk);}
#line 4674 "y.tab.c" /* yacc.c:1646  */
    break;

  case 246:
#line 1706 "SDCC.y" /* yacc.c:1646  */
    {
             (yyval.lnk) = (yyvsp[-1].lnk);
             if (IS_SPEC((yyvsp[0].lnk))) {
                 DCL_TSPEC((yyvsp[-1].lnk)) = (yyvsp[0].lnk);
                 DCL_PTR_CONST((yyvsp[-1].lnk)) = SPEC_CONST((yyvsp[0].lnk));
                 DCL_PTR_VOLATILE((yyvsp[-1].lnk)) = SPEC_VOLATILE((yyvsp[0].lnk));
                 DCL_PTR_RESTRICT((yyvsp[-1].lnk)) = SPEC_RESTRICT((yyvsp[0].lnk));
                 DCL_PTR_ADDRSPACE((yyvsp[-1].lnk)) = SPEC_ADDRSPACE((yyvsp[0].lnk));
             }
             else
                 werror (W_PTR_TYPE_INVALID);
         }
#line 4691 "y.tab.c" /* yacc.c:1646  */
    break;

  case 247:
#line 1719 "SDCC.y" /* yacc.c:1646  */
    {
             (yyval.lnk) = (yyvsp[-1].lnk);
             (yyval.lnk)->next = (yyvsp[0].lnk);
             DCL_TYPE((yyvsp[0].lnk))=port->unqualified_pointer;
         }
#line 4701 "y.tab.c" /* yacc.c:1646  */
    break;

  case 248:
#line 1725 "SDCC.y" /* yacc.c:1646  */
    {
             (yyval.lnk) = (yyvsp[-2].lnk);
             if (IS_SPEC((yyvsp[-1].lnk)) && DCL_TYPE((yyvsp[0].lnk)) == UPOINTER) {
                 DCL_PTR_CONST((yyvsp[-2].lnk)) = SPEC_CONST((yyvsp[-1].lnk));
                 DCL_PTR_VOLATILE((yyvsp[-2].lnk)) = SPEC_VOLATILE((yyvsp[-1].lnk));
                 DCL_PTR_RESTRICT((yyvsp[-2].lnk)) = SPEC_RESTRICT((yyvsp[-1].lnk));
                 DCL_PTR_ADDRSPACE((yyvsp[-2].lnk)) = SPEC_ADDRSPACE((yyvsp[-1].lnk));
                 switch (SPEC_SCLS((yyvsp[-1].lnk))) {
                 case S_XDATA:
                     DCL_TYPE((yyvsp[0].lnk)) = FPOINTER;
                     break;
                 case S_IDATA:
                     DCL_TYPE((yyvsp[0].lnk)) = IPOINTER;
                     break;
                 case S_PDATA:
                     DCL_TYPE((yyvsp[0].lnk)) = PPOINTER;
                     break;
                 case S_DATA:
                     DCL_TYPE((yyvsp[0].lnk)) = POINTER;
                     break;
                 case S_CODE:
                     DCL_TYPE((yyvsp[0].lnk)) = CPOINTER;
                     break;
                 case S_EEPROM:
                     DCL_TYPE((yyvsp[0].lnk)) = EEPPOINTER;
                     break;
                 default:
                   // this could be just "constant"
                   // werror(W_PTR_TYPE_INVALID);
                     ;
                 }
             }
             else
                 werror (W_PTR_TYPE_INVALID);
             (yyval.lnk)->next = (yyvsp[0].lnk);
         }
#line 4742 "y.tab.c" /* yacc.c:1646  */
    break;

  case 249:
#line 1765 "SDCC.y" /* yacc.c:1646  */
    {
        (yyval.lnk) = newLink(DECLARATOR);
        DCL_TYPE((yyval.lnk))=UPOINTER;
      }
#line 4751 "y.tab.c" /* yacc.c:1646  */
    break;

  case 250:
#line 1771 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = finalizeSpec((yyvsp[0].lnk)); }
#line 4757 "y.tab.c" /* yacc.c:1646  */
    break;

  case 252:
#line 1776 "SDCC.y" /* yacc.c:1646  */
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "type_specifier_list type_specifier skipped");
   }
#line 4767 "y.tab.c" /* yacc.c:1646  */
    break;

  case 254:
#line 1786 "SDCC.y" /* yacc.c:1646  */
    {
           (yyvsp[0].sym)->next = (yyvsp[-2].sym);
           (yyval.sym) = (yyvsp[0].sym);
         }
#line 4776 "y.tab.c" /* yacc.c:1646  */
    break;

  case 256:
#line 1794 "SDCC.y" /* yacc.c:1646  */
    { (yyvsp[-2].val)->vArgs = 1;}
#line 4782 "y.tab.c" /* yacc.c:1646  */
    break;

  case 258:
#line 1800 "SDCC.y" /* yacc.c:1646  */
    {
            (yyvsp[0].val)->next = (yyvsp[-2].val);
            (yyval.val) = (yyvsp[0].val);
         }
#line 4791 "y.tab.c" /* yacc.c:1646  */
    break;

  case 259:
#line 1808 "SDCC.y" /* yacc.c:1646  */
    {
          symbol *loop;

          if (IS_SPEC ((yyvsp[-1].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[-1].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, (yyvsp[0].sym)->name);
            }
          pointerTypes ((yyvsp[0].sym)->type, (yyvsp[-1].lnk));
          if (IS_SPEC ((yyvsp[0].sym)->etype))
            SPEC_NEEDSPAR((yyvsp[0].sym)->etype) = 0;
          addDecl ((yyvsp[0].sym), 0, (yyvsp[-1].lnk));
          for (loop = (yyvsp[0].sym); loop; loop->_isparm = 1, loop = loop->next)
            ;
          (yyval.val) = symbolVal ((yyvsp[0].sym));
          ignoreTypedefType = 0;
        }
#line 4812 "y.tab.c" /* yacc.c:1646  */
    break;

  case 260:
#line 1825 "SDCC.y" /* yacc.c:1646  */
    {
          (yyval.val) = newValue ();
          (yyval.val)->type = (yyvsp[0].lnk);
          (yyval.val)->etype = getSpec ((yyval.val)->type);
          ignoreTypedefType = 0;
         }
#line 4823 "y.tab.c" /* yacc.c:1646  */
    break;

  case 261:
#line 1835 "SDCC.y" /* yacc.c:1646  */
    {
          if (IS_SPEC ((yyvsp[0].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[0].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }
          (yyval.lnk) = (yyvsp[0].lnk); ignoreTypedefType = 0;
        }
#line 4835 "y.tab.c" /* yacc.c:1646  */
    break;

  case 262:
#line 1843 "SDCC.y" /* yacc.c:1646  */
    {
          /* go to the end of the list */
          sym_link *p;

          if (IS_SPEC ((yyvsp[-1].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[-1].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }
          pointerTypes ((yyvsp[0].lnk),(yyvsp[-1].lnk));
          for (p = (yyvsp[0].lnk); p && p->next; p = p->next)
            ;
          if (!p)
            {
              werror(E_SYNTAX_ERROR, yytext);
            }
          else
            {
              p->next = (yyvsp[-1].lnk);
            }
          (yyval.lnk) = (yyvsp[0].lnk);
          ignoreTypedefType = 0;
        }
#line 4862 "y.tab.c" /* yacc.c:1646  */
    break;

  case 263:
#line 1868 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = reverseLink((yyvsp[0].lnk)); }
#line 4868 "y.tab.c" /* yacc.c:1646  */
    break;

  case 265:
#line 1870 "SDCC.y" /* yacc.c:1646  */
    { (yyvsp[-1].lnk) = reverseLink((yyvsp[-1].lnk)); (yyvsp[0].lnk)->next = (yyvsp[-1].lnk); (yyval.lnk) = (yyvsp[0].lnk);
          if (IS_PTR((yyvsp[-1].lnk)) && IS_FUNC((yyvsp[0].lnk)))
            DCL_TYPE((yyvsp[-1].lnk)) = CPOINTER;
        }
#line 4877 "y.tab.c" /* yacc.c:1646  */
    break;

  case 266:
#line 1877 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = (yyvsp[-1].lnk); }
#line 4883 "y.tab.c" /* yacc.c:1646  */
    break;

  case 267:
#line 1878 "SDCC.y" /* yacc.c:1646  */
    {
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = 0;
                                    }
#line 4893 "y.tab.c" /* yacc.c:1646  */
    break;

  case 268:
#line 1883 "SDCC.y" /* yacc.c:1646  */
    {
                                       value *val;
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = (int) ulFromVal(val = constExprValue((yyvsp[-1].asts),TRUE));
                                    }
#line 4904 "y.tab.c" /* yacc.c:1646  */
    break;

  case 269:
#line 1889 "SDCC.y" /* yacc.c:1646  */
    {
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = 0;
                                       (yyval.lnk)->next = (yyvsp[-2].lnk);
                                    }
#line 4915 "y.tab.c" /* yacc.c:1646  */
    break;

  case 270:
#line 1896 "SDCC.y" /* yacc.c:1646  */
    {
                                       value *val;
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = (int) ulFromVal(val = constExprValue((yyvsp[-1].asts),TRUE));
                                       (yyval.lnk)->next = (yyvsp[-3].lnk);
                                    }
#line 4927 "y.tab.c" /* yacc.c:1646  */
    break;

  case 271:
#line 1903 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = NULL;}
#line 4933 "y.tab.c" /* yacc.c:1646  */
    break;

  case 272:
#line 1904 "SDCC.y" /* yacc.c:1646  */
    { (yyval.lnk) = NULL;}
#line 4939 "y.tab.c" /* yacc.c:1646  */
    break;

  case 273:
#line 1905 "SDCC.y" /* yacc.c:1646  */
    {
     // $1 must be a pointer to a function
     sym_link *p=newLink(DECLARATOR);
     DCL_TYPE(p) = FUNCTION;
     if (!(yyvsp[-2].lnk)) {
       // ((void (code *) ()) 0) ()
       (yyvsp[-2].lnk)=newLink(DECLARATOR);
       DCL_TYPE((yyvsp[-2].lnk))=CPOINTER;
       (yyval.lnk) = (yyvsp[-2].lnk);
     }
     (yyvsp[-2].lnk)->next=p;
   }
#line 4956 "y.tab.c" /* yacc.c:1646  */
    break;

  case 274:
#line 1918 "SDCC.y" /* yacc.c:1646  */
    {
          NestLevel += LEVEL_UNIT;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
        }
#line 4967 "y.tab.c" /* yacc.c:1646  */
    break;

  case 275:
#line 1925 "SDCC.y" /* yacc.c:1646  */
    {
          sym_link *p = newLink(DECLARATOR), *q;
          DCL_TYPE(p) = FUNCTION;

          FUNC_HASVARARGS(p) = IS_VARG((yyvsp[-1].val));
          FUNC_ARGS(p) = reverseVal((yyvsp[-1].val));

          /* nest level was incremented to take care of the parms  */
          NestLevel -= LEVEL_UNIT;
          currBlockno = STACK_POP(blockNum);
          if (!(yyvsp[-4].lnk))
            {
              /* ((void (code *) (void)) 0) () */
              (yyvsp[-4].lnk) = newLink(DECLARATOR);
              DCL_TYPE((yyvsp[-4].lnk)) = CPOINTER;
              (yyval.lnk) = (yyvsp[-4].lnk);
            }
          for (q = (yyvsp[-4].lnk); q && q->next; q = q->next);
          q->next = p;
        }
#line 4992 "y.tab.c" /* yacc.c:1646  */
    break;

  case 276:
#line 1948 "SDCC.y" /* yacc.c:1646  */
    { (yyval.ilist) = newiList(INIT_NODE,(yyvsp[0].asts)); }
#line 4998 "y.tab.c" /* yacc.c:1646  */
    break;

  case 277:
#line 1949 "SDCC.y" /* yacc.c:1646  */
    { (yyval.ilist) = newiList(INIT_DEEP,revinit((yyvsp[-1].ilist))); }
#line 5004 "y.tab.c" /* yacc.c:1646  */
    break;

  case 278:
#line 1950 "SDCC.y" /* yacc.c:1646  */
    { (yyval.ilist) = newiList(INIT_DEEP,revinit((yyvsp[-2].ilist))); }
#line 5010 "y.tab.c" /* yacc.c:1646  */
    break;

  case 279:
#line 1954 "SDCC.y" /* yacc.c:1646  */
    { (yyvsp[0].ilist)->designation = (yyvsp[-1].dsgn); (yyval.ilist) = (yyvsp[0].ilist); }
#line 5016 "y.tab.c" /* yacc.c:1646  */
    break;

  case 280:
#line 1956 "SDCC.y" /* yacc.c:1646  */
    {
                                       (yyvsp[0].ilist)->designation = (yyvsp[-1].dsgn);
                                       (yyvsp[0].ilist)->next = (yyvsp[-3].ilist);
                                       (yyval.ilist) = (yyvsp[0].ilist);
                                    }
#line 5026 "y.tab.c" /* yacc.c:1646  */
    break;

  case 281:
#line 1965 "SDCC.y" /* yacc.c:1646  */
    {
                                       value *val = constExprValue ((yyvsp[-3].asts), TRUE);
                                       if (!val)
                                         werror (E_CONST_EXPECTED);
                                       else if (!ulFromVal(val))
                                         werror (W_STATIC_ASSERTION, (yyvsp[-1].yystr));
                                    }
#line 5038 "y.tab.c" /* yacc.c:1646  */
    break;

  case 282:
#line 1973 "SDCC.y" /* yacc.c:1646  */
    {
                                       value *val = constExprValue ((yyvsp[-1].asts), TRUE);
                                       if (!options.std_c2x)
                                         werror (E_STATIC_ASSERTION_C2X);
                                       if (!val)
                                         werror (E_CONST_EXPECTED);
                                       else if (!ulFromVal(val))
                                         werror (W_STATIC_ASSERTION_2);
                                    }
#line 5052 "y.tab.c" /* yacc.c:1646  */
    break;

  case 291:
#line 1996 "SDCC.y" /* yacc.c:1646  */
    {
                   if (inCriticalFunction || inCriticalBlock)
                     werror(E_INVALID_CRITICAL);
                   inCriticalBlock = 1;
                   STACK_PUSH(continueStack,NULL);
                   STACK_PUSH(breakStack,NULL);
                   (yyval.sym) = NULL;
                }
#line 5065 "y.tab.c" /* yacc.c:1646  */
    break;

  case 292:
#line 2007 "SDCC.y" /* yacc.c:1646  */
    {
                   STACK_POP(breakStack);
                   STACK_POP(continueStack);
                   (yyval.asts) = newNode(CRITICAL,(yyvsp[0].asts),NULL);
                   inCriticalBlock = 0;
                }
#line 5076 "y.tab.c" /* yacc.c:1646  */
    break;

  case 293:
#line 2016 "SDCC.y" /* yacc.c:1646  */
    { if ((yyvsp[-1].asts)) {(yyval.asts) = (yyvsp[-1].asts); (yyvsp[-1].asts)->right = (yyvsp[0].asts);} else (yyval.asts) = newNode (BLOCK, NULL, NULL); }
#line 5082 "y.tab.c" /* yacc.c:1646  */
    break;

  case 294:
#line 2018 "SDCC.y" /* yacc.c:1646  */
    { /* Support a label without a statement at the end of a */
       /* compound statement as a SDCC extension. Include the */
       /* closing brace as part of the rule to avoid an */
       /* unacceptably large number of shift/reduce conflicts */
       /* and then reinsert it to be parsed a second time. */
       werror(W_LABEL_WITHOUT_STATEMENT);
       (yyval.asts) = (yyvsp[-1].asts);
       yychar = '}';
     }
#line 5096 "y.tab.c" /* yacc.c:1646  */
    break;

  case 295:
#line 2030 "SDCC.y" /* yacc.c:1646  */
    {  (yyval.asts) = createLabel((yyvsp[-1].sym),NULL);
                                          (yyvsp[-1].sym)->isitmp = 0;  }
#line 5103 "y.tab.c" /* yacc.c:1646  */
    break;

  case 296:
#line 2033 "SDCC.y" /* yacc.c:1646  */
    {
       if (STACK_EMPTY(swStk))
         (yyval.asts) = createCase(NULL,(yyvsp[-1].asts),NULL);
       else
         (yyval.asts) = createCase(STACK_PEEK(swStk),(yyvsp[-1].asts),NULL);
     }
#line 5114 "y.tab.c" /* yacc.c:1646  */
    break;

  case 297:
#line 2039 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = newNode(DEFAULT,NULL,NULL); }
#line 5120 "y.tab.c" /* yacc.c:1646  */
    break;

  case 298:
#line 2040 "SDCC.y" /* yacc.c:1646  */
    {
       if (STACK_EMPTY(swStk))
         (yyval.asts) = createDefault(NULL,(yyvsp[-1].asts),NULL);
       else
         (yyval.asts) = createDefault(STACK_PEEK(swStk),(yyvsp[-1].asts),NULL);
     }
#line 5131 "y.tab.c" /* yacc.c:1646  */
    break;

  case 299:
#line 2050 "SDCC.y" /* yacc.c:1646  */
    {
          NestLevel += LEVEL_UNIT;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
          ignoreTypedefType = 0;
        }
#line 5143 "y.tab.c" /* yacc.c:1646  */
    break;

  case 300:
#line 2061 "SDCC.y" /* yacc.c:1646  */
    {
          NestLevel -= LEVEL_UNIT;
          currBlockno = STACK_POP(blockNum);
        }
#line 5152 "y.tab.c" /* yacc.c:1646  */
    break;

  case 301:
#line 2068 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = createBlock(NULL, NULL); }
#line 5158 "y.tab.c" /* yacc.c:1646  */
    break;

  case 302:
#line 2070 "SDCC.y" /* yacc.c:1646  */
    {
       (yyval.asts) = (yyvsp[-1].asts);
       cleanUpLevel(StructTab, NestLevel + LEVEL_UNIT);
     }
#line 5167 "y.tab.c" /* yacc.c:1646  */
    break;

  case 303:
#line 2074 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = NULL; }
#line 5173 "y.tab.c" /* yacc.c:1646  */
    break;

  case 304:
#line 2078 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = createBlock(NULL, (yyvsp[0].asts)); }
#line 5179 "y.tab.c" /* yacc.c:1646  */
    break;

  case 305:
#line 2079 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = createBlock((yyvsp[0].sym), NULL); }
#line 5185 "y.tab.c" /* yacc.c:1646  */
    break;

  case 306:
#line 2080 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = createBlock((yyvsp[-1].sym), (yyvsp[0].asts)); }
#line 5191 "y.tab.c" /* yacc.c:1646  */
    break;

  case 308:
#line 2086 "SDCC.y" /* yacc.c:1646  */
    {
       (yyval.asts) = newNode(NULLOP, (yyvsp[-1].asts), (yyvsp[0].asts));
       if (!options.std_c99)
         werror(E_DECL_AFTER_STATEMENT_C99);
     }
#line 5201 "y.tab.c" /* yacc.c:1646  */
    break;

  case 309:
#line 2094 "SDCC.y" /* yacc.c:1646  */
    {
       NestLevel += SUBLEVEL_UNIT;
       STACK_PUSH(blockNum, currBlockno);
       btree_add_child(currBlockno, ++blockNo);
       currBlockno = blockNo;
       ignoreTypedefType = 0;
     }
#line 5213 "y.tab.c" /* yacc.c:1646  */
    break;

  case 310:
#line 2101 "SDCC.y" /* yacc.c:1646  */
    { (yyval.sym) = (yyvsp[0].sym); }
#line 5219 "y.tab.c" /* yacc.c:1646  */
    break;

  case 311:
#line 2106 "SDCC.y" /* yacc.c:1646  */
    {
       NestLevel -= SUBLEVEL_UNIT;
       currBlockno = STACK_POP(blockNum);
       (yyval.asts) = createBlock((yyvsp[-1].sym), (yyvsp[0].asts));
       cleanUpLevel(StructTab, NestLevel + SUBLEVEL_UNIT);
     }
#line 5230 "y.tab.c" /* yacc.c:1646  */
    break;

  case 312:
#line 2113 "SDCC.y" /* yacc.c:1646  */
    {
       NestLevel -= SUBLEVEL_UNIT;
       currBlockno = STACK_POP(blockNum);
       (yyval.asts) = createBlock((yyvsp[0].sym), NULL);
       cleanUpLevel(StructTab, NestLevel + SUBLEVEL_UNIT);
     }
#line 5241 "y.tab.c" /* yacc.c:1646  */
    break;

  case 313:
#line 2123 "SDCC.y" /* yacc.c:1646  */
    {
       /* if this is typedef declare it immediately */
       if ( (yyvsp[0].sym) && IS_TYPEDEF((yyvsp[0].sym)->etype)) {
         allocVariables ((yyvsp[0].sym));
         (yyval.sym) = NULL;
       }
       else
         (yyval.sym) = (yyvsp[0].sym);
       ignoreTypedefType = 0;
       addSymChain(&(yyvsp[0].sym));
     }
#line 5257 "y.tab.c" /* yacc.c:1646  */
    break;

  case 314:
#line 2136 "SDCC.y" /* yacc.c:1646  */
    {
       symbol   *sym;

       /* if this is a typedef */
       if ((yyvsp[0].sym) && IS_TYPEDEF((yyvsp[0].sym)->etype)) {
         allocVariables ((yyvsp[0].sym));
         (yyval.sym) = (yyvsp[-1].sym);
       }
       else {
         /* get to the end of the previous decl */
         if ( (yyvsp[-1].sym) ) {
           (yyval.sym) = sym = (yyvsp[-1].sym);
           while (sym->next)
             sym = sym->next;
           sym->next = (yyvsp[0].sym);
         }
         else
           (yyval.sym) = (yyvsp[0].sym);
       }
       ignoreTypedefType = 0;
       addSymChain(&(yyvsp[0].sym));
     }
#line 5284 "y.tab.c" /* yacc.c:1646  */
    break;

  case 316:
#line 2162 "SDCC.y" /* yacc.c:1646  */
    {  (yyval.asts) = newNode(NULLOP,(yyvsp[-1].asts),(yyvsp[0].asts));}
#line 5290 "y.tab.c" /* yacc.c:1646  */
    break;

  case 317:
#line 2166 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = NULL;}
#line 5296 "y.tab.c" /* yacc.c:1646  */
    break;

  case 318:
#line 2167 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = (yyvsp[-1].asts); seqPointNo++;}
#line 5302 "y.tab.c" /* yacc.c:1646  */
    break;

  case 319:
#line 2171 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = (yyvsp[0].asts); }
#line 5308 "y.tab.c" /* yacc.c:1646  */
    break;

  case 320:
#line 2172 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = NULL; }
#line 5314 "y.tab.c" /* yacc.c:1646  */
    break;

  case 321:
#line 2177 "SDCC.y" /* yacc.c:1646  */
    { seqPointNo++;}
#line 5320 "y.tab.c" /* yacc.c:1646  */
    break;

  case 322:
#line 2178 "SDCC.y" /* yacc.c:1646  */
    {
                              noLineno++;
                              (yyval.asts) = createIf ((yyvsp[-4].asts), (yyvsp[-1].asts), (yyvsp[0].asts) );
                              (yyval.asts)->lineno = (yyvsp[-4].asts)->lineno;
                              (yyval.asts)->filename = (yyvsp[-4].asts)->filename;
                              noLineno--;
                           }
#line 5332 "y.tab.c" /* yacc.c:1646  */
    break;

  case 323:
#line 2185 "SDCC.y" /* yacc.c:1646  */
    {
                              ast *ex;
                              static   int swLabel = 0;

                              seqPointNo++;
                              /* create a node for expression  */
                              ex = newNode(SWITCH,(yyvsp[-1].asts),NULL);
                              STACK_PUSH(swStk,ex);   /* save it in the stack */
                              ex->values.switchVals.swNum = swLabel;

                              /* now create the label */
                              SNPRINTF(lbuff, sizeof(lbuff),
                                       "_swBrk_%d",swLabel++);
                              (yyval.sym)  =  newSymbol(lbuff,NestLevel);
                              /* put label in the break stack  */
                              STACK_PUSH(breakStack,(yyval.sym));
                           }
#line 5354 "y.tab.c" /* yacc.c:1646  */
    break;

  case 324:
#line 2202 "SDCC.y" /* yacc.c:1646  */
    {
                              /* get back the switch form the stack  */
                              (yyval.asts) = STACK_POP(swStk);
                              (yyval.asts)->right = newNode (NULLOP,(yyvsp[0].asts),createLabel((yyvsp[-1].sym),NULL));
                              STACK_POP(breakStack);
                           }
#line 5365 "y.tab.c" /* yacc.c:1646  */
    break;

  case 325:
#line 2210 "SDCC.y" /* yacc.c:1646  */
    {  /* create and push the continue , break & body labels */
                  static int Lblnum = 0;
                  /* continue */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilecontinue_%d",Lblnum);
                  STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
                  /* break */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilebreak_%d",Lblnum);
                  STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
                  /* body */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilebody_%d",Lblnum++);
                  (yyval.sym) = newSymbol(lbuff,NestLevel);
               }
#line 5382 "y.tab.c" /* yacc.c:1646  */
    break;

  case 326:
#line 2224 "SDCC.y" /* yacc.c:1646  */
    {  /* create and push the continue , break & body Labels */
           static int Lblnum = 0;

           /* continue */
           SNPRINTF(lbuff, sizeof(lbuff), "_docontinue_%d",Lblnum);
           STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
           /* break */
           SNPRINTF(lbuff, sizeof(lbuff), "_dobreak_%d",Lblnum);
           STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
           /* do body */
           SNPRINTF(lbuff, sizeof(lbuff), "_dobody_%d",Lblnum++);
           (yyval.sym) = newSymbol (lbuff,NestLevel);
        }
#line 5400 "y.tab.c" /* yacc.c:1646  */
    break;

  case 327:
#line 2239 "SDCC.y" /* yacc.c:1646  */
    { /* create & push continue, break & body labels */
            static int Lblnum = 0;

           NestLevel += LEVEL_UNIT;
           STACK_PUSH(blockNum, currBlockno);
           btree_add_child(currBlockno, ++blockNo);
           currBlockno = blockNo;
           ignoreTypedefType = 0;

            /* continue */
            SNPRINTF(lbuff, sizeof(lbuff), "_forcontinue_%d",Lblnum);
            STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
            /* break    */
            SNPRINTF(lbuff, sizeof(lbuff), "_forbreak_%d",Lblnum);
            STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
            /* body */
            SNPRINTF(lbuff, sizeof(lbuff), "_forbody_%d",Lblnum);
            (yyval.sym) = newSymbol(lbuff,NestLevel);
            /* condition */
            SNPRINTF(lbuff, sizeof(lbuff), "_forcond_%d",Lblnum++);
            STACK_PUSH(forStack,newSymbol(lbuff,NestLevel));
          }
#line 5427 "y.tab.c" /* yacc.c:1646  */
    break;

  case 328:
#line 2264 "SDCC.y" /* yacc.c:1646  */
    { seqPointNo++;}
#line 5433 "y.tab.c" /* yacc.c:1646  */
    break;

  case 329:
#line 2265 "SDCC.y" /* yacc.c:1646  */
    {
                           noLineno++;
                           (yyval.asts) = createWhile ( (yyvsp[-5].sym), STACK_POP(continueStack),
                                              STACK_POP(breakStack), (yyvsp[-3].asts), (yyvsp[0].asts) );
                           (yyval.asts)->lineno = (yyvsp[-5].sym)->lineDef;
                           (yyval.asts)->filename = (yyvsp[-5].sym)->fileDef;
                           noLineno--;
                         }
#line 5446 "y.tab.c" /* yacc.c:1646  */
    break;

  case 330:
#line 2274 "SDCC.y" /* yacc.c:1646  */
    {
                          seqPointNo++;
                          noLineno++;
                          (yyval.asts) = createDo ( (yyvsp[-6].sym) , STACK_POP(continueStack),
                                          STACK_POP(breakStack), (yyvsp[-2].asts), (yyvsp[-5].asts));
                          (yyval.asts)->lineno = (yyvsp[-6].sym)->lineDef;
                          (yyval.asts)->filename = (yyvsp[-6].sym)->fileDef;
                          noLineno--;
                        }
#line 5460 "y.tab.c" /* yacc.c:1646  */
    break;

  case 331:
#line 2284 "SDCC.y" /* yacc.c:1646  */
    {
                          noLineno++;

                          (yyval.asts) = newNode(FOR,(yyvsp[0].asts),NULL);
                          AST_FOR((yyval.asts),trueLabel) = (yyvsp[-8].sym);
                          AST_FOR((yyval.asts),continueLabel) =  STACK_POP(continueStack);
                          AST_FOR((yyval.asts),falseLabel) = STACK_POP(breakStack);
                          AST_FOR((yyval.asts),condLabel)  = STACK_POP(forStack);
                          AST_FOR((yyval.asts),initExpr)   = (yyvsp[-6].asts);
                          AST_FOR((yyval.asts),condExpr)   = (yyvsp[-4].asts);
                          AST_FOR((yyval.asts),loopExpr)   = (yyvsp[-2].asts);
                          
                          /* This continue label is not at the correct location, */
                          /* but we need to create it now for proper binding. The */
                          /* code that handles the FOR node will move it to the */
                          /* proper location inside the for loop. */
                          if (AST_FOR((yyval.asts),continueLabel)->isref)
                            (yyval.asts)->right = createLabel(AST_FOR((yyval.asts),continueLabel),NULL);
                          (yyval.asts) = newNode(NULLOP,(yyval.asts),createLabel(AST_FOR((yyval.asts),falseLabel),NULL));
                          noLineno--;

                          NestLevel -= LEVEL_UNIT;
                          currBlockno = STACK_POP(blockNum);
                        }
#line 5489 "y.tab.c" /* yacc.c:1646  */
    break;

  case 332:
#line 2309 "SDCC.y" /* yacc.c:1646  */
    {
                          if (!options.std_c99)
                            werror (E_FOR_INITAL_DECLARATION_C99);

                          if ( (yyvsp[-4].sym) && IS_TYPEDEF((yyvsp[-4].sym)->etype))
                            allocVariables ((yyvsp[-4].sym));
                          ignoreTypedefType = 0;
                          addSymChain(&(yyvsp[-4].sym));
                        }
#line 5503 "y.tab.c" /* yacc.c:1646  */
    break;

  case 333:
#line 2319 "SDCC.y" /* yacc.c:1646  */
    {

                          noLineno++;

                          (yyval.asts) = newNode(FOR,(yyvsp[0].asts),NULL);
                          AST_FOR((yyval.asts),trueLabel) = (yyvsp[-8].sym);
                          AST_FOR((yyval.asts),continueLabel) =  STACK_POP(continueStack);
                          AST_FOR((yyval.asts),falseLabel) = STACK_POP(breakStack);
                          AST_FOR((yyval.asts),condLabel)  = STACK_POP(forStack);
                          AST_FOR((yyval.asts),initExpr)   = 0;
                          AST_FOR((yyval.asts),condExpr)   = (yyvsp[-5].asts);
                          AST_FOR((yyval.asts),loopExpr)   = (yyvsp[-3].asts);

                          /* This continue label is not at the correct location, */
                          /* but we need to create it now for proper binding. The */
                          /* code that handles the FOR node will move it to the */
                          /* proper location inside the for loop. */
                          if (AST_FOR((yyval.asts),continueLabel)->isref)
                            (yyval.asts)->right = createLabel(AST_FOR((yyval.asts),continueLabel),NULL);
                          (yyval.asts) = createBlock((yyvsp[-6].sym), newNode(NULLOP,(yyval.asts),createLabel(AST_FOR((yyval.asts),falseLabel),NULL)));
                          cleanUpLevel(StructTab, NestLevel + LEVEL_UNIT);
                          noLineno--;

                          NestLevel -= LEVEL_UNIT;
                          currBlockno = STACK_POP(blockNum);
                        }
#line 5534 "y.tab.c" /* yacc.c:1646  */
    break;

  case 334:
#line 2348 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = NULL; seqPointNo++; }
#line 5540 "y.tab.c" /* yacc.c:1646  */
    break;

  case 335:
#line 2349 "SDCC.y" /* yacc.c:1646  */
    { (yyval.asts) = (yyvsp[0].asts); seqPointNo++; }
#line 5546 "y.tab.c" /* yacc.c:1646  */
    break;

  case 336:
#line 2353 "SDCC.y" /* yacc.c:1646  */
    {
                              if (inCriticalBlock) {
                                werror(E_INVALID_CRITICAL);
                                (yyval.asts) = NULL;
                              } else {
                                (yyvsp[-1].sym)->islbl = 1;
                                (yyval.asts) = newAst_VALUE(symbolVal((yyvsp[-1].sym)));
                                (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
                              }
                           }
#line 5561 "y.tab.c" /* yacc.c:1646  */
    break;

  case 337:
#line 2363 "SDCC.y" /* yacc.c:1646  */
    {
       /* make sure continue is in context */
       if (STACK_EMPTY(continueStack) || STACK_PEEK(continueStack) == NULL) {
           werror(E_BREAK_CONTEXT);
           (yyval.asts) = NULL;
       }
       else {
           (yyval.asts) = newAst_VALUE(symbolVal(STACK_PEEK(continueStack)));
           (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
           /* mark the continue label as referenced */
           STACK_PEEK(continueStack)->isref = 1;
       }
   }
#line 5579 "y.tab.c" /* yacc.c:1646  */
    break;

  case 338:
#line 2376 "SDCC.y" /* yacc.c:1646  */
    {
       if (STACK_EMPTY(breakStack) || STACK_PEEK(breakStack) == NULL) {
           werror(E_BREAK_CONTEXT);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newAst_VALUE(symbolVal(STACK_PEEK(breakStack)));
           (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
           STACK_PEEK(breakStack)->isref = 1;
       }
   }
#line 5594 "y.tab.c" /* yacc.c:1646  */
    break;

  case 339:
#line 2386 "SDCC.y" /* yacc.c:1646  */
    {
       seqPointNo++;
       if (inCriticalBlock) {
           werror(E_INVALID_CRITICAL);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newNode(RETURN,NULL,NULL);
       }
   }
#line 5608 "y.tab.c" /* yacc.c:1646  */
    break;

  case 340:
#line 2395 "SDCC.y" /* yacc.c:1646  */
    {
       seqPointNo++;
       if (inCriticalBlock) {
           werror(E_INVALID_CRITICAL);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newNode(RETURN,NULL,(yyvsp[-1].asts));
       }
   }
#line 5622 "y.tab.c" /* yacc.c:1646  */
    break;

  case 342:
#line 2412 "SDCC.y" /* yacc.c:1646  */
    {
        ast *ex;

        seqPointNo++;
        ex = newNode(INLINEASM, NULL, NULL);
        ex->values.inlineasm = strdup(copyStr ((yyvsp[-2].yystr), NULL));
        seqPointNo++;
        (yyval.asts) = ex;
     }
#line 5636 "y.tab.c" /* yacc.c:1646  */
    break;

  case 343:
#line 2422 "SDCC.y" /* yacc.c:1646  */
    {
        ast *ex;

        seqPointNo++;
        ex = newNode(INLINEASM, NULL, NULL);
        ex->values.inlineasm = strdup((yyvsp[-1].yystr));
        seqPointNo++;
        (yyval.asts) = ex;
      }
#line 5650 "y.tab.c" /* yacc.c:1646  */
    break;

  case 344:
#line 2434 "SDCC.y" /* yacc.c:1646  */
    {
     symbol *sym;
     if ((sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym))) && sym->level == (yyvsp[-1].sym)->level)
       werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
     if (!findSymWithLevel (SymbolTab, (yyvsp[-2].sym)))
       werror (E_ID_UNDEF, (yyvsp[-2].sym)->name);
     addSym (AddrspaceTab, (yyvsp[-1].sym), (yyvsp[-1].sym)->name, (yyvsp[-1].sym)->level, (yyvsp[-1].sym)->block, 0);
     sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym));
     sym->addressmod[0] = findSymWithLevel (SymbolTab, (yyvsp[-2].sym));
     sym->addressmod[1] = 0;
   }
#line 5666 "y.tab.c" /* yacc.c:1646  */
    break;

  case 345:
#line 2445 "SDCC.y" /* yacc.c:1646  */
    {
     symbol *sym;
     sym_link *type;
     if ((sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym))) && sym->level == (yyvsp[-1].sym)->level)
       werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
     if (!findSymWithLevel (SymbolTab, (yyvsp[-3].sym)))
       werror (E_ID_UNDEF, (yyvsp[-3].sym)->name);
     addSym (AddrspaceTab, (yyvsp[-1].sym), (yyvsp[-1].sym)->name, (yyvsp[-1].sym)->level, (yyvsp[-1].sym)->block, 0);
     sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym));
     sym->addressmod[0] = findSymWithLevel (SymbolTab, (yyvsp[-3].sym));
     sym->addressmod[1] = 0;
     type = newLink (SPECIFIER);
     SPEC_CONST(type) = 1;
     sym->type = sym->etype = type;
   }
#line 5686 "y.tab.c" /* yacc.c:1646  */
    break;

  case 346:
#line 2463 "SDCC.y" /* yacc.c:1646  */
    { (yyval.sym) = newSymbol ((yyvsp[0].yychar), NestLevel); }
#line 5692 "y.tab.c" /* yacc.c:1646  */
    break;


#line 5696 "y.tab.c" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 2465 "SDCC.y" /* yacc.c:1906  */

