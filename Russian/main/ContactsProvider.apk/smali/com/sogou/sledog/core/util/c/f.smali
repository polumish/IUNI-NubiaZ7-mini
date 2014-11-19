.class public final Lcom/sogou/sledog/core/util/c/f;
.super Lcom/sogou/sledog/core/util/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sogou/sledog/core/util/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
