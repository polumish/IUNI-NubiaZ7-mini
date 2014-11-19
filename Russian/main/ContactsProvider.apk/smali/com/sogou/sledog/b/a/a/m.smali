.class public final Lcom/sogou/sledog/b/a/a/m;
.super Ljava/lang/Object;


# instance fields
.field private aG:Ljava/lang/String;

.field private aH:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/b/a/a/m;->aG:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sogou/sledog/b/a/a/m;->aH:Z

    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/m;->aG:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sogou/sledog/b/a/a/m;->aH:Z

    return v0
.end method
