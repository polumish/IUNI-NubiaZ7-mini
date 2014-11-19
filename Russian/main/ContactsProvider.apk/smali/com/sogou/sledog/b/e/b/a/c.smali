.class public final Lcom/sogou/sledog/b/e/b/a/c;
.super Ljava/lang/Object;


# instance fields
.field public cq:Ljava/lang/String;

.field private cr:Lcom/sogou/sledog/core/util/c/a;

.field private cs:Lcom/sogou/sledog/core/util/c/a;

.field private ct:Lcom/sogou/sledog/core/util/c/c;

.field private cu:Ljava/util/HashMap;

.field private cv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sogou/sledog/core/util/c/h;

    new-instance v1, Lcom/sogou/sledog/core/util/b/b;

    new-instance v2, Lcom/sogou/sledog/core/util/c/f;

    invoke-direct {v2}, Lcom/sogou/sledog/core/util/c/f;-><init>()V

    invoke-direct {v1, v2}, Lcom/sogou/sledog/core/util/b/b;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/h;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->cr:Lcom/sogou/sledog/core/util/c/a;

    new-instance v0, Lcom/sogou/sledog/core/util/b/b;

    new-instance v1, Lcom/sogou/sledog/core/util/c/f;

    invoke-direct {v1}, Lcom/sogou/sledog/core/util/c/f;-><init>()V

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/b/b;-><init>(Lcom/sogou/sledog/core/util/c/a;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->cs:Lcom/sogou/sledog/core/util/c/a;

    new-instance v0, Lcom/sogou/sledog/core/util/c/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/c;-><init>(I)V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->ct:Lcom/sogou/sledog/core/util/c/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->cu:Ljava/util/HashMap;

    const-string v0, "localNumberIncreamentupdated"

    invoke-static {p1, v0}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->cq:Ljava/lang/String;

    const-string v0, "increament"

    invoke-static {p1, v0}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->cv:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lcom/sogou/sledog/core/util/c/a;)V
    .locals 2

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->ct:Lcom/sogou/sledog/core/util/c/c;

    new-instance v1, Lcom/sogou/sledog/b/e/b/a/d;

    invoke-direct {v1, p0, p2}, Lcom/sogou/sledog/b/e/b/a/d;-><init>(Lcom/sogou/sledog/b/e/b/a/c;Ljava/util/Map;)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/lang/String;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V

    return-void
.end method

.method private an()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->cv:Ljava/lang/String;

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/c;->cv:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final P(Ljava/lang/String;)[B
    .locals 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lcom/sogou/sledog/b/e/b/a/c;->an()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sogou/sledog/b/e/b/a/c;->cs:Lcom/sogou/sledog/core/util/c/a;

    invoke-direct {p0, v0, v1, v2}, Lcom/sogou/sledog/b/e/b/a/c;->a(Ljava/lang/String;Ljava/util/Map;Lcom/sogou/sledog/core/util/c/a;)V

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->cr:Lcom/sogou/sledog/core/util/c/a;

    invoke-direct {p0, p1, v1, v0}, Lcom/sogou/sledog/b/e/b/a/c;->a(Ljava/lang/String;Ljava/util/Map;Lcom/sogou/sledog/core/util/c/a;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/sogou/sledog/core/util/b/a;

    invoke-direct {v0}, Lcom/sogou/sledog/core/util/b/a;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sogou/sledog/core/util/b/a;->encode([B)[B

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v4, "\r\n"

    invoke-virtual {v2, v0, v1, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    aget-object v5, v0, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final am()V
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->cu:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final ao()V
    .locals 1

    invoke-direct {p0}, Lcom/sogou/sledog/b/e/b/a/c;->an()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/core/util/c/b;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public final c(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Lcom/sogou/sledog/b/e/b/a/e;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->cu:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->cu:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    aget-object v3, v0, v3

    const-string v4, "D"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    new-instance v3, Lcom/sogou/sledog/b/e/a/c;

    invoke-direct {v3, p1}, Lcom/sogou/sledog/b/e/a/c;-><init>(Lcom/sogou/sledog/b/e/a;)V

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sogou/sledog/b/e/a/c;->f(I)V

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lcom/sogou/sledog/b/e/a/c;->O(Ljava/lang/String;)V

    move v0, v1

    move-object v1, v3

    :goto_1
    new-instance v2, Lcom/sogou/sledog/b/e/b/a/e;

    invoke-direct {v2, v1, v0}, Lcom/sogou/sledog/b/e/b/a/e;-><init>(Lcom/sogou/sledog/b/e/a/c;Z)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final d([B)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sogou/sledog/b/e/b/a/c;->an()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sogou/sledog/core/util/c/b;->a(Ljava/lang/String;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final init()V
    .locals 3

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/c;->cu:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/sogou/sledog/b/e/b/a/c;->an()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/c;->cu:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sogou/sledog/b/e/b/a/c;->cs:Lcom/sogou/sledog/core/util/c/a;

    invoke-direct {p0, v0, v1, v2}, Lcom/sogou/sledog/b/e/b/a/c;->a(Ljava/lang/String;Ljava/util/Map;Lcom/sogou/sledog/core/util/c/a;)V

    return-void
.end method
