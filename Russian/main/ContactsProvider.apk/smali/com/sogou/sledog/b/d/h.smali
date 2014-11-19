.class public Lcom/sogou/sledog/b/d/h;
.super Ljava/lang/Object;


# instance fields
.field private bs:Ljava/util/concurrent/Callable;

.field private bt:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sogou/sledog/b/d/h;->bt:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/sogou/sledog/b/d/h;->bs:Ljava/util/concurrent/Callable;

    return-void
.end method
