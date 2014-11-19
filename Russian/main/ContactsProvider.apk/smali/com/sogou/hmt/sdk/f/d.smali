.class public final Lcom/sogou/hmt/sdk/f/d;
.super Ljava/lang/Object;


# static fields
.field private static x:Lcom/sogou/hmt/sdk/f/d;


# instance fields
.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sogou/hmt/sdk/f/d;->x:Lcom/sogou/hmt/sdk/f/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->z:Ljava/lang/String;

    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sogou/hmt/sdk/f/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "..."

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "..."

    goto :goto_0
.end method

.method private static m(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static o()Lcom/sogou/hmt/sdk/f/d;
    .locals 1

    sget-object v0, Lcom/sogou/hmt/sdk/f/d;->x:Lcom/sogou/hmt/sdk/f/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sogou/hmt/sdk/f/d;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/f/d;-><init>()V

    sput-object v0, Lcom/sogou/hmt/sdk/f/d;->x:Lcom/sogou/hmt/sdk/f/d;

    :cond_0
    sget-object v0, Lcom/sogou/hmt/sdk/f/d;->x:Lcom/sogou/hmt/sdk/f/d;

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    const-string v0, "11316"

    return-object v0
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/sogou/hmt/sdk/f/d;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/sogou/hmt/sdk/f/d;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/hmt/sdk/f/c;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->y:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->z:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->z:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sogou/hmt/sdk/f/d;->z:Ljava/lang/String;

    return-object v0
.end method
