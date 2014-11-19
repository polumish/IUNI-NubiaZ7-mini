.class public final Lcom/sogou/sledog/b/d/f;
.super Ljava/lang/Object;


# instance fields
.field private bi:Ljava/lang/String;

.field private bn:J

.field private bo:J

.field private bp:Ljava/lang/String;

.field private bq:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sogou/sledog/b/d/f;->bn:J

    iput-object p3, p0, Lcom/sogou/sledog/b/d/f;->bi:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sogou/sledog/b/d/f;->bi:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_deadline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/sledog/b/d/f;->bp:Ljava/lang/String;

    const-wide/32 v0, 0x2932e00

    iput-wide v0, p0, Lcom/sogou/sledog/b/d/f;->bo:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sogou/sledog/b/d/f;->bq:Z

    return-void
.end method
