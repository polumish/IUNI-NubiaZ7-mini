.class final Lcom/sogou/sledog/b/d/k;
.super Ljava/lang/Object;


# instance fields
.field private bA:Lcom/sogou/sledog/b/d/c;

.field private bB:Ljava/lang/Object;

.field private bC:Z


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/d/c;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/b/d/k;->bA:Lcom/sogou/sledog/b/d/c;

    iput-object p2, p0, Lcom/sogou/sledog/b/d/k;->bB:Ljava/lang/Object;

    return-void
.end method

.method private static E(Ljava/lang/String;)Lcom/sogou/sledog/b/d/a/b;
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    new-instance v0, Lcom/sogou/sledog/b/d/a/b;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1, v2, v5}, Lcom/sogou/sledog/b/d/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Lcom/sogou/sledog/b/d/a/b;)Lcom/sogou/sledog/b/d/a/b;
    .locals 2

    invoke-static {}, Lcom/sogou/hmt/sdk/f/e;->q()Lcom/sogou/hmt/sdk/f/e;

    move-result-object v0

    invoke-static {p0}, Lcom/sogou/sledog/b/d/k;->b(Lcom/sogou/sledog/b/d/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sogou/hmt/sdk/f/e;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/sogou/sledog/b/d/k;->E(Ljava/lang/String;)Lcom/sogou/sledog/b/d/a/b;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lcom/sogou/sledog/b/d/a/b;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sogou/sledog/b/d/a/b;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_updated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/sogou/sledog/b/d/a/b;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "key"

    invoke-virtual {p0}, Lcom/sogou/sledog/b/d/a/b;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-virtual {p0}, Lcom/sogou/sledog/b/d/a/b;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "date"

    invoke-virtual {p0}, Lcom/sogou/sledog/b/d/a/b;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b(Lcom/sogou/sledog/b/d/a/c;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sogou/sledog/b/d/k;->bB:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/sogou/sledog/b/d/k;->bC:Z

    if-eqz v3, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sogou/sledog/b/d/k;->bC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/sogou/sledog/b/d/k;->bA:Lcom/sogou/sledog/b/d/c;

    invoke-interface {v3, p1}, Lcom/sogou/sledog/b/d/c;->a(Lcom/sogou/sledog/b/d/a/c;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/sogou/sledog/b/d/a/c;->aa()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v3

    invoke-static {v3}, Lcom/sogou/sledog/b/d/k;->c(Lcom/sogou/sledog/b/d/a/b;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sogou/hmt/sdk/f/e;->q()Lcom/sogou/hmt/sdk/f/e;

    move-result-object v5

    invoke-static {v3}, Lcom/sogou/sledog/b/d/k;->b(Lcom/sogou/sledog/b/d/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Lcom/sogou/hmt/sdk/f/e;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/sogou/sledog/b/d/k;->bC:Z

    invoke-virtual {p1}, Lcom/sogou/sledog/b/d/a/c;->ab()V

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sogou/sledog/b/d/k;->bC:Z

    invoke-virtual {p1}, Lcom/sogou/sledog/b/d/a/c;->ab()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/sogou/sledog/b/d/k;->bC:Z

    invoke-virtual {p1}, Lcom/sogou/sledog/b/d/a/c;->ab()V

    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sogou/sledog/b/d/k;->bC:Z

    invoke-virtual {p1}, Lcom/sogou/sledog/b/d/a/c;->ab()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
