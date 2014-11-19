.class Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$ChineseToPinyinResourceHolder;
.super Ljava/lang/Object;
.source "ChineseToPinyinResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChineseToPinyinResourceHolder"
.end annotation


# static fields
.field static theInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;-><init>(Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$1;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$ChineseToPinyinResourceHolder;->theInstance:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;
    .locals 3

    .prologue
    .line 182
    sget-object v0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$ChineseToPinyinResourceHolder;->theInstance:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;-><init>(Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$1;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$ChineseToPinyinResourceHolder;->theInstance:Ljava/lang/ref/SoftReference;

    .line 185
    :cond_0
    sget-object v0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource$ChineseToPinyinResourceHolder;->theInstance:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;

    return-object v0
.end method
