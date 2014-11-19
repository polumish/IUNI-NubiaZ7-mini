.class public final Lcom/sogou/sledog/b/e/a/c;
.super Lcom/sogou/sledog/b/e/a/a;


# instance fields
.field private ck:Z

.field private count:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/e/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sogou/sledog/b/e/a/a;-><init>(Lcom/sogou/sledog/b/e/a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sogou/sledog/b/e/a/c;->ck:Z

    return-void
.end method


# virtual methods
.method public final O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/e/a/c;->tag:Ljava/lang/String;

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/sogou/sledog/b/e/a/c;->count:I

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/sogou/sledog/b/e/a/c;->count:I

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/e/a/c;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sogou/sledog/b/e/a/c;->count:I

    if-lez v0, :cond_0

    const-string v0, "%d\u4eba\u6807\u8bb0\u4e3a%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sogou/sledog/b/e/a/c;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sogou/sledog/b/e/a/c;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sogou/sledog/b/e/a/c;->tag:Ljava/lang/String;

    goto :goto_0
.end method
