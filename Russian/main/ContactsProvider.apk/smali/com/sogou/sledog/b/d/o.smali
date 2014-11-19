.class public abstract Lcom/sogou/sledog/b/d/o;
.super Lcom/sogou/sledog/b/d/g;

# interfaces
.implements Lcom/sogou/sledog/b/d/d;


# instance fields
.field private bJ:Lcom/sogou/sledog/b/d/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sogou/sledog/b/d/g;-><init>()V

    new-instance v0, Lcom/sogou/sledog/b/d/l;

    invoke-direct {v0, p0, p0}, Lcom/sogou/sledog/b/d/l;-><init>(Lcom/sogou/sledog/b/d/d;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/d/o;->bJ:Lcom/sogou/sledog/b/d/l;

    return-void
.end method


# virtual methods
.method protected final X()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sogou/sledog/b/d/o;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/d/o;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final Y()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/d/o;->bJ:Lcom/sogou/sledog/b/d/l;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/l;->T()V
    :try_end_0
    .catch Lcom/sogou/sledog/b/d/m; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/m;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/d/o;->bJ:Lcom/sogou/sledog/b/d/l;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/l;->T()V
    :try_end_0
    .catch Lcom/sogou/sledog/b/d/m; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/m;->printStackTrace()V

    goto :goto_0
.end method
