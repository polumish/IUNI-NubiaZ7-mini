.class final Lcom/sogou/sledog/b/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sogou/sledog/core/util/c/d;


# instance fields
.field final synthetic ap:Lcom/sogou/sledog/b/a/a/b;

.field private final synthetic aq:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sogou/sledog/b/a/a/b;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/sledog/b/a/a/c;->ap:Lcom/sogou/sledog/b/a/a/b;

    iput-object p2, p0, Lcom/sogou/sledog/b/a/a/c;->aq:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    aget-object v0, p1, v5

    aget-object v1, p1, v6

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/sogou/sledog/b/a/a/a;

    invoke-direct {v3}, Lcom/sogou/sledog/b/a/a/a;-><init>()V

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-boolean v6, v3, Lcom/sogou/sledog/b/a/a/a;->ah:Z

    iput-object v0, v3, Lcom/sogou/sledog/b/a/a/a;->number:Ljava/lang/String;

    :goto_0
    iput-object v1, v3, Lcom/sogou/sledog/b/a/a/a;->name:Ljava/lang/String;

    iput v2, v3, Lcom/sogou/sledog/b/a/a/a;->type:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Lcom/sogou/sledog/b/a/a/b;->y()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-static {v1}, Lcom/sogou/sledog/b/a/a/b;->b(I)V

    :cond_0
    invoke-static {}, Lcom/sogou/sledog/b/a/a/b;->z()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Lcom/sogou/sledog/b/a/a/b;->c(I)V

    :cond_1
    iget-object v1, p0, Lcom/sogou/sledog/b/a/a/c;->aq:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    iput-boolean v5, v3, Lcom/sogou/sledog/b/a/a/a;->ah:Z

    iput-object v0, v3, Lcom/sogou/sledog/b/a/a/a;->number:Ljava/lang/String;

    goto :goto_0
.end method
