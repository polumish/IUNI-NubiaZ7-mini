.class public final Lcom/sogou/sledog/b/d/e;
.super Lcom/sogou/sledog/b/d/h;


# instance fields
.field private bl:Lcom/sogou/sledog/b/d/f;

.field private bm:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;JLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sogou/sledog/b/d/e;-><init>(Ljava/util/concurrent/Callable;JLjava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;JLjava/lang/String;B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sogou/sledog/b/d/h;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/sogou/sledog/b/d/f;

    invoke-direct {v0, p2, p3, p4}, Lcom/sogou/sledog/b/d/f;-><init>(JLjava/lang/String;)V

    iput-object v0, p0, Lcom/sogou/sledog/b/d/e;->bl:Lcom/sogou/sledog/b/d/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sogou/sledog/b/d/e;->bm:Z

    return-void
.end method
