.class public Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;
.super Ljava/lang/Object;
.source "ChineseToPinyinResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$1;,
        Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$Field;,
        Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$ChineseToPinyinResourceHolder;
    }
.end annotation


# instance fields
.field private unicodeToHanyuPinyinTable:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->unicodeToHanyuPinyinTable:Ljava/util/Properties;

    .line 66
    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->initializeResource()V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$ChineseToPinyinResourceHolder;->getInstance()Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;

    move-result-object v0

    return-object v0
.end method

.method private getUnicodeToHanyuPinyinTable()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->unicodeToHanyuPinyinTable:Ljava/util/Properties;

    return-object v0
.end method

.method private initializeResource()V
    .locals 4

    .prologue
    .line 76
    :try_start_0
    const-string v2, "pinyindb/unicode_to_hanyu_pinyin.txt"

    .line 77
    .local v2, "resourceName":Ljava/lang/String;
    const-string v3, "pinyindb/unicode_to_hanyu_pinyin.txt"

    invoke-static {v3}, Lnet/sourceforge/pinyin4j/ResourceHelper;->getResourceInputStream(Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v1

    .line 78
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 79
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, v3}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->setUnicodeToHanyuPinyinTable(Ljava/util/Properties;)V

    .line 80
    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getUnicodeToHanyuPinyinTable()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "resourceName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private isValidRecord(Ljava/lang/String;)Z
    .locals 2
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v0, "(none0)"

    .line 131
    .local v0, "noneStr":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, "(none0)"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x1

    .line 137
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setUnicodeToHanyuPinyinTable(Ljava/util/Properties;)V
    .locals 0
    .param p1, "unicodeToHanyuPinyinTable"    # Ljava/util/Properties;

    .prologue
    .line 50
    iput-object p1, p0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->unicodeToHanyuPinyinTable:Ljava/util/Properties;

    .line 51
    return-void
.end method


# virtual methods
.method public getHanyuPinyinRecordFromChar(C)Ljava/lang/String;
    .locals 4
    .param p1, "ch"    # C

    .prologue
    .line 151
    move v0, p1

    .line 153
    .local v0, "codePointOfChar":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "codepointHexStr":Ljava/lang/String;
    invoke-direct {p0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getUnicodeToHanyuPinyinTable()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "foundRecord":Ljava/lang/String;
    invoke-direct {p0, v2}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->isValidRecord(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v2    # "foundRecord":Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2    # "foundRecord":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getHanyuPinyinStringArray(C)[Ljava/lang/String;
    .locals 5
    .param p1, "ch"    # C

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getHanyuPinyinRecordFromChar(C)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "pinyinRecord":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 109
    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "indexOfLeftBracket":I
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, "indexOfRightBracket":I
    const-string v4, "("

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "stripedString":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 118
    .end local v0    # "indexOfLeftBracket":I
    .end local v1    # "indexOfRightBracket":I
    .end local v3    # "stripedString":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
