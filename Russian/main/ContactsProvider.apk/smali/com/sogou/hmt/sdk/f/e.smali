.class public final Lcom/sogou/hmt/sdk/f/e;
.super Ljava/lang/Object;


# static fields
.field private static A:Landroid/content/SharedPreferences;

.field private static B:Landroid/content/SharedPreferences$Editor;

.field private static C:Lcom/sogou/hmt/sdk/f/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "OppoSdkSetting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sogou/hmt/sdk/f/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/sogou/hmt/sdk/f/e;->B:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static q()Lcom/sogou/hmt/sdk/f/e;
    .locals 1

    sget-object v0, Lcom/sogou/hmt/sdk/f/e;->C:Lcom/sogou/hmt/sdk/f/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sogou/hmt/sdk/f/e;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/f/e;-><init>()V

    sput-object v0, Lcom/sogou/hmt/sdk/f/e;->C:Lcom/sogou/hmt/sdk/f/e;

    :cond_0
    sget-object v0, Lcom/sogou/hmt/sdk/f/e;->C:Lcom/sogou/hmt/sdk/f/e;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized getLong(Ljava/lang/String;J)J
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sogou/hmt/sdk/f/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sogou/hmt/sdk/f/e;->A:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setLong(Ljava/lang/String;J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sogou/hmt/sdk/f/e;->B:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/sogou/hmt/sdk/f/e;->B:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sogou/hmt/sdk/f/e;->B:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/sogou/hmt/sdk/f/e;->B:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
