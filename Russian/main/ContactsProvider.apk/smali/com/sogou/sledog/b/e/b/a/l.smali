.class public final Lcom/sogou/sledog/b/e/b/a/l;
.super Lcom/sogou/sledog/b/e/b/a/f;

# interfaces
.implements Lcom/sogou/sledog/b/e/b/a/b;


# static fields
.field private static cQ:Ljava/lang/String;

.field private static cR:Ljava/lang/String;


# instance fields
.field private cP:Lcom/sogou/sledog/b/e/b/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sogou/sledog/b/d/a/b;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/sogou/sledog/b/e/b/a/f;-><init>(Lcom/sogou/sledog/b/d/a/b;)V

    new-instance v0, Lcom/sogou/sledog/b/e/b/a/c;

    invoke-direct {v0, p1}, Lcom/sogou/sledog/b/e/b/a/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/l;->cP:Lcom/sogou/sledog/b/e/b/a/c;

    const-string v0, "localNumber"

    invoke-static {p1, v0}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sogou/sledog/b/e/b/a/l;->cQ:Ljava/lang/String;

    const-string v0, "localNumberUpdate"

    invoke-static {p1, v0}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sogou/sledog/b/e/b/a/l;->cR:Ljava/lang/String;

    const-string v0, "kNumberInfo"

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/l;->cC:Ljava/lang/String;

    sget-object v0, Lcom/sogou/sledog/b/e/b/a/l;->cQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/l;->cD:Ljava/lang/String;

    sget-object v0, Lcom/sogou/sledog/b/e/b/a/l;->cR:Ljava/lang/String;

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/l;->cE:Ljava/lang/String;

    const-string v0, "up_Num_C"

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/l;->cF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sogou/sledog/b/d/a/c;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sogou/sledog/b/d/a/c;->aa()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/sledog/b/d/a/b;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "_inc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/l;->cP:Lcom/sogou/sledog/b/e/b/a/c;

    invoke-virtual {p1}, Lcom/sogou/sledog/b/d/a/c;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sogou/sledog/b/e/b/a/c;->P(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/l;->cP:Lcom/sogou/sledog/b/e/b/a/c;

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/b/e/b/a/c;->d([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/a/l;->O()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    invoke-super {p0, p1}, Lcom/sogou/sledog/b/e/b/a/f;->a(Lcom/sogou/sledog/b/d/a/c;)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method protected final b(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/l;->cP:Lcom/sogou/sledog/b/e/b/a/c;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/b/a/c;->ao()V

    :cond_0
    return p1
.end method

.method protected final d(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Landroid/util/Pair;
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sogou/sledog/b/e/b/a/l;->cP:Lcom/sogou/sledog/b/e/b/a/c;

    invoke-virtual {v2, p1, p2}, Lcom/sogou/sledog/b/e/b/a/c;->c(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Lcom/sogou/sledog/b/e/b/a/e;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sogou/sledog/b/e/b/a/e;->aq()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/sogou/sledog/b/e/b/a/e;->ap()Lcom/sogou/sledog/b/e/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/a/l;->W()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sogou/sledog/b/e/a/c;->a(J)V

    :cond_0
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, p1, v2}, Lcom/sogou/sledog/b/e/b/a/f;->d(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sogou/sledog/b/e/a/c;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    move-object v2, v0

    move v0, v1

    :goto_1
    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public final e(Lcom/sogou/sledog/b/e/a;)Landroid/util/Pair;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sogou/sledog/b/e/b/a/l;->f(Lcom/sogou/sledog/b/e/a;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final w()V
    .locals 1

    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/a/l;->ar()V

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/l;->cP:Lcom/sogou/sledog/b/e/b/a/c;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/b/a/c;->init()V

    return-void
.end method

.method public final x()V
    .locals 1

    invoke-super {p0}, Lcom/sogou/sledog/b/e/b/a/f;->x()V

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/l;->cP:Lcom/sogou/sledog/b/e/b/a/c;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/b/a/c;->am()V

    return-void
.end method
