.class public final Lcom/sogou/sledog/b/a/a/a/d;
.super Lcom/sogou/sledog/b/d/n;

# interfaces
.implements Lcom/sogou/sledog/b/a/a/a/b;


# static fields
.field public static aS:I

.field private static aT:Ljava/lang/String;

.field private static aU:Ljava/lang/String;

.field public static aV:Ljava/lang/String;


# instance fields
.field private aN:Ljava/util/Set;

.field private aO:Ljava/util/ArrayList;

.field private aP:Ljava/util/ArrayList;

.field private aQ:Ljava/util/HashMap;

.field private aR:Ljava/util/Set;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/sogou/sledog/b/a/a/a/d;->aS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sogou/sledog/b/d/a/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p3}, Lcom/sogou/sledog/b/d/n;-><init>(Lcom/sogou/sledog/b/d/a/b;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aN:Ljava/util/Set;

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aO:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aP:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aQ:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aR:Ljava/util/Set;

    iput-object p1, p0, Lcom/sogou/sledog/b/a/a/a/d;->mContext:Landroid/content/Context;

    const-string v0, "uaddkey.txt"

    invoke-static {p2, v0}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sogou/sledog/b/a/a/a/d;->aT:Ljava/lang/String;

    const-string v0, "udelkey.txt"

    invoke-static {p2, v0}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sogou/sledog/b/a/a/a/d;->aU:Ljava/lang/String;

    const-string v0, "Keyword.gz"

    invoke-static {p2, v0}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sogou/sledog/b/a/a/a/d;->aV:Ljava/lang/String;

    return-void
.end method

.method private static D(Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Lcom/sogou/sledog/core/util/c/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-string v1, "utf-8"

    invoke-static {p0, v1}, Lcom/sogou/sledog/core/util/c/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v3, v2, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/sogou/sledog/b/a/a/a/d;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aO:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/sogou/sledog/b/a/a/a/d;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aR:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/sogou/sledog/b/a/a/a/d;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aP:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/sogou/sledog/b/a/a/a/d;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aQ:Ljava/util/HashMap;

    return-object v0
.end method

.method private i(Ljava/io/InputStream;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aO:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aQ:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aP:Ljava/util/ArrayList;

    new-instance v0, Lcom/sogou/sledog/core/util/c/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/c;-><init>(I)V

    new-instance v1, Lcom/sogou/sledog/core/util/c/h;

    new-instance v2, Lcom/sogou/sledog/core/util/b/b;

    new-instance v3, Lcom/sogou/sledog/core/util/c/f;

    invoke-direct {v3}, Lcom/sogou/sledog/core/util/c/f;-><init>()V

    invoke-direct {v2, v3}, Lcom/sogou/sledog/core/util/b/b;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    invoke-direct {v1, v2}, Lcom/sogou/sledog/core/util/c/h;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    new-instance v2, Lcom/sogou/sledog/b/a/a/a/e;

    invoke-direct {v2, p0}, Lcom/sogou/sledog/b/a/a/a/e;-><init>(Lcom/sogou/sledog/b/a/a/a/d;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/io/InputStream;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V

    return-void
.end method

.method private static v()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sogou/hmt/sdk/manager/c;->h()Lcom/sogou/hmt/sdk/manager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/manager/c;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyword.data"

    invoke-static {v0, v1}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final G()Ljava/util/Collection;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/a/d;->X()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aO:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aO:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final H()Ljava/util/Map;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/a/d;->X()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aQ:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aQ:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/sogou/sledog/b/d/a/c;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sogou/sledog/b/d/a/c;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sogou/sledog/b/a/a/a/d;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sogou/sledog/core/util/c/b;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/a/d;->O()V

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

.method public final w()V
    .locals 4

    invoke-super {p0}, Lcom/sogou/sledog/b/d/n;->w()V

    sget-object v0, Lcom/sogou/sledog/b/a/a/a/d;->aT:Ljava/lang/String;

    invoke-static {v0}, Lcom/sogou/sledog/b/a/a/a/d;->D(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aN:Ljava/util/Set;

    sget-object v0, Lcom/sogou/sledog/b/a/a/a/d;->aU:Ljava/lang/String;

    invoke-static {v0}, Lcom/sogou/sledog/b/a/a/a/d;->D(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aR:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/a/d;->V()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/a/d;->U()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sogou/sledog/b/a/a/a/d;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/core/util/c;->p(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/a/a/a/d;->i(Ljava/io/InputStream;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "keyword.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/a/a/a/d;->i(Ljava/io/InputStream;)V
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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aN:Ljava/util/Set;

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aO:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aP:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aQ:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/a/d;->aR:Ljava/util/Set;

    return-void
.end method
