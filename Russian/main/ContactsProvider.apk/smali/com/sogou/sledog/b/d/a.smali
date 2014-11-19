.class public final Lcom/sogou/sledog/b/d/a;
.super Ljava/lang/Object;


# instance fields
.field private bg:Lcom/sogou/sledog/b/b/c;

.field private bh:J

.field private bi:Ljava/lang/String;

.field private bj:I

.field private bk:I


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/b/c;Ljava/lang/String;J)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sogou/sledog/b/d/a;-><init>(Lcom/sogou/sledog/b/b/c;Ljava/lang/String;JB)V

    return-void
.end method

.method public constructor <init>(Lcom/sogou/sledog/b/b/c;Ljava/lang/String;JB)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/b/d/a;->bg:Lcom/sogou/sledog/b/b/c;

    iput-object p2, p0, Lcom/sogou/sledog/b/d/a;->bi:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sogou/sledog/b/d/a;->bh:J

    iput v0, p0, Lcom/sogou/sledog/b/d/a;->bj:I

    iput v0, p0, Lcom/sogou/sledog/b/d/a;->bk:I

    return-void
.end method


# virtual methods
.method public final K()Lcom/sogou/sledog/b/b/c;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/d/a;->bg:Lcom/sogou/sledog/b/b/c;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/sledog/b/d/a;->bi:Ljava/lang/String;

    return-object v0
.end method

.method public final M()J
    .locals 2

    iget-wide v0, p0, Lcom/sogou/sledog/b/d/a;->bh:J

    return-wide v0
.end method
