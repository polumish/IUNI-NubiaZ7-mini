.class public final Lcom/sogou/sledog/b/b/b;
.super Lcom/sogou/sledog/core/a/a;


# instance fields
.field private aZ:Lcom/sogou/sledog/core/util/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sogou/sledog/core/a/a;-><init>()V

    new-instance v0, Lcom/sogou/sledog/b/b/a;

    invoke-direct {v0}, Lcom/sogou/sledog/b/b/a;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/b/b;->aZ:Lcom/sogou/sledog/core/util/a/a;

    return-void
.end method


# virtual methods
.method protected final t()Lcom/sogou/sledog/core/util/a/a;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/b/b;->aZ:Lcom/sogou/sledog/core/util/a/a;

    return-object v0
.end method
