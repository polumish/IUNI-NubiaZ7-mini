.class final Lcom/sogou/sledog/b/e/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sogou/sledog/b/d/b;


# instance fields
.field final synthetic de:Lcom/sogou/sledog/b/e/c/f;


# direct methods
.method constructor <init>(Lcom/sogou/sledog/b/e/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/c/g;->de:Lcom/sogou/sledog/b/e/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final w()V
    .locals 4

    iget-object v0, p0, Lcom/sogou/sledog/b/e/c/g;->de:Lcom/sogou/sledog/b/e/c/f;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/sogou/sledog/b/e/c/f;->a(Lcom/sogou/sledog/b/e/c/f;Ljava/util/Map;)V

    new-instance v0, Lcom/sogou/sledog/core/util/c/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/c;-><init>(I)V

    iget-object v1, p0, Lcom/sogou/sledog/b/e/c/g;->de:Lcom/sogou/sledog/b/e/c/f;

    const-string v2, "sup"

    invoke-static {v1, v2}, Lcom/sogou/sledog/b/e/c/f;->a(Lcom/sogou/sledog/b/e/c/f;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/sogou/sledog/b/e/c/g;->de:Lcom/sogou/sledog/b/e/c/f;

    invoke-static {v2}, Lcom/sogou/sledog/b/e/c/f;->a(Lcom/sogou/sledog/b/e/c/f;)Lcom/sogou/sledog/core/util/c/a;

    move-result-object v2

    new-instance v3, Lcom/sogou/sledog/b/e/c/h;

    invoke-direct {v3, p0}, Lcom/sogou/sledog/b/e/c/h;-><init>(Lcom/sogou/sledog/b/e/c/g;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/io/InputStream;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V

    return-void
.end method

.method public final x()V
    .locals 0

    return-void
.end method
