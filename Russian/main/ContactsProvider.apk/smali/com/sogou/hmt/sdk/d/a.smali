.class public final Lcom/sogou/hmt/sdk/d/a;
.super Ljava/lang/Object;


# static fields
.field private static s:Lcom/sogou/hmt/sdk/d/a;


# instance fields
.field private i:Lcom/sogou/sledog/a/c/a;

.field private r:Lcom/sogou/sledog/b/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static l()Lcom/sogou/hmt/sdk/d/a;
    .locals 1

    sget-object v0, Lcom/sogou/hmt/sdk/d/a;->s:Lcom/sogou/hmt/sdk/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sogou/hmt/sdk/d/a;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/d/a;-><init>()V

    sput-object v0, Lcom/sogou/hmt/sdk/d/a;->s:Lcom/sogou/hmt/sdk/d/a;

    :cond_0
    sget-object v0, Lcom/sogou/hmt/sdk/d/a;->s:Lcom/sogou/hmt/sdk/d/a;

    return-object v0
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/sogou/sledog/a/c/a;->r()Lcom/sogou/sledog/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/hmt/sdk/d/a;->i:Lcom/sogou/sledog/a/c/a;

    new-instance v0, Lcom/sogou/sledog/b/c/a;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/d/a;->i:Lcom/sogou/sledog/a/c/a;

    iget-object v2, p0, Lcom/sogou/hmt/sdk/d/a;->i:Lcom/sogou/sledog/a/c/a;

    iget v2, v2, Lcom/sogou/sledog/a/c/a;->I:I

    invoke-virtual {v1, v2}, Lcom/sogou/sledog/a/c/a;->a(I)Lcom/sogou/sledog/b/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sogou/sledog/b/d/a;->K()Lcom/sogou/sledog/b/b/c;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sogou/sledog/b/c/a;-><init>(Landroid/content/Context;Lcom/sogou/sledog/b/b/c;)V

    iput-object v0, p0, Lcom/sogou/hmt/sdk/d/a;->r:Lcom/sogou/sledog/b/c/a;

    return-void
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lcom/sogou/hmt/sdk/d/a;->r:Lcom/sogou/sledog/b/c/a;

    new-instance v1, Lcom/sogou/sledog/a/b/a/a;

    invoke-direct {v1}, Lcom/sogou/sledog/a/b/a/a;-><init>()V

    invoke-virtual {v0}, Lcom/sogou/sledog/b/c/a;->J()Z

    move-result v0

    return v0
.end method
