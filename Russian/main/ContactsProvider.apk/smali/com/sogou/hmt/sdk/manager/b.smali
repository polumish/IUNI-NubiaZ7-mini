.class final Lcom/sogou/hmt/sdk/manager/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic k:Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

.field private final synthetic l:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sogou/hmt/sdk/manager/HmtSdkManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/hmt/sdk/manager/b;->k:Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    iput-object p2, p0, Lcom/sogou/hmt/sdk/manager/b;->l:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/sogou/hmt/sdk/manager/c;->h()Lcom/sogou/hmt/sdk/manager/c;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/b;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sogou/hmt/sdk/manager/c;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/sogou/hmt/sdk/f/e;->q()Lcom/sogou/hmt/sdk/f/e;

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/b;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/sogou/hmt/sdk/f/e;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/sogou/hmt/sdk/a/b;->c()Lcom/sogou/hmt/sdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/b;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sogou/hmt/sdk/a/b;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/sogou/hmt/sdk/b/a;->g()Lcom/sogou/hmt/sdk/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/b;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sogou/hmt/sdk/b/a;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/sogou/hmt/sdk/d/a;->l()Lcom/sogou/hmt/sdk/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/b;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sogou/hmt/sdk/d/a;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/sogou/sledog/b/e/c/f;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/b;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sogou/sledog/b/e/c/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/c/f;->P()V

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/b;->k:Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    new-instance v2, Lcom/sogou/sledog/b/e/b;

    invoke-direct {v2, v0}, Lcom/sogou/sledog/b/e/b;-><init>(Lcom/sogou/sledog/b/e/c/c;)V

    invoke-static {v1, v2}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->access$0(Lcom/sogou/hmt/sdk/manager/HmtSdkManager;Lcom/sogou/sledog/b/e/b;)V

    invoke-static {}, Lcom/sogou/hmt/sdk/e/a;->n()Lcom/sogou/hmt/sdk/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/b;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sogou/hmt/sdk/e/a;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/b;->k:Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/b;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->access$1(Lcom/sogou/hmt/sdk/manager/HmtSdkManager;Landroid/content/Context;)V

    return-void
.end method
