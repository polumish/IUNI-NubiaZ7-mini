.class public interface abstract Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchColumns;
.super Ljava/lang/Object;
.source "GnDialerSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GnDialerSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GnDialerSearchColumns"
.end annotation


# static fields
.field public static final COLUMN_NAMES:[Ljava/lang/String;

.field public static final JIAN_PINYIN:Ljava/lang/String; = "jian_pinyin"

.field public static final JIAN_PINYIN_INDEX:I = 0x2

.field public static final JIAN_T9:Ljava/lang/String; = "jian_t9"

.field public static final JIAN_T9_INDEX:I = 0x4

.field public static final MATCH_MAP:Ljava/lang/String; = "match_map_quan"

.field public static final MATCH_MAP_HIGHLIGHT:Ljava/lang/String; = "match_map_quan_highlight"

.field public static final MATCH_MAP_HIGHLIGHT_INDEX:I = 0xa

.field public static final MATCH_MAP_INDEX:I = 0x5

.field public static final MATCH_MAP_JIAN:Ljava/lang/String; = "match_map_jian"

.field public static final MATCH_MAP_JIAN_INDEX:I = 0x6

.field public static final POLYPHONIC:Ljava/lang/String; = "polyphonic"

.field public static final POLYPHONIC_INDEX:I = 0x7

.field public static final QUAN_PINYIN:Ljava/lang/String; = "quan_pinyin"

.field public static final QUAN_PINYIN_HIGHLIGHT:Ljava/lang/String; = "quan_pinyin_highlight"

.field public static final QUAN_PINYIN_HIGHLIGHT_INDEX:I = 0x9

.field public static final QUAN_PINYIN_INDEX:I = 0x1

.field public static final QUAN_T9:Ljava/lang/String; = "quan_t9"

.field public static final QUAN_T9_INDEX:I = 0x3

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final RCI_INDEX:I = 0x0

.field public static final SORT_KEY:Ljava/lang/String; = "sort_key"

.field public static final SORT_KEY_INDEX:I = 0x8

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "quan_pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "jian_pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "quan_t9"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "jian_t9"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "match_map_quan"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "match_map_jian"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "polyphonic"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "quan_pinyin_highlight"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "match_map_quan_highlight"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GnDialerSearchHelper$GnDialerSearchColumns;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method
