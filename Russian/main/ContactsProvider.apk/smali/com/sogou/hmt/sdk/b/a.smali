.class public final Lcom/sogou/hmt/sdk/b/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/sogou/hmt/sdk/b/a;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/sogou/sledog/b/e/b/a/a;

.field private f:Lcom/sogou/sledog/b/e/b/b;

.field private g:Lcom/sogou/sledog/b/e/b;

.field private h:Lcom/sogou/sledog/core/a/a;

.field private i:Lcom/sogou/sledog/a/c/a;

.field private j:Lcom/sogou/sledog/b/f/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g()Lcom/sogou/hmt/sdk/b/a;
    .locals 1

    sget-object v0, Lcom/sogou/hmt/sdk/b/a;->c:Lcom/sogou/hmt/sdk/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sogou/hmt/sdk/b/a;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/b/a;-><init>()V

    sput-object v0, Lcom/sogou/hmt/sdk/b/a;->c:Lcom/sogou/hmt/sdk/b/a;

    :cond_0
    sget-object v0, Lcom/sogou/hmt/sdk/b/a;->c:Lcom/sogou/hmt/sdk/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/sogou/sledog/b/e/a;)Lcom/sogou/hmt/sdk/manager/HMTNumber;
    .locals 5

    iget-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->f:Lcom/sogou/sledog/b/e/b/b;

    invoke-virtual {v0, p1}, Lcom/sogou/sledog/b/e/b/b;->d(Lcom/sogou/sledog/b/e/a;)Lcom/sogou/sledog/b/e/a/b;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sogou/hmt/sdk/manager/HMTNumber;

    invoke-virtual {p1}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/sogou/sledog/b/e/a/b;->aj()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u5e38\u7528\u53f7\u7801"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sogou/hmt/sdk/manager/HMTNumber;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/sogou/sledog/b/e/a;)Lcom/sogou/hmt/sdk/manager/HMTNumber;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->e:Lcom/sogou/sledog/b/e/b/a/a;

    invoke-virtual {v0, p1}, Lcom/sogou/sledog/b/e/b/a/a;->e(Lcom/sogou/sledog/b/e/a;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sogou/sledog/b/e/a/c;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/a/c;->getCount()I

    move-result v1

    const/16 v3, 0x1388

    if-le v1, v3, :cond_1

    new-instance v1, Lcom/sogou/hmt/sdk/manager/HMTNumber;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/a/c;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u641c\u7d22"

    invoke-direct {v1, v2, v4, v0, v3}, Lcom/sogou/hmt/sdk/manager/HMTNumber;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sogou/hmt/sdk/manager/HMTNumber;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/a/c;->getCount()I

    move-result v3

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/a/c;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/sogou/hmt/sdk/manager/HMTNumber;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->g:Lcom/sogou/sledog/b/e/b;

    invoke-static {p1}, Lcom/sogou/sledog/b/e/b;->K(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLocalNumberVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->j:Lcom/sogou/sledog/b/f/a;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/f/a;->au()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPartLocalNumber()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->e:Lcom/sogou/sledog/b/e/b/a/a;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/b/a/a;->getPartLocalNumber()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/sogou/hmt/sdk/b/a;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->d:Ljava/lang/String;

    new-instance v0, Lcom/sogou/sledog/b/e/b/b;

    invoke-direct {v0}, Lcom/sogou/sledog/b/e/b/b;-><init>()V

    iput-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->f:Lcom/sogou/sledog/b/e/b/b;

    iget-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->f:Lcom/sogou/sledog/b/e/b/b;

    invoke-virtual {v0, p1}, Lcom/sogou/sledog/b/e/b/b;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/sogou/sledog/b/e/b/a/m;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/b/a;->d:Ljava/lang/String;

    const-string v2, "kNumberInfoDef"

    invoke-static {p1, v2}, Lcom/sogou/sledog/b/f/d;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/sogou/sledog/b/d/a/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sogou/sledog/b/e/b/a/m;-><init>(Ljava/lang/String;Lcom/sogou/sledog/b/d/a/b;)V

    new-instance v1, Lcom/sogou/sledog/b/e/b/a/l;

    iget-object v2, p0, Lcom/sogou/hmt/sdk/b/a;->d:Ljava/lang/String;

    const-string v3, "kNumberInfo"

    invoke-static {p1, v3}, Lcom/sogou/sledog/b/f/d;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/sogou/sledog/b/d/a/b;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sogou/sledog/b/e/b/a/l;-><init>(Ljava/lang/String;Lcom/sogou/sledog/b/d/a/b;)V

    new-instance v2, Lcom/sogou/sledog/b/e/b/a/a;

    invoke-direct {v2, v0, v1}, Lcom/sogou/sledog/b/e/b/a/a;-><init>(Lcom/sogou/sledog/b/e/b/a/b;Lcom/sogou/sledog/b/e/b/a/b;)V

    iput-object v2, p0, Lcom/sogou/hmt/sdk/b/a;->e:Lcom/sogou/sledog/b/e/b/a/a;

    new-instance v0, Lcom/sogou/sledog/b/e/b;

    invoke-direct {v0}, Lcom/sogou/sledog/b/e/b;-><init>()V

    iput-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->g:Lcom/sogou/sledog/b/e/b;

    new-instance v0, Lcom/sogou/sledog/b/b/b;

    invoke-direct {v0}, Lcom/sogou/sledog/b/b/b;-><init>()V

    iput-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->h:Lcom/sogou/sledog/core/a/a;

    invoke-static {}, Lcom/sogou/sledog/a/c/a;->r()Lcom/sogou/sledog/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->i:Lcom/sogou/sledog/a/c/a;

    new-instance v0, Lcom/sogou/sledog/b/f/a;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/b/a;->i:Lcom/sogou/sledog/a/c/a;

    iget-object v2, p0, Lcom/sogou/hmt/sdk/b/a;->i:Lcom/sogou/sledog/a/c/a;

    iget v2, v2, Lcom/sogou/sledog/a/c/a;->G:I

    invoke-virtual {v1, v2}, Lcom/sogou/sledog/a/c/a;->a(I)Lcom/sogou/sledog/b/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/sogou/hmt/sdk/b/a;->i:Lcom/sogou/sledog/a/c/a;

    iget-object v3, p0, Lcom/sogou/hmt/sdk/b/a;->i:Lcom/sogou/sledog/a/c/a;

    iget v3, v3, Lcom/sogou/sledog/a/c/a;->H:I

    invoke-virtual {v2, v3}, Lcom/sogou/sledog/a/c/a;->a(I)Lcom/sogou/sledog/b/d/a;

    move-result-object v2

    iget-object v3, p0, Lcom/sogou/hmt/sdk/b/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sogou/sledog/b/f/a;-><init>(Lcom/sogou/sledog/b/d/a;Lcom/sogou/sledog/b/d/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->j:Lcom/sogou/sledog/b/f/a;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/b/a;->j:Lcom/sogou/sledog/b/f/a;

    iget-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->e:Lcom/sogou/sledog/b/e/b/a/a;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/b/a/a;->ak()Lcom/sogou/sledog/b/e/b/a/b;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/d/a/a;

    invoke-virtual {v1, v0}, Lcom/sogou/sledog/b/f/a;->a(Lcom/sogou/sledog/b/d/a/a;)V

    iget-object v1, p0, Lcom/sogou/hmt/sdk/b/a;->j:Lcom/sogou/sledog/b/f/a;

    iget-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->e:Lcom/sogou/sledog/b/e/b/a/a;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/b/a/a;->al()Lcom/sogou/sledog/b/e/b/a/b;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/d/a/a;

    invoke-virtual {v1, v0}, Lcom/sogou/sledog/b/f/a;->a(Lcom/sogou/sledog/b/d/a/a;)V

    return-void
.end method

.method public final isNeedUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->j:Lcom/sogou/sledog/b/f/a;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/b/a;->h:Lcom/sogou/sledog/core/a/a;

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/b/f/a;->a(Lcom/sogou/sledog/core/a/a;)Z

    move-result v0

    return v0
.end method

.method public final startUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/sogou/hmt/sdk/b/a;->j:Lcom/sogou/sledog/b/f/a;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/b/a;->h:Lcom/sogou/sledog/core/a/a;

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/b/f/a;->b(Lcom/sogou/sledog/core/a/a;)Z

    move-result v0

    return v0
.end method
