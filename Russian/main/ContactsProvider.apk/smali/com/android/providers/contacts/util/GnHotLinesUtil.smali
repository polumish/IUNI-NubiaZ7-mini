.class public Lcom/android/providers/contacts/util/GnHotLinesUtil;
.super Ljava/lang/Object;
.source "GnHotLinesUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/util/GnHotLinesUtil$T9SearchRetColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.gionee.hotlines"

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final HOT_LINES_DISPLAY_PHOTO:Landroid/net/Uri;

.field public static final HOT_LINES_URI:Landroid/net/Uri;

.field public static final INIT_HOT_LINES_URI:Landroid/net/Uri;

.field public static final T9_SEARCH_HOT_LINES_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-string v0, "content://com.gionee.hotlines"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/util/GnHotLinesUtil;->BASE_URI:Landroid/net/Uri;

    .line 15
    sget-object v0, Lcom/android/providers/contacts/util/GnHotLinesUtil;->BASE_URI:Landroid/net/Uri;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/util/GnHotLinesUtil;->INIT_HOT_LINES_URI:Landroid/net/Uri;

    .line 16
    sget-object v0, Lcom/android/providers/contacts/util/GnHotLinesUtil;->BASE_URI:Landroid/net/Uri;

    const-string v1, "search"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/util/GnHotLinesUtil;->HOT_LINES_URI:Landroid/net/Uri;

    .line 17
    sget-object v0, Lcom/android/providers/contacts/util/GnHotLinesUtil;->BASE_URI:Landroid/net/Uri;

    const-string v1, "t9_search"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/util/GnHotLinesUtil;->T9_SEARCH_HOT_LINES_URI:Landroid/net/Uri;

    .line 18
    sget-object v0, Lcom/android/providers/contacts/util/GnHotLinesUtil;->BASE_URI:Landroid/net/Uri;

    const-string v1, "display_photo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/util/GnHotLinesUtil;->HOT_LINES_DISPLAY_PHOTO:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInfo(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hotlineNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 43
    new-array v7, v2, [Ljava/lang/String;

    .line 44
    .local v7, "info":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/util/GnHotLinesUtil;->HOT_LINES_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v8

    const-string v3, "photo_name"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 47
    .local v6, "hotlinesCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 48
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    .line 50
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v9

    .line 54
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_0
    return-object v7

    .line 52
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method
