.class public final Lcom/sogou/sledog/b/a/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private aI:Ljava/lang/String;

.field private aJ:Ljava/lang/String;

.field private aK:Ljava/lang/String;

.field private aL:I

.field private aM:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sogou/sledog/b/a/a/a/a;->aL:I

    iput v0, p0, Lcom/sogou/sledog/b/a/a/a/a;->aM:I

    iput-object p1, p0, Lcom/sogou/sledog/b/a/a/a/a;->aI:Ljava/lang/String;

    iput-object p2, p0, Lcom/sogou/sledog/b/a/a/a/a;->aJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/sogou/sledog/b/a/a/a/a;->aK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 2

    iget v0, p0, Lcom/sogou/sledog/b/a/a/a/a;->aM:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/a/a;->aJ:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sogou/sledog/b/a/a/a/a;->aM:I

    :cond_0
    iget v0, p0, Lcom/sogou/sledog/b/a/a/a/a;->aM:I

    return v0
.end method

.method public final F()I
    .locals 2

    iget v0, p0, Lcom/sogou/sledog/b/a/a/a/a;->aL:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/a/a;->aK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sogou/sledog/b/a/a/a/a;->aL:I

    :cond_0
    iget v0, p0, Lcom/sogou/sledog/b/a/a/a/a;->aL:I

    return v0
.end method
