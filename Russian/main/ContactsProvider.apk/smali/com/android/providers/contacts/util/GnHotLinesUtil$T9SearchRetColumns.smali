.class public interface abstract Lcom/android/providers/contacts/util/GnHotLinesUtil$T9SearchRetColumns;
.super Ljava/lang/Object;
.source "GnHotLinesUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/util/GnHotLinesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "T9SearchRetColumns"
.end annotation


# static fields
.field public static final COLUMN_NAMES:[Ljava/lang/String;

.field public static final DATA_HIGH_LIGHT:Ljava/lang/String; = "data_highlight_offset"

.field public static final DATA_HIGH_LIGHT_INDEX:I = 0x5

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ID_INDEX:I = 0x0

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_INDEX:I = 0x1

.field public static final NAME_PINYIN:Ljava/lang/String; = "name_pinyin"

.field public static final NAME_PINYIN_INDEX:I = 0x3

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_INDEX:I = 0x2

.field public static final PHOTO_NAME:Ljava/lang/String; = "photo_name"

.field public static final PHOTO_NAME_INDEX:I = 0x4

.field public static final PINYIN_HIGH_LIGHT:Ljava/lang/String; = "pinyin_highlight_offset"

.field public static final PINYIN_HIGH_LIGHT_INDEX:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name_pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pinyin_highlight_offset"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data_highlight_offset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/util/GnHotLinesUtil$T9SearchRetColumns;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method
