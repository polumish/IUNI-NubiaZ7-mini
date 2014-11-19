.class public final Lcom/sogou/sledog/b/e/c/f;
.super Lcom/sogou/sledog/b/d/g;

# interfaces
.implements Lcom/sogou/sledog/b/e/c/c;


# instance fields
.field private cl:Ljava/util/Map;

.field private cm:Lcom/sogou/sledog/core/util/c/a;

.field private da:Ljava/util/Map;

.field private db:Ljava/util/Map;

.field private dc:Lcom/sogou/sledog/b/e/c/d;

.field private dd:Lcom/sogou/sledog/b/d/i;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/sogou/sledog/b/d/g;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->cl:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->da:Ljava/util/Map;

    new-instance v0, Lcom/sogou/sledog/core/util/c/h;

    new-instance v1, Lcom/sogou/sledog/core/util/c/f;

    invoke-direct {v1}, Lcom/sogou/sledog/core/util/c/f;-><init>()V

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/h;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->cm:Lcom/sogou/sledog/core/util/c/a;

    new-instance v0, Lcom/sogou/sledog/b/e/c/d;

    invoke-direct {v0}, Lcom/sogou/sledog/b/e/c/d;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->dc:Lcom/sogou/sledog/b/e/c/d;

    iput-object p1, p0, Lcom/sogou/sledog/b/e/c/f;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sogou/sledog/b/d/i;

    new-instance v1, Lcom/sogou/sledog/b/e/c/g;

    invoke-direct {v1, p0}, Lcom/sogou/sledog/b/e/c/g;-><init>(Lcom/sogou/sledog/b/e/c/f;)V

    invoke-direct {v0, v1, p0}, Lcom/sogou/sledog/b/d/i;-><init>(Lcom/sogou/sledog/b/d/b;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->dd:Lcom/sogou/sledog/b/d/i;

    return-void
.end method

.method static synthetic a(Lcom/sogou/sledog/b/e/c/f;)Lcom/sogou/sledog/core/util/c/a;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->cm:Lcom/sogou/sledog/core/util/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/sogou/sledog/b/e/c/f;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sogou/sledog/b/e/c/f;->aa(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v2, v0, 0x3

    if-ltz v2, :cond_0

    array-length v0, p0

    if-lt v2, v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "utf-8"

    invoke-direct {v0, p0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/sogou/sledog/b/e/c/f;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/c/f;->db:Ljava/util/Map;

    return-void
.end method

.method private aa(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    const-string v0, "%s_%s.data"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "region/mob_region"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/sledog/b/e/c/f;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sogou/hmt/sdk/f/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized ab(Ljava/lang/String;)[B
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->cl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->cm:Lcom/sogou/sledog/core/util/c/a;

    invoke-direct {p0, p1}, Lcom/sogou/sledog/b/e/c/f;->aa(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/core/util/c/a;->d(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sogou/sledog/b/e/c/f;->cl:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/sogou/sledog/b/e/c/f;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->db:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/sogou/sledog/b/e/c/f;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->da:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final P()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->db:Ljava/util/Map;

    new-instance v0, Lcom/sogou/sledog/core/util/c/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/c;-><init>(I)V

    const-string v1, "sup"

    invoke-direct {p0, v1}, Lcom/sogou/sledog/b/e/c/f;->aa(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/sogou/sledog/b/e/c/f;->cm:Lcom/sogou/sledog/core/util/c/a;

    new-instance v3, Lcom/sogou/sledog/b/e/c/i;

    invoke-direct {v3, p0}, Lcom/sogou/sledog/b/e/c/i;-><init>(Lcom/sogou/sledog/b/e/c/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/io/InputStream;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V

    return-void
.end method

.method public final U(Ljava/lang/String;)Lcom/sogou/sledog/b/e/c/e;
    .locals 4

    const/4 v2, 0x7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/c/f;->N()Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/e/c/f;->ab(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    invoke-static {v0, v2}, Lcom/sogou/sledog/b/e/c/f;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sogou/sledog/b/e/c/f;->da:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/sogou/sledog/b/e/c/e;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Lcom/sogou/sledog/b/e/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_1
.end method

.method public final V(Ljava/lang/String;)Lcom/sogou/sledog/b/e/c/e;
    .locals 5

    const/4 v0, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_2

    :goto_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sogou/sledog/b/e/c/f;->N()Z

    move-result v3

    if-nez v3, :cond_3

    monitor-exit p0

    move-object v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->dc:Lcom/sogou/sledog/b/e/c/d;

    invoke-static {v3}, Lcom/sogou/sledog/b/e/c/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->dc:Lcom/sogou/sledog/b/e/c/d;

    const/4 v0, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/b/e/c/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/sogou/sledog/b/e/c/e;

    invoke-direct {v0, v3, v1}, Lcom/sogou/sledog/b/e/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v0, v2

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_2
.end method

.method public final W(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/sogou/sledog/b/e/c/d;->Y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sogou/sledog/b/e/c/f;->dc:Lcom/sogou/sledog/b/e/c/d;

    invoke-static {p1}, Lcom/sogou/sledog/b/e/c/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final w()V
    .locals 4

    new-instance v0, Lcom/sogou/sledog/core/util/c/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/c;-><init>(I)V

    const-string v1, "index"

    invoke-direct {p0, v1}, Lcom/sogou/sledog/b/e/c/f;->aa(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/sogou/sledog/b/e/c/f;->cm:Lcom/sogou/sledog/core/util/c/a;

    new-instance v3, Lcom/sogou/sledog/b/e/c/j;

    invoke-direct {v3, p0}, Lcom/sogou/sledog/b/e/c/j;-><init>(Lcom/sogou/sledog/b/e/c/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/io/InputStream;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V

    return-void
.end method

.method public final x()V
    .locals 0

    return-void
.end method
