.class public Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;
.super Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;
.source "DataRowHandlerForPhoneNumberEx.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "DataRowHandlerForPhoneNumberEx"


# instance fields
.field private mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDialerSearchCallLogIdUpdateByContactNumberUpdated:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNumDelByCallLogDataId:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/mediatek/providers/contacts/ContactsFeatureConstants;->DBG_DIALER_SEARCH:Z

    sput-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/ContactAggregator;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    .line 52
    iput-object p1, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 54
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 451
    sget-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->DBG:Z

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "DataRowHandlerForPhoneNumberEx"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    return-void
.end method

.method private updateCallsAndDialerSearchByContactNumberChanged(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 35
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "dataId"    # J

    .prologue
    .line 353
    const/16 v34, 0x0

    .line 354
    .local v34, "oldNumber":Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 356
    .local v14, "callLogId":J
    const-wide/16 v28, -0x1

    .line 357
    .local v28, "newDataId":J
    const-wide/16 v25, -0x1

    .line 359
    .local v25, "newContactId":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateCallsAndDialerSearch] rawContactId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dataId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 362
    const-string v5, "calls"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v11, "_id"

    aput-object v11, v6, v4

    const/4 v4, 0x1

    sget-object v11, Lgionee/provider/GnCallLog$Calls;->NUMBER:Ljava/lang/String;

    aput-object v11, v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lgionee/provider/GnCallLog$Calls;->DATA_ID:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " AND "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v11, Lgionee/provider/GnCallLog$Calls;->RAW_CONTACT_ID:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, " _id DESC "

    const-string v12, "1"

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 367
    .local v32, "numberCallCursor":Landroid/database/Cursor;
    if-eqz v32, :cond_0

    :try_start_0
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 369
    const/4 v4, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v34

    .line 372
    :cond_0
    if-eqz v32, :cond_1

    .line 373
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_1
    if-eqz v34, :cond_8

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lgionee/provider/GnContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v34 .. v34}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "data_id"

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const-string v12, "raw_contact_id"

    aput-object v12, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 388
    .local v27, "newContactIdCursor":Landroid/database/Cursor;
    if-eqz v27, :cond_8

    .line 389
    :cond_2
    :goto_0
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 390
    const-string v5, "data"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v11, "data1"

    aput-object v11, v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v11, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 393
    .local v33, "numberDataCursor":Landroid/database/Cursor;
    if-eqz v33, :cond_4

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 394
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 395
    .local v30, "newNum":Ljava/lang/String;
    if-eqz v30, :cond_4

    .line 396
    invoke-static/range {v30 .. v30}, Lcom/android/providers/contacts/DialerSearchUtils;->stripSpecialCharInNumberForDialerSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 397
    .local v31, "newStripNum":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 398
    .end local v28    # "newDataId":J
    .local v7, "newDataId":J
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 399
    .end local v25    # "newContactId":J
    .local v9, "newContactId":J
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 407
    .end local v30    # "newNum":Ljava/lang/String;
    .end local v31    # "newStripNum":Ljava/lang/String;
    .end local v33    # "numberDataCursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 411
    .end local v27    # "newContactIdCursor":Landroid/database/Cursor;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateCallsAndDialerSearch] callLogId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newDataId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newContactId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 416
    const-wide/16 v4, 0x0

    cmp-long v4, v7, v4

    if-lez v4, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-lez v4, :cond_5

    .line 418
    const-string v4, "[updateCallsAndDialerSearch] Update Calls table(data_id to new data_id)."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-wide/from16 v11, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsReplaceDataId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;JJJ)V

    .line 422
    const-string v4, "[updateCallsAndDialerSearch] delete dialer_search table."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNumDelByCallLogDataId:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->deleteDialerSearchCallLogNumByDataId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 426
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchCallLogIdUpdateByContactNumberUpdated:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v11, p0

    move-object/from16 v13, p1

    move-wide/from16 v16, v7

    invoke-virtual/range {v11 .. v17}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateDialerSearchCallLogIdByDataId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 428
    const-string v4, "[updateCallsAndDialerSearch] update dialer_search table."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 448
    :goto_3
    return-void

    .line 372
    .end local v7    # "newDataId":J
    .end local v9    # "newContactId":J
    .restart local v25    # "newContactId":J
    .restart local v28    # "newDataId":J
    :catchall_0
    move-exception v4

    if-eqz v32, :cond_3

    .line 373
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .line 403
    .restart local v27    # "newContactIdCursor":Landroid/database/Cursor;
    .restart local v33    # "numberDataCursor":Landroid/database/Cursor;
    :cond_4
    if-eqz v33, :cond_2

    .line 404
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 431
    .end local v25    # "newContactId":J
    .end local v27    # "newContactIdCursor":Landroid/database/Cursor;
    .end local v28    # "newDataId":J
    .end local v33    # "numberDataCursor":Landroid/database/Cursor;
    .restart local v7    # "newDataId":J
    .restart local v9    # "newContactId":J
    :cond_5
    const-string v4, "[updateCallsAndDialerSearch] Update Calls table(data_id to null)."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 432
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_6

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v17, v0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v16, p0

    move-object/from16 v18, p1

    move-wide/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsReplaceDataId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;JJJ)V

    .line 437
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateDialerSearchNoNameCallLog(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 438
    const-string v4, "[updateCallsAndDialerSearch] Change old records in dialer_search to NO NAME CALLLOG FOR its callLogId>0."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->deleteDialerSearchContactNum(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_3

    .end local v7    # "newDataId":J
    .end local v9    # "newContactId":J
    .restart local v25    # "newContactId":J
    .restart local v27    # "newContactIdCursor":Landroid/database/Cursor;
    .restart local v28    # "newDataId":J
    :cond_7
    move-wide/from16 v9, v25

    .end local v25    # "newContactId":J
    .restart local v9    # "newContactId":J
    move-wide/from16 v7, v28

    .end local v28    # "newDataId":J
    .restart local v7    # "newDataId":J
    goto/16 :goto_1

    .end local v7    # "newDataId":J
    .end local v9    # "newContactId":J
    .end local v27    # "newContactIdCursor":Landroid/database/Cursor;
    .restart local v25    # "newContactId":J
    .restart local v28    # "newDataId":J
    :cond_8
    move-wide/from16 v9, v25

    .end local v25    # "newContactId":J
    .restart local v9    # "newContactId":J
    move-wide/from16 v7, v28

    .end local v28    # "newDataId":J
    .restart local v7    # "newDataId":J
    goto/16 :goto_2
.end method


# virtual methods
.method bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 338
    if-nez p3, :cond_0

    .line 339
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v6

    .line 64
    .local v6, "result":I
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 65
    .local v4, "dataId":J
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 66
    .local v2, "rawContactId":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[delete] dataId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " || rawContactId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsAndDialerSearchByContactNumberChanged(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 81
    return v6
.end method

.method deleteDialerSearchCallLogNumByDataId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .param p1, "sqliteState"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "dataId"    # J

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    const-string v0, "DELETE FROM dialer_search WHERE data_id = ? AND call_log_id > 0 AND name_type = 8"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 290
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 291
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 292
    return-void
.end method

.method deleteDialerSearchContactNum(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .param p1, "sqliteState"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "dataId"    # J

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    const-string v0, "DELETE FROM dialer_search WHERE data_id =? AND call_log_id = 0 AND name_type = 8"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 331
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 332
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 333
    return-void
.end method

.method deleteDialerSearchNumByCallLogId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0
    .param p1, "sqliteState"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "latestCallLogId"    # I

    .prologue
    .line 193
    return-void
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 22
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "rawContactId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 87
    const-wide/16 v8, 0x0

    .line 88
    .local v8, "dataId":J
    const-string v3, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    const-string v3, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 90
    .local v21, "number":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/providers/contacts/DialerSearchUtils;->computeNormalizedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 91
    .local v20, "normalizedNumber":Ljava/lang/String;
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v8

    .line 94
    const/4 v5, 0x0

    .line 95
    .local v5, "numberForDialerSearch":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 96
    invoke-static/range {v21 .. v21}, Lcom/android/providers/contacts/DialerSearchUtils;->stripSpecialCharInNumberForDialerSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[insert] number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || numberForDialerSearch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[insert] rawContactId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dataId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    .line 101
    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsInfoForNewInsertNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)I

    move-result v19

    .line 103
    .local v19, "latestCallLogId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[insert] latest call log id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 105
    invoke-static/range {p1 .. p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateCalls(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    if-lez v19, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->deleteDialerSearchNumByCallLogId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 111
    const-string v3, "[insert]delete no name call log. "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/16 v18, 0x8

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p3

    move-wide v15, v8

    move-object/from16 v17, v5

    invoke-virtual/range {v10 .. v19}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->insertDialerSearchNewRecord(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;II)V

    .line 117
    const-string v3, "[insert] insert new data into dialer search table. "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 121
    .end local v5    # "numberForDialerSearch":Ljava/lang/String;
    .end local v19    # "latestCallLogId":I
    .end local v20    # "normalizedNumber":Ljava/lang/String;
    .end local v21    # "number":Ljava/lang/String;
    :cond_2
    return-wide v8
.end method

.method insertDialerSearchNewRecord(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;II)V
    .locals 0
    .param p1, "sqliteState"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "rawContactId"    # J
    .param p5, "dataId"    # J
    .param p7, "number"    # Ljava/lang/String;
    .param p8, "nameType"    # I
    .param p9, "lastCallLogId"    # I

    .prologue
    .line 216
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 28
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    .line 127
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v27

    .line 128
    .local v27, "result":Z
    if-nez v27, :cond_1

    .line 129
    const/16 v27, 0x0

    .line 178
    .end local v27    # "result":Z
    :cond_0
    :goto_0
    return v27

    .line 131
    .restart local v27    # "result":Z
    :cond_1
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 133
    .local v26, "number":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/android/providers/contacts/DialerSearchUtils;->computeNormalizedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 134
    .local v25, "normalizedNumber":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 135
    .local v7, "dataId":J
    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 138
    .local v5, "rawContactId":J
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    .line 139
    .local v23, "mStrDataId":Ljava/lang/String;
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    .line 140
    .local v24, "mStrRawContactId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[update]update: number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || mStrRawContactId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || mStrDataId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 142
    const/16 v22, 0x0

    .local v22, "mDeletedCallLogId":I
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 145
    invoke-direct/range {v3 .. v8}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsAndDialerSearchByContactNumberChanged(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 156
    const/4 v11, 0x0

    .line 157
    .local v11, "numberForDialerSearch":Ljava/lang/String;
    if-eqz v26, :cond_2

    .line 158
    invoke-static/range {v26 .. v26}, Lcom/android/providers/contacts/DialerSearchUtils;->stripSpecialCharInNumberForDialerSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 160
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[update] number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || numberForDialerSearch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 161
    const-string v3, "[update]Delete old records in dialer_search FOR its callLogId=0."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide v12, v5

    move-wide v14, v7

    .line 163
    invoke-virtual/range {v9 .. v15}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsInfoForNewInsertNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)I

    move-result v21

    .line 164
    .local v21, "latestCallLogId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[update] latest call log id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 166
    if-lez v21, :cond_3

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->deleteDialerSearchNumByCallLogId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 168
    const-string v3, "[update]delete no name call log for udpated number. "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 171
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/16 v20, 0x8

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-wide v15, v5

    move-wide/from16 v17, v7

    move-object/from16 v19, v11

    invoke-virtual/range {v12 .. v21}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->insertDialerSearchNewRecord(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;II)V

    .line 175
    const-string v3, "[update] insert new data into dialer search table. "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method updateCallsInfoForNewInsertNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "rawContactId"    # J
    .param p5, "dataId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 220
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_0

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE calls SET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgionee/provider/GnCallLog$Calls;->DATA_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgionee/provider/GnCallLog$Calls;->RAW_CONTACT_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE PHONE_NUMBERS_EQUAL("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgionee/provider/GnCallLog$Calls;->NUMBER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ?) AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgionee/provider/GnCallLog$Calls;->DATA_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NULL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT _id FROM calls WHERE _id = ( SELECT MAX( _id )  FROM calls WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgionee/provider/GnCallLog$Calls;->DATA_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =? )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 236
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v5, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 237
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 238
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 240
    const/4 v1, 0x0

    .line 242
    .local v1, "mCallLogId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 243
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    long-to-int v1, v2

    move v2, v1

    .line 255
    :goto_0
    return v2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_0

    .line 246
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method updateCallsReplaceDataId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;JJJ)V
    .locals 6
    .param p1, "sqliteState"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "newDataId"    # J
    .param p5, "newContactId"    # J
    .param p7, "oldDataId"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 260
    if-nez p1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE calls SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lgionee/provider/GnCallLog$Calls;->DATA_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lgionee/provider/GnCallLog$Calls;->RAW_CONTACT_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lgionee/provider/GnCallLog$Calls;->DATA_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 266
    :cond_0
    cmp-long v0, p3, v4

    if-lez v0, :cond_1

    .line 267
    invoke-virtual {p1, v2, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 271
    :goto_0
    cmp-long v0, p5, v4

    if-lez v0, :cond_2

    .line 272
    invoke-virtual {p1, v3, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 276
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0, p7, p8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 277
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 278
    return-void

    .line 269
    :cond_1
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1
.end method

.method updateDialerSearchCallLogIdByDataId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 1
    .param p1, "sqliteState"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "callLogId"    # J
    .param p5, "dataId"    # J

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const-string v0, "UPDATE dialer_search SET call_log_id =?  WHERE data_id = ? "

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 302
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 303
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 304
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 305
    return-void
.end method

.method updateDialerSearchNoNameCallLog(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .param p1, "sqliteState"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "dataId"    # J

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const-string v0, "UPDATE dialer_search SET raw_contact_id = -call_log_id,data_id = -call_log_id WHERE data_id = ? AND call_log_id > 0 AND name_type = 8"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 318
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 319
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 320
    return-void
.end method
