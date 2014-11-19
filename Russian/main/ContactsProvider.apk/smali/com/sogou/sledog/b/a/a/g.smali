.class public final Lcom/sogou/sledog/b/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sogou/sledog/b/a/a/i;


# instance fields
.field private au:Lcom/sogou/sledog/b/a/a/k;

.field private av:Lcom/sogou/sledog/b/a/a/f;

.field private aw:Lcom/sogou/sledog/b/a/a/a/b;

.field private ax:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/a/a/k;Lcom/sogou/sledog/b/a/a/f;Lcom/sogou/sledog/b/a/a/a/b;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sogou/sledog/b/a/a/g;->au:Lcom/sogou/sledog/b/a/a/k;

    iput-object p2, p0, Lcom/sogou/sledog/b/a/a/g;->av:Lcom/sogou/sledog/b/a/a/f;

    iput-object p3, p0, Lcom/sogou/sledog/b/a/a/g;->aw:Lcom/sogou/sledog/b/a/a/a/b;

    iput-object p4, p0, Lcom/sogou/sledog/b/a/a/g;->ax:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/sledog/b/a/a/h;
    .locals 9

    const/16 v8, 0xf

    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v4, v2

    move v0, v3

    :goto_0
    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    new-instance v0, Lcom/sogou/sledog/b/a/a/h;

    const/16 v1, 0xe

    invoke-direct {v0, v7, v1, v3}, Lcom/sogou/sledog/b/a/a/h;-><init>(III)V

    :goto_2
    return-object v0

    :cond_0
    aget-char v5, v2, v0

    invoke-static {v5}, Lcom/sogou/sledog/b/a/b;->a(C)Lcom/sogou/sledog/b/a/c;

    move-result-object v5

    sget-object v6, Lcom/sogou/sledog/b/a/c;->Z:Lcom/sogou/sledog/b/a/c;

    if-ne v5, v6, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/g;->au:Lcom/sogou/sledog/b/a/a/k;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/sogou/sledog/b/a/a/k;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/sledog/b/a/a/m;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sogou/sledog/b/a/a/m;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sogou/sledog/b/a/a/h;

    const/16 v1, 0xff

    const/16 v2, 0x10

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/sogou/sledog/b/a/a/h;-><init>(III)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/sogou/sledog/b/a/a/h;

    const/16 v1, 0x20

    invoke-direct {v0, v7, v8, v1}, Lcom/sogou/sledog/b/a/a/h;-><init>(III)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/g;->av:Lcom/sogou/sledog/b/a/a/f;

    invoke-interface {v0, p1}, Lcom/sogou/sledog/b/a/a/f;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/sogou/sledog/b/a/a/g;->ax:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    if-eqz v0, :cond_7

    new-instance v0, Lcom/sogou/sledog/b/a/a/h;

    const/4 v1, 0x3

    const/16 v2, 0x8

    invoke-direct {v0, v7, v1, v2}, Lcom/sogou/sledog/b/a/a/h;-><init>(III)V

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/g;->aw:Lcom/sogou/sledog/b/a/a/a/b;

    invoke-interface {v0}, Lcom/sogou/sledog/b/a/a/a/b;->G()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_9

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    move v0, v3

    :goto_4
    if-eqz v0, :cond_c

    new-instance v0, Lcom/sogou/sledog/b/a/a/h;

    const/4 v1, 0x5

    const/16 v2, 0x80

    invoke-direct {v0, v7, v1, v2}, Lcom/sogou/sledog/b/a/a/h;-><init>(III)V

    goto :goto_2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_c
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v8, :cond_d

    move v0, v1

    :goto_5
    if-eqz v0, :cond_e

    new-instance v0, Lcom/sogou/sledog/b/a/a/h;

    const/16 v1, 0x9

    invoke-direct {v0, v7, v1, v3}, Lcom/sogou/sledog/b/a/a/h;-><init>(III)V

    goto/16 :goto_2

    :cond_d
    move v0, v3

    goto :goto_5

    :cond_e
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sogou/sledog/b/a/a/g;->aw:Lcom/sogou/sledog/b/a/a/a/b;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v3

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Lcom/sogou/sledog/b/a/a/a/c;->a(Lcom/sogou/sledog/b/a/a/a/b;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    move v0, v3

    move v1, v3

    move v4, v3

    :goto_6
    if-lt v4, v6, :cond_f

    add-int/2addr v1, v0

    new-instance v0, Lcom/sogou/sledog/b/a/a/h;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sogou/sledog/b/a/a/h;-><init>(III)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    :cond_10
    :goto_7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    :cond_11
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-le v2, v1, :cond_10

    move v1, v2

    goto :goto_7
.end method
