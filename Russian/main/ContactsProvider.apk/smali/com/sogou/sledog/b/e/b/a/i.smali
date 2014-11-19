.class final Lcom/sogou/sledog/b/e/b/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sogou/sledog/core/util/c/d;


# instance fields
.field final synthetic cL:Lcom/sogou/sledog/b/e/b/a/f;


# direct methods
.method constructor <init>(Lcom/sogou/sledog/b/e/b/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/b/a/i;->cL:Lcom/sogou/sledog/b/e/b/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/i;->cL:Lcom/sogou/sledog/b/e/b/a/f;

    invoke-static {v0}, Lcom/sogou/sledog/b/e/b/a/f;->b(Lcom/sogou/sledog/b/e/b/a/f;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    new-instance v2, Lcom/sogou/sledog/b/e/b/a/j;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-direct {v2, v3, v4}, Lcom/sogou/sledog/b/e/b/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
