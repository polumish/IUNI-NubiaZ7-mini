.class public final Lcom/sogou/sledog/b/e/b/a/k;
.super Ljava/lang/Object;


# instance fields
.field private cN:Ljava/lang/String;

.field private cO:Ljava/lang/String;

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/b/e/b/a/k;->cN:Ljava/lang/String;

    iput-object p2, p0, Lcom/sogou/sledog/b/e/b/a/k;->cO:Ljava/lang/String;

    iput-object p3, p0, Lcom/sogou/sledog/b/e/b/a/k;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final S(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/k;->cN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/k;->cO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b/a/k;->fileName:Ljava/lang/String;

    return-object v0
.end method
