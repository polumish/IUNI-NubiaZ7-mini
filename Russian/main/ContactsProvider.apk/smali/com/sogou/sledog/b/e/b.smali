.class public final Lcom/sogou/sledog/b/e/b;
.super Ljava/lang/Object;


# static fields
.field private static final cb:[Ljava/lang/String;

.field private static cc:Ljava/util/Set;

.field private static cd:I

.field private static ce:I


# instance fields
.field private ca:Lcom/sogou/sledog/b/e/c/a;

.field private cf:Lcom/sogou/sledog/b/e/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "17909"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "17951"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "17911"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "17900"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "12520"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "10193"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "12593"

    aput-object v3, v1, v2

    sput-object v1, Lcom/sogou/sledog/b/e/b;->cb:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/sogou/sledog/b/e/b;->cc:Ljava/util/Set;

    const v1, 0x7fffffff

    sput v1, Lcom/sogou/sledog/b/e/b;->cd:I

    const/high16 v1, -0x80000000

    sput v1, Lcom/sogou/sledog/b/e/b;->ce:I

    sget-object v1, Lcom/sogou/sledog/b/e/b;->cb:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v5, Lcom/sogou/sledog/b/e/b;->cc:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget v3, Lcom/sogou/sledog/b/e/b;->cd:I

    if-ge v4, v3, :cond_2

    sput v4, Lcom/sogou/sledog/b/e/b;->cd:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget v3, Lcom/sogou/sledog/b/e/b;->ce:I

    if-le v4, v3, :cond_1

    sput v4, Lcom/sogou/sledog/b/e/b;->ce:I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sogou/sledog/b/e/c/a;

    invoke-direct {v0}, Lcom/sogou/sledog/b/e/c/a;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b;->ca:Lcom/sogou/sledog/b/e/c/a;

    return-void
.end method

.method public constructor <init>(Lcom/sogou/sledog/b/e/c/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sogou/sledog/b/e/c/a;

    invoke-direct {v0}, Lcom/sogou/sledog/b/e/c/a;-><init>()V

    iput-object v0, p0, Lcom/sogou/sledog/b/e/b;->ca:Lcom/sogou/sledog/b/e/c/a;

    iput-object p1, p0, Lcom/sogou/sledog/b/e/b;->cf:Lcom/sogou/sledog/b/e/c/c;

    return-void
.end method

.method private static J(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "+86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0086"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const-string v0, "01"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static K(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;
    .locals 3

    new-instance v1, Lcom/sogou/sledog/b/e/a;

    invoke-direct {v1, p0}, Lcom/sogou/sledog/b/e/a;-><init>(Ljava/lang/String;)V

    const-string v0, "86"

    const-string v2, "\u4e2d\u56fd"

    invoke-virtual {v1, v0, v2}, Lcom/sogou/sledog/b/e/a;->q(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sogou/sledog/b/e/b;->J(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sogou/sledog/b/e/b;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sogou/sledog/b/e/a;->H(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sogou/sledog/b/e/b;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/sogou/sledog/b/e/a;->I(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/sogou/sledog/b/e/a;->G(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static M(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static N(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/sogou/sledog/b/e/b;->cd:I

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget v1, Lcom/sogou/sledog/b/e/b;->ce:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    sget v1, Lcom/sogou/sledog/b/e/b;->cd:I

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/sogou/sledog/b/e/b;->cc:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private a(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v3, 0x0

    if-nez p2, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    if-nez v0, :cond_b

    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v0, 0x8

    if-ge v4, v0, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    const-string v0, ""

    const-string v5, "000"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_5

    move-object v0, v3

    goto :goto_0

    :cond_4
    const-string v5, "+0"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v4, "19"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v0, v3

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_7

    const/16 v5, 0x33

    if-eq v4, v5, :cond_7

    const/16 v5, 0x35

    if-eq v4, v5, :cond_7

    const/16 v5, 0x36

    if-eq v4, v5, :cond_7

    move-object v0, v3

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_8

    move-object v0, v3

    goto :goto_0

    :cond_8
    move v4, v2

    :goto_3
    if-le v4, v7, :cond_9

    move-object v0, v3

    goto :goto_0

    :cond_9
    sub-int v0, v6, v4

    if-ne v0, v8, :cond_a

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b;->ca:Lcom/sogou/sledog/b/e/c/a;

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/b/e/c/a;->T(Ljava/lang/String;)Lcom/sogou/sledog/b/e/c/b;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_b
    invoke-virtual {p1, v7}, Lcom/sogou/sledog/b/e/a;->e(I)V

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/c/b;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/c/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/sogou/sledog/b/e/a;->q(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_1
.end method

.method private b(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sogou/sledog/b/e/b;->a(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sogou/sledog/b/e/a;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sogou/sledog/b/e/b;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sogou/sledog/b/e/a;->H(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sogou/sledog/b/e/a;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sogou/sledog/b/e/a;->G(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sogou/sledog/b/e/a;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sogou/sledog/b/e/a;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/sogou/sledog/b/e/a;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sogou/sledog/b/e/a;->ac()Ljava/lang/String;

    move-result-object v0

    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v3, "0086"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x4

    :goto_1
    if-gtz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v3, 0x2

    if-le v4, v5, :cond_4

    iget-object v6, p0, Lcom/sogou/sledog/b/e/b;->ca:Lcom/sogou/sledog/b/e/c/a;

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sogou/sledog/b/e/c/a;->T(Ljava/lang/String;)Lcom/sogou/sledog/b/e/c/b;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/sogou/sledog/b/e/a;->e(I)V

    invoke-virtual {p1, v0}, Lcom/sogou/sledog/b/e/a;->G(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sogou/sledog/b/e/c/b;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sogou/sledog/b/e/c/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sogou/sledog/b/e/a;->q(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final L(Ljava/lang/String;)Lcom/sogou/sledog/b/e/a;
    .locals 11

    const/16 v8, 0xb

    const/4 v10, 0x6

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v1, Lcom/sogou/sledog/b/e/a;

    invoke-direct {v1, p1}, Lcom/sogou/sledog/b/e/a;-><init>(Ljava/lang/String;)V

    const-string v0, "+01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/sogou/sledog/b/e/b;->b(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "86"

    const-string v4, "\u4e2d\u56fd"

    invoke-virtual {v1, v0, v4}, Lcom/sogou/sledog/b/e/a;->q(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sogou/sledog/b/e/b;->J(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sogou/sledog/b/e/b;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v6}, Lcom/sogou/sledog/b/e/a;->H(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/sogou/sledog/b/e/b;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/sogou/sledog/b/e/a;->I(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/sogou/sledog/b/e/a;->G(Ljava/lang/String;)V

    const-string v5, "00"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Lcom/sogou/sledog/b/e/a;->ae()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v8, :cond_3

    if-ne v0, v8, :cond_11

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x31

    if-ne v0, v8, :cond_11

    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sogou/sledog/b/e/b;->cf:Lcom/sogou/sledog/b/e/c/c;

    invoke-interface {v0, v7}, Lcom/sogou/sledog/b/e/c/c;->U(Ljava/lang/String;)Lcom/sogou/sledog/b/e/c/e;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v2}, Lcom/sogou/sledog/b/e/a;->e(I)V

    invoke-virtual {v1, v7}, Lcom/sogou/sledog/b/e/a;->G(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/c/e;->ah()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sogou/sledog/b/e/c/e;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/sogou/sledog/b/e/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    if-nez v5, :cond_d

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1}, Lcom/sogou/sledog/b/e/a;->ae()Ljava/lang/String;

    move-result-object v0

    const-string v5, "86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_6

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x31

    if-eq v5, v7, :cond_5

    const/16 v7, 0x32

    if-ne v5, v7, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/sogou/sledog/b/e/b;->cf:Lcom/sogou/sledog/b/e/c/c;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x4

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/sogou/sledog/b/e/c/c;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v4, :cond_7

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v10, :cond_b

    iget-object v5, p0, Lcom/sogou/sledog/b/e/b;->cf:Lcom/sogou/sledog/b/e/c/c;

    invoke-interface {v5, v0}, Lcom/sogou/sledog/b/e/c/c;->V(Ljava/lang/String;)Lcom/sogou/sledog/b/e/c/e;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/sogou/sledog/b/e/c/e;->ah()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v4, v5

    const/4 v8, 0x3

    if-lt v5, v8, :cond_9

    move v5, v2

    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {v7}, Lcom/sogou/sledog/b/e/c/e;->ah()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, v2

    :goto_4
    if-eqz v0, :cond_b

    invoke-virtual {v1, v9}, Lcom/sogou/sledog/b/e/a;->e(I)V

    invoke-virtual {v1, v4}, Lcom/sogou/sledog/b/e/a;->G(Ljava/lang/String;)V

    if-eqz v5, :cond_8

    invoke-virtual {v7}, Lcom/sogou/sledog/b/e/c/e;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/sogou/sledog/b/e/c/e;->ai()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/sogou/sledog/b/e/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move v0, v2

    :goto_5
    if-eqz v0, :cond_d

    invoke-virtual {v1}, Lcom/sogou/sledog/b/e/a;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "01"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sogou/sledog/b/e/b;->b(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    move v5, v3

    goto :goto_3

    :cond_a
    if-lt v4, v10, :cond_10

    const/16 v8, 0x8

    if-gt v4, v8, :cond_10

    move-object v4, v0

    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v3

    goto :goto_5

    :cond_c
    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v1}, Lcom/sogou/sledog/b/e/b;->c(Lcom/sogou/sledog/b/e/a;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v1}, Lcom/sogou/sledog/b/e/a;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sogou/sledog/b/e/b;->a(Lcom/sogou/sledog/b/e/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    goto/16 :goto_0

    :cond_f
    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    move-object v4, v0

    move v0, v3

    goto :goto_4

    :cond_11
    move v0, v3

    goto/16 :goto_1
.end method
