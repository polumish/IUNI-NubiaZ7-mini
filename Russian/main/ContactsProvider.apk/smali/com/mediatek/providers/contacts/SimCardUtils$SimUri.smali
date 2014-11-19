.class public Lcom/mediatek/providers/contacts/SimCardUtils$SimUri;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/providers/contacts/SimCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimUri"
.end annotation


# static fields
.field public static final mIccUri:Landroid/net/Uri;

.field public static final mIccUri1:Landroid/net/Uri;

.field public static final mIccUri2:Landroid/net/Uri;

.field public static final mIccUsim1Uri:Landroid/net/Uri;

.field public static final mIccUsim2Uri:Landroid/net/Uri;

.field public static final mIccUsimUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "content://icc/adn/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/providers/contacts/SimCardUtils$SimUri;->mIccUri:Landroid/net/Uri;

    .line 38
    const-string v0, "content://icc/adn1/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/providers/contacts/SimCardUtils$SimUri;->mIccUri1:Landroid/net/Uri;

    .line 39
    const-string v0, "content://icc/adn2/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/providers/contacts/SimCardUtils$SimUri;->mIccUri2:Landroid/net/Uri;

    .line 41
    const-string v0, "content://icc/pbr"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/providers/contacts/SimCardUtils$SimUri;->mIccUsimUri:Landroid/net/Uri;

    .line 42
    const-string v0, "content://icc/pbr1/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/providers/contacts/SimCardUtils$SimUri;->mIccUsim1Uri:Landroid/net/Uri;

    .line 43
    const-string v0, "content://icc/pbr2/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/providers/contacts/SimCardUtils$SimUri;->mIccUsim2Uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 46
    invoke-static {p0}, Lcom/mediatek/providers/contacts/SimCardUtils;->isSimUsimType(I)Z

    move-result v0

    .line 54
    .local v0, "isUsim":Z
    if-eqz v0, :cond_0

    sget-object v1, Lcom/mediatek/providers/contacts/SimCardUtils$SimUri;->mIccUsimUri:Landroid/net/Uri;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/mediatek/providers/contacts/SimCardUtils$SimUri;->mIccUri:Landroid/net/Uri;

    goto :goto_0
.end method
