.class final Lcom/sogou/sledog/b/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sogou/sledog/core/util/c/d;


# instance fields
.field final synthetic aE:Lcom/sogou/sledog/b/a/a/k;

.field private final synthetic aF:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sogou/sledog/b/a/a/k;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/a/a/l;->aE:Lcom/sogou/sledog/b/a/a/k;

    iput-object p2, p0, Lcom/sogou/sledog/b/a/a/l;->aF:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    new-instance v0, Lcom/sogou/sledog/b/a/a/m;

    aget-object v1, p1, v2

    invoke-direct {v0, v1, v3}, Lcom/sogou/sledog/b/a/a/m;-><init>(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sogou/sledog/b/a/a/l;->aF:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    if-nez v1, :cond_0

    new-instance v0, Lcom/sogou/sledog/b/a/a/m;

    aget-object v1, p1, v2

    invoke-direct {v0, v1, v2}, Lcom/sogou/sledog/b/a/a/m;-><init>(Ljava/lang/String;Z)V

    goto :goto_0
.end method
