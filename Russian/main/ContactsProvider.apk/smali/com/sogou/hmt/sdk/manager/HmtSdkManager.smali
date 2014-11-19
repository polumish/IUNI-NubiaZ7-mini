.class public Lcom/sogou/hmt/sdk/manager/HmtSdkManager;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/sogou/hmt/sdk/manager/HmtSdkManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPool:Ljava/util/concurrent/ExecutorService;

.field private mRegionParser:Lcom/sogou/sledog/b/e/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->mPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$0(Lcom/sogou/hmt/sdk/manager/HmtSdkManager;Lcom/sogou/sledog/b/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->mRegionParser:Lcom/sogou/sledog/b/e/b;

    return-void
.end method

.method static synthetic access$1(Lcom/sogou/hmt/sdk/manager/HmtSdkManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private deleteUserMark(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sogou/hmt/sdk/b/a;->f(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;

    move-result-object v0

    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sogou/hmt/sdk/a/b;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;
    .locals 2

    const-class v1, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->instance:Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;-><init>()V

    sput-object v0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->instance:Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->instance:Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertUserMark(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sogou/hmt/sdk/b/a;->f(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;

    move-result-object v0

    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/sogou/hmt/sdk/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancelMark(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sogou/hmt/sdk/b/a;->f(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;

    move-result-object v0

    new-instance v1, Lcom/sogou/hmt/sdk/c/d;

    iget-object v2, p0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sogou/hmt/sdk/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/sogou/hmt/sdk/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->deleteUserMark(Ljava/lang/String;)Z

    :cond_1
    return v0
.end method

.method public checkNumberFromLocal(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;
    .locals 3

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/a/b;->d()V

    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sogou/hmt/sdk/b/a;->f(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;

    move-result-object v1

    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sogou/hmt/sdk/a/b;->getUserMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/sogou/hmt/sdk/manager/HMTNumber;

    invoke-direct {v0, p1, v2}, Lcom/sogou/hmt/sdk/manager/HMTNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/hmt/sdk/b/a;->a(Lcom/sogou/sledog/b/e/a;)Lcom/sogou/hmt/sdk/manager/HMTNumber;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/hmt/sdk/a/b;->e()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sogou/hmt/sdk/b/a;->b(Lcom/sogou/sledog/b/e/a;)Lcom/sogou/hmt/sdk/manager/HMTNumber;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/hmt/sdk/a/b;->e()V

    goto :goto_0
.end method

.method public checkNumberFromNet(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;
    .locals 3

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/a/b;->d()V

    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sogou/hmt/sdk/b/a;->f(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;

    move-result-object v0

    new-instance v1, Lcom/sogou/hmt/sdk/c/a;

    iget-object v2, p0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sogou/hmt/sdk/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sogou/hmt/sdk/c/a;->g(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/hmt/sdk/a/b;->f()V

    goto :goto_0
.end method

.method public getAllUserMark()Ljava/util/Map;
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/a/b;->getAllUserMark()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalNumberVersion()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/b/a;->getLocalNumberVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSmsDataVersion()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/e/a;->n()Lcom/sogou/hmt/sdk/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/e/a;->getLocalSmsDataVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPartLocalNumber()Ljava/util/ArrayList;
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/b/a;->getPartLocalNumber()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRegionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->mRegionParser:Lcom/sogou/sledog/b/e/b;

    invoke-virtual {v0, p1}, Lcom/sogou/sledog/b/e/b;->L(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/a;->ai()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserMark(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sogou/hmt/sdk/b/a;->f(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;

    move-result-object v0

    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sogou/hmt/sdk/a/b;->getUserMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->mPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sogou/hmt/sdk/manager/b;

    invoke-direct {v1, p0, p1}, Lcom/sogou/hmt/sdk/manager/b;-><init>(Lcom/sogou/hmt/sdk/manager/HmtSdkManager;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isInit()Z
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedSmsDataUpdate()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/e/a;->n()Lcom/sogou/hmt/sdk/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/e/a;->isNeedUpdate()Z

    move-result v0

    return v0
.end method

.method public isNeedUpdate()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/b/a;->isNeedUpdate()Z

    move-result v0

    return v0
.end method

.method public isSpam(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/e/a;->n()Lcom/sogou/hmt/sdk/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sogou/hmt/sdk/e/a;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendContactInfo()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/d/a;->l()Lcom/sogou/hmt/sdk/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/d/a;->m()Z

    move-result v0

    return v0
.end method

.method public startSmsDataUpdate()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/e/a;->n()Lcom/sogou/hmt/sdk/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/e/a;->startUpdate()Z

    move-result v0

    return v0
.end method

.method public startUpdate()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/b/a;->startUpdate()Z

    move-result v0

    return v0
.end method

.method public uploadMark(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no initialize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sogou/hmt/sdk/b/a;->f(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;

    move-result-object v0

    new-instance v1, Lcom/sogou/hmt/sdk/c/e;

    iget-object v2, p0, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sogou/hmt/sdk/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/a;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/sogou/hmt/sdk/c/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->insertUserMark(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return v0
.end method
