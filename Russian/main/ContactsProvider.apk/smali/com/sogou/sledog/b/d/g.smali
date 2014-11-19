.class public abstract Lcom/sogou/sledog/b/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sogou/sledog/b/d/b;


# instance fields
.field private br:Lcom/sogou/sledog/b/d/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sogou/sledog/b/d/i;

    invoke-direct {v0, p0, p0}, Lcom/sogou/sledog/b/d/i;-><init>(Lcom/sogou/sledog/b/d/b;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/d/g;->br:Lcom/sogou/sledog/b/d/i;

    return-void
.end method


# virtual methods
.method protected final N()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/d/g;->br:Lcom/sogou/sledog/b/d/i;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/i;->R()V
    :try_end_0
    .catch Lcom/sogou/sledog/b/d/j; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/j;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final O()V
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/d/g;->br:Lcom/sogou/sledog/b/d/i;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/i;->O()V

    return-void
.end method

.method public P()V
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/d/g;->br:Lcom/sogou/sledog/b/d/i;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/i;->P()V

    return-void
.end method
