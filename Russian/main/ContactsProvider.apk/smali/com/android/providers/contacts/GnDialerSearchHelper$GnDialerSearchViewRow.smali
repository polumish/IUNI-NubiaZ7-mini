.class Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;
.super Ljava/lang/Object;
.source "GnDialerSearchHelper.java"

# interfaces
.implements Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GnDialerSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnDialerSearchViewRow"
.end annotation


# instance fields
.field mContactId:Ljava/lang/String;

.field private mDataHighlight:Ljava/lang/String;

.field mIndexInSim:Ljava/lang/String;

.field mIndicatePhoneSim:Ljava/lang/String;

.field mJianPinyin:Ljava/lang/String;

.field private mJianPinyinMulti:[Ljava/lang/String;

.field mJianT9:Ljava/lang/String;

.field mJianT9Len:I

.field private mJianT9Multi:[Ljava/lang/String;

.field mLookupKey:Ljava/lang/String;

.field mMatchMapJian:Ljava/lang/String;

.field private mMatchMapJianMulti:[Ljava/lang/String;

.field mMatchMapQuan:Ljava/lang/String;

.field mMatchMapQuanHighlight:Ljava/lang/String;

.field private mMatchMapQuanMulti:[Ljava/lang/String;

.field private mMatchMapQuanMultiHighlight:[Ljava/lang/String;

.field private mMultiIndex:I

.field mName:Ljava/lang/String;

.field mPhoneNumber:Ljava/lang/String;

.field mPhotoId:Ljava/lang/String;

.field private mPinyinHighlight:Ljava/lang/String;

.field mPolyphonic:I

.field mQuanPinyin:Ljava/lang/String;

.field mQuanPinyinHighlight:Ljava/lang/String;

.field private mQuanPinyinMulti:[Ljava/lang/String;

.field private mQuanPinyinMultiHighlight:[Ljava/lang/String;

.field mQuanT9:Ljava/lang/String;

.field mQuanT9Len:I

.field private mQuanT9Multi:[Ljava/lang/String;

.field mRawContactId:Ljava/lang/String;

.field mSortKey:Ljava/lang/String;

.field private mSortKeyMulti:[Ljava/lang/String;

.field mTimesContacted:I

.field final synthetic this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/GnDialerSearchHelper;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/GnDialerSearchHelper;Lcom/android/providers/contacts/GnDialerSearchHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/contacts/GnDialerSearchHelper;
    .param p2, "x1"    # Lcom/android/providers/contacts/GnDialerSearchHelper$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;-><init>(Lcom/android/providers/contacts/GnDialerSearchHelper;)V

    return-void
.end method

.method private getDataHighlight(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "searchKey"    # Ljava/lang/String;

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    # invokes: Lcom/android/providers/contacts/GnDialerSearchHelper;->indexOf(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Lcom/android/providers/contacts/GnDialerSearchHelper;->access$000(Lcom/android/providers/contacts/GnDialerSearchHelper;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 317
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    int-to-char v4, v0

    aput-char v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    int-to-char v4, v4

    aput-char v4, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 321
    .end local v0    # "index":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pickInMulti(I)V
    .locals 1
    .param p1, "multiIndex"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanPinyinMulti:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanPinyin:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianPinyinMulti:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianPinyin:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9Multi:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianT9Multi:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianT9:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuanMulti:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuan:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapJianMulti:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapJian:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mSortKeyMulti:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mSortKey:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianT9:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianT9Len:I

    .line 291
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9Len:I

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mPinyinHighlight:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanPinyinMultiHighlight:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanPinyinHighlight:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuanMultiHighlight:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuanHighlight:Ljava/lang/String;

    .line 296
    return-void
.end method


# virtual methods
.method public getDataMatchIndex()I
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mDataHighlight:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 330
    const/4 v0, -0x1

    .line 333
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mDataHighlight:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public getGnDialerSearchResultRow()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 337
    sget-object v1, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchResultColumns;->COLUMN_NAMES:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 339
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mContactId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 340
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mLookupKey:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 341
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mIndicatePhoneSim:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 342
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mIndexInSim:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 343
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mPhotoId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 344
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 345
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mPhoneNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 346
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mDataHighlight:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 347
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanPinyinHighlight:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 348
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mPinyinHighlight:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 350
    return-object v0
.end method

.method public next()Z
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mPolyphonic:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMultiIndex:I

    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanPinyinMulti:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 300
    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0

    .line 303
    :cond_1
    iget v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMultiIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMultiIndex:I

    .line 304
    iget v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMultiIndex:I

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->pickInMulti(I)V

    .line 306
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "searchKey"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v3, 0x9

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 236
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mRawContactId:Ljava/lang/String;

    .line 237
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mContactId:Ljava/lang/String;

    .line 238
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mLookupKey:Ljava/lang/String;

    .line 239
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mName:Ljava/lang/String;

    .line 240
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mIndicatePhoneSim:Ljava/lang/String;

    .line 241
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mIndexInSim:Ljava/lang/String;

    .line 242
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mPhotoId:Ljava/lang/String;

    .line 243
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mPhoneNumber:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->getDataHighlight(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mDataHighlight:Ljava/lang/String;

    .line 248
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mTimesContacted:I

    .line 249
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mPolyphonic:I

    .line 251
    iget v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mPolyphonic:I

    if-nez v0, :cond_0

    .line 252
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanPinyin:Ljava/lang/String;

    .line 254
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanPinyinHighlight:Ljava/lang/String;

    .line 255
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuanHighlight:Ljava/lang/String;

    .line 257
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianPinyin:Ljava/lang/String;

    .line 258
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9:Ljava/lang/String;

    .line 259
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianT9:Ljava/lang/String;

    .line 260
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuan:Ljava/lang/String;

    .line 261
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapJian:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianT9:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianT9Len:I

    .line 263
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9Len:I

    .line 264
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mSortKey:Ljava/lang/String;

    .line 280
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    iget-object v1, v1, Lcom/android/providers/contacts/GnDialerSearchHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanPinyinMulti:[Ljava/lang/String;

    .line 268
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    iget-object v1, v1, Lcom/android/providers/contacts/GnDialerSearchHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanPinyinMultiHighlight:[Ljava/lang/String;

    .line 269
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    iget-object v1, v1, Lcom/android/providers/contacts/GnDialerSearchHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuanMultiHighlight:[Ljava/lang/String;

    .line 271
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    iget-object v1, v1, Lcom/android/providers/contacts/GnDialerSearchHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianPinyinMulti:[Ljava/lang/String;

    .line 272
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    iget-object v1, v1, Lcom/android/providers/contacts/GnDialerSearchHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mQuanT9Multi:[Ljava/lang/String;

    .line 273
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    iget-object v1, v1, Lcom/android/providers/contacts/GnDialerSearchHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mJianT9Multi:[Ljava/lang/String;

    .line 274
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    iget-object v1, v1, Lcom/android/providers/contacts/GnDialerSearchHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapQuanMulti:[Ljava/lang/String;

    .line 275
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    iget-object v1, v1, Lcom/android/providers/contacts/GnDialerSearchHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mMatchMapJianMulti:[Ljava/lang/String;

    .line 276
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    iget-object v1, v1, Lcom/android/providers/contacts/GnDialerSearchHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mSortKeyMulti:[Ljava/lang/String;

    .line 278
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->pickInMulti(I)V

    goto/16 :goto_0
.end method

.method public setPinyinHighlight([C)V
    .locals 1
    .param p1, "nameHighlight"    # [C

    .prologue
    .line 325
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewRow;->mPinyinHighlight:Ljava/lang/String;

    .line 326
    return-void
.end method
