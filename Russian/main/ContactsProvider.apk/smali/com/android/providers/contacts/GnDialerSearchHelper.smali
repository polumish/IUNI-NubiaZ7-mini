.class public Lcom/android/providers/contacts/GnDialerSearchHelper;
.super Ljava/lang/Object;
.source "GnDialerSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/GnDialerSearchHelper$1;,
        Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchResultColumns;,
        Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;,
        Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewColumns;,
        Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchColumns;,
        Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    }
.end annotation


# static fields
.field private static final DIALER_KEY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final GN_DIALER_SEARCH_TABLE:Ljava/lang/String; = "gn_dialer_search"

.field public static final GN_DIALER_SEARCH_VIEW:Ljava/lang/String; = "view_gn_dialer_search"

.field private static final MAX_NUMBER_INDEX_START:I = 0x10

.field private static final QUERY_ABC_PREFIX:Ljava/lang/String; = "auroracontactqueryfordialerprefix"

.field private static final RUSSIAN_ARRAY:[[I

.field private static final SKIP_ONE_NUMBER_SEARCH:Z = true

.field private static final T9_ARRAY:[[C

.field private static final TAG:Ljava/lang/String; = "GnDialerSearchHelper"

.field private static final TEMP_DIALER_SEARCH_VIEW_TABLE:Ljava/lang/String; = "gn_dialer_search_temp"

.field private static mGnDialerSearchHelper:Lcom/android/providers/contacts/GnDialerSearchHelper;


# instance fields
.field public final POLYPHONIC_SEPARATOR:C

.field public final POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

.field private mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mGnDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mGnDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mSearchRetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x9

    const/4 v8, 0x7

    const/4 v7, 0x2

    .line 396
    new-instance v4, Lcom/android/providers/contacts/GnDialerSearchHelper;

    invoke-direct {v4}, Lcom/android/providers/contacts/GnDialerSearchHelper;-><init>()V

    sput-object v4, Lcom/android/providers/contacts/GnDialerSearchHelper;->mGnDialerSearchHelper:Lcom/android/providers/contacts/GnDialerSearchHelper;

    .line 1125
    const/16 v4, 0xa

    new-array v4, v4, [[C

    new-array v5, v7, [C

    fill-array-data v5, :array_0

    aput-object v5, v4, v10

    new-array v5, v11, [C

    const/16 v6, 0x31

    aput-char v6, v5, v10

    aput-object v5, v4, v11

    new-array v5, v8, [C

    fill-array-data v5, :array_1

    aput-object v5, v4, v7

    const/4 v5, 0x3

    new-array v6, v8, [C

    fill-array-data v6, :array_2

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v6, v8, [C

    fill-array-data v6, :array_3

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-array v6, v8, [C

    fill-array-data v6, :array_4

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v8, [C

    fill-array-data v6, :array_5

    aput-object v6, v4, v5

    new-array v5, v9, [C

    fill-array-data v5, :array_6

    aput-object v5, v4, v8

    const/16 v5, 0x8

    new-array v6, v8, [C

    fill-array-data v6, :array_7

    aput-object v6, v4, v5

    new-array v5, v9, [C

    fill-array-data v5, :array_8

    aput-object v5, v4, v9

    sput-object v4, Lcom/android/providers/contacts/GnDialerSearchHelper;->T9_ARRAY:[[C

    .line 1138
    const/16 v4, 0x20

    new-array v4, v4, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_9

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_a

    aput-object v5, v4, v11

    new-array v5, v7, [I

    fill-array-data v5, :array_b

    aput-object v5, v4, v7

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_c

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v6, v7, [I

    fill-array-data v6, :array_d

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-array v6, v7, [I

    fill-array-data v6, :array_e

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v7, [I

    fill-array-data v6, :array_f

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_10

    aput-object v5, v4, v8

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_11

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_12

    aput-object v5, v4, v9

    const/16 v5, 0xa

    new-array v6, v7, [I

    fill-array-data v6, :array_13

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-array v6, v7, [I

    fill-array-data v6, :array_14

    aput-object v6, v4, v5

    const/16 v5, 0xc

    new-array v6, v7, [I

    fill-array-data v6, :array_15

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-array v6, v7, [I

    fill-array-data v6, :array_16

    aput-object v6, v4, v5

    const/16 v5, 0xe

    new-array v6, v7, [I

    fill-array-data v6, :array_17

    aput-object v6, v4, v5

    const/16 v5, 0xf

    new-array v6, v7, [I

    fill-array-data v6, :array_18

    aput-object v6, v4, v5

    const/16 v5, 0x10

    new-array v6, v7, [I

    fill-array-data v6, :array_19

    aput-object v6, v4, v5

    const/16 v5, 0x11

    new-array v6, v7, [I

    fill-array-data v6, :array_1a

    aput-object v6, v4, v5

    const/16 v5, 0x12

    new-array v6, v7, [I

    fill-array-data v6, :array_1b

    aput-object v6, v4, v5

    const/16 v5, 0x13

    new-array v6, v7, [I

    fill-array-data v6, :array_1c

    aput-object v6, v4, v5

    const/16 v5, 0x14

    new-array v6, v7, [I

    fill-array-data v6, :array_1d

    aput-object v6, v4, v5

    const/16 v5, 0x15

    new-array v6, v7, [I

    fill-array-data v6, :array_1e

    aput-object v6, v4, v5

    const/16 v5, 0x16

    new-array v6, v7, [I

    fill-array-data v6, :array_1f

    aput-object v6, v4, v5

    const/16 v5, 0x17

    new-array v6, v7, [I

    fill-array-data v6, :array_20

    aput-object v6, v4, v5

    const/16 v5, 0x18

    new-array v6, v7, [I

    fill-array-data v6, :array_21

    aput-object v6, v4, v5

    const/16 v5, 0x19

    new-array v6, v7, [I

    fill-array-data v6, :array_22

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    new-array v6, v7, [I

    fill-array-data v6, :array_23

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    new-array v6, v7, [I

    fill-array-data v6, :array_24

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    new-array v6, v7, [I

    fill-array-data v6, :array_25

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    new-array v6, v7, [I

    fill-array-data v6, :array_26

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    new-array v6, v7, [I

    fill-array-data v6, :array_27

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    new-array v6, v7, [I

    fill-array-data v6, :array_28

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/providers/contacts/GnDialerSearchHelper;->RUSSIAN_ARRAY:[[I

    .line 1149
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/providers/contacts/GnDialerSearchHelper;->DIALER_KEY_MAP:Ljava/util/HashMap;

    .line 1151
    const/4 v2, 0x0

    .local v2, "v":I
    :goto_0
    if-gt v2, v9, :cond_1

    .line 1152
    add-int/lit8 v4, v2, 0x30

    int-to-char v3, v4

    .line 1153
    .local v3, "value":C
    const/4 v0, 0x0

    .local v0, "j":I
    sget-object v4, Lcom/android/providers/contacts/GnDialerSearchHelper;->T9_ARRAY:[[C

    aget-object v4, v4, v2

    array-length v1, v4

    .local v1, "len":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1154
    sget-object v4, Lcom/android/providers/contacts/GnDialerSearchHelper;->DIALER_KEY_MAP:Ljava/util/HashMap;

    sget-object v5, Lcom/android/providers/contacts/GnDialerSearchHelper;->T9_ARRAY:[[C

    aget-object v5, v5, v2

    aget-char v5, v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1151
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1158
    .end local v0    # "j":I
    .end local v1    # "len":I
    .end local v3    # "value":C
    :cond_1
    sget-object v4, Lcom/android/providers/contacts/GnDialerSearchHelper;->DIALER_KEY_MAP:Ljava/util/HashMap;

    const/16 v5, 0x2a

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/16 v6, 0x2a

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v4, Lcom/android/providers/contacts/GnDialerSearchHelper;->DIALER_KEY_MAP:Ljava/util/HashMap;

    const/16 v5, 0x2b

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/16 v6, 0x2b

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    sget-boolean v4, Lcom/android/providers/contacts/ContactsProvidersApplication;->sIsGnFlySupport:Z

    if-eqz v4, :cond_3

    .line 1162
    const/4 v2, 0x2

    :goto_2
    if-gt v2, v9, :cond_3

    .line 1163
    add-int/lit8 v4, v2, 0x30

    int-to-char v3, v4

    .line 1164
    .restart local v3    # "value":C
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v0, v4, -0x8

    .restart local v0    # "j":I
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v1, v4, -0x5

    .restart local v1    # "len":I
    :goto_3
    if-ge v0, v1, :cond_2

    .line 1165
    sget-object v4, Lcom/android/providers/contacts/GnDialerSearchHelper;->DIALER_KEY_MAP:Ljava/util/HashMap;

    sget-object v5, Lcom/android/providers/contacts/GnDialerSearchHelper;->RUSSIAN_ARRAY:[[I

    aget-object v5, v5, v0

    aget v5, v5, v10

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    sget-object v4, Lcom/android/providers/contacts/GnDialerSearchHelper;->DIALER_KEY_MAP:Ljava/util/HashMap;

    sget-object v5, Lcom/android/providers/contacts/GnDialerSearchHelper;->RUSSIAN_ARRAY:[[I

    aget-object v5, v5, v0

    aget v5, v5, v11

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1162
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1171
    .end local v0    # "j":I
    .end local v1    # "len":I
    .end local v3    # "value":C
    :cond_3
    sget-object v4, Lcom/android/providers/contacts/GnDialerSearchHelper;->DIALER_KEY_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->setLegalCharactSet(Ljava/util/Set;)V

    .line 1172
    return-void

    .line 1125
    :array_0
    .array-data 2
        0x30s
        0x2bs
    .end array-data

    :array_1
    .array-data 2
        0x32s
        0x61s
        0x62s
        0x63s
        0x41s
        0x42s
        0x43s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x33s
        0x64s
        0x65s
        0x66s
        0x44s
        0x45s
        0x46s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x34s
        0x67s
        0x68s
        0x69s
        0x47s
        0x48s
        0x49s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x35s
        0x6as
        0x6bs
        0x6cs
        0x4as
        0x4bs
        0x4cs
    .end array-data

    nop

    :array_5
    .array-data 2
        0x36s
        0x6ds
        0x6es
        0x6fs
        0x4ds
        0x4es
        0x4fs
    .end array-data

    nop

    :array_6
    .array-data 2
        0x37s
        0x70s
        0x71s
        0x72s
        0x73s
        0x50s
        0x51s
        0x52s
        0x53s
    .end array-data

    nop

    :array_7
    .array-data 2
        0x38s
        0x74s
        0x75s
        0x76s
        0x54s
        0x55s
        0x56s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x39s
        0x77s
        0x78s
        0x79s
        0x7as
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    .line 1138
    nop

    :array_9
    .array-data 4
        0x410
        0x430
    .end array-data

    :array_a
    .array-data 4
        0x411
        0x431
    .end array-data

    :array_b
    .array-data 4
        0x412
        0x432
    .end array-data

    :array_c
    .array-data 4
        0x413
        0x433
    .end array-data

    :array_d
    .array-data 4
        0x414
        0x434
    .end array-data

    :array_e
    .array-data 4
        0x415
        0x435
    .end array-data

    :array_f
    .array-data 4
        0x416
        0x436
    .end array-data

    :array_10
    .array-data 4
        0x417
        0x437
    .end array-data

    :array_11
    .array-data 4
        0x418
        0x438
    .end array-data

    :array_12
    .array-data 4
        0x419
        0x439
    .end array-data

    :array_13
    .array-data 4
        0x41a
        0x43a
    .end array-data

    :array_14
    .array-data 4
        0x41b
        0x43b
    .end array-data

    :array_15
    .array-data 4
        0x41c
        0x43c
    .end array-data

    :array_16
    .array-data 4
        0x41d
        0x43d
    .end array-data

    :array_17
    .array-data 4
        0x41e
        0x43e
    .end array-data

    :array_18
    .array-data 4
        0x41f
        0x43f
    .end array-data

    :array_19
    .array-data 4
        0x420
        0x440
    .end array-data

    :array_1a
    .array-data 4
        0x421
        0x441
    .end array-data

    :array_1b
    .array-data 4
        0x422
        0x442
    .end array-data

    :array_1c
    .array-data 4
        0x423
        0x443
    .end array-data

    :array_1d
    .array-data 4
        0x424
        0x444
    .end array-data

    :array_1e
    .array-data 4
        0x425
        0x445
    .end array-data

    :array_1f
    .array-data 4
        0x426
        0x446
    .end array-data

    :array_20
    .array-data 4
        0x427
        0x447
    .end array-data

    :array_21
    .array-data 4
        0x428
        0x448
    .end array-data

    :array_22
    .array-data 4
        0x429
        0x449
    .end array-data

    :array_23
    .array-data 4
        0x42a
        0x44a
    .end array-data

    :array_24
    .array-data 4
        0x42b
        0x44b
    .end array-data

    :array_25
    .array-data 4
        0x42c
        0x44c
    .end array-data

    :array_26
    .array-data 4
        0x42d
        0x44d
    .end array-data

    :array_27
    .array-data 4
        0x42e
        0x44e
    .end array-data

    :array_28
    .array-data 4
        0x42f
        0x44f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mSearchRetCache:Ljava/util/Map;

    .line 995
    const/16 v0, 0xfe

    iput-char v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->POLYPHONIC_SEPARATOR:C

    .line 996
    sget-object v0, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    .line 400
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/GnDialerSearchHelper;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/contacts/GnDialerSearchHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->indexOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V
    .locals 4
    .param p2, "sdr"    # Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;",
            ">;",
            "Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;",
            ")V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    iget v2, p2, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mTimesContacted:I

    if-lez v2, :cond_1

    .line 480
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "size":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 481
    iget v3, p2, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mTimesContacted:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;

    iget v2, v2, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mTimesContacted:I

    if-le v3, v2, :cond_0

    .line 482
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 489
    .end local v0    # "i":I
    .end local v1    # "size":I
    :goto_1
    return-void

    .line 480
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private bindToSqliteStatement(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;)V
    .locals 24
    .param p1, "sqliteStatement"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "rawContactId"    # J
    .param p4, "displayNamePrimary"    # Ljava/lang/String;

    .prologue
    .line 1000
    const/16 v21, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-static {v0, v1}, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->translateMulti(Ljava/lang/String;Z)[[Ljava/lang/String;

    move-result-object v15

    .line 1002
    .local v15, "pinyinArrays":[[Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-static {v0, v1}, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->translateMulti(Ljava/lang/String;Z)[[Ljava/lang/String;

    move-result-object v16

    .line 1005
    .local v16, "pinyinArraysHighlight":[[Ljava/lang/String;
    array-length v0, v15

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1006
    const/16 v21, 0x0

    aget-object v13, v15, v21

    .line 1007
    .local v13, "pinyinArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getQuanPinyin([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1008
    .local v17, "quanPinyin":Ljava/lang/String;
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1009
    const/16 v21, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getJianPinyin([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1010
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getQuanT9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1011
    const/16 v21, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getJianT9([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1019
    const/16 v21, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getMatchMapQuan([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1020
    const/16 v21, 0x6

    const/16 v22, 0x0

    aget-object v22, v16, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getMatchMapJianHighlight([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1021
    const/16 v21, 0x7

    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1022
    const/16 v21, 0x8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1023
    const/16 v21, 0x9

    const/16 v22, 0x0

    aget-object v22, v16, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getQuanPinyin([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1024
    const/16 v21, 0xa

    const/16 v22, 0x0

    aget-object v22, v16, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getMatchMapQuanHighlight([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1090
    .end local v13    # "pinyinArray":[Ljava/lang/String;
    .end local v17    # "quanPinyin":Ljava/lang/String;
    :goto_0
    const/16 v21, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1091
    return-void

    .line 1028
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1029
    .local v17, "quanPinyin":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    .local v6, "jianPinyin":Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    .local v19, "quanT9":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1032
    .local v7, "jianT9":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1033
    .local v10, "matchMapQuan":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1034
    .local v9, "matchMapJian":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1036
    .local v20, "sortKey":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1037
    .local v18, "quanPinyinHighlight":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    .local v11, "matchMapQuanHighlight":Ljava/lang/StringBuilder;
    move-object v4, v15

    .local v4, "arr$":[[Ljava/lang/String;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v13, v4, v5

    .line 1040
    .restart local v13    # "pinyinArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getQuanPinyin([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1042
    .local v12, "pinyin":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xfe

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1043
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getJianPinyin([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xfe

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1044
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getQuanT9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xfe

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1045
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getJianT9([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xfe

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1046
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getMatchMapQuan([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xfe

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1052
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xfe

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1039
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1056
    .end local v12    # "pinyin":Ljava/lang/String;
    .end local v13    # "pinyinArray":[Ljava/lang/String;
    :cond_1
    move-object/from16 v4, v16

    array-length v8, v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v8, :cond_2

    aget-object v14, v4, v5

    .line 1057
    .local v14, "pinyinArrayHighlight":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getQuanPinyin([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1058
    .restart local v12    # "pinyin":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xfe

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1059
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getMatchMapQuanHighlight([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xfe

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1060
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getMatchMapJianHighlight([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xfe

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1056
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1064
    .end local v12    # "pinyin":Ljava/lang/String;
    .end local v14    # "pinyinArrayHighlight":[Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1067
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1069
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1070
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1071
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1072
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1073
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1075
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1076
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1078
    const/16 v21, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1079
    const/16 v21, 0x2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1080
    const/16 v21, 0x3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1081
    const/16 v21, 0x4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1082
    const/16 v21, 0x5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1083
    const/16 v21, 0x6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1084
    const/16 v21, 0x7

    const-wide/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1085
    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1086
    const/16 v21, 0x9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1087
    const/16 v21, 0xa

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private clearCache()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mSearchRetCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 408
    return-void
.end method

.method private clearCache(Ljava/lang/String;)V
    .locals 3
    .param p1, "searchKey"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mSearchRetCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 423
    :cond_0
    return-void

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mSearchRetCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 417
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 419
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 420
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private getCache(Ljava/lang/String;)Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    .locals 4
    .param p1, "searchKey"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mSearchRetCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;

    .line 432
    .local v0, "cache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    if-eqz v0, :cond_0

    .line 441
    .end local v0    # "cache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    :goto_0
    return-object v0

    .line 436
    .restart local v0    # "cache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mSearchRetCache:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;

    move-object v0, v1

    goto :goto_0

    .line 441
    .end local v0    # "cache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/providers/contacts/GnDialerSearchHelper;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mGnDialerSearchHelper:Lcom/android/providers/contacts/GnDialerSearchHelper;

    return-object v0
.end method

.method private getJianPinyin([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pinyinArray"    # [Ljava/lang/String;

    .prologue
    .line 1186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1187
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1188
    .local v3, "p":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1190
    .end local v3    # "p":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getJianT9([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pinyinArray"    # [Ljava/lang/String;

    .prologue
    .line 1194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1195
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1196
    .local v4, "p":Ljava/lang/String;
    sget-object v6, Lcom/android/providers/contacts/GnDialerSearchHelper;->DIALER_KEY_MAP:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 1197
    .local v1, "cValue":Ljava/lang/Character;
    if-eqz v1, :cond_0

    .line 1198
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1195
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1201
    .end local v1    # "cValue":Ljava/lang/Character;
    .end local v4    # "p":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getMatchMapJian([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pinyinArray"    # [Ljava/lang/String;

    .prologue
    .line 1230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1231
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1232
    .local v2, "index":I
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1233
    .local v4, "p":Ljava/lang/String;
    int-to-char v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    add-int/lit8 v6, v2, 0x1

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 1232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1237
    .end local v4    # "p":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getMatchMapJianHighlight([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pinyinArray"    # [Ljava/lang/String;

    .prologue
    .line 1259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1260
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1261
    .local v2, "index":I
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 1262
    .local v5, "p":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->firstIsFuHao(Ljava/lang/String;)Z

    move-result v3

    .line 1263
    .local v3, "isFuHao":Z
    if-eqz v3, :cond_0

    .line 1264
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    .line 1261
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1268
    :cond_0
    int-to-char v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1269
    add-int/lit8 v7, v2, 0x1

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_1

    .line 1272
    .end local v3    # "isFuHao":Z
    .end local v5    # "p":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getMatchMapQuan([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pinyinArray"    # [Ljava/lang/String;

    .prologue
    .line 1219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1220
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1221
    .local v2, "index":I
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1222
    .local v4, "p":Ljava/lang/String;
    int-to-char v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1223
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 1224
    int-to-char v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1226
    .end local v4    # "p":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getMatchMapQuanHighlight([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pinyinArray"    # [Ljava/lang/String;

    .prologue
    .line 1242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1243
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1244
    .local v2, "index":I
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 1245
    .local v5, "p":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->firstIsFuHao(Ljava/lang/String;)Z

    move-result v3

    .line 1246
    .local v3, "isFuHao":Z
    if-eqz v3, :cond_0

    .line 1247
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    .line 1244
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1251
    :cond_0
    int-to-char v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    .line 1253
    int-to-char v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1255
    .end local v3    # "isFuHao":Z
    .end local v5    # "p":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getQuanT9(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 1206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1207
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1208
    .local v3, "charArray":[C
    move-object v0, v3

    .local v0, "arr$":[C
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-char v1, v0, v4

    .line 1209
    .local v1, "c":C
    sget-object v7, Lcom/android/providers/contacts/GnDialerSearchHelper;->DIALER_KEY_MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 1210
    .local v2, "cValue":Ljava/lang/Character;
    if-eqz v2, :cond_0

    .line 1211
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1208
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1214
    .end local v1    # "c":C
    .end local v2    # "cValue":Ljava/lang/Character;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private final indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "sourceStr"    # Ljava/lang/String;
    .param p2, "targetStr"    # Ljava/lang/String;

    .prologue
    .line 1526
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 1527
    .local v6, "source":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1528
    .local v7, "sourceCount":I
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 1529
    .local v9, "target":[C
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    .line 1531
    .local v10, "targetCount":I
    if-gtz v7, :cond_1

    .line 1532
    if-nez v10, :cond_0

    .line 1573
    .end local v7    # "sourceCount":I
    :goto_0
    return v7

    .line 1532
    .restart local v7    # "sourceCount":I
    :cond_0
    const/4 v7, -0x1

    goto :goto_0

    .line 1535
    :cond_1
    if-nez v10, :cond_2

    .line 1536
    const/4 v7, 0x0

    goto :goto_0

    .line 1539
    :cond_2
    const/4 v11, 0x0

    aget-char v1, v9, v11

    .line 1540
    .local v1, "first":C
    sub-int v5, v7, v10

    .line 1541
    .local v5, "max":I
    const/4 v8, 0x0

    .line 1542
    .local v8, "specialOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-gt v2, v5, :cond_c

    .line 1544
    aget-char v11, v6, v2

    if-eq v11, v1, :cond_6

    .line 1546
    :cond_3
    const/16 v11, 0x20

    aget-char v12, v6, v2

    if-eq v11, v12, :cond_4

    const/16 v11, 0x2d

    aget-char v12, v6, v2

    if-ne v11, v12, :cond_5

    .line 1547
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 1549
    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v5, :cond_6

    aget-char v11, v6, v2

    if-ne v11, v1, :cond_3

    .line 1553
    :cond_6
    if-gt v2, v5, :cond_b

    .line 1554
    add-int/lit8 v3, v2, 0x1

    .line 1555
    .local v3, "j":I
    add-int v11, v3, v10

    add-int/lit8 v0, v11, -0x1

    .line 1556
    .local v0, "end":I
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_2
    if-ge v3, v0, :cond_9

    .line 1557
    :goto_3
    const/16 v11, 0x20

    aget-char v12, v6, v3

    if-eq v11, v12, :cond_7

    const/16 v11, 0x2d

    aget-char v12, v6, v3

    if-ne v11, v12, :cond_8

    :cond_7
    if-ge v3, v0, :cond_8

    .line 1558
    add-int/lit8 v3, v3, 0x1

    .line 1559
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1562
    :cond_8
    aget-char v11, v6, v3

    aget-char v12, v9, v4

    if-eq v11, v12, :cond_a

    .line 1567
    :cond_9
    if-ne v3, v0, :cond_b

    .line 1569
    sub-int v7, v2, v8

    goto :goto_0

    .line 1556
    :cond_a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1542
    .end local v0    # "end":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1573
    :cond_c
    const/4 v7, -0x1

    goto :goto_0
.end method

.method private writeCache(Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;)V
    .locals 2
    .param p1, "searchRetCache"    # Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mSearchRetCache:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mSearchKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    return-void
.end method


# virtual methods
.method public createGnDialerSearchTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 780
    const-string v0, "DROP TABLE IF EXISTS gn_dialer_search;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 781
    const-string v0, "CREATE TABLE gn_dialer_search (_id INTEGER PRIMARY KEY AUTOINCREMENT,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,quan_pinyin VARCHAR DEFAULT NULL,jian_pinyin VARCHAR DEFAULT NULL,quan_t9 VARCHAR DEFAULT NULL,jian_t9 VARCHAR DEFAULT NULL,match_map_quan VARCHAR DEFAULT NULL,match_map_jian VARCHAR DEFAULT NULL,polyphonic INTEGER DEFAULT 0,sort_key VARCHAR DEFAULT NULL,quan_pinyin_highlight VARCHAR DEFAULT NULL,match_map_quan_highlight VARCHAR DEFAULT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 797
    const-string v0, "CREATE INDEX gn_dialer_search_raw_contact_id_index ON gn_dialer_search (raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public createGnDialerSearchView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 803
    const-string v4, "DROP VIEW IF EXISTS view_gn_dialer_search;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 804
    const-string v0, "contacts_detail"

    .line 805
    .local v0, "GDS_DETAIL_TABLE":Ljava/lang/String;
    const-string v1, "number_data"

    .line 806
    .local v1, "GDS_NUMBER_TABLE":Ljava/lang/String;
    const-string v2, "raw_contact_id"

    .line 808
    .local v2, "RAW_CONTACT_ID":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT gn_dialer_search.raw_contact_id AS vds_raw_contact_id,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contact_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_contact_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "lookup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_lookup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "display_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_phone_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_phone_number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_phone_number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "photo_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_photo_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "indicate_phone_or_sim_contact"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_indicate_phone_sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "index_in_sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_index_in_sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "quan_pinyin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_quan_pinyin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "jian_pinyin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_jian_pinyin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "times_contacted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_times_contacted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "jian_t9"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_jian_t9"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "quan_t9"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_quan_t9"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "match_map_quan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_match_map_quan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "match_map_jian"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_match_map_jian"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "polyphonic"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_polyphonic"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sort_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_sort_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "has_phone_number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_has_phone_number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mimetype_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_mimetype_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_account_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_account_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "in_visible_group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_in_visible_group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "quan_pinyin_highlight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_quan_pinyin_highlight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "match_map_quan_highlight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_match_map_quan_highlight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "auto_record"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_auto_record"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LEFT JOIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contact_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "lookup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "lookup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "photo_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "photo_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "times_contacted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "times_contacted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "has_phone_number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "has_phone_number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "display_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "display_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "indicate_phone_or_sim_contact"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "indicate_phone_or_sim_contact"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "index_in_sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "index_in_sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "view_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "in_visible_group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "in_visible_group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LEFT JOIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LEFT JOIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "view_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contact_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "view_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LEFT JOIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vds_phone_number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mimetype_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mimetype_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "auto_record"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mimetype_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in (\'5\', \'7\') ) AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gn_dialer_search"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "VIEW_SELECT":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE VIEW view_gn_dialer_search AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method public deleteNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 1116
    const-string v0, "DELETE FROM gn_dialer_search WHERE raw_contact_id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1121
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1122
    return-void
.end method

.method public getQuanPinyin([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pinyinArray"    # [Ljava/lang/String;

    .prologue
    .line 1175
    if-eqz p1, :cond_1

    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1177
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1178
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1180
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1182
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    :cond_1
    const-string v5, ""

    goto :goto_1
.end method

.method public init(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 445
    const-string v0, "James"

    const-string v1, "GnDialerSearchHelperV2  init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0}, Lcom/android/providers/contacts/GnDialerSearchHelper;->clearCache()V

    .line 448
    const-string v0, "DROP TABLE IF EXISTS gn_dialer_search_temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const-string v0, "CREATE TEMP TABLE  gn_dialer_search_temp AS SELECT * FROM view_gn_dialer_search"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public insertNameForGnDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "displayNamePrimary"    # Ljava/lang/String;

    .prologue
    .line 941
    if-nez p4, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mGnDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_3

    .line 946
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 948
    :try_start_0
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->mGnContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p1

    .line 953
    :goto_1
    const-string v2, "GnDialerSearchHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1:try open  db.isOpen() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_2
    const-string v2, "INSERT INTO gn_dialer_search(quan_pinyin,jian_pinyin,quan_t9,jian_t9,match_map_quan,match_map_jian,polyphonic,sort_key,quan_pinyin_highlight,match_map_quan_highlight,raw_contact_id) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mGnDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 974
    :cond_3
    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mGnDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/android/providers/contacts/GnDialerSearchHelper;->bindToSqliteStatement(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;)V

    .line 976
    const-string v2, "GnDialerSearchHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db.isOpen() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mGnDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 981
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 983
    :try_start_2
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->mGnContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 984
    const-string v2, "GnDialerSearchHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2:try open  db.isOpen() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mGnDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 988
    :catch_1
    move-exception v1

    .line 989
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 949
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 950
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;

    .prologue
    .line 454
    const-string v5, ""

    .line 455
    .local v5, "searchKey":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 456
    .local v6, "uriStr":Ljava/lang/String;
    const-string v7, "gn_dialer_search/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    .line 457
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 462
    const/4 v3, 0x1

    .line 463
    .local v3, "isAllDigit":Z
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-char v1, v0, v2

    .line 464
    .local v1, "c":C
    const/16 v7, 0x61

    if-gt v7, v1, :cond_0

    const/16 v7, 0x7a

    if-le v1, v7, :cond_1

    :cond_0
    const/16 v7, 0x41

    if-gt v7, v1, :cond_4

    const/16 v7, 0x5a

    if-gt v1, v7, :cond_4

    .line 465
    :cond_1
    const/4 v3, 0x0

    .line 466
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 471
    .end local v1    # "c":C
    :cond_2
    if-eqz v3, :cond_5

    .line 472
    invoke-virtual {p0, p1, v5, p3}, Lcom/android/providers/contacts/GnDialerSearchHelper;->queryDigit(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 474
    .end local v0    # "arr$":[C
    .end local v2    # "i$":I
    .end local v3    # "isAllDigit":Z
    .end local v4    # "len$":I
    :goto_1
    return-object v7

    .line 459
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 463
    .restart local v0    # "arr$":[C
    .restart local v1    # "c":C
    .restart local v2    # "i$":I
    .restart local v3    # "isAllDigit":Z
    .restart local v4    # "len$":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {p0, p1, v5, p3}, Lcom/android/providers/contacts/GnDialerSearchHelper;->queryAbc(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1
.end method

.method protected queryAbc(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 49
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "searchKey"    # Ljava/lang/String;
    .param p3, "selec"    # Ljava/lang/String;

    .prologue
    .line 1278
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 1279
    .local v12, "KEY_LEN":I
    const/16 v16, 0x0

    .line 1280
    .local v16, "dialSearchOnly":Z
    const/16 v44, 0x0

    .line 1281
    .local v44, "single":Z
    const-string v3, "auroracontactqueryfordialerprefix"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1282
    const/16 v44, 0x1

    .line 1283
    const-string v3, "auroracontactqueryfordialerprefix"

    const-string v4, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1284
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 1289
    :goto_0
    const/16 v40, 0x0

    .line 1291
    .local v40, "queryCursor":Landroid/database/Cursor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(vds_jian_pinyin LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1293
    .local v6, "selection":Ljava/lang/String;
    const/16 v45, 0x0

    .line 1294
    .local v45, "skip":Z
    const/4 v3, 0x1

    if-le v12, v3, :cond_0

    .line 1295
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getCache(Ljava/lang/String;)Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;

    move-result-object v43

    .line 1296
    .local v43, "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    if-eqz v43, :cond_a

    invoke-virtual/range {v43 .. v43}, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v45, 0x1

    .line 1297
    :goto_1
    if-nez v45, :cond_0

    .line 1298
    if-eqz v43, :cond_0

    .line 1299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_raw_contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v43 .. v43}, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->getRawContactIds()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1306
    .end local v43    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    :cond_0
    if-eqz v16, :cond_1

    .line 1307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_mimetype_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 5)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1311
    :cond_1
    if-eqz p3, :cond_2

    const-string v3, " "

    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1315
    :cond_2
    if-nez v45, :cond_3

    .line 1316
    const-string v4, "gn_dialer_search_temp"

    sget-object v5, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewColumns;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "vds_sort_key"

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 1321
    :cond_3
    const/16 v34, 0x0

    .line 1322
    .local v34, "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    const/16 v41, 0x0

    .line 1324
    .local v41, "resultCursor":Landroid/database/MatrixCursor;
    if-eqz v40, :cond_10

    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1325
    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    .line 1326
    .local v20, "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    .line 1327
    .local v18, "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    .line 1328
    .local v19, "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    new-instance v38, Ljava/util/LinkedList;

    invoke-direct/range {v38 .. v38}, Ljava/util/LinkedList;-><init>()V

    .line 1332
    .local v38, "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    :cond_4
    :try_start_0
    new-instance v42, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;

    const/4 v3, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;-><init>(Lcom/android/providers/contacts/GnDialerSearchHelper;Lcom/android/providers/contacts/GnDialerSearchHelper$1;)V

    .line 1333
    .local v42, "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->read(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1334
    const/16 v23, -0x1

    .line 1336
    .local v23, "index":I
    :cond_5
    move-object/from16 v0, v42

    iget-object v11, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianPinyin:Ljava/lang/String;

    .line 1337
    .local v11, "JIAN":Ljava/lang/String;
    move-object/from16 v0, v42

    iget-object v13, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mSortKey:Ljava/lang/String;

    .line 1339
    .local v13, "QUAN":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1340
    .local v24, "isJianMatch":Z
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianT9Len:I

    if-lt v3, v12, :cond_6

    .line 1341
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 1342
    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_b

    const/16 v24, 0x1

    .line 1345
    :cond_6
    :goto_2
    if-eqz v24, :cond_c

    .line 1346
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapJian:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    mul-int/lit8 v4, v23, 0x2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, v23

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v39

    .line 1348
    .local v39, "pinyinHighlight":[C
    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->setPinyinHighlight([C)V

    .line 1353
    .end local v39    # "pinyinHighlight":[C
    :goto_3
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuan:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v31

    .line 1354
    .local v31, "matchMapQuan":[C
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuanHighlight:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v32

    .line 1356
    .local v32, "matchMapQuanHighlight":[C
    if-nez v23, :cond_13

    .line 1357
    if-nez v24, :cond_7

    .line 1359
    const/4 v3, 0x2

    new-array v3, v3, [C

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-char v5, v32, v5

    aput-char v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aget-char v5, v32, v5

    add-int/2addr v5, v12

    int-to-char v5, v5

    aput-char v5, v3, v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->setPinyinHighlight([C)V

    .line 1362
    :cond_7
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9Len:I

    if-ne v12, v3, :cond_d

    .line 1363
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V

    .line 1391
    :cond_8
    :goto_4
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_1a

    .line 1392
    move-object/from16 v0, v31

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v46, v0

    .line 1393
    .local v46, "sqlits":[Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    move-object/from16 v0, v46

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_17

    .line 1394
    mul-int/lit8 v3, v21, 0x2

    aget-char v3, v31, v3

    mul-int/lit8 v4, v21, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v31, v4

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v46, v21

    .line 1393
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 1286
    .end local v6    # "selection":Ljava/lang/String;
    .end local v11    # "JIAN":Ljava/lang/String;
    .end local v13    # "QUAN":Ljava/lang/String;
    .end local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v21    # "i":I
    .end local v23    # "index":I
    .end local v24    # "isJianMatch":Z
    .end local v31    # "matchMapQuan":[C
    .end local v32    # "matchMapQuanHighlight":[C
    .end local v34    # "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v38    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v40    # "queryCursor":Landroid/database/Cursor;
    .end local v41    # "resultCursor":Landroid/database/MatrixCursor;
    .end local v42    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    .end local v45    # "skip":Z
    .end local v46    # "sqlits":[Ljava/lang/String;
    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1296
    .restart local v6    # "selection":Ljava/lang/String;
    .restart local v40    # "queryCursor":Landroid/database/Cursor;
    .restart local v43    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    .restart local v45    # "skip":Z
    :cond_a
    const/16 v45, 0x0

    goto/16 :goto_1

    .line 1342
    .end local v43    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    .restart local v11    # "JIAN":Ljava/lang/String;
    .restart local v13    # "QUAN":Ljava/lang/String;
    .restart local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v23    # "index":I
    .restart local v24    # "isJianMatch":Z
    .restart local v34    # "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v38    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v41    # "resultCursor":Landroid/database/MatrixCursor;
    .restart local v42    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 1350
    :cond_c
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    goto :goto_3

    .line 1365
    .restart local v31    # "matchMapQuan":[C
    .restart local v32    # "matchMapQuanHighlight":[C
    :cond_d
    if-eqz v24, :cond_12

    .line 1366
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1461
    .end local v11    # "JIAN":Ljava/lang/String;
    .end local v13    # "QUAN":Ljava/lang/String;
    .end local v23    # "index":I
    .end local v24    # "isJianMatch":Z
    .end local v31    # "matchMapQuan":[C
    .end local v32    # "matchMapQuanHighlight":[C
    .end local v42    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    :catch_0
    move-exception v17

    .line 1462
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 1465
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_6
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1467
    new-instance v34, Ljava/util/LinkedList;

    .end local v34    # "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    invoke-direct/range {v34 .. v34}, Ljava/util/LinkedList;-><init>()V

    .line 1468
    .restart local v34    # "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 1469
    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1472
    :cond_f
    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1473
    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1474
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1476
    .end local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v38    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    :cond_10
    if-eqz v40, :cond_11

    .line 1477
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    .line 1478
    const/16 v40, 0x0

    .line 1481
    :cond_11
    const/4 v3, 0x1

    if-le v12, v3, :cond_22

    .line 1482
    new-instance v43, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;-><init>(Lcom/android/providers/contacts/GnDialerSearchHelper;Ljava/lang/String;)V

    .line 1483
    .restart local v43    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    if-eqz v34, :cond_21

    .line 1484
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;

    .line 1485
    .restart local v42    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mRawContactId:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->addId(Ljava/lang/String;)V

    goto :goto_7

    .line 1368
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v43    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    .restart local v11    # "JIAN":Ljava/lang/String;
    .restart local v13    # "QUAN":Ljava/lang/String;
    .restart local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v23    # "index":I
    .restart local v24    # "isJianMatch":Z
    .restart local v31    # "matchMapQuan":[C
    .restart local v32    # "matchMapQuanHighlight":[C
    .restart local v38    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    :cond_12
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V

    goto/16 :goto_4

    .line 1371
    :cond_13
    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_8

    .line 1372
    move/from16 v25, v24

    .line 1373
    .local v25, "isMatch":Z
    if-nez v25, :cond_14

    .line 1374
    const/16 v21, 0x0

    .restart local v21    # "i":I
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v28, v0

    .local v28, "len":I
    :goto_8
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_14

    .line 1375
    aget-char v3, v31, v21

    move/from16 v0, v23

    if-ne v3, v0, :cond_15

    .line 1377
    const/4 v3, 0x2

    new-array v0, v3, [C

    move-object/from16 v33, v0

    const/4 v3, 0x0

    aget-char v4, v32, v21

    aput-char v4, v33, v3

    const/4 v3, 0x1

    aget-char v4, v32, v21

    add-int/2addr v4, v12

    int-to-char v4, v4

    aput-char v4, v33, v3

    .line 1378
    .local v33, "matchOffset":[C
    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->setPinyinHighlight([C)V

    .line 1379
    const/16 v25, 0x1

    .line 1384
    .end local v21    # "i":I
    .end local v28    # "len":I
    .end local v33    # "matchOffset":[C
    :cond_14
    if-nez v25, :cond_16

    .line 1385
    const/16 v23, -0x1

    goto/16 :goto_4

    .line 1374
    .restart local v21    # "i":I
    .restart local v28    # "len":I
    :cond_15
    add-int/lit8 v21, v21, 0x2

    goto :goto_8

    .line 1387
    .end local v21    # "i":I
    .end local v28    # "len":I
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V

    goto/16 :goto_4

    .line 1397
    .end local v25    # "isMatch":Z
    .restart local v21    # "i":I
    .restart local v46    # "sqlits":[Ljava/lang/String;
    :cond_17
    const/16 v21, 0x0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9Len:I

    move/from16 v47, v0

    .local v47, "srcLen":I
    :goto_9
    move-object/from16 v0, v46

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_1a

    .line 1398
    aget-object v3, v46, v21

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1397
    :cond_18
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 1402
    :cond_19
    new-instance v48, Ljava/lang/String;

    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1403
    .local v48, "tmpSearchKey":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-object v4, v46, v21

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1b

    .line 1404
    if-lez v21, :cond_18

    .line 1405
    add-int/lit8 v3, v21, -0x1

    aget-object v3, v46, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v47, v47, v3

    .line 1406
    move/from16 v0, v47

    if-ge v0, v12, :cond_18

    .line 1460
    .end local v21    # "i":I
    .end local v46    # "sqlits":[Ljava/lang/String;
    .end local v47    # "srcLen":I
    .end local v48    # "tmpSearchKey":Ljava/lang/String;
    :cond_1a
    :goto_a
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_e

    invoke-virtual/range {v42 .. v42}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->next()Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_6

    .line 1415
    .restart local v21    # "i":I
    .restart local v46    # "sqlits":[Ljava/lang/String;
    .restart local v47    # "srcLen":I
    .restart local v48    # "tmpSearchKey":Ljava/lang/String;
    :cond_1b
    const/16 v29, 0x0

    .line 1416
    .local v29, "matchIndex":I
    move-object/from16 v0, v31

    array-length v3, v0

    sub-int v3, v3, v21

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    move-object/from16 v37, v0

    .line 1417
    .local v37, "nameHighlight":[C
    move/from16 v26, v21

    .local v26, "j":I
    move/from16 v30, v29

    .end local v29    # "matchIndex":I
    .local v30, "matchIndex":I
    :goto_b
    move-object/from16 v0, v46

    array-length v3, v0

    move/from16 v0, v26

    if-ge v0, v3, :cond_28

    .line 1418
    aget-object v15, v46, v26

    .line 1419
    .local v15, "curSqlit":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v27

    .line 1420
    .local v27, "keyFirshChar":C
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v0, v27

    if-ne v3, v0, :cond_1e

    .line 1422
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "matchIndex":I
    .restart local v29    # "matchIndex":I
    mul-int/lit8 v3, v26, 0x2

    aget-char v3, v32, v3

    aput-char v3, v37, v30

    .line 1424
    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1425
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v48

    .line 1427
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "matchIndex":I
    .restart local v30    # "matchIndex":I
    mul-int/lit8 v3, v26, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v3, v32, v3

    aput-char v3, v37, v29

    move/from16 v29, v30

    .line 1439
    .end local v30    # "matchIndex":I
    .restart local v29    # "matchIndex":I
    :goto_c
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1f

    .line 1440
    const/4 v3, 0x0

    aget-char v23, v37, v3

    .line 1449
    .end local v15    # "curSqlit":Ljava/lang/String;
    .end local v27    # "keyFirshChar":C
    :goto_d
    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_18

    .line 1450
    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->setPinyinHighlight([C)V

    .line 1451
    const/4 v3, 0x0

    aget-char v3, v37, v3

    if-nez v3, :cond_20

    .line 1452
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V

    goto :goto_a

    .line 1428
    .restart local v15    # "curSqlit":Ljava/lang/String;
    .restart local v27    # "keyFirshChar":C
    :cond_1c
    move-object/from16 v0, v48

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1430
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "matchIndex":I
    .restart local v30    # "matchIndex":I
    mul-int/lit8 v3, v26, 0x2

    aget-char v3, v32, v3

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v37, v29

    .line 1431
    const/4 v3, 0x0

    aget-char v23, v37, v3

    move/from16 v29, v30

    .line 1432
    .end local v30    # "matchIndex":I
    .restart local v29    # "matchIndex":I
    goto :goto_d

    .line 1435
    :cond_1d
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "matchIndex":I
    .restart local v30    # "matchIndex":I
    mul-int/lit8 v3, v26, 0x2

    aget-char v3, v32, v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    aput-char v3, v37, v29

    .line 1436
    const/4 v3, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v48

    move/from16 v29, v30

    .end local v30    # "matchIndex":I
    .restart local v29    # "matchIndex":I
    goto :goto_c

    .line 1444
    .end local v29    # "matchIndex":I
    .restart local v30    # "matchIndex":I
    :cond_1e
    const/16 v23, -0x1

    move/from16 v29, v30

    .line 1445
    .end local v30    # "matchIndex":I
    .restart local v29    # "matchIndex":I
    goto :goto_d

    .line 1417
    :cond_1f
    add-int/lit8 v26, v26, 0x1

    move/from16 v30, v29

    .end local v29    # "matchIndex":I
    .restart local v30    # "matchIndex":I
    goto/16 :goto_b

    .line 1454
    .end local v15    # "curSqlit":Ljava/lang/String;
    .end local v27    # "keyFirshChar":C
    .end local v30    # "matchIndex":I
    .restart local v29    # "matchIndex":I
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    .line 1488
    .end local v11    # "JIAN":Ljava/lang/String;
    .end local v13    # "QUAN":Ljava/lang/String;
    .end local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v21    # "i":I
    .end local v23    # "index":I
    .end local v24    # "isJianMatch":Z
    .end local v26    # "j":I
    .end local v29    # "matchIndex":I
    .end local v31    # "matchMapQuan":[C
    .end local v32    # "matchMapQuanHighlight":[C
    .end local v37    # "nameHighlight":[C
    .end local v38    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v42    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    .end local v46    # "sqlits":[Ljava/lang/String;
    .end local v47    # "srcLen":I
    .end local v48    # "tmpSearchKey":Ljava/lang/String;
    .restart local v43    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper;->writeCache(Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;)V

    .line 1491
    .end local v43    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    :cond_22
    if-eqz v34, :cond_27

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_27

    .line 1492
    new-instance v41, Landroid/database/MatrixCursor;

    .end local v41    # "resultCursor":Landroid/database/MatrixCursor;
    sget-object v3, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchResultColumns;->COLUMN_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1497
    .restart local v41    # "resultCursor":Landroid/database/MatrixCursor;
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_e
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_26

    .line 1498
    if-eqz v44, :cond_25

    .line 1499
    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;

    invoke-virtual {v3}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->getGnDialerSearchResultRow()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v14, v3, v4

    .line 1500
    .local v14, "contactIdObj":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 1501
    .local v35, "merge":Z
    const/16 v26, 0x0

    .restart local v26    # "j":I
    :goto_f
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_23

    .line 1502
    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;

    invoke-virtual {v3}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->getGnDialerSearchResultRow()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v36, v3, v4

    .line 1503
    .local v36, "mergeContactIdObj":Ljava/lang/Object;
    if-eqz v14, :cond_24

    if-eqz v36, :cond_24

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1505
    const/16 v35, 0x1

    .line 1510
    .end local v36    # "mergeContactIdObj":Ljava/lang/Object;
    :cond_23
    if-eqz v35, :cond_25

    .line 1497
    .end local v14    # "contactIdObj":Ljava/lang/Object;
    .end local v26    # "j":I
    .end local v35    # "merge":Z
    :goto_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 1501
    .restart local v14    # "contactIdObj":Ljava/lang/Object;
    .restart local v26    # "j":I
    .restart local v35    # "merge":Z
    .restart local v36    # "mergeContactIdObj":Ljava/lang/Object;
    :cond_24
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 1515
    .end local v14    # "contactIdObj":Ljava/lang/Object;
    .end local v26    # "j":I
    .end local v35    # "merge":Z
    .end local v36    # "mergeContactIdObj":Ljava/lang/Object;
    :cond_25
    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;

    invoke-virtual {v3}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->getGnDialerSearchResultRow()[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_10

    .line 1518
    :cond_26
    const/16 v34, 0x0

    .line 1521
    .end local v21    # "i":I
    :cond_27
    return-object v41

    .restart local v11    # "JIAN":Ljava/lang/String;
    .restart local v13    # "QUAN":Ljava/lang/String;
    .restart local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v21    # "i":I
    .restart local v23    # "index":I
    .restart local v24    # "isJianMatch":Z
    .restart local v26    # "j":I
    .restart local v30    # "matchIndex":I
    .restart local v31    # "matchMapQuan":[C
    .restart local v32    # "matchMapQuanHighlight":[C
    .restart local v37    # "nameHighlight":[C
    .restart local v38    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v42    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    .restart local v46    # "sqlits":[Ljava/lang/String;
    .restart local v47    # "srcLen":I
    .restart local v48    # "tmpSearchKey":Ljava/lang/String;
    :cond_28
    move/from16 v29, v30

    .end local v30    # "matchIndex":I
    .restart local v29    # "matchIndex":I
    goto/16 :goto_d
.end method

.method protected queryDigit(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 54
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "searchKey"    # Ljava/lang/String;
    .param p3, "selec"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 495
    .local v12, "KEY_LEN":I
    const/16 v45, 0x0

    .line 497
    .local v45, "queryCursor":Landroid/database/Cursor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(vds_jian_t9 LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\' OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_phone_number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 500
    .local v6, "selection":Ljava/lang/String;
    const-string v3, "auroracontactqueryfordialerprefix"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_mimetype_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 5)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 505
    :cond_0
    const/16 v50, 0x0

    .line 506
    .local v50, "skip":Z
    const/4 v3, 0x1

    if-le v12, v3, :cond_1

    .line 507
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper;->getCache(Ljava/lang/String;)Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;

    move-result-object v48

    .line 508
    .local v48, "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    if-eqz v48, :cond_9

    invoke-virtual/range {v48 .. v48}, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v50, 0x1

    .line 509
    :goto_0
    if-nez v50, :cond_1

    .line 510
    if-eqz v48, :cond_1

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_raw_contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v48 .. v48}, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->getRawContactIds()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 518
    .end local v48    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    :cond_1
    if-nez v50, :cond_3

    .line 519
    if-eqz p3, :cond_2

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 522
    :cond_2
    const-string v4, "gn_dialer_search_temp"

    sget-object v5, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewColumns;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "vds_sort_key"

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v45

    .line 527
    :cond_3
    const/16 v37, 0x0

    .line 529
    .local v37, "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    const/16 v42, 0x0

    .line 531
    .local v42, "onlyNumberMatchedStart":I
    const/16 v46, 0x0

    .line 532
    .local v46, "resultCursor":Landroid/database/MatrixCursor;
    if-eqz v45, :cond_10

    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 533
    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    .line 534
    .local v20, "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    .line 535
    .local v18, "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    .line 536
    .local v19, "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    new-instance v43, Ljava/util/LinkedList;

    invoke-direct/range {v43 .. v43}, Ljava/util/LinkedList;-><init>()V

    .line 537
    .local v43, "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    new-instance v40, Ljava/util/LinkedList;

    invoke-direct/range {v40 .. v40}, Ljava/util/LinkedList;-><init>()V

    .line 538
    .local v40, "numberMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    const/16 v3, 0x10

    new-array v0, v3, [I

    move-object/from16 v41, v0

    .line 542
    .local v41, "numberMatchedListMark":[I
    :cond_4
    :try_start_0
    new-instance v47, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;

    const/4 v3, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;-><init>(Lcom/android/providers/contacts/GnDialerSearchHelper;Lcom/android/providers/contacts/GnDialerSearchHelper$1;)V

    .line 543
    .local v47, "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    move-object/from16 v0, v47

    move-object/from16 v1, v45

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->read(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 544
    const/16 v23, -0x1

    .line 546
    .local v23, "index":I
    :cond_5
    move-object/from16 v0, v47

    iget-object v11, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianT9:Ljava/lang/String;

    .line 547
    .local v11, "JIAN":Ljava/lang/String;
    move-object/from16 v0, v47

    iget-object v13, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9:Ljava/lang/String;

    .line 549
    .local v13, "QUAN":Ljava/lang/String;
    const/16 v25, 0x0

    .line 550
    .local v25, "isJianMatch":Z
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianT9Len:I

    if-lt v3, v12, :cond_6

    .line 551
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 552
    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_a

    const/16 v25, 0x1

    .line 555
    :cond_6
    :goto_1
    if-eqz v25, :cond_b

    .line 556
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapJian:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    mul-int/lit8 v4, v23, 0x2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, v23

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v44

    .line 558
    .local v44, "pinyinHighlight":[C
    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->setPinyinHighlight([C)V

    .line 563
    .end local v44    # "pinyinHighlight":[C
    :goto_2
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuan:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v34

    .line 564
    .local v34, "matchMapQuan":[C
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuanHighlight:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v35

    .line 566
    .local v35, "matchMapQuanHighlight":[C
    if-nez v23, :cond_13

    .line 567
    if-nez v25, :cond_7

    .line 569
    const/4 v3, 0x2

    new-array v3, v3, [C

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-char v5, v35, v5

    aput-char v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aget-char v5, v35, v5

    add-int/2addr v5, v12

    int-to-char v5, v5

    aput-char v5, v3, v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->setPinyinHighlight([C)V

    .line 572
    :cond_7
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9Len:I

    if-ne v12, v3, :cond_c

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V

    .line 601
    :cond_8
    :goto_3
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_18

    .line 602
    move-object/from16 v0, v34

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v51, v0

    .line 603
    .local v51, "sqlits":[Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4
    move-object/from16 v0, v51

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_17

    .line 604
    mul-int/lit8 v3, v21, 0x2

    aget-char v3, v34, v3

    mul-int/lit8 v4, v21, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v34, v4

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v51, v21

    .line 603
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 508
    .end local v11    # "JIAN":Ljava/lang/String;
    .end local v13    # "QUAN":Ljava/lang/String;
    .end local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v21    # "i":I
    .end local v23    # "index":I
    .end local v25    # "isJianMatch":Z
    .end local v34    # "matchMapQuan":[C
    .end local v35    # "matchMapQuanHighlight":[C
    .end local v37    # "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v40    # "numberMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v41    # "numberMatchedListMark":[I
    .end local v42    # "onlyNumberMatchedStart":I
    .end local v43    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v46    # "resultCursor":Landroid/database/MatrixCursor;
    .end local v47    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    .end local v51    # "sqlits":[Ljava/lang/String;
    .restart local v48    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    :cond_9
    const/16 v50, 0x0

    goto/16 :goto_0

    .line 552
    .end local v48    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    .restart local v11    # "JIAN":Ljava/lang/String;
    .restart local v13    # "QUAN":Ljava/lang/String;
    .restart local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v23    # "index":I
    .restart local v25    # "isJianMatch":Z
    .restart local v37    # "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v40    # "numberMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v41    # "numberMatchedListMark":[I
    .restart local v42    # "onlyNumberMatchedStart":I
    .restart local v43    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v46    # "resultCursor":Landroid/database/MatrixCursor;
    .restart local v47    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 560
    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    goto :goto_2

    .line 575
    .restart local v34    # "matchMapQuan":[C
    .restart local v35    # "matchMapQuanHighlight":[C
    :cond_c
    if-eqz v25, :cond_12

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 719
    .end local v11    # "JIAN":Ljava/lang/String;
    .end local v13    # "QUAN":Ljava/lang/String;
    .end local v23    # "index":I
    .end local v25    # "isJianMatch":Z
    .end local v34    # "matchMapQuan":[C
    .end local v35    # "matchMapQuanHighlight":[C
    .end local v47    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    :catch_0
    move-exception v17

    .line 720
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 723
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_d
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 725
    new-instance v37, Ljava/util/LinkedList;

    .end local v37    # "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    invoke-direct/range {v37 .. v37}, Ljava/util/LinkedList;-><init>()V

    .line 726
    .restart local v37    # "matchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 727
    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 730
    :cond_e
    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 731
    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 732
    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 734
    const/4 v3, 0x1

    if-ne v12, v3, :cond_f

    .line 735
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v42

    .line 738
    :cond_f
    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 741
    .end local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v40    # "numberMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v41    # "numberMatchedListMark":[I
    .end local v43    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    :cond_10
    if-eqz v45, :cond_11

    .line 742
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->close()V

    .line 743
    const/16 v45, 0x0

    .line 746
    :cond_11
    const/4 v3, 0x1

    if-le v12, v3, :cond_28

    .line 747
    new-instance v48, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;-><init>(Lcom/android/providers/contacts/GnDialerSearchHelper;Ljava/lang/String;)V

    .line 748
    .restart local v48    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    if-eqz v37, :cond_27

    .line 749
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;

    .line 750
    .restart local v47    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mRawContactId:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->addId(Ljava/lang/String;)V

    goto :goto_5

    .line 578
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v48    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    .restart local v11    # "JIAN":Ljava/lang/String;
    .restart local v13    # "QUAN":Ljava/lang/String;
    .restart local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v23    # "index":I
    .restart local v25    # "isJianMatch":Z
    .restart local v34    # "matchMapQuan":[C
    .restart local v35    # "matchMapQuanHighlight":[C
    .restart local v40    # "numberMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v41    # "numberMatchedListMark":[I
    .restart local v43    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    :cond_12
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V

    goto/16 :goto_3

    .line 581
    :cond_13
    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_8

    .line 582
    move/from16 v26, v25

    .line 583
    .local v26, "isMatch":Z
    if-nez v26, :cond_14

    .line 584
    const/16 v21, 0x0

    .restart local v21    # "i":I
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v30, v0

    .local v30, "len":I
    :goto_6
    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    .line 585
    aget-char v3, v34, v21

    move/from16 v0, v23

    if-ne v3, v0, :cond_15

    .line 587
    const/4 v3, 0x2

    new-array v0, v3, [C

    move-object/from16 v36, v0

    const/4 v3, 0x0

    aget-char v4, v35, v21

    aput-char v4, v36, v3

    const/4 v3, 0x1

    aget-char v4, v35, v21

    add-int/2addr v4, v12

    int-to-char v4, v4

    aput-char v4, v36, v3

    .line 588
    .local v36, "matchOffset":[C
    move-object/from16 v0, v47

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->setPinyinHighlight([C)V

    .line 589
    const/16 v26, 0x1

    .line 594
    .end local v21    # "i":I
    .end local v30    # "len":I
    .end local v36    # "matchOffset":[C
    :cond_14
    if-nez v26, :cond_16

    .line 595
    const/16 v23, -0x1

    goto/16 :goto_3

    .line 584
    .restart local v21    # "i":I
    .restart local v30    # "len":I
    :cond_15
    add-int/lit8 v21, v21, 0x2

    goto :goto_6

    .line 597
    .end local v21    # "i":I
    .end local v30    # "len":I
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V

    goto/16 :goto_3

    .line 607
    .end local v26    # "isMatch":Z
    .restart local v21    # "i":I
    .restart local v51    # "sqlits":[Ljava/lang/String;
    :cond_17
    const/16 v21, 0x0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9Len:I

    move/from16 v52, v0

    .local v52, "srcLen":I
    :goto_7
    move-object/from16 v0, v51

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_18

    .line 608
    new-instance v53, Ljava/lang/String;

    move-object/from16 v0, v53

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 609
    .local v53, "tmpSearchKey":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-object v4, v51, v21

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1b

    .line 610
    if-lez v21, :cond_21

    .line 611
    add-int/lit8 v3, v21, -0x1

    aget-object v3, v51, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v52, v52, v3

    .line 612
    move/from16 v0, v52

    if-ge v0, v12, :cond_21

    .line 680
    .end local v21    # "i":I
    .end local v51    # "sqlits":[Ljava/lang/String;
    .end local v52    # "srcLen":I
    .end local v53    # "tmpSearchKey":Ljava/lang/String;
    :cond_18
    :goto_8
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_19

    invoke-virtual/range {v47 .. v47}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->next()Z

    move-result v3

    if-nez v3, :cond_5

    .line 682
    :cond_19
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_d

    .line 683
    invoke-virtual/range {v47 .. v47}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->getDataMatchIndex()I

    move-result v23

    .line 684
    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_d

    .line 685
    const/16 v3, 0x10

    move/from16 v0, v23

    if-lt v0, v3, :cond_1a

    .line 686
    const/16 v23, 0xf

    .line 689
    :cond_1a
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v49

    .line 691
    .local v49, "size":I
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mTimesContacted:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_23

    .line 692
    aget v31, v41, v23

    .line 693
    .local v31, "location":I
    move/from16 v0, v31

    move/from16 v1, v49

    if-eq v0, v1, :cond_22

    .line 694
    move-object/from16 v0, v40

    move/from16 v1, v31

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 714
    .end local v31    # "location":I
    :goto_9
    move/from16 v21, v23

    .restart local v21    # "i":I
    :goto_a
    const/16 v3, 0x10

    move/from16 v0, v21

    if-ge v0, v3, :cond_d

    .line 715
    aget v3, v41, v21

    add-int/lit8 v3, v3, 0x1

    aput v3, v41, v21

    .line 714
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 621
    .end local v49    # "size":I
    .restart local v51    # "sqlits":[Ljava/lang/String;
    .restart local v52    # "srcLen":I
    .restart local v53    # "tmpSearchKey":Ljava/lang/String;
    :cond_1b
    const/16 v32, 0x0

    .line 622
    .local v32, "matchIndex":I
    move-object/from16 v0, v34

    array-length v3, v0

    sub-int v3, v3, v21

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    move-object/from16 v38, v0

    .line 623
    .local v38, "nameHighlight":[C
    move/from16 v28, v21

    .local v28, "j":I
    move/from16 v33, v32

    .end local v32    # "matchIndex":I
    .local v33, "matchIndex":I
    :goto_b
    move-object/from16 v0, v51

    array-length v3, v0

    move/from16 v0, v28

    if-ge v0, v3, :cond_2e

    .line 624
    aget-object v16, v51, v28

    .line 625
    .local v16, "curSqlit":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v29

    .line 626
    .local v29, "keyFirshChar":C
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v0, v29

    if-ne v3, v0, :cond_1e

    .line 628
    add-int/lit8 v32, v33, 0x1

    .end local v33    # "matchIndex":I
    .restart local v32    # "matchIndex":I
    mul-int/lit8 v3, v28, 0x2

    aget-char v3, v35, v3

    aput-char v3, v38, v33

    .line 630
    move-object/from16 v0, v53

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 631
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 632
    .local v14, "afterSub":Ljava/lang/String;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2d

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2d

    add-int/lit8 v3, v28, 0x1

    move-object/from16 v0, v51

    array-length v4, v0

    if-ge v3, v4, :cond_2d

    .line 634
    add-int/lit8 v3, v28, 0x1

    aget-object v3, v51, v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v39

    .line 635
    .local v39, "nextSqlitFirst":C
    const/4 v3, 0x1

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v0, v39

    if-ne v0, v3, :cond_2d

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v0, v39

    if-eq v0, v3, :cond_2d

    .line 638
    add-int/lit8 v33, v32, 0x1

    .end local v32    # "matchIndex":I
    .restart local v33    # "matchIndex":I
    mul-int/lit8 v3, v28, 0x2

    aget-char v3, v35, v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    aput-char v3, v38, v32

    .line 639
    const/4 v3, 0x1

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    .line 640
    const/4 v14, 0x0

    .line 643
    .end local v39    # "nextSqlitFirst":C
    :goto_c
    if-eqz v14, :cond_2c

    .line 645
    add-int/lit8 v32, v33, 0x1

    .end local v33    # "matchIndex":I
    .restart local v32    # "matchIndex":I
    mul-int/lit8 v3, v28, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v3, v35, v3

    aput-char v3, v38, v33

    .line 646
    move-object/from16 v53, v14

    .line 659
    .end local v14    # "afterSub":Ljava/lang/String;
    :goto_d
    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1f

    .line 660
    const/4 v3, 0x0

    aget-char v23, v38, v3

    .line 669
    .end local v16    # "curSqlit":Ljava/lang/String;
    .end local v29    # "keyFirshChar":C
    :goto_e
    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_21

    .line 670
    move-object/from16 v0, v47

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->setPinyinHighlight([C)V

    .line 671
    const/4 v3, 0x0

    aget-char v3, v38, v3

    if-nez v3, :cond_20

    .line 672
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V

    goto/16 :goto_8

    .line 648
    .restart local v16    # "curSqlit":Ljava/lang/String;
    .restart local v29    # "keyFirshChar":C
    :cond_1c
    move-object/from16 v0, v16

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 650
    add-int/lit8 v33, v32, 0x1

    .end local v32    # "matchIndex":I
    .restart local v33    # "matchIndex":I
    mul-int/lit8 v3, v28, 0x2

    aget-char v3, v35, v3

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v38, v32

    .line 651
    const/4 v3, 0x0

    aget-char v23, v38, v3

    move/from16 v32, v33

    .line 652
    .end local v33    # "matchIndex":I
    .restart local v32    # "matchIndex":I
    goto :goto_e

    .line 655
    :cond_1d
    add-int/lit8 v33, v32, 0x1

    .end local v32    # "matchIndex":I
    .restart local v33    # "matchIndex":I
    mul-int/lit8 v3, v28, 0x2

    aget-char v3, v35, v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    aput-char v3, v38, v32

    .line 656
    const/4 v3, 0x1

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    move/from16 v32, v33

    .end local v33    # "matchIndex":I
    .restart local v32    # "matchIndex":I
    goto :goto_d

    .line 664
    .end local v32    # "matchIndex":I
    .restart local v33    # "matchIndex":I
    :cond_1e
    const/16 v23, -0x1

    move/from16 v32, v33

    .line 665
    .end local v33    # "matchIndex":I
    .restart local v32    # "matchIndex":I
    goto :goto_e

    .line 623
    :cond_1f
    add-int/lit8 v28, v28, 0x1

    move/from16 v33, v32

    .end local v32    # "matchIndex":I
    .restart local v33    # "matchIndex":I
    goto/16 :goto_b

    .line 674
    .end local v16    # "curSqlit":Ljava/lang/String;
    .end local v29    # "keyFirshChar":C
    .end local v33    # "matchIndex":I
    .restart local v32    # "matchIndex":I
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->addToListSort(Ljava/util/List;Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;)V

    goto/16 :goto_8

    .line 607
    .end local v28    # "j":I
    .end local v32    # "matchIndex":I
    .end local v38    # "nameHighlight":[C
    :cond_21
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .line 696
    .end local v21    # "i":I
    .end local v51    # "sqlits":[Ljava/lang/String;
    .end local v52    # "srcLen":I
    .end local v53    # "tmpSearchKey":Ljava/lang/String;
    .restart local v31    # "location":I
    .restart local v49    # "size":I
    :cond_22
    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 699
    .end local v31    # "location":I
    :cond_23
    const/16 v24, 0x0

    .line 700
    .local v24, "isAdded":Z
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_f
    move/from16 v0, v21

    move/from16 v1, v49

    if-ge v0, v1, :cond_24

    .line 701
    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mTimesContacted:I

    move-object/from16 v0, v40

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;

    iget v3, v3, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mTimesContacted:I

    if-le v4, v3, :cond_26

    .line 702
    move-object/from16 v0, v40

    move/from16 v1, v21

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 703
    const/16 v24, 0x1

    .line 707
    :cond_24
    if-nez v24, :cond_25

    .line 708
    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 710
    :cond_25
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 700
    :cond_26
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 753
    .end local v11    # "JIAN":Ljava/lang/String;
    .end local v13    # "QUAN":Ljava/lang/String;
    .end local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v21    # "i":I
    .end local v23    # "index":I
    .end local v24    # "isAdded":Z
    .end local v25    # "isJianMatch":Z
    .end local v34    # "matchMapQuan":[C
    .end local v35    # "matchMapQuanHighlight":[C
    .end local v40    # "numberMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v41    # "numberMatchedListMark":[I
    .end local v43    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v47    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    .end local v49    # "size":I
    .restart local v48    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    :cond_27
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/GnDialerSearchHelper;->writeCache(Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;)V

    .line 756
    .end local v48    # "searchRetCache":Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
    :cond_28
    if-eqz v37, :cond_2b

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2b

    .line 757
    new-instance v46, Landroid/database/MatrixCursor;

    .end local v46    # "resultCursor":Landroid/database/MatrixCursor;
    sget-object v3, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchResultColumns;->COLUMN_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 759
    .restart local v46    # "resultCursor":Landroid/database/MatrixCursor;
    const/4 v3, 0x1

    if-ne v12, v3, :cond_29

    move/from16 v49, v42

    .line 762
    .restart local v49    # "size":I
    :goto_10
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 763
    .local v27, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    const/4 v15, 0x0

    .line 764
    .local v15, "count":I
    :goto_11
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    move/from16 v0, v49

    if-ge v15, v0, :cond_2a

    .line 765
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;

    .line 766
    .restart local v47    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    invoke-virtual/range {v47 .. v47}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->getGnDialerSearchResultRow()[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 767
    add-int/lit8 v15, v15, 0x1

    .line 768
    goto :goto_11

    .line 759
    .end local v15    # "count":I
    .end local v27    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v47    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    .end local v49    # "size":I
    :cond_29
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v49

    goto :goto_10

    .line 770
    .restart local v15    # "count":I
    .restart local v27    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v49    # "size":I
    :cond_2a
    const/16 v37, 0x0

    .line 775
    .end local v15    # "count":I
    .end local v27    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .end local v49    # "size":I
    :cond_2b
    return-object v46

    .restart local v11    # "JIAN":Ljava/lang/String;
    .restart local v13    # "QUAN":Ljava/lang/String;
    .restart local v14    # "afterSub":Ljava/lang/String;
    .restart local v16    # "curSqlit":Ljava/lang/String;
    .restart local v18    # "firstJianMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v19    # "firstPartMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v20    # "fullMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v21    # "i":I
    .restart local v23    # "index":I
    .restart local v25    # "isJianMatch":Z
    .restart local v28    # "j":I
    .restart local v29    # "keyFirshChar":C
    .restart local v33    # "matchIndex":I
    .restart local v34    # "matchMapQuan":[C
    .restart local v35    # "matchMapQuanHighlight":[C
    .restart local v38    # "nameHighlight":[C
    .restart local v40    # "numberMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v41    # "numberMatchedListMark":[I
    .restart local v43    # "partMatchedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;>;"
    .restart local v47    # "sdr":Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
    .restart local v51    # "sqlits":[Ljava/lang/String;
    .restart local v52    # "srcLen":I
    .restart local v53    # "tmpSearchKey":Ljava/lang/String;
    :cond_2c
    move/from16 v32, v33

    .end local v33    # "matchIndex":I
    .restart local v32    # "matchIndex":I
    goto/16 :goto_d

    :cond_2d
    move/from16 v33, v32

    .end local v32    # "matchIndex":I
    .restart local v33    # "matchIndex":I
    goto/16 :goto_c

    .end local v14    # "afterSub":Ljava/lang/String;
    .end local v16    # "curSqlit":Ljava/lang/String;
    .end local v29    # "keyFirshChar":C
    :cond_2e
    move/from16 v32, v33

    .end local v33    # "matchIndex":I
    .restart local v32    # "matchIndex":I
    goto/16 :goto_e
.end method

.method public updateNameForGnDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "displayNamePrimary"    # Ljava/lang/String;

    .prologue
    .line 912
    if-nez p4, :cond_0

    .line 935
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mGnDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 917
    const-string v0, "UPDATE gn_dialer_search SET quan_pinyin=?,jian_pinyin=?,quan_t9=?,jian_t9=?,match_map_quan=?,match_map_jian=?,polyphonic=?,sort_key=?,quan_pinyin_highlight=?,match_map_quan_highlight=? WHERE raw_contact_id=? "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mGnDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mGnDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/providers/contacts/GnDialerSearchHelper;->bindToSqliteStatement(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper;->mGnDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public updateOrInsertNameDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "displayNamePrimary"    # Ljava/lang/String;

    .prologue
    .line 1096
    const/4 v9, 0x0

    .line 1097
    .local v9, "recordExisted":Z
    const-string v1, "gn_dialer_search"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id LIMIT 1"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1100
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 1101
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v9, 0x1

    .line 1102
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1105
    :cond_0
    if-eqz v9, :cond_2

    .line 1106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/GnDialerSearchHelper;->updateNameForGnDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 1110
    :goto_1
    return-void

    .line 1101
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1108
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/GnDialerSearchHelper;->insertNameForGnDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    goto :goto_1
.end method
