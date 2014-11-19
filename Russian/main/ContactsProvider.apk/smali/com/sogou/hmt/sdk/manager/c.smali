.class public final Lcom/sogou/hmt/sdk/manager/c;
.super Ljava/lang/Object;


# static fields
.field private static m:Lcom/sogou/hmt/sdk/manager/c;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h()Lcom/sogou/hmt/sdk/manager/c;
    .locals 1

    sget-object v0, Lcom/sogou/hmt/sdk/manager/c;->m:Lcom/sogou/hmt/sdk/manager/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sogou/hmt/sdk/manager/c;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/manager/c;-><init>()V

    sput-object v0, Lcom/sogou/hmt/sdk/manager/c;->m:Lcom/sogou/hmt/sdk/manager/c;

    :cond_0
    sget-object v0, Lcom/sogou/hmt/sdk/manager/c;->m:Lcom/sogou/hmt/sdk/manager/c;

    return-object v0
.end method


# virtual methods
.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/hmt/sdk/manager/c;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final j()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/c;->mContext:Landroid/content/Context;

    return-object v0
.end method
