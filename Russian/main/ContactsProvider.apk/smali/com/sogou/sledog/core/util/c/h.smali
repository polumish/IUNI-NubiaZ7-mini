.class public final Lcom/sogou/sledog/core/util/c/h;
.super Lcom/sogou/sledog/core/util/c/g;


# instance fields
.field private V:Lcom/sogou/sledog/core/util/a/f;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/core/util/c/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sogou/sledog/core/util/c/g;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    new-instance v0, Lcom/sogou/sledog/core/util/a/f;

    invoke-direct {v0}, Lcom/sogou/sledog/core/util/a/f;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/core/util/c/h;->V:Lcom/sogou/sledog/core/util/a/f;

    return-void
.end method


# virtual methods
.method protected final c(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sogou/sledog/core/util/c/h;->V:Lcom/sogou/sledog/core/util/a/f;

    invoke-static {p1}, Lcom/sogou/sledog/core/util/a/f;->b(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method
