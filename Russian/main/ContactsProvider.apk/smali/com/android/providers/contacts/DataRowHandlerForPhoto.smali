.class public Lcom/android/providers/contacts/DataRowHandlerForPhoto;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForPhoto.java"


# static fields
.field static final SKIP_PROCESSING_KEY:Ljava/lang/String; = "skip_processing"

.field private static final TAG:Ljava/lang/String; = "DataRowHandlerForPhoto"


# instance fields
.field private final mPhotoStore:Lcom/android/providers/contacts/PhotoStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/ContactAggregator;
    .param p4, "photoStore"    # Lcom/android/providers/contacts/PhotoStore;

    .prologue
    .line 49
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 50
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    .line 51
    return-void
.end method

.method private hasNonNullPhoto(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 122
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 123
    .local v0, "photoBytes":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private preProcessPhoto(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 104
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->hasNonNullPhoto(Landroid/content/ContentValues;)Z

    move-result v0

    .line 106
    .local v0, "photoExists":Z
    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->processPhoto(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    const/4 v1, 0x0

    .line 118
    .end local v0    # "photoExists":Z
    :goto_0
    return v1

    .line 114
    .restart local v0    # "photoExists":Z
    :cond_0
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 115
    const-string v1, "data14"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 118
    .end local v0    # "photoExists":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processPhoto(Landroid/content/ContentValues;)Z
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 142
    const-string v8, "data15"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 143
    .local v4, "originalPhoto":[B
    if-eqz v4, :cond_2

    .line 146
    sget-boolean v8, Lcom/android/providers/contacts/ContactsProvidersApplication;->sIsGnZoomClipSupport:Z

    if-eqz v8, :cond_0

    const/high16 v2, 0x7f030000

    .line 148
    .local v2, "maxDisplayPhotoDimResId":I
    :goto_0
    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 151
    .local v1, "maxDisplayPhotoDim":I
    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f030002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 154
    .local v3, "maxThumbnailPhotoDim":I
    :try_start_0
    new-instance v7, Lcom/android/providers/contacts/PhotoProcessor;

    invoke-direct {v7, v4, v1, v3}, Lcom/android/providers/contacts/PhotoProcessor;-><init>([BII)V

    .line 156
    .local v7, "processor":Lcom/android/providers/contacts/PhotoProcessor;
    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v8, v7}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;)J

    move-result-wide v5

    .line 157
    .local v5, "photoFileId":J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-eqz v8, :cond_1

    .line 158
    const-string v8, "data14"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    :goto_1
    const-string v8, "data15"

    invoke-virtual {v7}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 163
    const/4 v8, 0x1

    .line 168
    .end local v1    # "maxDisplayPhotoDim":I
    .end local v2    # "maxDisplayPhotoDimResId":I
    .end local v3    # "maxThumbnailPhotoDim":I
    .end local v5    # "photoFileId":J
    .end local v7    # "processor":Lcom/android/providers/contacts/PhotoProcessor;
    :goto_2
    return v8

    .line 146
    :cond_0
    const v2, 0x7f030001

    goto :goto_0

    .line 160
    .restart local v1    # "maxDisplayPhotoDim":I
    .restart local v2    # "maxDisplayPhotoDimResId":I
    .restart local v3    # "maxThumbnailPhotoDim":I
    .restart local v5    # "photoFileId":J
    .restart local v7    # "processor":Lcom/android/providers/contacts/PhotoProcessor;
    :cond_1
    const-string v8, "data14"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 164
    .end local v5    # "photoFileId":J
    .end local v7    # "processor":Lcom/android/providers/contacts/PhotoProcessor;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ioe":Ljava/io/IOException;
    const-string v8, "DataRowHandlerForPhoto"

    const-string v9, "Could not process photo for insert or update"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "maxDisplayPhotoDim":I
    .end local v2    # "maxDisplayPhotoDimResId":I
    .end local v3    # "maxThumbnailPhotoDim":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 128
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 129
    .local v1, "rawContactId":J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 130
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 131
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "rawContactId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 57
    const-string v2, "skip_processing"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    const-string v2, "skip_processing"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 67
    .local v0, "dataId":J
    invoke-virtual {p2, p3, p4}, Lcom/android/providers/contacts/TransactionContext;->isNewRawContact(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 70
    .end local v0    # "dataId":J
    :cond_1
    :goto_0
    return-wide v0

    .line 61
    :cond_2
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 78
    .local v0, "rawContactId":J
    const-string v4, "skip_processing"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    const-string v4, "skip_processing"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    :goto_0
    return v2

    .line 82
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    move v2, v3

    .line 93
    goto :goto_0
.end method
