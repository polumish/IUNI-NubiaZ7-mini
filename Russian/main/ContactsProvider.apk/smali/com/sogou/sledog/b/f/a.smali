.class public final Lcom/sogou/sledog/b/f/a;
.super Ljava/lang/Object;


# instance fields
.field private dg:Ljava/lang/String;

.field private dh:Ljava/util/concurrent/ConcurrentHashMap;

.field private di:Lcom/sogou/sledog/b/f/e;

.field private dj:Lcom/sogou/sledog/b/d/a;

.field private dk:Lcom/sogou/sledog/b/d/a;

.field private dl:Lcom/sogou/sledog/b/d/e;

.field private dm:Lcom/sogou/sledog/core/a/a;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/d/a;Lcom/sogou/sledog/b/d/a;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/f/a;->dh:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/sogou/sledog/b/f/e;

    invoke-direct {v0}, Lcom/sogou/sledog/b/f/e;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/f/a;->di:Lcom/sogou/sledog/b/f/e;

    iput-object p1, p0, Lcom/sogou/sledog/b/f/a;->dj:Lcom/sogou/sledog/b/d/a;

    iput-object p2, p0, Lcom/sogou/sledog/b/f/a;->dk:Lcom/sogou/sledog/b/d/a;

    new-instance v0, Lcom/sogou/sledog/b/d/e;

    new-instance v1, Lcom/sogou/sledog/b/f/b;

    invoke-direct {v1, p0}, Lcom/sogou/sledog/b/f/b;-><init>(Lcom/sogou/sledog/b/f/a;)V

    iget-object v2, p0, Lcom/sogou/sledog/b/f/a;->dj:Lcom/sogou/sledog/b/d/a;

    invoke-virtual {v2}, Lcom/sogou/sledog/b/d/a;->M()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sogou/sledog/b/f/a;->dj:Lcom/sogou/sledog/b/d/a;

    invoke-virtual {v4}, Lcom/sogou/sledog/b/d/a;->L()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sogou/sledog/b/d/e;-><init>(Ljava/util/concurrent/Callable;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/f/a;->dl:Lcom/sogou/sledog/b/d/e;

    const-string v0, "updateTemp"

    invoke-static {p3, v0}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/sledog/b/f/a;->dg:Ljava/lang/String;

    return-void
.end method

.method private ac(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/sogou/sledog/core/util/a;->o(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_1
.end method

.method private ad(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/d/a/a;

    invoke-interface {v0}, Lcom/sogou/sledog/b/d/a/a;->W()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/a/b;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1"

    :cond_0
    return-object v0
.end method

.method private ae(Ljava/lang/String;)Z
    .locals 14

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/sogou/sledog/core/util/a;->o(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_5

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/f/a;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sogou/sledog/core/util/c/b;->w(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lcom/sogou/sledog/core/util/c/f;

    invoke-direct {v7}, Lcom/sogou/sledog/core/util/c/f;-><init>()V

    invoke-virtual {v7, v1}, Lcom/sogou/sledog/core/util/c/f;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    invoke-direct {p0, v0, v4}, Lcom/sogou/sledog/b/f/a;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/sogou/sledog/b/d/a/b;

    move-result-object v1

    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_1

    new-instance v7, Lcom/sogou/sledog/b/f/c;

    iget-object v1, p0, Lcom/sogou/sledog/b/f/a;->dh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sogou/sledog/b/d/a/a;

    invoke-interface {v1}, Lcom/sogou/sledog/b/d/a/a;->W()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/f/a;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/f/a;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v1, v4, v8, v0}, Lcom/sogou/sledog/b/f/c;-><init>(Lcom/sogou/sledog/b/d/a/b;Lcom/sogou/sledog/b/d/a/b;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Lcom/sogou/sledog/b/d/a/c;->aa()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/sledog/b/d/a/b;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/d/a/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, v7}, Lcom/sogou/sledog/b/d/a/a;->c(Lcom/sogou/sledog/b/d/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lcom/sogou/sledog/b/d/a/c;->aa()Lcom/sogou/sledog/b/d/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/sogou/sledog/b/f/a;->dm:Lcom/sogou/sledog/core/a/a;

    new-instance v4, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/a/b;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/a/b;->getVersion()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/sogou/sledog/b/b/d;

    iget-object v10, p0, Lcom/sogou/sledog/b/f/a;->dk:Lcom/sogou/sledog/b/d/a;

    invoke-virtual {v10}, Lcom/sogou/sledog/b/d/a;->K()Lcom/sogou/sledog/b/b/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sogou/sledog/b/b/c;->getHost()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sogou/sledog/b/f/a;->dk:Lcom/sogou/sledog/b/d/a;

    invoke-virtual {v11}, Lcom/sogou/sledog/b/d/a;->K()Lcom/sogou/sledog/b/b/c;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sogou/sledog/b/b/c;->I()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sogou/sledog/b/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "module"

    const-string v11, "%s=%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v8, 0x1

    aput-object v0, v12, v8

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/sogou/sledog/b/b/a;

    invoke-direct {v8}, Lcom/sogou/sledog/b/b/a;-><init>()V

    invoke-virtual {v8, v0}, Lcom/sogou/sledog/b/b/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lcom/sogou/sledog/b/b/d;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/sledog/b/b/d;

    invoke-virtual {v9}, Lcom/sogou/sledog/b/b/d;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/sogou/sledog/core/a/a;->a(Ljava/net/URI;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    :try_start_2
    invoke-virtual {v7}, Lcom/sogou/sledog/b/d/a/c;->ab()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto/16 :goto_0

    :cond_3
    :try_start_3
    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/f/a;->af(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/sogou/sledog/core/util/c/b;->i(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/f/a;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sogou/sledog/core/util/c/b;->deleteFile(Ljava/lang/String;)Z

    invoke-direct {p0, v0, v4}, Lcom/sogou/sledog/b/f/a;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/sogou/sledog/b/d/a/b;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :cond_4
    move v1, v2

    goto/16 :goto_2

    :cond_5
    move-object v4, v1

    goto/16 :goto_3
.end method

.method private af(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dg:Ljava/lang/String;

    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private at()Ljava/lang/String;
    .locals 8

    new-instance v1, Lcom/sogou/sledog/b/b/d;

    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dj:Lcom/sogou/sledog/b/d/a;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/a;->K()Lcom/sogou/sledog/b/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/sledog/b/b/c;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sogou/sledog/b/f/a;->dj:Lcom/sogou/sledog/b/d/a;

    invoke-virtual {v2}, Lcom/sogou/sledog/b/d/a;->K()Lcom/sogou/sledog/b/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sogou/sledog/b/b/c;->I()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sogou/sledog/b/b/a;

    invoke-direct {v3}, Lcom/sogou/sledog/b/b/a;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/sogou/sledog/b/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sogou/sledog/core/util/a/a;)V

    const-string v2, "module"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sogou/sledog/b/b/a;

    invoke-direct {v0}, Lcom/sogou/sledog/b/b/a;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sogou/sledog/b/b/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sogou/sledog/b/b/d;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/sledog/b/b/d;

    invoke-virtual {v1}, Lcom/sogou/sledog/b/b/d;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "%s=%s&"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/f/a;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/sogou/sledog/b/d/a/b;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->di:Lcom/sogou/sledog/b/f/e;

    invoke-direct {p0, p1}, Lcom/sogou/sledog/b/f/a;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/sogou/sledog/b/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/sogou/sledog/b/d/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/sogou/sledog/b/d/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/sogou/sledog/b/d/a/a;->W()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/sledog/b/d/a/b;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/sogou/sledog/core/a/a;)Z
    .locals 3

    iput-object p1, p0, Lcom/sogou/sledog/b/f/a;->dm:Lcom/sogou/sledog/core/a/a;

    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dg:Ljava/lang/String;

    invoke-static {v0}, Lcom/sogou/sledog/core/util/c/b;->u(Ljava/lang/String;)Z

    :try_start_0
    invoke-direct {p0}, Lcom/sogou/sledog/b/f/a;->at()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/sledog/b/f/a;->dm:Lcom/sogou/sledog/core/a/a;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sogou/sledog/core/a/a;->b(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/f/a;->ac(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final au()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "%s=%s&"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/f/a;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final b(Lcom/sogou/sledog/core/a/a;)Z
    .locals 2

    iget-object v0, p0, Lcom/sogou/sledog/b/f/a;->dg:Ljava/lang/String;

    invoke-static {v0}, Lcom/sogou/sledog/core/util/c/b;->u(Ljava/lang/String;)Z

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {p0}, Lcom/sogou/sledog/b/f/a;->at()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sogou/sledog/core/a/a;->b(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/f/a;->ae(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
