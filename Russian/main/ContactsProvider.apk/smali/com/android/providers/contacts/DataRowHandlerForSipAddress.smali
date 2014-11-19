.class public Lcom/android/providers/contacts/DataRowHandlerForSipAddress;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForSipAddress.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "DataRowHandlerForSipAddress"


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
    .line 28
    sget-boolean v0, Lcom/mediatek/providers/contacts/ContactsFeatureConstants;->DBG_DIALER_SEARCH:Z

    sput-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/ContactAggregator;

    .prologue
    .line 45
    const-string v4, "vnd.android.cursor.item/sip_address"

    const-string v5, "data2"

    const-string v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 48
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 300
    sget-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->DBG:Z

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "DataRowHandlerForSipAddress"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 292
    if-nez p3, :cond_0

    .line 293
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    .line 52
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 54
    .local v1, "dataId":J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 57
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[delete] dataId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_0

    .line 60
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

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgionee/provider/GnCallLog$Calls;->DATA_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 67
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 68
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 69
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 70
    const-string v3, "[delete] Remove raw_contact_id and data_id data in CallLog. "

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 75
    const-string v3, "UPDATE dialer_search SET raw_contact_id = -call_log_id,data_id = -call_log_id WHERE data_id = ? AND call_log_id > 0 AND name_type = 8"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v5, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 84
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 85
    const-string v3, "[update] Change old record in dialer_search table to a NO NAME CALLLOG. "

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_2

    .line 88
    const-string v3, "DELETE FROM dialer_search WHERE data_id =? AND call_log_id = 0 AND name_type = 8"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v5, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 95
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 96
    const-string v3, "[delete] delete dialer search table."

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 98
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "rawContactId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x1

    .line 105
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v5

    .line 108
    .local v5, "dataId":J
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "sipNumber":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->updateCallsInfoForNewInsertNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)I

    move-result v7

    .line 111
    .local v7, "mLatestCallLogId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[insert] latest call log id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 113
    if-lez v7, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "DELETE FROM dialer_search WHERE call_log_id =?  AND name_type = 8"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    int-to-long v3, v7

    invoke-virtual {v0, v8, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 122
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 123
    const-string v0, "[insert]delete no name call log. "

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_2

    .line 127
    const-string v0, "INSERT INTO dialer_search(raw_contact_id,data_id,normalized_name,name_type,call_log_id,normalized_name_alternative) VALUES (?,?,?,?,?,?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v8, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 138
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 139
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-wide/16 v3, 0x8

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 141
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    int-to-long v3, v7

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 142
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 144
    const-string v0, "[insert] insert new data into dialer search table. "

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 151
    .end local v2    # "sipNumber":Ljava/lang/String;
    .end local v7    # "mLatestCallLogId":I
    :goto_0
    return-wide v5

    .line 148
    .end local v5    # "dataId":J
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v5

    .restart local v5    # "dataId":J
    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    .line 158
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const/4 v1, 0x0

    .line 246
    :goto_0
    return v1

    .line 160
    :cond_0
    const-string v1, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 162
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 163
    .local v6, "dataId":J
    const/4 v1, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 164
    .local v4, "rawContactId":J
    const-string v1, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "sipNumber":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "mStrDataId":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 167
    .local v11, "mStrRawContactId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[update]update: sipNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || mStrRawContactId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || mStrDataId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 169
    const/4 v8, 0x0

    .line 172
    .local v8, "mDeletedCallLogId":I
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE calls SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lgionee/provider/GnCallLog$Calls;->DATA_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lgionee/provider/GnCallLog$Calls;->RAW_CONTACT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lgionee/provider/GnCallLog$Calls;->DATA_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " =? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 180
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 181
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 182
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 183
    const-string v1, "[update] Change the old records in calls table to a NO NAME CALLLOG."

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_2

    .line 186
    const-string v1, "UPDATE dialer_search SET raw_contact_id = -call_log_id,data_id = -call_log_id WHERE data_id = ? AND call_log_id > 0 AND name_type = 8"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 195
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 196
    const-string v1, "[update]Change old records in dialer_search to NO NAME CALLLOG FOR its callLogId>0."

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_3

    .line 199
    const-string v1, "DELETE FROM dialer_search WHERE data_id =? AND call_log_id = 0 AND name_type = 8"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 205
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 206
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 207
    const-string v1, "[update]Delete old records in dialer_search FOR its callLogId=0."

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    .line 209
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->updateCallsInfoForNewInsertNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)I

    move-result v9

    .line 210
    .local v9, "mLatestCallLogId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[update] latest call log id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 212
    if-lez v9, :cond_5

    .line 213
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_4

    .line 214
    const-string v1, "DELETE FROM dialer_search WHERE call_log_id =?  AND name_type = 8"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 219
    :cond_4
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    int-to-long v12, v9

    invoke-virtual {v1, v2, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 220
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 221
    const-string v1, "[update]delete no name call log for udpated number. "

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 224
    :cond_5
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_6

    .line 225
    const-string v1, "INSERT INTO dialer_search(raw_contact_id,data_id,normalized_name,name_type,call_log_id,normalized_name_alternative) VALUES (?,?,?,?,?,?)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 235
    :cond_6
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 236
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 237
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x4

    const-wide/16 v12, 0x8

    invoke-virtual {v1, v2, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 239
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x5

    int-to-long v12, v9

    invoke-virtual {v1, v2, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 240
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 242
    const-string v1, "[update] insert new data into dialer search table. "

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 246
    .end local v3    # "sipNumber":Ljava/lang/String;
    .end local v4    # "rawContactId":J
    .end local v6    # "dataId":J
    .end local v8    # "mDeletedCallLogId":I
    .end local v9    # "mLatestCallLogId":I
    .end local v10    # "mStrDataId":Ljava/lang/String;
    .end local v11    # "mStrRawContactId":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x1

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

    .line 253
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_0

    .line 254
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

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 261
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT _id FROM calls WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgionee/provider/GnCallLog$Calls;->DATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SELECT MAX( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgionee/provider/GnCallLog$Calls;->DATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

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

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v5, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 270
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 271
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 273
    const/4 v1, 0x0

    .line 275
    .local v1, "mCallLogId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 276
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    long-to-int v1, v2

    move v2, v1

    .line 288
    :goto_0
    return v2

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_0

    .line 279
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method
