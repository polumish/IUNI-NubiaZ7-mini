.class final Lcom/sogou/sledog/b/e/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sogou/sledog/core/util/c/d;


# instance fields
.field final synthetic cw:Lcom/sogou/sledog/b/e/b/a/c;

.field private final synthetic cx:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/sogou/sledog/b/e/b/a/c;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/b/a/d;->cw:Lcom/sogou/sledog/b/e/b/a/c;

    iput-object p2, p0, Lcom/sogou/sledog/b/e/b/a/d;->cx:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aget-object v1, p1, v2

    aput-object v1, v0, v2

    aget-object v1, p1, v3

    aput-object v1, v0, v3

    aget-object v1, p1, v4

    aput-object v1, v0, v4

    aget-object v1, p1, v5

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/sogou/sledog/b/e/b/a/d;->cx:Ljava/util/Map;

    aget-object v2, p1, v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
