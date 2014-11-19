.class public Lcom/sogou/sledog/b/e/a/a;
.super Ljava/lang/Object;


# instance fields
.field private cg:Lcom/sogou/sledog/b/e/a;

.field private ch:Z

.field private ci:J


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/e/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sogou/sledog/b/e/a/a;->ch:Z

    iput-object p1, p0, Lcom/sogou/sledog/b/e/a/a;->cg:Lcom/sogou/sledog/b/e/a;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sogou/sledog/b/e/a/a;->ci:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
