.class public Lcom/android/providers/contacts/DialerSearchUtils;
.super Ljava/lang/Object;
.source "DialerSearchUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeNormalizedNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "normalizedNumber":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 19
    invoke-static {p0}, Lcom/android/providers/contacts/util/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method

.method public static stripSpecialCharInNumberForDialerSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v4, 0x0

    .line 42
    :goto_0
    return-object v4

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 28
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 31
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/providers/contacts/util/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 35
    :cond_2
    const/16 v4, 0x2d

    if-eq v0, v4, :cond_1

    const/16 v4, 0x20

    if-eq v0, v4, :cond_1

    const/16 v4, 0x28

    if-eq v0, v4, :cond_1

    const/16 v4, 0x29

    if-eq v0, v4, :cond_1

    .line 42
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
