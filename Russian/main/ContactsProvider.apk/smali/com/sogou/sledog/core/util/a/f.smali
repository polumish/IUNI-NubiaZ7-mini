.class public final Lcom/sogou/sledog/core/util/a/f;
.super Lcom/sogou/sledog/core/util/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sogou/sledog/core/util/a/a;-><init>()V

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/sogou/sledog/core/util/c;->b([B)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sogou/sledog/core/util/c;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sogou/sledog/core/util/Native;->unzip([B)[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final decode([B)[B
    .locals 1

    invoke-static {p1}, Lcom/sogou/sledog/core/util/Native;->unzip([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final encode([B)[B
    .locals 1

    invoke-static {p1}, Lcom/sogou/sledog/core/util/a/e;->c([B)[B

    move-result-object v0

    return-object v0
.end method
