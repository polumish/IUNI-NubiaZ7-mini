.class public final Lcom/android/providers/contacts/ContactsDatabaseHelper$BlackTableData;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlackTableData"
.end annotation


# static fields
.field public static final BLACK_NAME:Ljava/lang/String; = "black_name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id desc"

.field public static final ISBLACK:Ljava/lang/String; = "isblack"

.field public static final LABLE:Ljava/lang/String; = "lable"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final REJECT:Ljava/lang/String; = "reject"

.field public static final TABLE_NAME:Ljava/lang/String; = "black"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const-string v0, "content://com.android.contacts/black"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$BlackTableData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
