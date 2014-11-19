.class final Lcom/android/providers/contacts/PhotoProcessor;
.super Ljava/lang/Object;
.source "PhotoProcessor.java"


# instance fields
.field private mDisplayPhoto:Landroid/graphics/Bitmap;

.field private final mForceCropToSquare:Z

.field private final mMaxDisplayPhotoDim:I

.field private final mMaxThumbnailPhotoDim:I

.field private final mOriginal:Landroid/graphics/Bitmap;

.field private mThumbnailPhoto:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "maxDisplayPhotoDim"    # I
    .param p3, "maxThumbnailPhotoDim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIZ)V
    .locals 0
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "maxDisplayPhotoDim"    # I
    .param p3, "maxThumbnailPhotoDim"    # I
    .param p4, "forceCropToSquare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    .line 78
    iput p2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxDisplayPhotoDim:I

    .line 79
    iput p3, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    .line 80
    iput-boolean p4, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    .line 81
    invoke-direct {p0}, Lcom/android/providers/contacts/PhotoProcessor;->process()V

    .line 82
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "originalBytes"    # [B
    .param p2, "maxDisplayPhotoDim"    # I
    .param p3, "maxThumbnailPhotoDim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 60
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 62
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2
    .param p1, "originalBytes"    # [B
    .param p2, "maxDisplayPhotoDim"    # I
    .param p3, "maxThumbnailPhotoDim"    # I
    .param p4, "forceCropToSquare"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 99
    return-void
.end method

.method private getCompressedBytes(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 202
    .local v1, "compressed":Z
    if-nez v1, :cond_0

    .line 203
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to compress image"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 206
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 207
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private getScaledBitmap(I)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "maxDim"    # I

    .prologue
    .line 129
    iget-object v8, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    .line 130
    .local v8, "scaledBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 131
    .local v3, "width":I
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 132
    .local v4, "height":I
    const/4 v1, 0x0

    .line 133
    .local v1, "cropLeft":I
    const/4 v2, 0x0

    .line 134
    .local v2, "cropTop":I
    iget-boolean v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    if-eqz v0, :cond_0

    if-eq v3, v4, :cond_0

    .line 136
    if-le v4, v3, :cond_3

    .line 137
    sub-int v0, v4, v3

    div-int/lit8 v2, v0, 0x2

    .line 138
    move v4, v3

    .line 144
    :cond_0
    :goto_0
    int-to-float v0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float v7, v0, v6

    .line 145
    .local v7, "scaleFactor":F
    float-to-double v9, v7

    const-wide/high16 v11, 0x3ff0000000000000L

    cmpg-double v0, v9, v11

    if-ltz v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 147
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 148
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 149
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 152
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    return-object v8

    .line 140
    .end local v7    # "scaleFactor":F
    :cond_3
    sub-int v0, v3, v4

    div-int/lit8 v1, v0, 0x2

    .line 141
    move v3, v4

    goto :goto_0
.end method

.method private gnGetScaledBitmapByGnCrop(I)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "maxDim"    # I

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 160
    .local v10, "oriWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 161
    .local v9, "oriHeight":I
    if-eq v10, v9, :cond_0

    .line 162
    const/4 v8, 0x0

    .line 163
    .local v8, "dstWidth":I
    const/4 v12, 0x0

    .line 164
    .local v12, "x":I
    const/4 v13, 0x0

    .line 166
    .local v13, "y":I
    if-le v9, v10, :cond_3

    .line 167
    sub-int v2, v9, v10

    div-int/lit8 v13, v2, 0x2

    .line 168
    move v8, v10

    .line 174
    :goto_0
    const-string v2, "James"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gnGetScaledBitmapByGnCrop  x="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "  y="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "    dstWidth="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    invoke-static {v2, v12, v13, v8, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 178
    .end local v8    # "dstWidth":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_0
    if-nez v1, :cond_1

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    .line 182
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 183
    .local v4, "scaledWidth":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 184
    .local v5, "scaledHeight":I
    move/from16 v0, p1

    int-to-float v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float v11, v2, v3

    .line 185
    .local v11, "scaleFactor":F
    float-to-double v2, v11

    const-wide/high16 v14, 0x3ff0000000000000L

    cmpg-double v2, v2, v14

    if-gez v2, :cond_2

    .line 187
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 188
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 189
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 192
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    return-object v1

    .line 170
    .end local v4    # "scaledWidth":I
    .end local v5    # "scaledHeight":I
    .end local v11    # "scaleFactor":F
    .restart local v8    # "dstWidth":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_3
    sub-int v2, v10, v9

    div-int/lit8 v12, v2, 0x2

    .line 171
    move v8, v9

    goto :goto_0
.end method

.method private process()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid image file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxDisplayPhotoDim:I

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->getScaledBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    .line 112
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvidersApplication;->sIsGnZoomClipSupport:Z

    if-eqz v0, :cond_1

    .line 113
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->gnGetScaledBitmapByGnCrop(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_1
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->getScaledBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public getDisplayPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDisplayPhotoBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->getCompressedBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxDisplayPhotoDim()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxDisplayPhotoDim:I

    return v0
.end method

.method public getMaxThumbnailPhotoDim()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    return v0
.end method

.method public getThumbnailPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getThumbnailPhotoBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->getCompressedBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method
