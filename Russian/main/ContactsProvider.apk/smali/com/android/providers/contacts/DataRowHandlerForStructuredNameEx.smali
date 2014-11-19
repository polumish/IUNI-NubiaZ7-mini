.class public Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;
.super Lcom/android/providers/contacts/DataRowHandlerForStructuredName;
.source "DataRowHandlerForStructuredNameEx.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "DataRowHandlerForStructuredNameEx"

.field public static mIsGnContactsSupport:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget-boolean v0, Lcom/mediatek/providers/contacts/ContactsFeatureConstants;->DBG_DIALER_SEARCH:Z

    sput-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->DBG:Z

    .line 41
    const-string v0, "ro.gn.contacts.support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mIsGnContactsSupport:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/NameLookupBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/ContactAggregator;
    .param p4, "splitter"    # Lcom/android/providers/contacts/NameSplitter;
    .param p5, "nameLookupBuilder"    # Lcom/android/providers/contacts/NameLookupBuilder;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/NameLookupBuilder;)V

    .line 49
    iput-object p1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 51
    return-void
.end method

.method private bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 182
    if-nez p3, :cond_0

    .line 183
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private deleteNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dataId"    # J

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 192
    const-string v0, "DELETE FROM dialer_search WHERE data_id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 197
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 198
    const-string v0, "[deleteNameForDialerSearch]delete name records in dialer search table"

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->log(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->DBG:Z

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "DataRowHandlerForStructuredNameEx"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 88
    .local v0, "count":I
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 89
    .local v1, "dataId":J
    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->deleteNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 91
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "rawContactId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 56
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v4

    .line 58
    .local v4, "dataId":J
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "name":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->insertNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V

    .line 61
    return-wide v4
.end method

.method public insertNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "dataId"    # J
    .param p6, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_0

    .line 96
    const-string v2, "INSERT INTO dialer_search(raw_contact_id,data_id,normalized_name,name_type,call_log_id,normalized_name_alternative) VALUES (?,?,?,?,?,?)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 106
    :cond_0
    if-nez p6, :cond_2

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    const-wide/16 v0, 0x0

    .line 111
    .local v0, "mCallLogId":J
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 112
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 113
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 114
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x4

    const-wide/16 v4, 0xb

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 115
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 116
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 117
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 118
    const-string v2, "[insertNameForDialerSearch]insert name records into dialer search table."

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->log(Ljava/lang/String;)V

    .line 120
    sget-boolean v2, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mIsGnContactsSupport:Z

    if-eqz v2, :cond_1

    .line 121
    invoke-virtual/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->updateNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V

    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 67
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v7

    .line 68
    .local v7, "result":Z
    if-nez v7, :cond_0

    .line 81
    :goto_0
    return v0

    .line 70
    :cond_0
    const-string v1, "data1"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "data9"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "data8"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "data7"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    :cond_1
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 75
    .local v4, "dataId":J
    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 76
    .local v2, "rawContactId":J
    const-string v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "name":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->updateNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V

    .end local v2    # "rawContactId":J
    .end local v4    # "dataId":J
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    move v0, v8

    .line 81
    goto :goto_0
.end method

.method public updateNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "dataId"    # J
    .param p6, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-boolean v6, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mIsGnContactsSupport:Z

    if-nez v6, :cond_0

    .line 179
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v6, :cond_1

    .line 133
    const-string v6, "UPDATE dialer_search SET normalized_name=?,search_data_offsets=?,normalized_name_alternative=?,search_data_offsets_alternative=?,name_jianpintonumber=?,name_pinyin=? WHERE raw_contact_id=? AND name_type=11"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    iput-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 150
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v4, "mSearchNameOffsets":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/providers/contacts/HanziToPinyin;->getInstance()Lcom/android/providers/contacts/HanziToPinyin;

    move-result-object v6

    invoke-virtual {v6, p6, v4}, Lcom/android/providers/contacts/HanziToPinyin;->getTokensForDialerSearch(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "mSearchName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v5, "mSearchNameOffsetsAlt":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/providers/contacts/HanziToPinyin;->getInstance()Lcom/android/providers/contacts/HanziToPinyin;

    move-result-object v6

    invoke-virtual {v6, p6, v5}, Lcom/android/providers/contacts/HanziToPinyin;->getTokensForDialerSearch(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "mSearchNameAlt":Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/contacts/HanziToPinyin;->getInstance()Lcom/android/providers/contacts/HanziToPinyin;

    move-result-object v6

    invoke-virtual {v6, p6}, Lcom/android/providers/contacts/HanziToPinyin;->getFristCharsForDialerSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "mJianPinNameNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/contacts/HanziToPinyin;->getInstance()Lcom/android/providers/contacts/HanziToPinyin;

    move-result-object v6

    invoke-virtual {v6, p6}, Lcom/android/providers/contacts/HanziToPinyin;->HanziToPinyinString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "mPinyin":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 163
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 164
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v7, 0x3

    invoke-direct {p0, v6, v7, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 165
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v7, 0x4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 169
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v7, 0x5

    invoke-direct {p0, v6, v7, v0}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 172
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v7, 0x6

    invoke-direct {p0, v6, v7, v1}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 173
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 177
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 178
    const-string v6, "[updateNameForDialerSearch]update name records in dialer search table."

    invoke-direct {p0, v6}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
