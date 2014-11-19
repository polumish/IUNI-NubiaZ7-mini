.class final Lcom/sogou/sledog/b/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic dn:Lcom/sogou/sledog/b/f/a;


# direct methods
.method constructor <init>(Lcom/sogou/sledog/b/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/f/b;->dn:Lcom/sogou/sledog/b/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sogou/sledog/b/f/b;->dn:Lcom/sogou/sledog/b/f/a;

    const-string v0, "DEMO"

    const-string v1, "SledogSystem.getCurrent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
