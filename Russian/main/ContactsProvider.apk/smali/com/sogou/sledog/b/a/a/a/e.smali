.class final Lcom/sogou/sledog/b/a/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sogou/sledog/core/util/c/d;


# instance fields
.field final synthetic aW:Lcom/sogou/sledog/b/a/a/a/d;


# direct methods
.method constructor <init>(Lcom/sogou/sledog/b/a/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/a/a/a/e;->aW:Lcom/sogou/sledog/b/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aget-object v1, p1, v4

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sogou/sledog/b/a/a/a/e;->aW:Lcom/sogou/sledog/b/a/a/a/d;

    invoke-static {v1}, Lcom/sogou/sledog/b/a/a/a/d;->a(Lcom/sogou/sledog/b/a/a/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sogou/sledog/b/a/a/a/e;->aW:Lcom/sogou/sledog/b/a/a/a/d;

    invoke-static {v1}, Lcom/sogou/sledog/b/a/a/a/d;->b(Lcom/sogou/sledog/b/a/a/a/d;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sogou/sledog/b/a/a/a/a;

    aget-object v2, p1, v3

    const/4 v3, 0x1

    aget-object v3, p1, v3

    aget-object v4, p1, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sogou/sledog/b/a/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sogou/sledog/b/a/a/a/e;->aW:Lcom/sogou/sledog/b/a/a/a/d;

    invoke-static {v2}, Lcom/sogou/sledog/b/a/a/a/d;->c(Lcom/sogou/sledog/b/a/a/a/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sogou/sledog/b/a/a/a/e;->aW:Lcom/sogou/sledog/b/a/a/a/d;

    invoke-static {v2}, Lcom/sogou/sledog/b/a/a/a/d;->d(Lcom/sogou/sledog/b/a/a/a/d;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/sogou/sledog/b/a/a/a/d;->aS:I

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/sogou/sledog/b/a/a/a/d;->aS:I

    goto :goto_0
.end method
