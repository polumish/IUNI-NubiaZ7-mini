.class final Lcom/sogou/sledog/b/d/l;
.super Ljava/lang/Object;


# instance fields
.field private bD:Lcom/sogou/sledog/b/d/d;

.field private bE:Z

.field private bF:Z

.field private bG:Ljava/lang/Exception;

.field private bz:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/d/d;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/b/d/l;->bD:Lcom/sogou/sledog/b/d/d;

    iput-object p2, p0, Lcom/sogou/sledog/b/d/l;->bz:Ljava/lang/Object;

    return-void
.end method

.method private S()V
    .locals 5

    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/l;->bF:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sogou/sledog/b/d/m;

    const-string v1, "%s init error"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sogou/sledog/b/d/l;->bG:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Lcom/sogou/sledog/b/d/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final T()V
    .locals 1

    invoke-direct {p0}, Lcom/sogou/sledog/b/d/l;->S()V

    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/l;->bE:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/d/l;->bz:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/l;->bE:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/l;->bF:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/sogou/sledog/b/d/l;->S()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
