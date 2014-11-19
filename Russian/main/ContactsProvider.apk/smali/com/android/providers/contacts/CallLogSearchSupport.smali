.class public Lcom/android/providers/contacts/CallLogSearchSupport;
.super Ljava/lang/Object;
.source "CallLogSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;,
        Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestionQuery;
    }
.end annotation


# static fields
.field private static final SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CallLogSearchSupport"


# instance fields
.field private final mContactsProvider:Landroid/content/ContentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/CallLogSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProvider;)V
    .locals 0
    .param p1, "contactsProvider"    # Landroid/content/ContentProvider;

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/providers/contacts/CallLogSearchSupport;->mContactsProvider:Landroid/content/ContentProvider;

    .line 223
    return-void
.end method

.method private buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/CallLogSearchSupport;->buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 28
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "filter"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v24, "suggestionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;>;"
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v25, "suggestionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;>;"
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v16, 0x1

    .line 247
    .local v16, "haveFilter":Z
    :goto_0
    sget-object v4, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestionQuery;->TABLE:Ljava/lang/String;

    .line 248
    .local v4, "table":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 249
    invoke-static/range {p4 .. p4}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 250
    .local v19, "nomalizeName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT JOIN ( SELECT contact_id AS snippet_contact_id FROM search_index WHERE name MATCH \'*?*\')  ON (snippet_contact_id=view_raw_contacts.contact_id)"

    const-string v5, "?"

    move-object/from16 v0, v19

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    .end local v19    # "nomalizeName":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 254
    .local v6, "where":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    move-object/from16 v6, p3

    .line 257
    :cond_1
    if-eqz v16, :cond_2

    .line 258
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calls."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lgionee/provider/GnCallLog$Calls;->NUMBER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GLOB \'*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OR ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "snippet_contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "calls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lgionee/provider/GnCallLog$Calls;->RAW_CONTACT_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    :cond_2
    :goto_1
    const/4 v3, 0x0

    sget-object v5, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestionQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-object/from16 v11, p5

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 273
    .local v12, "c":Landroid/database/Cursor;
    :goto_2
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 274
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 275
    .local v13, "callsId":J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;

    .line 276
    .local v23, "suggestion":Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    if-nez v23, :cond_3

    .line 277
    new-instance v23, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;

    .end local v23    # "suggestion":Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    move-object/from16 v0, v23

    invoke-direct {v0, v13, v14}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;-><init>(J)V

    .line 278
    .restart local v23    # "suggestion":Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_3
    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 281
    .local v15, "calls_raw_contacts_id":I
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->date:J

    .line 282
    new-instance v26, Landroid/text/format/Time;

    invoke-direct/range {v26 .. v26}, Landroid/text/format/Time;-><init>()V

    .line 283
    .local v26, "time":Landroid/text/format/Time;
    move-object/from16 v0, v23

    iget-wide v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->date:J

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 284
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 285
    .local v20, "number":Ljava/lang/String;
    if-nez v15, :cond_6

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport;->mContactsProvider:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 287
    .local v21, "r":Landroid/content/res/Resources;
    const v2, 0x7f04000c

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 288
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    .line 296
    .end local v21    # "r":Landroid/content/res/Resources;
    :goto_3
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->type:I

    .line 297
    const/4 v2, 0x7

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->isVTCall:I

    .line 298
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 301
    .end local v13    # "callsId":J
    .end local v15    # "calls_raw_contacts_id":I
    .end local v20    # "number":Ljava/lang/String;
    .end local v23    # "suggestion":Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    .end local v26    # "time":Landroid/text/format/Time;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 245
    .end local v4    # "table":Ljava/lang/String;
    .end local v6    # "where":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v16    # "haveFilter":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 263
    .restart local v4    # "table":Ljava/lang/String;
    .restart local v6    # "where":Ljava/lang/String;
    .restart local v16    # "haveFilter":Z
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND calls."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lgionee/provider/GnCallLog$Calls;->NUMBER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GLOB \'*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OR ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "snippet_contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "calls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lgionee/provider/GnCallLog$Calls;->RAW_CONTACT_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 290
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v13    # "callsId":J
    .restart local v15    # "calls_raw_contacts_id":I
    .restart local v20    # "number":Ljava/lang/String;
    .restart local v23    # "suggestion":Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    .restart local v26    # "time":Landroid/text/format/Time;
    :cond_6
    const/4 v2, 0x5

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 291
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 292
    .local v27, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport;->mContactsProvider:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lgionee/provider/GnContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 294
    .local v18, "label":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 301
    .end local v13    # "callsId":J
    .end local v15    # "calls_raw_contacts_id":I
    .end local v18    # "label":Ljava/lang/String;
    .end local v20    # "number":Ljava/lang/String;
    .end local v23    # "suggestion":Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
    .end local v26    # "time":Landroid/text/format/Time;
    .end local v27    # "type":Ljava/lang/String;
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 304
    new-instance v2, Lcom/android/providers/contacts/CallLogSearchSupport$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/providers/contacts/CallLogSearchSupport$1;-><init>(Lcom/android/providers/contacts/CallLogSearchSupport;)V

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    new-instance v22, Landroid/database/MatrixCursor;

    if-eqz p2, :cond_8

    move-object/from16 v2, p2

    :goto_4
    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 314
    .local v22, "retCursor":Landroid/database/MatrixCursor;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_5
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_9

    .line 315
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->asList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 314
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 311
    .end local v17    # "i":I
    .end local v22    # "retCursor":Landroid/database/MatrixCursor;
    :cond_8
    sget-object v2, Lcom/android/providers/contacts/CallLogSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    goto :goto_4

    .line 317
    .restart local v17    # "i":I
    .restart local v22    # "retCursor":Landroid/database/MatrixCursor;
    :cond_9
    return-object v22
.end method


# virtual methods
.method public handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calls._id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/CallLogSearchSupport;->buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "limit"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 232
    :goto_0
    return-object v1

    .line 231
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "searchClause":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3}, Lcom/android/providers/contacts/CallLogSearchSupport;->buildCursorForSearchSuggestions(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method
