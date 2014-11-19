.class public abstract Lcom/sogou/sledog/b/e/b/a/f;
.super Lcom/sogou/sledog/b/d/n;

# interfaces
.implements Lcom/sogou/sledog/b/e/b/a/b;


# instance fields
.field private SUFFIX:Ljava/lang/String;

.field private cA:Ljava/lang/String;

.field private cB:Ljava/lang/String;

.field protected cC:Ljava/lang/String;

.field protected cD:Ljava/lang/String;

.field protected cE:Ljava/lang/String;

.field protected cF:Ljava/lang/String;

.field private cG:I

.field private cH:Ljava/util/Map;

.field private cI:Ljava/util/Map;

.field private cJ:Ljava/util/ArrayList;

.field private cK:Ljava/util/List;

.field private cm:Lcom/sogou/sledog/core/util/c/a;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/d/a/b;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sogou/sledog/b/d/n;-><init>(Lcom/sogou/sledog/b/d/a/b;)V

    const-string v0, "index.txt.gz"

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cA:Ljava/lang/String;

    const-string v0, "tag.txt.gz"

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cB:Ljava/lang/String;

    const-string v0, "gz"

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->SUFFIX:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cG:I

    new-instance v0, Lcom/sogou/sledog/core/util/c/h;

    new-instance v1, Lcom/sogou/sledog/core/util/b/b;

    new-instance v2, Lcom/sogou/sledog/core/util/c/f;

    invoke-direct {v2}, Lcom/sogou/sledog/core/util/c/f;-><init>()V

    invoke-direct {v1, v2}, Lcom/sogou/sledog/core/util/b/b;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/h;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cm:Lcom/sogou/sledog/core/util/c/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cH:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cI:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cJ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cK:Ljava/util/List;

    return-void
.end method

