.class public final Lcom/sogou/sledog/core/util/c/e;
.super Ljava/lang/Object;


# instance fields
.field private T:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sogou/sledog/core/util/c/e;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/sledog/core/util/c/e;->T:Ljava/lang/String;

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Lcom/sogou/sledog/core/util/c/e;

    invoke-direct {v1, p0}, Lcom/sogou/sledog/core/util/c/e;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sogou/sledog/core/util/c/e;

    invoke-direct {v0, p1}, Lcom/sogou/sledog/core/util/c/e;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/sogou/sledog/core/util/c/e;->T:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iget-object v0, v0, Lcom/sogou/sledog/core/util/c/e;->T:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v2, v0, Lcom/sogou/sledog/core/util/c/e;->T:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sogou/sledog/core/util/c/e;

    iget-object v0, v0, Lcom/sogou/sledog/core/util/c/e;->T:Ljava/lang/String;

    invoke-static {v0}, Lcom/sogou/sledog/core/util/c/e;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sogou/sledog/core/util/c/e;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/sogou/sledog/core/util/c/e;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sogou/sledog/core/util/c/e;

    const-string v3, "%s%c%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v1, v1, Lcom/sogou/sledog/core/util/c/e;->T:Ljava/lang/String;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget-object v2, v2, Lcom/sogou/sledog/core/util/c/e;->T:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sogou/sledog/core/util/c/e;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-lez v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static z(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    if-gt v0, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    goto :goto_0
.end method
