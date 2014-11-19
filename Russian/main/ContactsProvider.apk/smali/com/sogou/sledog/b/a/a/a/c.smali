.class public final Lcom/sogou/sledog/b/a/a/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/sogou/sledog/b/a/a/a/b;[Ljava/lang/String;)Landroid/util/SparseIntArray;
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    invoke-interface {p0}, Lcom/sogou/sledog/b/a/a/a/b;->H()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, v1, v0}, Lcom/sogou/sledog/b/a/a/a/c;->a([Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseIntArray;)V

    :cond_0
    return-object v0
.end method

.method private static a([Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseIntArray;)V
    .locals 11

    const/4 v5, 0x0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    array-length v8, p0

    move v4, v5

    move v0, v5

    :goto_0
    if-lt v4, v8, :cond_0

    :goto_1
    return-void

    :cond_0
    aget-object v1, p0, v4

    move-object v2, v1

    move v1, v0

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v1

    goto :goto_0

    :cond_1
    sget v3, Lcom/sogou/sledog/b/a/a/a/d;->aS:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sget v6, Lcom/sogou/sledog/b/a/a/a/d;->aS:I

    if-ge v0, v6, :cond_9

    :goto_3
    move v3, v0

    :goto_4
    if-gtz v3, :cond_4

    :cond_2
    move v0, v1

    :cond_3
    if-nez v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v2, v1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/a/a/a/a;

    if-eqz v0, :cond_8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sogou/sledog/b/a/a/a/a;->A()I

    move-result v6

    invoke-virtual {v0}, Lcom/sogou/sledog/b/a/a/a/a;->F()I

    move-result v9

    if-nez p2, :cond_7

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    :goto_6
    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v6, v10

    invoke-virtual {v0, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v6

    :goto_7
    if-eqz v0, :cond_5

    if-ge v1, v0, :cond_2

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    move-object v0, p2

    goto :goto_6

    :cond_8
    move v0, v5

    goto :goto_7

    :cond_9
    move v0, v3

    goto :goto_3
.end method