.method private Q(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "numFiles"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "from"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "to"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/sogou/sledog/b/e/b/a/k;

    const-string v7, "%s.%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v4, 0x1

    iget-object v9, p0, Lcom/sogou/sledog/b/e/b/a/f;->SUFFIX:Ljava/lang/String;

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v5, v3, v4}, Lcom/sogou/sledog/b/e/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sogou/sledog/b/e/b/a/f;->cK:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private R(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->SUFFIX:Ljava/lang/String;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "localinfo"

    invoke-static {v2, p1}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/f;->cJ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/sogou/sledog/b/e/b/a/f;->cG:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/f;->cH:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/f;->cJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/e/b/a/f;->j(Ljava/io/InputStream;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sogou/sledog/b/e/b/a/f;->cD:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/e/b/a/f;->j(Ljava/io/InputStream;)V

    goto :goto_1
.end method

.method private a(Lcom/sogou/sledog/b/e/a;Lcom/sogou/sledog/b/e/b/a/j;)Lcom/sogou/sledog/b/e/a/c;
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cI:Ljava/util/Map;

    iget-object v1, p2, Lcom/sogou/sledog/b/e/b/a/j;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/sogou/sledog/b/e/a/c;

    invoke-direct {v1, p1}, Lcom/sogou/sledog/b/e/a/c;-><init>(Lcom/sogou/sledog/b/e/a;)V

    iget-object v2, p2, Lcom/sogou/sledog/b/e/b/a/j;->cM:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sogou/sledog/b/e/a/c;->f(I)V

    invoke-virtual {v1, v0}, Lcom/sogou/sledog/b/e/a/c;->O(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/sogou/sledog/b/e/b/a/f;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cI:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/sogou/sledog/b/e/b/a/f;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cH:Ljava/util/Map;

    return-object v0
.end method

.method private j(Ljava/io/InputStream;)V
    .locals 3

    iget v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cG:I

    new-instance v0, Lcom/sogou/sledog/core/util/c/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/c;-><init>(I)V

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/f;->cm:Lcom/sogou/sledog/core/util/c/a;

    new-instance v2, Lcom/sogou/sledog/b/e/b/a/i;

    invoke-direct {v2, p0}, Lcom/sogou/sledog/b/e/b/a/i;-><init>(Lcom/sogou/sledog/b/e/b/a/f;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/io/InputStream;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sogou/sledog/b/d/a/c;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/sogou/sledog/b/d/a/c;->getURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/f;->cE:Ljava/lang/String;

    new-instance v2, Lcom/sogou/sledog/core/util/c/f;

    invoke-direct {v2}, Lcom/sogou/sledog/core/util/c/f;-><init>()V

    invoke-virtual {v2, v0}, Lcom/sogou/sledog/core/util/c/f;->s(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2, v1}, Lcom/sogou/sledog/core/util/c/i;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cE:Ljava/lang/String;

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/f;->cD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sogou/sledog/core/util/c/b;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sogou/sledog/b/e/b/a/f;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/a/f;->O()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final ar()V
    .locals 4

    const-string v0, "gz"

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->SUFFIX:Ljava/lang/String;

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cm:Lcom/sogou/sledog/core/util/c/a;

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/f;->cD:Ljava/lang/String;

    iget-object v2, p0, Lcom/sogou/sledog/b/e/b/a/f;->cA:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/core/util/c/a;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/e/b/a/f;->Q(Ljava/lang/String;)V

    new-instance v0, Lcom/sogou/sledog/core/util/c/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/c;-><init>(I)V

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/f;->cD:Ljava/lang/String;

    iget-object v2, p0, Lcom/sogou/sledog/b/e/b/a/f;->cB:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sogou/sledog/b/e/b/a/f;->cm:Lcom/sogou/sledog/core/util/c/a;

    new-instance v3, Lcom/sogou/sledog/b/e/b/a/g;

    invoke-direct {v3, p0}, Lcom/sogou/sledog/b/e/b/a/g;-><init>(Lcom/sogou/sledog/b/e/b/a/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/lang/String;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V

    return-void
.end method

.method protected final as()V
    .locals 4

    const-string v0, "data"

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->SUFFIX:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cm:Lcom/sogou/sledog/core/util/c/a;

    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/hmt/sdk/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "localinfo/index.data"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/core/util/c/a;->f(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/e/b/a/f;->Q(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v0, Lcom/sogou/sledog/core/util/c/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/c;-><init>(I)V

    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/hmt/sdk/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "localinfo/tag.data"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/sogou/sledog/b/e/b/a/f;->cm:Lcom/sogou/sledog/core/util/c/a;

    new-instance v3, Lcom/sogou/sledog/b/e/b/a/h;

    invoke-direct {v3, p0}, Lcom/sogou/sledog/b/e/b/a/h;-><init>(Lcom/sogou/sledog/b/e/b/a/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/io/InputStream;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected b(Z)Z
    .locals 0

    return p1
.end method

.method protected d(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cH:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cH:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/e/b/a/j;

    invoke-direct {p0, p1, v0}, Lcom/sogou/sledog/b/e/b/a/f;->a(Lcom/sogou/sledog/b/e/a;Lcom/sogou/sledog/b/e/b/a/j;)Lcom/sogou/sledog/b/e/a/c;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/a/f;->W()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sogou/sledog/b/e/a/c;->a(J)V

    :cond_1
    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/sogou/sledog/b/e/b/a/f;->cJ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/e/b/a/f;->R(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cH:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/e/b/a/j;

    invoke-direct {p0, p1, v0}, Lcom/sogou/sledog/b/e/b/a/f;->a(Lcom/sogou/sledog/b/e/a;Lcom/sogou/sledog/b/e/b/a/j;)Lcom/sogou/sledog/b/e/a/c;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/e/b/a/k;

    invoke-virtual {v0, p2}, Lcom/sogou/sledog/b/e/b/a/k;->S(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/b/a/k;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected final f(Lcom/sogou/sledog/b/e/a;)Landroid/util/Pair;
    .locals 2

    invoke-virtual {p1}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/a/f;->X()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/sogou/sledog/b/e/b/a/f;->d(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getPartLocalNumber()Ljava/util/ArrayList;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/b/a/f;->X()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/e/b/a/k;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/b/a/k;->getFileName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/e/b/a/f;->R(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cH:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0xc8

    if-ge v0, v3, :cond_4

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public x()V
    .locals 1

    const-string v0, "gz"

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->SUFFIX:Ljava/lang/String;

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/f;->cH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
