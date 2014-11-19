.class public abstract Lcom/sogou/sledog/core/util/c/g;
.super Lcom/sogou/sledog/core/util/c/a;


# instance fields
.field protected U:Lcom/sogou/sledog/core/util/c/a;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/core/util/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/sogou/sledog/core/util/c/a;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/core/util/c/g;->U:Lcom/sogou/sledog/core/util/c/a;

    return-void
.end method


# virtual methods
.method protected abstract c(Ljava/io/InputStream;)Ljava/io/InputStream;
.end method

.method public final e(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/core/util/c/g;->U:Lcom/sogou/sledog/core/util/c/a;

    invoke-virtual {v0, p1}, Lcom/sogou/sledog/core/util/c/a;->e(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sogou/sledog/core/util/c/g;->c(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method
