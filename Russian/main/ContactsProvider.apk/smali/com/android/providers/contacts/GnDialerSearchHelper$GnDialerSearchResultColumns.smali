.class public interface abstract Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchResultColumns;
.super Ljava/lang/Object;
.source "GnDialerSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GnDialerSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GnDialerSearchResultColumns"
.end annotation


# static fields
.field public static final COLUMN_NAMES:[Ljava/lang/String;

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTACT_ID_INDEX:I = 0x1

.field public static final DATA_HIGHLIGHT_INDEX:I = 0x8

.field public static final DATA_HIGH_LIGHT:Ljava/lang/String; = "data_highlight_offset"

.field public static final INDEX_IN_SIM:Ljava/lang/String; = "index_in_sim"

.field public static final INDEX_IN_SIM_INDEX:I = 0x4

.field public static final INDICATE_PHONE_SIM:Ljava/lang/String; = "indicate_phone_sim"

.field public static final INDICATE_PHONE_SIM_INDEX:I = 0x3

.field public static final LOOKUP_KEY:Ljava/lang/String; = "lookup_key"

.field public static final LOOKUP_KEY_INDEX:I = 0x2

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_INDEX:I = 0x6

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final PHONE_NUMBER_INDEX:I = 0x7

.field public static final PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final PHOTO_ID_INDEX:I = 0x5

.field public static final PINYIN_HIGHLIGHT_INDEX:I = 0xa

.field public static final PINYIN_HIGH_LIGHT:Ljava/lang/String; = "pinyin_highlight_offset"

.field public static final PINYIN_INDEX:I = 0x9

.field public static final QUAN_PINYIN:Ljava/lang/String; = "quan_pinyin"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 370
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lookup_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "indicate_phone_sim"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "index_in_sim"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data_highlight_offset"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "quan_pinyin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pinyin_highlight_offset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchResultColumns;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method
