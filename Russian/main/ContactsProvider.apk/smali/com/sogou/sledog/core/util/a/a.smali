.class public abstract Lcom/sogou/sledog/core/util/a/a;
.super Ljava/lang/Object;


# static fields
.field protected static P:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "utf-8"

    sput-object v0, Lcom/sogou/sledog/core/util/a/a;->P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private q(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    sget-object v0, Lcom/sogou/sledog/core/util/a/a;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sogou/sledog/core/util/a/a;->encode([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract decode([B)[B
.end method

.method public abstract encode([B)[B
.end method

.method public final r(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sogou/sledog/core/util/a/a;->q(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v3, Lcom/sogou/sledog/core/util/a/a;->P:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
