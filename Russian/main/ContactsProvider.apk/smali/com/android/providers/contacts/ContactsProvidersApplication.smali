.class public Lcom/android/providers/contacts/ContactsProvidersApplication;
.super Landroid/app/Application;
.source "ContactsProvidersApplication.java"


# static fields
.field public static final GN_MATCH_CONTACTS_NUMBER_LENGTH:I

.field private static mInstance:Lcom/android/providers/contacts/ContactsProvidersApplication; = null

.field public static final sIsAuroraRejectSupport:Z

.field public static sIsGnContactsSupport:Z = false

.field public static final sIsGnDialerSearchSupport:Z

.field public static final sIsGnFlySupport:Z

.field public static final sIsGnSyncSupport:Z = true

.field public static final sIsGnZoomClipSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 7
    sput-boolean v1, Lcom/android/providers/contacts/ContactsProvidersApplication;->sIsGnContactsSupport:Z

    .line 9
    const-string v0, "ro.gn.zoomclipview.prop"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvidersApplication;->sIsGnContactsSupport:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/providers/contacts/ContactsProvidersApplication;->sIsGnZoomClipSupport:Z

    .line 13
    const-string v0, "ro.gn.match.numberlength"

    const/16 v2, 0xb

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/providers/contacts/ContactsProvidersApplication;->GN_MATCH_CONTACTS_NUMBER_LENGTH:I

    .line 20
    const-string v0, "ro.aurora.reject.support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactsProvidersApplication;->sIsAuroraRejectSupport:Z

    .line 23
    const-string v0, "ro.gn.contacts.gndialersearch"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    sput-boolean v1, Lcom/android/providers/contacts/ContactsProvidersApplication;->sIsGnDialerSearchSupport:Z

    .line 24
    const-string v0, "ro.gn.oversea.custom"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RUSSIA_FLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactsProvidersApplication;->sIsGnFlySupport:Z

    return-void

    .line 9
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/providers/contacts/ContactsProvidersApplication;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/providers/contacts/ContactsProvidersApplication;->mInstance:Lcom/android/providers/contacts/ContactsProvidersApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 34
    sput-object p0, Lcom/android/providers/contacts/ContactsProvidersApplication;->mInstance:Lcom/android/providers/contacts/ContactsProvidersApplication;

    .line 35
    return-void
.end method
