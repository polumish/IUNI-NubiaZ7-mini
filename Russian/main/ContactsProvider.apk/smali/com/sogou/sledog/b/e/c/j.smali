.class final Lcom/sogou/sledog/b/e/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sogou/sledog/core/util/c/d;


# instance fields
.field final synthetic de:Lcom/sogou/sledog/b/e/c/f;


# direct methods
.method constructor <init>(Lcom/sogou/sledog/b/e/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/c/j;->de:Lcom/sogou/sledog/b/e/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/sogou/sledog/b/e/c/j;->de:Lcom/sogou/sledog/b/e/c/f;

    invoke-static {v0}, Lcom/sogou/sledog/b/e/c/f;->c(Lcom/sogou/sledog/b/e/c/f;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
