.class public final Lcom/sogou/sledog/b/f/c;
.super Lcom/sogou/sledog/b/d/a/c;


# instance fields
.field private do:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/d/a/b;Lcom/sogou/sledog/b/d/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sogou/sledog/b/d/a/c;-><init>(Lcom/sogou/sledog/b/d/a/b;Lcom/sogou/sledog/b/d/a/b;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/sogou/sledog/b/f/c;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ab()V
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/f/c;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/sogou/sledog/core/util/c/b;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/sogou/sledog/b/f/c;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/core/util/c/b;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method
