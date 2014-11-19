.class public final Lcom/sogou/sledog/b/d/i;
.super Ljava/lang/Object;


# instance fields
.field private bu:Z

.field private bv:Z

.field private bw:Z

.field private bx:Ljava/lang/Exception;

.field private by:Lcom/sogou/sledog/b/d/b;

.field private bz:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/d/b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/b/d/i;->by:Lcom/sogou/sledog/b/d/b;

    iput-object p2, p0, Lcom/sogou/sledog/b/d/i;->bz:Ljava/lang/Object;

    return-void
.end method

.method private Q()V
    .locals 5

    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/i;->bw:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sogou/sledog/b/d/j;

    const-string v1, "initializer error: [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sogou/sledog/b/d/i;->bz:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sogou/sledog/b/d/i;->bx:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Lcom/sogou/sledog/b/d/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final O()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/i;->bu:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/sogou/sledog/b/d/i;->bu:Z

    iput-boolean v1, p0, Lcom/sogou/sledog/b/d/i;->bw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sogou/sledog/b/d/i;->bx:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/sogou/sledog/b/d/i;->by:Lcom/sogou/sledog/b/d/b;

    invoke-interface {v0}, Lcom/sogou/sledog/b/d/b;->x()V

    goto :goto_0
.end method

.method public final P()V
    .locals 3

    iget-object v1, p0, Lcom/sogou/sledog/b/d/i;->bz:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/i;->bu:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/i;->bv:Z

    if-eqz v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    const-string v0, "DEMO"

    const-string v2, "SledogSystem.getCurrent()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final R()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sogou/sledog/b/d/i;->Q()V

    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/i;->bu:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/i;->bv:Z

    if-eqz v0, :cond_3

    :goto_1
    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/i;->bu:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sogou/sledog/b/d/i;->bw:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/sogou/sledog/b/d/i;->Q()V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sogou/sledog/b/d/i;->bz:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/sogou/sledog/b/d/i;->bv:Z

    :try_start_1
    iget-object v0, p0, Lcom/sogou/sledog/b/d/i;->by:Lcom/sogou/sledog/b/d/b;

    invoke-interface {v0}, Lcom/sogou/sledog/b/d/b;->w()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sogou/sledog/b/d/i;->bw:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sogou/sledog/b/d/i;->bu:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iput-boolean v1, p0, Lcom/sogou/sledog/b/d/i;->bv:Z

    goto :goto_2

    :catch_1
    move-exception v0

    iput-boolean v2, p0, Lcom/sogou/sledog/b/d/i;->bw:Z

    iput-object v0, p0, Lcom/sogou/sledog/b/d/i;->bx:Ljava/lang/Exception;

    iput-boolean v1, p0, Lcom/sogou/sledog/b/d/i;->bu:Z

    goto :goto_3
.end method
