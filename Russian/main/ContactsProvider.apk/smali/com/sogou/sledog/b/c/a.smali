.class public final Lcom/sogou/sledog/b/c/a;
.super Ljava/lang/Object;


# instance fields
.field private be:Lcom/sogou/sledog/core/util/a/a;

.field private bf:Lcom/sogou/sledog/b/b/c;

.field private h:Lcom/sogou/sledog/core/a/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sogou/sledog/b/b/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sogou/sledog/b/b/a;

    invoke-direct {v0}, Lcom/sogou/sledog/b/b/a;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/c/a;->be:Lcom/sogou/sledog/core/util/a/a;

    iput-object p2, p0, Lcom/sogou/sledog/b/c/a;->bf:Lcom/sogou/sledog/b/b/c;

    iput-object p1, p0, Lcom/sogou/sledog/b/c/a;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sogou/sledog/b/b/b;

    invoke-direct {v0}, Lcom/sogou/sledog/b/b/b;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/c/a;->h:Lcom/sogou/sledog/core/a/a;

    return-void
.end method


# virtual methods
.method public final J()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/c/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sogou/sledog/a/b/a/a;->h(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/sogou/sledog/a/b/a/a;->F:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/sogou/sledog/b/b/d;

    iget-object v5, p0, Lcom/sogou/sledog/b/c/a;->bf:Lcom/sogou/sledog/b/b/c;

    invoke-virtual {v5}, Lcom/sogou/sledog/b/b/c;->getHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sogou/sledog/b/c/a;->bf:Lcom/sogou/sledog/b/b/c;

    invoke-virtual {v6}, Lcom/sogou/sledog/b/b/c;->I()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sogou/sledog/b/c/a;->be:Lcom/sogou/sledog/core/util/a/a;

    invoke-direct {v3, v5, v6, v7}, Lcom/sogou/sledog/b/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sogou/sledog/core/util/a/a;)V

    const-string v5, "type"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/sogou/sledog/b/b/d;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/sledog/b/b/d;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "message"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sogou/sledog/b/c/a;->h:Lcom/sogou/sledog/core/a/a;

    invoke-virtual {v3}, Lcom/sogou/sledog/b/b/d;->toURI()Ljava/net/URI;

    move-result-object v3

    new-instance v5, Lcom/sogou/sledog/core/util/a/d;

    invoke-direct {v5}, Lcom/sogou/sledog/core/util/a/d;-><init>()V

    invoke-virtual {v0, v3, v4, v5}, Lcom/sogou/sledog/core/a/a;->a(Ljava/net/URI;Ljava/util/Map;Lcom/sogou/sledog/core/util/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "success"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/sogou/sledog/a/b/a/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
