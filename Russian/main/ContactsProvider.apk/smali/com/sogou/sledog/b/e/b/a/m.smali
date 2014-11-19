.class public final Lcom/sogou/sledog/b/e/b/a/m;
.super Lcom/sogou/sledog/b/e/b/a/f;

# interfaces
.implements Lcom/sogou/sledog/b/e/b/a/b;


# static fields
.field private static cS:Ljava/lang/String;

.field private static cT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sogou/sledog/b/d/a/b;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/sogou/sledog/b/e/b/a/f;-><init>(Lcom/sogou/sledog/b/d/a/b;)V

    const-string v0, "deflocalNumber"

    invoke-static {p1, v0}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sogou/sledog/b/e/b/a/m;->cS:Ljava/lang/String;

    const-string v0, "deflocalNumberUpdate"

    invoke-static {p1, v0}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sogou/sledog/b/e/b/a/m;->cT:Ljava/lang/String;

    const-string v0, "kNumberInfoDef"

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/m;->cC:Ljava/lang/String;

    sget-object v0, Lcom/sogou/sledog/b/e/b/a/m;->cS:Ljava/lang/String;

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/m;->cD:Ljava/lang/String;

    sget-object v0, Lcom/sogou/sledog/b/e/b/a/m;->cT:Ljava/lang/String;

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/m;->cE:Ljava/lang/String;

    const-string v0, "up_NumDef_C"

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/m;->cF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e(Lcom/sogou/sledog/b/e/a;)Landroid/util/Pair;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-super {p0, p1}, Lcom/sogou/sledog/b/e/b/a/f;->f(Lcom/sogou/sledog/b/e/a;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sogou/sledog/b/e/a/c;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    :cond_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    move-object v3, v0

    move v0, v1

    move-object v1, v3

    goto :goto_0
.end method

.method public final w()V
    .locals 4

    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/a/m;->V()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/a/m;->U()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/a/m;->ar()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/a/m;->as()V

    goto :goto_0
.end method
