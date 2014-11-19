.class final Lcom/sogou/sledog/b/e/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sogou/sledog/core/util/c/d;


# instance fields
.field final synthetic cn:Lcom/sogou/sledog/b/e/b/b;


# direct methods
.method constructor <init>(Lcom/sogou/sledog/b/e/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/b/c;->cn:Lcom/sogou/sledog/b/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/c;->cn:Lcom/sogou/sledog/b/e/b/b;

    invoke-static {v0}, Lcom/sogou/sledog/b/e/b/b;->a(Lcom/sogou/sledog/b/e/b/b;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
