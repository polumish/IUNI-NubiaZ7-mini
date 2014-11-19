.class public interface abstract Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewColumns;
.super Ljava/lang/Object;
.source "GnDialerSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GnDialerSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GnDialerSearchViewColumns"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "vds_account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "vds_account_type"

.field public static final AUTO_RECORD:Ljava/lang/String; = "vds_auto_record"

.field public static final COLUMN_NAMES:[Ljava/lang/String;

.field public static final CONTACT_ID:Ljava/lang/String; = "vds_contact_id"

.field public static final CONTACT_ID_INDEX:I = 0x1

.field public static final HAS_PHONE_NUMBER:Ljava/lang/String; = "vds_has_phone_number"

.field public static final HAS_PHONE_NUMBER_INDEX:I = 0x11

.field public static final INDEX_IN_SIM:Ljava/lang/String; = "vds_index_in_sim"

.field public static final INDEX_IN_SIM_INDEX:I = 0x7

.field public static final INDICATE_PHONE_SIM:Ljava/lang/String; = "vds_indicate_phone_sim"

.field public static final INDICATE_PHONE_SIM_INDEX:I = 0x6

.field public static final IN_VISIBLE_GROUP:Ljava/lang/String; = "vds_in_visible_group"

.field public static final JIAN_PINYIN:Ljava/lang/String; = "vds_jian_pinyin"

.field public static final JIAN_PINYIN_INDEX:I = 0x9

.field public static final JIAN_T9:Ljava/lang/String; = "vds_jian_t9"

.field public static final JIAN_T9_INDEX:I = 0xc

.field public static final LOOKUP_KEY:Ljava/lang/String; = "vds_lookup"

.field public static final LOOKUP_KEY_INDEX:I = 0x2

.field public static final MATCH_MAP:Ljava/lang/String; = "vds_match_map_quan"

.field public static final MATCH_MAP_HIGHLIGHT:Ljava/lang/String; = "vds_match_map_quan_highlight"

.field public static final MATCH_MAP_HIGHLIGHT_INDEX:I = 0x17

.field public static final MATCH_MAP_JIAN:Ljava/lang/String; = "vds_match_map_jian"

.field public static final MATCH_MAP_JIAN_INDEX:I = 0xe

.field public static final MATCH_MAP_QUAN_INDEX:I = 0xd

.field public static final MIME_TYPE:Ljava/lang/String; = "vds_mimetype_id"

.field public static final MIME_TYPE_INDEX:I = 0x12

.field public static final NAME:Ljava/lang/String; = "vds_phone_name"

.field public static final NAME_INDEX:I = 0x3

.field public static final PHONE_NUMBER:Ljava/lang/String; = "vds_phone_number"

.field public static final PHONE_NUMBER_INDEX:I = 0x4

.field public static final PHOTO_ID:Ljava/lang/String; = "vds_photo_id"

.field public static final PHOTO_ID_INDEX:I = 0x5

.field public static final POLYPHONIC:Ljava/lang/String; = "vds_polyphonic"

.field public static final POLYPHONIC_INDEX:I = 0xf

.field public static final QUAN_PINYIN:Ljava/lang/String; = "vds_quan_pinyin"

.field public static final QUAN_PINYIN_HIGHLIGHT:Ljava/lang/String; = "vds_quan_pinyin_highlight"

.field public static final QUAN_PINYIN_HIGHLIGHT_INDEX:I = 0x16

.field public static final QUAN_PINYIN_INDEX:I = 0x8

.field public static final QUAN_T9:Ljava/lang/String; = "vds_quan_t9"

.field public static final QUAN_T9_INDEX:I = 0xb

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "vds_raw_contact_id"

.field public static final RCI_INDEX:I = 0x0

.field public static final SORT_KEY:Ljava/lang/String; = "vds_sort_key"

.field public static final SORT_KEY_INDEX:I = 0x10

.field public static final TIMES_CONTACTED:Ljava/lang/String; = "vds_times_contacted"

.field public static final TIMES_CONTACTED_INDEX:I = 0xa

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 144
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vds_raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vds_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "vds_lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vds_phone_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vds_phone_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vds_photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vds_indicate_phone_sim"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vds_index_in_sim"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "vds_quan_pinyin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vds_jian_pinyin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vds_times_contacted"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "vds_quan_t9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "vds_jian_t9"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "vds_match_map_quan"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "vds_match_map_jian"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vds_polyphonic"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "vds_sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "vds_has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "vds_mimetype_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "vds_account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "vds_account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "vds_in_visible_group"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "vds_quan_pinyin_highlight"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "vds_match_map_quan_highlight"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "vds_auto_record"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchViewColumns;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method
