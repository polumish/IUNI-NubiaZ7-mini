.class public final Lcom/sogou/sledog/b/a/a/b;
.super Lcom/sogou/sledog/b/d/n;

# interfaces
.implements Lcom/sogou/sledog/b/a/a/f;


# static fields
.field private static ai:Ljava/util/HashMap;

.field private static aj:I

.field private static ak:I

.field private static al:I

.field private static am:I

.field private static an:I

.field public static ao:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sogou/sledog/b/a/a/b;->ai:Ljava/util/HashMap;

    sput v1, Lcom/sogou/sledog/b/a/a/b;->aj:I

    const/16 v0, 0x64

    sput v0, Lcom/sogou/sledog/b/a/a/b;->ak:I

    sput v1, Lcom/sogou/sledog/b/a/a/b;->al:I

    const/4 v0, 0x1

    sput v0, Lcom/sogou/sledog/b/a/a/b;->am:I

    const/16 v0, 0x63

    sput v0, Lcom/sogou/sledog/b/a/a/b;->an:I

    const/4 v0, 0x0

    sput-object v0, Lcom/sogou/sledog/b/a/a/b;->ao:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sogou/sledog/b/d/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sogou/sledog/b/d/n;-><init>(Lcom/sogou/sledog/b/d/a/b;)V

    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/b;->N()Z

    return-void
.end method

.method private B(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/b;->X()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/sogou/sledog/b/a/a/b;->an:I

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sogou/sledog/b/a/a/b;->an:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/sogou/sledog/b/a/a/b;->ai:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/a/a/a;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/sogou/sledog/b/a/a/a;->type:I

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/sogou/sledog/b/a/a/b;->ak:I

    if-ge v0, v1, :cond_3

    sget v0, Lcom/sogou/sledog/b/a/a/b;->an:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/sogou/sledog/b/a/a/b;->aj:I

    if-lt v0, v1, :cond_6

    sget v0, Lcom/sogou/sledog/b/a/a/b;->aj:I

    move v1, v0

    :goto_2
    sget v0, Lcom/sogou/sledog/b/a/a/b;->ak:I

    if-ge v1, v0, :cond_4

    sget v0, Lcom/sogou/sledog/b/a/a/b;->an:I

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sogou/sledog/b/a/a/b;->ai:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/a/a/a;

    if-eqz v0, :cond_5

    iget-boolean v2, v0, Lcom/sogou/sledog/b/a/a/a;->ah:Z

    if-eqz v2, :cond_5

    iget v0, v0, Lcom/sogou/sledog/b/a/a/a;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_2
.end method

.method static synthetic b(I)V
    .locals 0

    sput p0, Lcom/sogou/sledog/b/a/a/b;->aj:I

    return-void
.end method

.method static synthetic c(I)V
    .locals 0

    sput p0, Lcom/sogou/sledog/b/a/a/b;->ak:I

    return-void
.end method

.method private g(Ljava/io/InputStream;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/sogou/sledog/core/util/c/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/sogou/sledog/core/util/c/c;-><init>(I)V

    new-instance v2, Lcom/sogou/sledog/core/util/c/h;

    new-instance v3, Lcom/sogou/sledog/core/util/b/b;

    new-instance v4, Lcom/sogou/sledog/core/util/c/f;

    invoke-direct {v4}, Lcom/sogou/sledog/core/util/c/f;-><init>()V

    invoke-direct {v3, v4}, Lcom/sogou/sledog/core/util/b/b;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    invoke-direct {v2, v3}, Lcom/sogou/sledog/core/util/c/h;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    new-instance v3, Lcom/sogou/sledog/b/a/a/c;

    invoke-direct {v3, p0, v0}, Lcom/sogou/sledog/b/a/a/c;-><init>(Lcom/sogou/sledog/b/a/a/b;Ljava/util/HashMap;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/io/InputStream;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V

    sput-object v0, Lcom/sogou/sledog/b/a/a/b;->ai:Ljava/util/HashMap;

    return-void
.end method

.method private static v()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sogou/hmt/sdk/manager/c;->h()Lcom/sogou/hmt/sdk/manager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/manager/c;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_num.data"

    invoke-static {v0, v1}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic y()I
    .locals 1

    sget v0, Lcom/sogou/sledog/b/a/a/b;->aj:I

    return v0
.end method

.method static synthetic z()I
    .locals 1

    sget v0, Lcom/sogou/sledog/b/a/a/b;->ak:I

    return v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sogou/sledog/b/a/a/b;->B(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/sogou/sledog/b/a/a/b;->al:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sogou/sledog/b/d/a/c;)Z
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sogou/sledog/b/d/a/c;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sogou/sledog/b/a/a/b;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sogou/sledog/core/util/c/b;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/b;->O()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final w()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sogou/sledog/b/d/n;->w()V

    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/b;->V()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sogou/sledog/b/a/a/b;->U()Lcom/sogou/sledog/b/d/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sogou/sledog/b/d/a/b;->Z()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sogou/sledog/b/a/a/b;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/core/util/c;->p(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/a/a/b;->g(Ljava/io/InputStream;)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/c;->h()Lcom/sogou/hmt/sdk/manager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/manager/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "client_num.data"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sogou/sledog/b/a/a/b;->g(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final x()V
    .locals 1

    sget-object v0, Lcom/sogou/sledog/b/a/a/b;->ai:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
