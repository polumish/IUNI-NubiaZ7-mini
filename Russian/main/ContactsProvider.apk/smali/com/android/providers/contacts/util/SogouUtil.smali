.class public Lcom/android/providers/contacts/util/SogouUtil;
.super Ljava/lang/Object;
.source "SogouUtil.java"


# static fields
.field private static final mMarkUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "content://com.android.contacts/mark"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/util/SogouUtil;->mMarkUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteUserMark(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 103
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v2

    .line 107
    :cond_1
    const/4 v0, 0x0

    .line 109
    .local v0, "count":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/providers/contacts/util/SogouUtil;->mMarkUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 114
    :goto_1
    if-lez v0, :cond_0

    .line 115
    const/4 v2, 0x1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getArea(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 29
    if-nez p1, :cond_1

    .line 30
    const/4 v1, 0x0

    .line 57
    :cond_0
    :goto_0
    return-object v1

    .line 33
    :cond_1
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getRegionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    :cond_2
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "400"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "800"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    :goto_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {p0, p1}, Lcom/android/providers/contacts/util/GnHotLinesUtil;->getInfo(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "hotlineInfo":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 53
    const/4 v2, 0x0

    aget-object v1, v0, v2

    goto :goto_0

    .line 42
    .end local v0    # "hotlineInfo":[Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "400"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "800"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 48
    :cond_5
    const-string v1, ""

    goto :goto_1
.end method

.method public static getMarkContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 146
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-object v4

    .line 150
    :cond_1
    const/4 v2, 0x0

    .line 151
    .local v2, "h":Lcom/sogou/hmt/sdk/manager/HMTNumber;
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 153
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 154
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    .line 155
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    :try_start_0
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->checkNumberFromNet(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 167
    :goto_1
    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v2}, Lcom/sogou/hmt/sdk/manager/HMTNumber;->getMarkContent()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "s":Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->checkNumberFromLocal(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;

    move-result-object v2

    .line 160
    goto :goto_1

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->checkNumberFromLocal(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;

    move-result-object v2

    goto :goto_1

    .line 165
    :cond_3
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->checkNumberFromLocal(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;

    move-result-object v2

    goto :goto_1
.end method

.method public static getMarkNumber(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 176
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v3

    .line 180
    :cond_1
    const/4 v2, 0x0

    .line 181
    .local v2, "h":Lcom/sogou/hmt/sdk/manager/HMTNumber;
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 183
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 184
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_3

    .line 185
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    :try_start_0
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->checkNumberFromNet(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 198
    :goto_1
    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v2}, Lcom/sogou/hmt/sdk/manager/HMTNumber;->getMarkNumber()I

    move-result v3

    .line 202
    .local v3, "i":I
    goto :goto_0

    .line 188
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->checkNumberFromLocal(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;

    move-result-object v2

    .line 190
    goto :goto_1

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->checkNumberFromLocal(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;

    move-result-object v2

    goto :goto_1

    .line 195
    :cond_3
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->checkNumberFromLocal(Ljava/lang/String;)Lcom/sogou/hmt/sdk/manager/HMTNumber;

    move-result-object v2

    goto :goto_1
.end method

.method public static getUserMark(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 122
    if-nez p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v8

    .line 126
    :cond_1
    const/4 v8, 0x0

    .line 128
    .local v8, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/util/SogouUtil;->mMarkUri:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", 0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 129
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 131
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 135
    :cond_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 138
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 139
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static insertUserMark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "lable"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 61
    if-nez p1, :cond_0

    move v0, v11

    .line 99
    :goto_0
    return v0

    .line 65
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v0, "lable"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "number"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/util/SogouUtil;->mMarkUri:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", 0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 71
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 73
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    if-nez p2, :cond_1

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/util/SogouUtil;->mMarkUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 76
    .local v6, "count":I
    if-lez v6, :cond_2

    .line 87
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v12

    goto :goto_0

    .line 80
    .end local v6    # "count":I
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/util/SogouUtil;->mMarkUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    .line 81
    .restart local v6    # "count":I
    if-lez v6, :cond_2

    .line 87
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto/16 :goto_0

    .end local v6    # "count":I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 94
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/util/SogouUtil;->mMarkUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 95
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_4

    move v0, v12

    .line 96
    goto/16 :goto_0

    .line 87
    .end local v10    # "uri":Landroid/net/Uri;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 90
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 91
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_4
    move v0, v11

    .line 99
    goto/16 :goto_0
.end method

.method public static isInit()Z
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->getInstance()Lcom/sogou/hmt/sdk/manager/HmtSdkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/hmt/sdk/manager/HmtSdkManager;->isInit()Z

    move-result v0

    return v0
.end method
