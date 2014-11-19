.class public Lcom/sogou/hmt/sdk/manager/HMTNumber;
.super Ljava/lang/Object;


# static fields
.field public static final LOCAL_MARK:I = 0x1

.field public static final NET_MARK:I = 0x2

.field public static final USER_MARK:I = 0x3


# instance fields
.field private IconBmp:Landroid/graphics/Bitmap;

.field private iconUrl:Ljava/lang/String;

.field private infoSourceType:I

.field private markContent:Ljava/lang/String;

.field private markNumber:I

.field private markSource:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private rating:D

.field private slogan:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markNumber:I

    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->rating:D

    iput p2, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    iput p3, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markNumber:I

    iput-object p4, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markContent:Ljava/lang/String;

    iput-object p1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markNumber:I

    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->rating:D

    iput p2, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    iput-object p3, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markContent:Ljava/lang/String;

    iput-object p4, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markSource:Ljava/lang/String;

    iput-object p1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;D)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markNumber:I

    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->rating:D

    iput p2, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    iput-object p3, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markContent:Ljava/lang/String;

    iput-object p4, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markSource:Ljava/lang/String;

    iput-object p1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->phoneNumber:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->rating:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markNumber:I

    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->rating:D

    const/4 v0, 0x3

    iput v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    iput-object p2, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markContent:Ljava/lang/String;

    iput-object p1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method private Bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 2

    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public LoadIcon()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->iconUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/sogou/hmt/sdk/c/g;->j(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/sogou/hmt/sdk/manager/HMTNumber;->Bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->IconBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->IconBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->IconBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkNumber()I
    .locals 1

    iget v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markNumber:I

    return v0
.end method

.method public getMarkSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markSource:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()D
    .locals 2

    iget-wide v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->rating:D

    return-wide v0
.end method

.method public getSolgan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->slogan:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    return v0
.end method

.method public isHaveIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->IconBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setSolgan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->slogan:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    iget-wide v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->rating:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    const-string v1, "-rating\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->rating:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->slogan:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "-slogan\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->slogan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->iconUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "-iconPath\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->infoSourceType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_5
    iget v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markNumber:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " \u6765\u81ea:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\u4eba\u6807\u8bb0\u4e3a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTNumber;->markContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
