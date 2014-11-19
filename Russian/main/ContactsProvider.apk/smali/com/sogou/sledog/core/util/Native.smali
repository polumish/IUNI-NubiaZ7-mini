.class public final Lcom/sogou/sledog/core/util/Native;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HAOMA"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native decrypt([BI)[B
.end method

.method public static decryptCommon(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sogou/sledog/core/util/Native;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/core/util/Native;->decryptCommon([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static decryptCommon([B)[B
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    rem-int/lit8 v1, v0, 0x10

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    :cond_1
    new-array v1, v0, [B

    array-length v2, p0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v0}, Lcom/sogou/sledog/core/util/Native;->decrypt([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static native encrypt([BI)[B
.end method

.method public static encryptCommon(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sogou/sledog/core/util/Native;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/core/util/Native;->encryptCommon([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static encryptCommon([B)[B
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    rem-int/lit8 v1, v0, 0x10

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    :cond_1
    new-array v1, v0, [B

    array-length v2, p0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v0}, Lcom/sogou/sledog/core/util/Native;->encrypt([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static encryptUpload(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sogou/sledog/core/util/Native;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    rem-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_2

    rem-int/lit8 v2, v0, 0x10

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x10

    :cond_2
    invoke-static {v1, v0}, Lcom/sogou/sledog/core/util/Native;->encrypt_sms([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static encryptUpload([B)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    rem-int/lit8 v1, v0, 0x10

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    :cond_1
    invoke-static {p0, v0}, Lcom/sogou/sledog/core/util/Native;->encrypt_sms([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static native encrypt_sms([BI)[B
.end method

.method private static native load_zip([B)[B
.end method

.method private static native name_to_pinyin(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static stringToBytes(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unzip([B)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sogou/sledog/core/util/Native;->load_zip([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static wrap_nameToPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/sogou/sledog/core/util/Native;->name_to_pinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    :cond_0
    return-object p0
.end method
