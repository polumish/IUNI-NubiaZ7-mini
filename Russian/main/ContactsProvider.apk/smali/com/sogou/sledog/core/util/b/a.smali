.class public final Lcom/sogou/sledog/core/util/b/a;
.super Lcom/sogou/sledog/core/util/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sogou/sledog/core/util/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode([B)[B
    .locals 1

    invoke-static {p1}, Lcom/sogou/sledog/core/util/Native;->decryptCommon([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final encode([B)[B
    .locals 1

    invoke-static {p1}, Lcom/sogou/sledog/core/util/Native;->encryptCommon([B)[B

    move-result-object v0

    return-object v0
.end method
