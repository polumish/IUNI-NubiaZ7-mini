.class public final Lcom/sogou/sledog/b/a/a/k;
.super Lcom/sogou/sledog/b/d/n;


# instance fields
.field private aD:Ljava/util/ArrayList;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sogou/sledog/b/d/a/b;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/sogou/sledog/b/d/n;-><init>(Lcom/sogou/sledog/b/d/a/b;)V

    iput-object p1, p0, Lcom/sogou/sledog/b/a/a/k;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/k;->aD:Ljava/util/ArrayList;

    return-void
.end method

.method private C(Ljava/lang/String;)Lcom/sogou/sledog/b/a/a/m;
    .locals 3

    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/k;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/a/a/m;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/a/a/m;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private h(Ljava/io/InputStream;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sogou/sledog/core/util/c/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/sogou/sledog/core/util/c/c;-><init>(I)V

    new-instance v2, Lcom/sogou/sledog/core/util/c/h;

    new-instance v3, Lcom/sogou/sledog/core/util/b/b;

    new-instance v4, Lcom/sogou/sledog/core/util/c/f;

    invoke-direct {v4}, Lcom/sogou/sledog/core/util/c/f;-><init>()V

    invoke-direct {v3, v4}, Lcom/sogou/sledog/core/util/b/b;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    invoke-direct {v2, v3}, Lcom/sogou/sledog/core/util/c/h;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    new-instance v3, Lcom/sogou/sledog/b/a/a/l;

    invoke-direct {v3, p0, v0}, Lcom/sogou/sledog/b/a/a/l;-><init>(Lcom/sogou/sledog/b/a/a/k;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/io/InputStream;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/k;->aD:Ljava/util/ArrayList;

    return-void
.end method

.method private static v()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sogou/hmt/sdk/manager/c;->h()Lcom/sogou/hmt/sdk/manager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/manager/c;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "regex.data"

    invoke-static {v0, v1}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/sogou/sledog/b/d/a/c;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sogou/sledog/b/d/a/c;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sogou/sledog/b/a/a/k;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sogou/sledog/core/util/c/b;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/k;->O()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n(Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/sledog/b/a/a/m;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x320

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/k;->X()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/sogou/sledog/b/a/a/k;->C(Ljava/lang/String;)Lcom/sogou/sledog/b/a/a/m;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sogou/sledog/b/a/a/k;->C(Ljava/lang/String;)Lcom/sogou/sledog/b/a/a/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final w()V
    .locals 4

    invoke-super {p0}, Lcom/sogou/sledog/b/d/n;->w()V

    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/k;->V()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/k;->U()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sogou/sledog/b/a/a/k;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/core/util/c;->p(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/a/a/k;->h(Ljava/io/InputStream;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "regex.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/a/a/k;->h(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final x()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/k;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
