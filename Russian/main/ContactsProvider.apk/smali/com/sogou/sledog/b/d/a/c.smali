.class public abstract Lcom/sogou/sledog/b/d/a/c;
.super Ljava/lang/Object;


# instance fields
.field private bO:Lcom/sogou/sledog/b/d/a/b;

.field private bP:Lcom/sogou/sledog/b/d/a/b;

.field private bQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/d/a/b;Lcom/sogou/sledog/b/d/a/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/b/d/a/c;->bO:Lcom/sogou/sledog/b/d/a/b;

    iput-object p2, p0, Lcom/sogou/sledog/b/d/a/c;->bP:Lcom/sogou/sledog/b/d/a/b;

    iput-object p3, p0, Lcom/sogou/sledog/b/d/a/c;->bQ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final aa()Lcom/sogou/sledog/b/d/a/b;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/d/a/c;->bP:Lcom/sogou/sledog/b/d/a/b;

    return-object v0
.end method

.method public abstract ab()V
.end method

.method public final getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/d/a/c;->bQ:Ljava/lang/String;

    return-object v0
.end method
