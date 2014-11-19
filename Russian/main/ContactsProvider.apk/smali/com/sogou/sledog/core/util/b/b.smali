.class public final Lcom/sogou/sledog/core/util/b/b;
.super Lcom/sogou/sledog/core/util/c/g;


# instance fields
.field private Q:Lcom/sogou/sledog/core/util/b/a;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/core/util/c/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sogou/sledog/core/util/c/g;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    new-instance v0, Lcom/sogou/sledog/core/util/b/a;

    invoke-direct {v0}, Lcom/sogou/sledog/core/util/b/a;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/core/util/b/b;->Q:Lcom/sogou/sledog/core/util/b/a;

    return-void
.end method


# virtual methods
.method protected final c(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/sogou/sledog/core/util/b/b;->Q:Lcom/sogou/sledog/core/util/b/a;

    invoke-static {p1}, Lcom/sogou/sledog/core/util/c;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/core/util/b/a;->decode([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/core/util/c;->b([B)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/io/InputStream;)[B
    .locals 2

    iget-object v0, p0, Lcom/sogou/sledog/core/util/b/b;->U:Lcom/sogou/sledog/core/util/c/a;

    invoke-virtual {v0, p1}, Lcom/sogou/sledog/core/util/c/a;->e(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/core/util/c;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/sledog/core/util/b/b;->Q:Lcom/sogou/sledog/core/util/b/a;

    invoke-virtual {v1, v0}, Lcom/sogou/sledog/core/util/b/a;->decode([B)[B

    move-result-object v0

    return-object v0
.end method
