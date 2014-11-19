.class public final Lcom/sogou/hmt/sdk/c/a;
.super Lcom/sogou/hmt/sdk/c/g;


# static fields
.field static ONE_DAY:J

.field static n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/sogou/hmt/sdk/c/a;->ONE_DAY:J

    const-string v0, "last_show_time"

    sput-object v0, Lcom/sogou/hmt/sdk/c/a;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sogou/hmt/sdk/c/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/sogou/hmt/sdk/manager/HMTNumber;
    .locals 12

    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v0, "tag"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "amount"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "amount"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "tag"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "rating"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmpg-double v0, v5, v0

    if-gez v0, :cond_4

    new-instance v1, Lcom/sogou/hmt/sdk/manager/HMTNumber;

    const/4 v0, 0x2

    const-string v2, "\u641c\u7d22"

    invoke-direct {v1, p1, v0, v3, v2}, Lcom/sogou/hmt/sdk/manager/HMTNumber;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "slogan"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/sogou/hmt/sdk/manager/HMTNumber;->setSolgan(Ljava/lang/String;)V

    :cond_0
    const-string v0, "icon"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/sogou/hmt/sdk/manager/HMTNumber;->setIconUrl(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sogou/hmt/sdk/manager/HMTNumber;->LoadIcon()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    move-object v0, v1

    :goto_1
    :try_start_2
    const-string v1, "dz_url"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sogou/hmt/sdk/c/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sogou/hmt/sdk/c/f;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-wide v1, Lcom/sogou/hmt/sdk/c/a;->ONE_DAY:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/sogou/hmt/sdk/f/e;->q()Lcom/sogou/hmt/sdk/f/e;

    move-result-object v5

    sget-object v6, Lcom/sogou/hmt/sdk/c/a;->n:Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/sogou/hmt/sdk/f/e;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v5, v9

    if-nez v7, :cond_6

    invoke-static {}, Lcom/sogou/hmt/sdk/f/e;->q()Lcom/sogou/hmt/sdk/f/e;

    move-result-object v1

    sget-object v2, Lcom/sogou/hmt/sdk/c/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sogou/hmt/sdk/f/e;->setLong(Ljava/lang/String;J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    :try_start_3
    const-string v1, "dz_url"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sogou/hmt/sdk/c/a;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sogou/hmt/sdk/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sogou/hmt/sdk/f/e;->q()Lcom/sogou/hmt/sdk/f/e;

    move-result-object v1

    sget-object v2, Lcom/sogou/hmt/sdk/c/a;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sogou/hmt/sdk/f/e;->setLong(Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v0, Lcom/sogou/hmt/sdk/manager/HMTNumber;

    const/4 v2, 0x2

    const-string v4, "\u5927\u4f17\u70b9\u8bc4"

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sogou/hmt/sdk/manager/HMTNumber;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V

    move-object v1, v0

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/sogou/hmt/sdk/manager/HMTNumber;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/sogou/hmt/sdk/manager/HMTNumber;-><init>(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :cond_6
    sub-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_4

    :cond_7
    move-object v1, v7

    goto/16 :goto_0

    :cond_8
    move-object v0, v7

    goto/16 :goto_1
.end method


# virtual methods
.method public final g(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/c/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sogou/hmt/sdk/c/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/hmt/sdk/c/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sogou/hmt/sdk/c/f;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&dl=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/sogou/sledog/core/util/Native;->encryptCommon(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/hmt/sdk/f/a;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/hmt/sdk/c/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/hmt/sdk/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&ex="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/sogou/sledog/core/util/Native;->encryptCommon(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/sogou/hmt/sdk/f/a;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Lcom/sogou/hmt/sdk/c/b;

    invoke-direct {v2, v0}, Lcom/sogou/hmt/sdk/c/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sogou/hmt/sdk/c/b;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sogou/hmt/sdk/a/b;->d(Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/sogou/hmt/sdk/c/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/hmt/sdk/c/a;->i(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/sogou/hmt/sdk/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/sogou/hmt/sdk/manager/HMTNumber;

    move-result-object v0

    :cond_3
    return-object v0
.end method
