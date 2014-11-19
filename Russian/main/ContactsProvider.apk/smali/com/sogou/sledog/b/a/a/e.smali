.class public final Lcom/sogou/sledog/b/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private ar:Ljava/util/ArrayList;

.field private as:Ljava/util/ArrayList;

.field private at:I


# direct methods
.method public constructor <init>(Lcom/sogou/sledog/b/a/a/k;Lcom/sogou/sledog/b/a/a/f;Lcom/sogou/sledog/b/a/a/a/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/e;->ar:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/a/a/e;->as:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sogou/sledog/b/a/a/e;->at:I

    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/e;->ar:Ljava/util/ArrayList;

    new-instance v1, Lcom/sogou/sledog/b/a/a/g;

    iget-object v2, p0, Lcom/sogou/sledog/b/a/a/e;->as:Ljava/util/ArrayList;

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/sogou/sledog/b/a/a/g;-><init>(Lcom/sogou/sledog/b/a/a/k;Lcom/sogou/sledog/b/a/a/f;Lcom/sogou/sledog/b/a/a/a/b;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/e;->ar:Ljava/util/ArrayList;

    new-instance v1, Lcom/sogou/sledog/b/a/a/d;

    invoke-direct {v1}, Lcom/sogou/sledog/b/a/a/d;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/sledog/b/a/a/j;
    .locals 9

    const/16 v2, 0x32

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sogou/sledog/b/a/a/e;->ar:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    sget-object v0, Lcom/sogou/sledog/b/a/d;->ae:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sogou/sledog/b/a/d;->u()V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    move v1, v3

    :goto_0
    if-lt v1, v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v0

    int-to-double v6, v0

    int-to-double v0, v1

    div-double v0, v6, v0

    const-wide v6, 0x3fd3333333333333L

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_a

    move v0, v2

    :goto_1
    if-ne v0, v2, :cond_9

    const/4 v1, 0x2

    move v2, v1

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/sogou/sledog/b/a/a/j;

    iget v1, p0, Lcom/sogou/sledog/b/a/a/e;->at:I

    invoke-direct {v0, v3, v2, v1}, Lcom/sogou/sledog/b/a/a/j;-><init>(ZII)V

    :goto_3
    return-object v0

    :cond_1
    aget-char v0, v5, v1

    invoke-static {v0}, Lcom/sogou/sledog/b/a/b;->a(C)Lcom/sogou/sledog/b/a/c;

    move-result-object v0

    sget-object v8, Lcom/sogou/sledog/b/a/c;->X:Lcom/sogou/sledog/b/a/c;

    if-eq v0, v8, :cond_2

    sget-object v8, Lcom/sogou/sledog/b/a/c;->Y:Lcom/sogou/sledog/b/a/c;

    if-eq v0, v8, :cond_2

    sget-object v8, Lcom/sogou/sledog/b/a/c;->Z:Lcom/sogou/sledog/b/a/c;

    if-eq v0, v8, :cond_2

    sget-object v8, Lcom/sogou/sledog/b/a/c;->ab:Lcom/sogou/sledog/b/a/c;

    if-eq v0, v8, :cond_2

    sget-object v8, Lcom/sogou/sledog/b/a/c;->ac:Lcom/sogou/sledog/b/a/c;

    if-ne v0, v8, :cond_5

    :cond_2
    sget-object v8, Lcom/sogou/sledog/b/a/c;->Z:Lcom/sogou/sledog/b/a/c;

    if-ne v0, v8, :cond_4

    aget-char v0, v5, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/sogou/sledog/b/a/d;->ae:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_4
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_3
    aget-char v0, v5, v1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_4

    :cond_4
    aget-char v0, v5, v1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_4

    :cond_5
    aget-char v0, v5, v1

    const v8, 0xff00

    if-le v0, v8, :cond_b

    aget-char v0, v5, v1

    const v8, 0xff5f

    if-ge v0, v8, :cond_b

    aget-char v0, v5, v1

    const v8, 0xfee0

    sub-int/2addr v0, v8

    int-to-char v0, v0

    aput-char v0, v5, v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sogou/sledog/b/a/a/i;

    invoke-interface {v0, p1, v5, p2}, Lcom/sogou/sledog/b/a/a/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/sledog/b/a/a/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sogou/sledog/b/a/a/h;->C()I

    move-result v0

    or-int/2addr v2, v0

    invoke-virtual {v6}, Lcom/sogou/sledog/b/a/a/h;->A()I

    move-result v0

    if-gez v0, :cond_7

    invoke-virtual {v6}, Lcom/sogou/sledog/b/a/a/h;->B()I

    move-result v0

    iput v0, p0, Lcom/sogou/sledog/b/a/a/e;->at:I

    new-instance v0, Lcom/sogou/sledog/b/a/a/j;

    iget v1, p0, Lcom/sogou/sledog/b/a/a/e;->at:I

    invoke-direct {v0, v3, v2, v1}, Lcom/sogou/sledog/b/a/a/j;-><init>(ZII)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v6}, Lcom/sogou/sledog/b/a/a/h;->A()I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0x64

    if-lt v0, v1, :cond_8

    invoke-virtual {v6}, Lcom/sogou/sledog/b/a/a/h;->B()I

    move-result v0

    iput v0, p0, Lcom/sogou/sledog/b/a/a/e;->at:I

    new-instance v0, Lcom/sogou/sledog/b/a/a/j;

    const/4 v1, 0x1

    iget v3, p0, Lcom/sogou/sledog/b/a/a/e;->at:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sogou/sledog/b/a/a/j;-><init>(ZII)V

    goto/16 :goto_3

    :cond_8
    move v1, v0

    goto/16 :goto_2

    :cond_9
    move v1, v0

    move v2, v3

    goto/16 :goto_2

    :cond_a
    move v0, v3

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_4
.end method
