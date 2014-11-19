.class public final Lcom/sogou/sledog/a/c/a;
.super Ljava/lang/Object;


# static fields
.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field private static N:Lcom/sogou/sledog/a/c/a;


# instance fields
.field public final G:I

.field public final H:I

.field public final I:I

.field private L:Z

.field private M:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "data.haoma.sogou.com"

    sput-object v0, Lcom/sogou/sledog/a/c/a;->J:Ljava/lang/String;

    const-string v0, "220.181.125.29"

    sput-object v0, Lcom/sogou/sledog/a/c/a;->K:Ljava/lang/String;

    new-instance v0, Lcom/sogou/sledog/a/c/a;

    invoke-direct {v0}, Lcom/sogou/sledog/a/c/a;-><init>()V

    sput-object v0, Lcom/sogou/sledog/a/c/a;->N:Lcom/sogou/sledog/a/c/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/a/c/a;->M:Ljava/util/ArrayList;

    iput-boolean v5, p0, Lcom/sogou/sledog/a/c/a;->L:Z

    new-array v1, v9, [Ljava/lang/String;

    const-string v0, "query_update.php"

    aput-object v0, v1, v5

    const-string v0, "/query_update.php"

    aput-object v0, v1, v8

    const-string v2, "lUpdateTime"

    new-array v6, v9, [I

    fill-array-data v6, :array_0

    new-array v0, v9, [Ljava/lang/String;

    sget-object v3, Lcom/sogou/sledog/a/c/a;->J:Ljava/lang/String;

    aput-object v3, v0, v5

    sget-object v3, Lcom/sogou/sledog/a/c/a;->K:Ljava/lang/String;

    aput-object v3, v0, v8

    iget-boolean v3, p0, Lcom/sogou/sledog/a/c/a;->L:Z

    if-eqz v3, :cond_0

    aget-object v0, v0, v8

    move-object v3, v0

    :goto_0
    iget-boolean v0, p0, Lcom/sogou/sledog/a/c/a;->L:Z

    if-eqz v0, :cond_1

    aget-object v0, v1, v8

    move-object v4, v0

    :goto_1
    iget-boolean v0, p0, Lcom/sogou/sledog/a/c/a;->L:Z

    if-eqz v0, :cond_2

    aget v0, v6, v8

    move v6, v0

    :goto_2
    iget-object v7, p0, Lcom/sogou/sledog/a/c/a;->M:Ljava/util/ArrayList;

    new-instance v0, Lcom/sogou/sledog/b/d/a;

    new-instance v1, Lcom/sogou/sledog/b/b/c;

    invoke-direct {v1, v3, v4}, Lcom/sogou/sledog/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/sogou/sledog/b/d/a;-><init>(Lcom/sogou/sledog/b/b/c;Ljava/lang/String;JB)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sogou/sledog/a/c/a;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sogou/sledog/a/c/a;->G:I

    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "reportDownload.php"

    aput-object v1, v0, v5

    const-string v1, "/reportDownload.php"

    aput-object v1, v0, v8

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sogou/sledog/a/c/a;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sogou/sledog/a/c/a;->H:I

    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "upload_mes.php"

    aput-object v1, v0, v5

    const-string v1, "/upload_mes.php"

    aput-object v1, v0, v8

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sogou/sledog/a/c/a;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sogou/sledog/a/c/a;->I:I

    return-void

    :cond_0
    aget-object v0, v0, v5

    move-object v3, v0

    goto :goto_0

    :cond_1
    aget-object v0, v1, v5

    move-object v4, v0

    goto :goto_1

    :cond_2
    aget v0, v6, v5

    move v6, v0

    goto :goto_2

    :array_0
    .array-data 4
        0x2932e00
        0x2710
    .end array-data
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v2, [Ljava/lang/String;

    sget-object v1, Lcom/sogou/sledog/a/c/a;->J:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sogou/sledog/a/c/a;->K:Ljava/lang/String;

    aput-object v1, v0, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iget-boolean v1, p0, Lcom/sogou/sledog/a/c/a;->L:Z

    if-eqz v1, :cond_0

    aget-object v0, v0, v5

    :goto_0
    iget-boolean v1, p0, Lcom/sogou/sledog/a/c/a;->L:Z

    if-eqz v1, :cond_1

    aget-object v1, p1, v5

    :goto_1
    iget-boolean v3, p0, Lcom/sogou/sledog/a/c/a;->L:Z

    if-eqz v3, :cond_2

    aget v2, v2, v5

    :goto_2
    iget-object v3, p0, Lcom/sogou/sledog/a/c/a;->M:Ljava/util/ArrayList;

    new-instance v4, Lcom/sogou/sledog/b/d/a;

    new-instance v5, Lcom/sogou/sledog/b/b/c;

    invoke-direct {v5, v0, v1}, Lcom/sogou/sledog/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v0, v2

    invoke-direct {v4, v5, p2, v0, v1}, Lcom/sogou/sledog/b/d/a;-><init>(Lcom/sogou/sledog/b/b/c;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sogou/sledog/a/c/a;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    aget-object v0, v0, v4

    goto :goto_0

    :cond_1
    aget-object v1, p1, v4

    goto :goto_1

    :cond_2
    aget v2, v2, v4

    goto :goto_2

    :array_0
    .array-data 4
        0x5265c00
        0x2710
    .end array-data
.end method

.method public static r()Lcom/sogou/sledog/a/c/a;
    .locals 1

    sget-object v0, Lcom/sogou/sledog/a/c/a;->N:Lcom/sogou/sledog/a/c/a;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/sogou/sledog/b/d/a;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/a/c/a;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/d/a;

    return-object v0
.end method
