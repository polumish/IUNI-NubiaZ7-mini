.class public final Lcom/sogou/hmt/sdk/e/a;
.super Ljava/lang/Object;


# static fields
.field private static t:Lcom/sogou/hmt/sdk/e/a;


# instance fields
.field private h:Lcom/sogou/sledog/core/a/a;

.field private i:Lcom/sogou/sledog/a/c/a;

.field private j:Lcom/sogou/sledog/b/f/a;

.field private mContext:Landroid/content/Context;

.field private u:Lcom/sogou/sledog/b/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static n()Lcom/sogou/hmt/sdk/e/a;
    .locals 1

    sget-object v0, Lcom/sogou/hmt/sdk/e/a;->t:Lcom/sogou/hmt/sdk/e/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sogou/hmt/sdk/e/a;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/e/a;-><init>()V

    sput-object v0, Lcom/sogou/hmt/sdk/e/a;->t:Lcom/sogou/hmt/sdk/e/a;

    :cond_0
    sget-object v0, Lcom/sogou/hmt/sdk/e/a;->t:Lcom/sogou/hmt/sdk/e/a;

    return-object v0
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/e/a;->u:Lcom/sogou/sledog/b/a/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/sogou/sledog/b/a/a/e;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/sledog/b/a/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/sogou/sledog/b/a/a/j;->aB:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLocalSmsDataVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/e/a;->j:Lcom/sogou/sledog/b/f/a;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/f/a;->au()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Lcom/sogou/hmt/sdk/e/a;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sogou/sledog/b/a/a/k;

    iget-object v2, p0, Lcom/sogou/hmt/sdk/e/a;->mContext:Landroid/content/Context;

    const-string v3, "kSMSRegex"

    invoke-static {v2, v3}, Lcom/sogou/sledog/b/f/d;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/sogou/sledog/b/d/a/b;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/sogou/sledog/b/a/a/k;-><init>(Landroid/content/Context;Lcom/sogou/sledog/b/d/a/b;)V

    new-instance v2, Lcom/sogou/sledog/b/a/a/b;

    iget-object v3, p0, Lcom/sogou/hmt/sdk/e/a;->mContext:Landroid/content/Context;

    const-string v4, "kClientNumber"

    invoke-static {v3, v4}, Lcom/sogou/sledog/b/f/d;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/sogou/sledog/b/d/a/b;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sogou/sledog/b/a/a/b;-><init>(Lcom/sogou/sledog/b/d/a/b;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sogou/sledog/b/a/a/a/d;

    iget-object v5, p0, Lcom/sogou/hmt/sdk/e/a;->mContext:Landroid/content/Context;

    const-string v6, "kSMSKeyword"

    invoke-static {v5, v6}, Lcom/sogou/sledog/b/f/d;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/sogou/sledog/b/d/a/b;

    move-result-object v5

    invoke-direct {v4, p1, v3, v5}, Lcom/sogou/sledog/b/a/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sogou/sledog/b/d/a/b;)V

    new-instance v3, Lcom/sogou/sledog/b/b/b;

    invoke-direct {v3}, Lcom/sogou/sledog/b/b/b;-><init>()V

    iput-object v3, p0, Lcom/sogou/hmt/sdk/e/a;->h:Lcom/sogou/sledog/core/a/a;

    invoke-static {}, Lcom/sogou/sledog/a/c/a;->r()Lcom/sogou/sledog/a/c/a;

    move-result-object v3

    iput-object v3, p0, Lcom/sogou/hmt/sdk/e/a;->i:Lcom/sogou/sledog/a/c/a;

    new-instance v3, Lcom/sogou/sledog/b/f/a;

    iget-object v5, p0, Lcom/sogou/hmt/sdk/e/a;->i:Lcom/sogou/sledog/a/c/a;

    iget-object v6, p0, Lcom/sogou/hmt/sdk/e/a;->i:Lcom/sogou/sledog/a/c/a;

    iget v6, v6, Lcom/sogou/sledog/a/c/a;->G:I

    invoke-virtual {v5, v6}, Lcom/sogou/sledog/a/c/a;->a(I)Lcom/sogou/sledog/b/d/a;

    move-result-object v5

    iget-object v6, p0, Lcom/sogou/hmt/sdk/e/a;->i:Lcom/sogou/sledog/a/c/a;

    iget-object v7, p0, Lcom/sogou/hmt/sdk/e/a;->i:Lcom/sogou/sledog/a/c/a;

    iget v7, v7, Lcom/sogou/sledog/a/c/a;->H:I

    invoke-virtual {v6, v7}, Lcom/sogou/sledog/a/c/a;->a(I)Lcom/sogou/sledog/b/d/a;

    move-result-object v6

    invoke-direct {v3, v5, v6, v0}, Lcom/sogou/sledog/b/f/a;-><init>(Lcom/sogou/sledog/b/d/a;Lcom/sogou/sledog/b/d/a;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sogou/hmt/sdk/e/a;->j:Lcom/sogou/sledog/b/f/a;

    iget-object v0, p0, Lcom/sogou/hmt/sdk/e/a;->j:Lcom/sogou/sledog/b/f/a;

    invoke-virtual {v0, v4}, Lcom/sogou/sledog/b/f/a;->a(Lcom/sogou/sledog/b/d/a/a;)V

    new-instance v0, Lcom/sogou/sledog/b/a/a/e;

    invoke-direct {v0, v1, v2, v4}, Lcom/sogou/sledog/b/a/a/e;-><init>(Lcom/sogou/sledog/b/a/a/k;Lcom/sogou/sledog/b/a/a/f;Lcom/sogou/sledog/b/a/a/a/b;)V

    iput-object v0, p0, Lcom/sogou/hmt/sdk/e/a;->u:Lcom/sogou/sledog/b/a/a/e;

    return-void
.end method

.method public final isNeedUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/sogou/hmt/sdk/e/a;->j:Lcom/sogou/sledog/b/f/a;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/e/a;->h:Lcom/sogou/sledog/core/a/a;

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/b/f/a;->a(Lcom/sogou/sledog/core/a/a;)Z

    move-result v0

    return v0
.end method

.method public final startUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/sogou/hmt/sdk/e/a;->j:Lcom/sogou/sledog/b/f/a;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/e/a;->h:Lcom/sogou/sledog/core/a/a;

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/b/f/a;->b(Lcom/sogou/sledog/core/a/a;)Z

    move-result v0

    return v0
.end method
