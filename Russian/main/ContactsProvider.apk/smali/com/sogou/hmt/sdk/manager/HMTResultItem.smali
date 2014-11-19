.class public Lcom/sogou/hmt/sdk/manager/HMTResultItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CLICK_TYPE_DAIL:I = 0x1

.field public static final CLICK_TYPE_DETAIL:I = 0x5

.field public static final CLICK_TYPE_MORE:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final TYPE_DIANPING:I = 0xa

.field public static final TYPE_MORE:I = 0xf

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_NORMAL:I = 0x1

.field public static final TYPE_OPERATE:I = 0x5


# instance fields
.field private LogoImg:Landroid/graphics/Bitmap;

.field private dianpingRate:Ljava/lang/String;

.field public distance:D

.field public hasMore:Z

.field private hitWordArray:[Ljava/lang/String;

.field private merchantDetailUrl:Ljava/lang/String;

.field private merchantLogoUrl:Ljava/lang/String;

.field private merchantTag:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field private resultType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sogou/hmt/sdk/manager/a;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/manager/a;-><init>()V

    sput-object v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->distance:D

    iput-boolean v2, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->hasMore:Z

    iput v2, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->resultType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->distance:D

    iput-boolean v2, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->hasMore:Z

    iput v2, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->resultType:I

    invoke-direct {p0, p1}, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->readFromParcel(Landroid/os/Parcel;)V

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

.method public static createDianpingItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTResultItem;
    .locals 2

    new-instance v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/manager/HMTResultItem;-><init>()V

    const/16 v1, 0xa

    iput v1, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->resultType:I

    iput-object p1, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->number:Ljava/lang/String;

    iput-object p0, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->name:Ljava/lang/String;

    iput-wide p4, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->distance:D

    iput-object p2, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->dianpingRate:Ljava/lang/String;

    iput-object p3, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantTag:Ljava/lang/String;

    iput-object p7, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantLogoUrl:Ljava/lang/String;

    iput-object p8, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantDetailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static createMoreItem(I)Lcom/sogou/hmt/sdk/manager/HMTResultItem;
    .locals 3

    new-instance v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/manager/HMTResultItem;-><init>()V

    const/16 v1, 0xf

    iput v1, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->resultType:I

    int-to-double v1, p0

    iput-wide v1, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->distance:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->hasMore:Z

    return-object v0
.end method

.method public static createNormalResult(Ljava/lang/String;Ljava/lang/String;DI[Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTResultItem;
    .locals 2

    new-instance v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/manager/HMTResultItem;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->resultType:I

    iput-object p1, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->number:Ljava/lang/String;

    iput-object p0, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->name:Ljava/lang/String;

    iput-wide p2, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->distance:D

    iput-object p6, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantDetailUrl:Ljava/lang/String;

    iput-object p5, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->hitWordArray:[Ljava/lang/String;

    return-object v0
.end method

.method public static createOperateItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTResultItem;
    .locals 2

    new-instance v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;

    invoke-direct {v0}, Lcom/sogou/hmt/sdk/manager/HMTResultItem;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->resultType:I

    iput-object p0, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->name:Ljava/lang/String;

    iput-object p1, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->number:Ljava/lang/String;

    iput-object p3, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantLogoUrl:Ljava/lang/String;

    iput-object p4, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantDetailUrl:Ljava/lang/String;

    iput-object p5, v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->dianpingRate:Ljava/lang/String;

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const-class v0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->distance:D

    const/4 v0, 0x1

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->hasMore:Z

    return-void
.end method


# virtual methods
.method public LoadItemLogo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->LogoImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->LogoImg:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantLogoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sogou/hmt/sdk/c/g;->j(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->Bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->LogoImg:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->LogoImg:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public beHasMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->hasMore:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDianpingRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->dianpingRate:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    iget v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->resultType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const-wide/high16 v0, -0x4010000000000000L

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->distance:D

    goto :goto_0
.end method

.method public getHitWordArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->hitWordArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantDetailUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantDetailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantTag:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextStart()I
    .locals 2

    iget v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->resultType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->distance:D

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    iget v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->resultType:I

    return v0
.end method

.method public isHasLogo()Z
    .locals 1

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantLogoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->resultType:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    iget v1, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->resultType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "NORMAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_1
    const-string v1, "OPERATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_2
    const-string v1, "DIANPING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_3
    const-string v1, "TYPE_MORE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "/name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/distance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->distance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "---/merchantLogoUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantLogoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/merchantDetailUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantDetailUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v1, "/merchantTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/dianpingRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->dianpingRate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->merchantDetailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->distance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sogou/hmt/sdk/manager/HMTResultItem;->hasMore:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
