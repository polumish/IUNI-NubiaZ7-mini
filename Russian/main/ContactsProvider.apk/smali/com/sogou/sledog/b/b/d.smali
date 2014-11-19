.class public final Lcom/sogou/sledog/b/b/d;
.super Ljava/lang/Object;


# instance fields
.field private ba:Ljava/lang/String;

.field private bb:Ljava/lang/String;

.field private bc:Ljava/lang/StringBuilder;

.field private bd:Ljava/lang/StringBuilder;

.field private be:Lcom/sogou/sledog/core/util/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sogou/sledog/b/b/a;

    invoke-direct {v0}, Lcom/sogou/sledog/b/b/a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sogou/sledog/b/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sogou/sledog/core/util/a/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sogou/sledog/core/util/a/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/b/b/d;->ba:Ljava/lang/String;

    iput-object p2, p0, Lcom/sogou/sledog/b/b/d;->bb:Ljava/lang/String;

    iget-object v0, p0, Lcom/sogou/sledog/b/b/d;->bb:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sogou/sledog/b/b/d;->bb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/sledog/b/b/d;->bb:Ljava/lang/String;

    :cond_0
    iput-object p3, p0, Lcom/sogou/sledog/b/b/d;->be:Lcom/sogou/sledog/core/util/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/b/d;->bc:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/b/d;->bd:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/sledog/b/b/d;
    .locals 4

    iget-object v0, p0, Lcom/sogou/sledog/b/b/d;->bc:Ljava/lang/StringBuilder;

    const-string v1, "&%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/sledog/b/b/d;
    .locals 4

    iget-object v0, p0, Lcom/sogou/sledog/b/b/d;->bd:Ljava/lang/StringBuilder;

    const-string v1, "&%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sogou/sledog/b/b/d;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toURI()Ljava/net/URI;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/hmt/sdk/c/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&sdk=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/sledog/b/b/d;->bc:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/sledog/b/b/d;->be:Lcom/sogou/sledog/core/util/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sogou/sledog/b/b/d;->be:Lcom/sogou/sledog/core/util/a/a;

    invoke-virtual {v1, v0}, Lcom/sogou/sledog/core/util/a/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "v=%s&parames=%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "1.2"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/sogou/sledog/b/b/d;->bd:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/net/URI;

    const-string v1, "http"

    iget-object v2, p0, Lcom/sogou/sledog/b/b/d;->ba:Ljava/lang/String;

    iget-object v3, p0, Lcom/sogou/sledog/b/b/d;->bb:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method
