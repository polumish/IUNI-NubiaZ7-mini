.class public abstract Lcom/sogou/sledog/b/d/n;
.super Lcom/sogou/sledog/b/d/o;

# interfaces
.implements Lcom/sogou/sledog/b/d/a/a;
.implements Lcom/sogou/sledog/b/d/c;


# instance fields
.field private bH:Lcom/sogou/sledog/b/d/a/b;

.field private bI:Lcom/sogou/sledog/b/d/k;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/d/a/b;)V
    .locals 1

    invoke-direct {p0}, Lcom/sogou/sledog/b/d/o;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/b/d/n;->bH:Lcom/sogou/sledog/b/d/a/b;

    new-instance v0, Lcom/sogou/sledog/b/d/k;

    invoke-direct {v0, p0, p0}, Lcom/sogou/sledog/b/d/k;-><init>(Lcom/sogou/sledog/b/d/c;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/d/n;->bI:Lcom/sogou/sledog/b/d/k;

    return-void
.end method


# virtual methods
.method protected final U()Lcom/sogou/sledog/b/d/a/b;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/d/n;->bH:Lcom/sogou/sledog/b/d/a/b;

    return-object v0
.end method

.method protected final V()Lcom/sogou/sledog/b/d/a/b;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/d/n;->bI:Lcom/sogou/sledog/b/d/k;

    iget-object v0, p0, Lcom/sogou/sledog/b/d/n;->bH:Lcom/sogou/sledog/b/d/a/b;

    invoke-static {v0}, Lcom/sogou/sledog/b/d/k;->a(Lcom/sogou/sledog/b/d/a/b;)Lcom/sogou/sledog/b/d/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final W()Lcom/sogou/sledog/b/d/a/b;
    .locals 5

    invoke-virtual {p0}, Lcom/sogou/sledog/b/d/n;->V()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sogou/sledog/b/d/n;->bH:Lcom/sogou/sledog/b/d/a/b;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sogou/sledog/b/d/n;->bH:Lcom/sogou/sledog/b/d/a/b;

    invoke-virtual {v3}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-object v0, p0, Lcom/sogou/sledog/b/d/n;->bH:Lcom/sogou/sledog/b/d/a/b;

    goto :goto_0
.end method

.method public final c(Lcom/sogou/sledog/b/d/a/c;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sogou/sledog/b/d/n;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sogou/sledog/b/d/n;->bI:Lcom/sogou/sledog/b/d/k;

    invoke-virtual {v0, p1}, Lcom/sogou/sledog/b/d/k;->b(Lcom/sogou/sledog/b/d/a/c;)Z

    move-result v0

    goto :goto_0
.end method
