.class public final Lcom/sogou/sledog/core/util/c/c;
.super Ljava/lang/Object;


# instance fields
.field private R:C

.field private S:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sogou/sledog/core/util/c/c;-><init>(IB)V

    return-void
.end method

.method private constructor <init>(IB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput-char v0, p0, Lcom/sogou/sledog/core/util/c/c;->R:C

    iput p1, p0, Lcom/sogou/sledog/core/util/c/c;->S:I

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sogou/sledog/core/util/c/d;)V
    .locals 10

    const/16 v9, 0xa

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget v0, p0, Lcom/sogou/sledog/core/util/c/c;->S:I

    new-array v7, v0, [Ljava/lang/String;

    move v1, v4

    move v2, v4

    move v3, v4

    :goto_0
    if-lt v1, v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iget-char v0, p0, Lcom/sogou/sledog/core/util/c/c;->R:C

    if-eq v8, v0, :cond_1

    if-ne v8, v9, :cond_6

    :cond_1
    iget v0, p0, Lcom/sogou/sledog/core/util/c/c;->S:I

    if-ge v3, v0, :cond_5

    if-ge v2, v1, :cond_5

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_4

    add-int/lit8 v0, v1, -0x1

    :goto_1
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    add-int/lit8 v2, v1, 0x1

    move v0, v2

    move v2, v5

    :goto_2
    if-ne v8, v9, :cond_3

    iget v0, p0, Lcom/sogou/sledog/core/util/c/c;->S:I

    if-ne v2, v0, :cond_2

    invoke-interface {p2, v7}, Lcom/sogou/sledog/core/util/c/d;->a([Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v2, v4

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    move v2, v3

    goto :goto_2

    :cond_6
    move v0, v2

    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V
    .locals 2

    invoke-virtual {p2, p1}, Lcom/sogou/sledog/core/util/c/a;->f(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/lang/String;Lcom/sogou/sledog/core/util/c/d;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/sogou/sledog/core/util/c/a;Lcom/sogou/sledog/core/util/c/d;)V
    .locals 2

    invoke-virtual {p2, p1}, Lcom/sogou/sledog/core/util/c/a;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/sogou/sledog/core/util/c/c;->a(Ljava/lang/String;Lcom/sogou/sledog/core/util/c/d;)V

    goto :goto_0
.end method
