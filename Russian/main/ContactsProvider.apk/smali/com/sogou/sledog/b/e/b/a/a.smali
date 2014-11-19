.class public final Lcom/sogou/sledog/b/e/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field private co:Lcom/sogou/sledog/b/e/b/a/b;

.field private cp:Lcom/sogou/sledog/b/e/b/a/b;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/e/b/a/b;Lcom/sogou/sledog/b/e/b/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/b/e/b/a/a;->co:Lcom/sogou/sledog/b/e/b/a/b;

    iput-object p2, p0, Lcom/sogou/sledog/b/e/b/a/a;->cp:Lcom/sogou/sledog/b/e/b/a/b;

    return-void
.end method


# virtual methods
.method public final ak()Lcom/sogou/sledog/b/e/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/a;->co:Lcom/sogou/sledog/b/e/b/a/b;

    return-object v0
.end method

.method public final al()Lcom/sogou/sledog/b/e/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/a;->cp:Lcom/sogou/sledog/b/e/b/a/b;

    return-object v0
.end method

.method public final e(Lcom/sogou/sledog/b/e/a;)Landroid/util/Pair;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/a;->cp:Lcom/sogou/sledog/b/e/b/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/a;->co:Lcom/sogou/sledog/b/e/b/a/b;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/a;->cp:Lcom/sogou/sledog/b/e/b/a/b;

    invoke-interface {v1, p1}, Lcom/sogou/sledog/b/e/b/a/b;->e(Lcom/sogou/sledog/b/e/a;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sogou/sledog/b/e/a/c;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/lit8 v2, v1, 0x0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/a;->co:Lcom/sogou/sledog/b/e/b/a/b;

    invoke-interface {v1, p1}, Lcom/sogou/sledog/b/e/b/a/b;->e(Lcom/sogou/sledog/b/e/a;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sogou/sledog/b/e/a/c;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v1, v2

    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public final getPartLocalNumber()Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/a;->cp:Lcom/sogou/sledog/b/e/b/a/b;

    check-cast v0, Lcom/sogou/sledog/b/e/b/a/f;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/b/a/f;->getPartLocalNumber()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/a;->co:Lcom/sogou/sledog/b/e/b/a/b;

    check-cast v0, Lcom/sogou/sledog/b/e/b/a/f;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/b/a/f;->getPartLocalNumber()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v2
.end method
