.class final Lcom/sogou/sledog/core/util/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final v:[C

.field private static w:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sogou/sledog/core/util/a/b;->v:[C

    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lcom/sogou/sledog/core/util/a/b;->w:[I

    move v0, v1

    :goto_0
    sget-object v2, Lcom/sogou/sledog/core/util/a/b;->w:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    :goto_1
    sget-object v0, Lcom/sogou/sledog/core/util/a/b;->v:[C

    array-length v0, v0

    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    sget-object v2, Lcom/sogou/sledog/core/util/a/b;->w:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sogou/sledog/core/util/a/b;->w:[I

    sget-object v2, Lcom/sogou/sledog/core/util/a/b;->v:[C

    aget-char v2, v2, v1

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method private static c(Ljava/lang/String;I)[B
    .locals 12

    const/4 v2, 0x2

    const/16 v11, 0x3d

    const/4 v3, 0x0

    rem-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 string length is not multiple of 4"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p1, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p1, 0x0

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    new-array v0, v0, [B

    move v6, v3

    move v7, v3

    :goto_0
    if-lt v7, p1, :cond_2

    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v1, v7, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v4, v7, 0x0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v7, 0x0

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v8, v7, 0x0

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sget-object v9, Lcom/sogou/sledog/core/util/a/b;->w:[I

    and-int/lit8 v1, v1, 0x7f

    aget v9, v9, v1

    sget-object v1, Lcom/sogou/sledog/core/util/a/b;->w:[I

    and-int/lit8 v4, v4, 0x7f

    aget v10, v1, v4

    if-ne v8, v11, :cond_5

    const/4 v1, 0x1

    if-ne v5, v11, :cond_4

    move v1, v2

    move v4, v3

    move v5, v3

    :goto_2
    if-ltz v9, :cond_3

    if-ltz v10, :cond_3

    if-ltz v5, :cond_3

    if-gez v4, :cond_6

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/sogou/sledog/core/util/a/b;->w:[I

    and-int/lit8 v5, v5, 0x7f

    aget v4, v4, v5

    move v5, v4

    move v4, v3

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/sogou/sledog/core/util/a/b;->w:[I

    and-int/lit8 v4, v5, 0x7f

    aget v4, v1, v4

    sget-object v1, Lcom/sogou/sledog/core/util/a/b;->w:[I

    and-int/lit8 v5, v8, 0x7f

    aget v1, v1, v5

    move v5, v4

    move v4, v1

    move v1, v3

    goto :goto_2

    :cond_6
    shl-int/lit8 v8, v9, 0x2

    and-int/lit16 v8, v8, 0xfc

    ushr-int/lit8 v9, v10, 0x4

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    if-ge v1, v2, :cond_7

    add-int/lit8 v8, v6, 0x1

    shl-int/lit8 v9, v10, 0x4

    and-int/lit16 v9, v9, 0xf0

    ushr-int/lit8 v10, v5, 0x2

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    if-gtz v1, :cond_7

    add-int/lit8 v1, v6, 0x2

    shl-int/lit8 v5, v5, 0x6

    and-int/lit16 v5, v5, 0xc0

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v4, v7, 0x4

    add-int/lit8 v1, v6, 0x3

    move v6, v1

    move v7, v4

    goto/16 :goto_0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sogou/sledog/core/util/a/b;->c(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    const/16 v11, 0x3d

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v2, p0

    add-int/lit8 v1, v2, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v3, v1, 0x4

    new-array v4, v3, [C

    move v1, v0

    :goto_1
    if-lt v0, v3, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v1, 0x0

    sub-int v6, v2, v1

    aget-byte v7, p0, v5

    sget-object v8, Lcom/sogou/sledog/core/util/a/b;->v:[C

    ushr-int/lit8 v9, v7, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v4, v0

    const/4 v8, 0x2

    if-le v6, v8, :cond_2

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    add-int/lit8 v8, v0, 0x1

    sget-object v9, Lcom/sogou/sledog/core/util/a/b;->v:[C

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x30

    ushr-int/lit8 v10, v6, 0x4

    and-int/lit8 v10, v10, 0xf

    add-int/2addr v7, v10

    aget-char v7, v9, v7

    aput-char v7, v4, v8

    add-int/lit8 v7, v0, 0x2

    sget-object v8, Lcom/sogou/sledog/core/util/a/b;->v:[C

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3c

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3

    add-int/2addr v6, v9

    aget-char v6, v8, v6

    aput-char v6, v4, v7

    add-int/lit8 v6, v0, 0x3

    sget-object v7, Lcom/sogou/sledog/core/util/a/b;->v:[C

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v7, v5

    aput-char v5, v4, v6

    :goto_2
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    if-le v6, v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    add-int/lit8 v6, v0, 0x1

    sget-object v8, Lcom/sogou/sledog/core/util/a/b;->v:[C

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x30

    ushr-int/lit8 v9, v5, 0x4

    and-int/lit8 v9, v9, 0xf

    add-int/2addr v7, v9

    aget-char v7, v8, v7

    aput-char v7, v4, v6

    add-int/lit8 v6, v0, 0x2

    sget-object v7, Lcom/sogou/sledog/core/util/a/b;->v:[C

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3c

    add-int/lit8 v5, v5, 0x0

    aget-char v5, v7, v5

    aput-char v5, v4, v6

    add-int/lit8 v5, v0, 0x3

    aput-char v11, v4, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lcom/sogou/sledog/core/util/a/b;->v:[C

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x30

    add-int/lit8 v7, v7, 0x0

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    add-int/lit8 v5, v0, 0x2

    aput-char v11, v4, v5

    add-int/lit8 v5, v0, 0x3

    aput-char v11, v4, v5

    goto :goto_2
.end method
