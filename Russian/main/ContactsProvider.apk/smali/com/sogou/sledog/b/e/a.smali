.class public final Lcom/sogou/sledog/b/e/a;
.super Ljava/lang/Object;


# instance fields
.field private bR:I

.field private bS:Ljava/lang/String;

.field private bT:Ljava/lang/String;

.field private bU:Ljava/lang/String;

.field private bV:Ljava/lang/String;

.field private bW:Ljava/lang/String;

.field private bX:Ljava/lang/String;

.field private bY:Ljava/lang/String;

.field private bZ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sogou/sledog/b/e/a;->bR:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty raw number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sogou/sledog/b/e/a;->bS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/a;->bV:Ljava/lang/String;

    return-void
.end method

.method final H(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/a;->bT:Ljava/lang/String;

    return-void
.end method

.method final I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/a;->bU:Ljava/lang/String;

    return-void
.end method

.method public final ac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/a;->bS:Ljava/lang/String;

    return-object v0
.end method

.method public final ad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/a;->bT:Ljava/lang/String;

    return-object v0
.end method

.method public final ae()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/a;->bU:Ljava/lang/String;

    return-object v0
.end method

.method public final af()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/a;->bV:Ljava/lang/String;

    return-object v0
.end method

.method public final ag()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sogou/sledog/b/e/a;->bR:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/a;->bW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sogou/sledog/b/e/a;->bV:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sogou/sledog/b/e/a;->bW:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sogou/sledog/b/e/a;->bV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sogou/sledog/b/e/a;->bV:Ljava/lang/String;

    goto :goto_0
.end method

.method public final ah()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/a;->bW:Ljava/lang/String;

    return-object v0
.end method

.method public final ai()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/a;->bX:Ljava/lang/String;

    return-object v0
.end method

.method final e(I)V
    .locals 0

    iput p1, p0, Lcom/sogou/sledog/b/e/a;->bR:I

    return-void
.end method

.method final q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/a;->bY:Ljava/lang/String;

    iput-object p2, p0, Lcom/sogou/sledog/b/e/a;->bZ:Ljava/lang/String;

    return-void
.end method

.method final r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/a;->bW:Ljava/lang/String;

    iput-object p2, p0, Lcom/sogou/sledog/b/e/a;->bX:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sogou/sledog/b/e/a;->bX:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
