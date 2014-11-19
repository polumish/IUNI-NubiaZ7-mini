.class public final Lcom/sogou/sledog/b/e/b/b;
.super Lcom/sogou/sledog/b/d/n;

# interfaces
.implements Lcom/sogou/sledog/b/e/b/a;


# instance fields
.field private cl:Ljava/util/Map;

.field private cm:Lcom/sogou/sledog/core/util/c/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/d/n;-><init>(Lcom/sogou/sledog/b/d/a/b;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/b;->cl:Ljava/util/Map;

    new-instance v0, Lcom/sogou/sledog/core/util/c/h;

    new-instance v1, Lcom/sogou/sledog/core/util/b/b;

    new-instance v2, Lcom/sogou/sledog/core/util/c/f;

    invoke-direct {v2}, Lcom/sogou/sledog/core/util/c/f;-><init>()V

    invoke-direct {v1, v2}, Lcom/sogou/sledog/core/util/b/b;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/h;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/b;->cm:Lcom/sogou/sledog/core/util/c/a;

    return-void
.end method

.method static synthetic a(Lcom/sogou/sledog/b/e/b/b;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/b;->cl:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/sogou/sledog/b/d/a/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lcom/sogou/sledog/b/e/a;)Lcom/sogou/sledog/b/e/a/b;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sogou/sledog/b/e/a;->af()Ljava/lang/String;

    move-result-object v3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/b;->cl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/b;->w()V

    :cond_1
    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/b;->cl:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/b;->cl:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    new-instance v0, Lcom/sogou/sledog/b/e/a/b;

    invoke-direct {v0, p1, v2}, Lcom/sogou/sledog/b/e/a/b;-><init>(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/b/b;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final w()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "official_tel.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sogou/sledog/core/util/c/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/sogou/sledog/core/util/c/c;-><init>(I)V

    iget-object v2, p0, Lcom/sogou/sledog/b/e/b/b;->cm:Lcom/sogou/sledog/core/util/c/a;

    new-instance v3, Lcom/sogou/sledog/b/e/b/c;

    invoke-direct {v3, p0}, Lcom/sogou/sledog/b/e/b/c;-><init>(Lcom/sogou/sledog/b/e/b/b;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/io/InputStream;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/b;->cl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
