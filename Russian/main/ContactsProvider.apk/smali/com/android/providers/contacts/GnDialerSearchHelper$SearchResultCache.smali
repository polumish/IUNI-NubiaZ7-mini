.class public Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;
.super Ljava/lang/Object;
.source "GnDialerSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GnDialerSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchResultCache"
.end annotation


# static fields
.field private static final SPLITER:Ljava/lang/String; = ","


# instance fields
.field private mIdCount:I

.field private mRawContactIds:Ljava/lang/StringBuilder;

.field public final mSearchKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/GnDialerSearchHelper;Ljava/lang/String;)V
    .locals 1
    .param p2, "searchKey"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->this$0:Lcom/android/providers/contacts/GnDialerSearchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mIdCount:I

    .line 52
    iput-object p2, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mSearchKey:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mRawContactIds:Ljava/lang/StringBuilder;

    .line 54
    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 2
    .param p1, "rawContactId"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mRawContactIds:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mIdCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mIdCount:I

    .line 59
    return-void
.end method

.method public getRawContactIds()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mRawContactIds:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 67
    .local v0, "len":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mRawContactIds:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mRawContactIds:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mRawContactIds:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/providers/contacts/GnDialerSearchHelper$SearchResultCache;->mIdCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
