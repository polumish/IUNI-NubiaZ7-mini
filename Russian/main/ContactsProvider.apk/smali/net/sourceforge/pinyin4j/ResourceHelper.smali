.class public Lnet/sourceforge/pinyin4j/ResourceHelper;
.super Ljava/lang/Object;
.source "ResourceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceInputStream(Ljava/lang/String;)Ljava/io/BufferedInputStream;
    .locals 2
    .param p0, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string p0, "/assets/pinyindb/unicode_to_hanyu_pinyin.txt"

    .line 58
    const-class v1, Lnet/sourceforge/pinyin4j/ResourceHelper;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 60
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method
