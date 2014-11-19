.class public final Lcom/sogou/sledog/b/b/a;
.super Lcom/sogou/sledog/core/util/a/a;


# instance fields
.field private aX:Lcom/sogou/sledog/core/util/a/c;

.field private aY:Lcom/sogou/sledog/core/util/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sogou/sledog/core/util/a/a;-><init>()V

    new-instance v0, Lcom/sogou/sledog/core/util/a/c;

    invoke-direct {v0}, Lcom/sogou/sledog/core/util/a/c;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/b/a;->aX:Lcom/sogou/sledog/core/util/a/c;

    new-instance v0, Lcom/sogou/sledog/core/util/b/a;

    invoke-direct {v0}, Lcom/sogou/sledog/core/util/b/a;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/b/a;->aY:Lcom/sogou/sledog/core/util/b/a;

    return-void
.end method


# virtual methods
.method public final decode([B)[B
    .locals 2

    iget-object v0, p0, Lcom/sogou/sledog/b/b/a;->aY:Lcom/sogou/sledog/core/util/b/a;

    iget-object v1, p0, Lcom/sogou/sledog/b/b/a;->aX:Lcom/sogou/sledog/core/util/a/c;

    invoke-virtual {v1, p1}, Lcom/sogou/sledog/core/util/a/c;->decode([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/core/util/b/a;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final encode([B)[B
    .locals 2

    iget-object v0, p0, Lcom/sogou/sledog/b/b/a;->aX:Lcom/sogou/sledog/core/util/a/c;

    iget-object v1, p0, Lcom/sogou/sledog/b/b/a;->aY:Lcom/sogou/sledog/core/util/b/a;

    invoke-virtual {v1, p1}, Lcom/sogou/sledog/core/util/b/a;->encode([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/core/util/a/c;->encode([B)[B

    move-result-object v0

    return-object v0
.end method
