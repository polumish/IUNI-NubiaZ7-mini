.class public Lcom/mediatek/providers/contacts/SimCardUtils;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/providers/contacts/SimCardUtils$SimUri;,
        Lcom/mediatek/providers/contacts/SimCardUtils$SimType;,
        Lcom/mediatek/providers/contacts/SimCardUtils$SimSlot;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ProviderSimCardUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getSimTypeBySlot(I)I
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 189
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 191
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 199
    .local v2, "simType":I
    :try_start_0
    const-string v3, "USIM"

    invoke-static {v1}, Lcom/gionee/internal/telephony/GnITelephony;->getIccCardType(Lcom/android/internal/telephony/ITelephony;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    const/4 v2, 0x1

    .line 206
    :cond_0
    :goto_0
    return v2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ProviderSimCardUtils"

    const-string v4, "catched exception."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isFdnEnabed(I)Z
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 120
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 122
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 124
    .local v2, "isFdnEnabled":Z
    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    invoke-static {v1}, Lcom/gionee/internal/telephony/GnITelephony;->isFDNEnabled(Lcom/android/internal/telephony/ITelephony;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPhoneBookReady(I)Z
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 164
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 166
    .local v1, "iPhb":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 167
    const-string v3, "ProviderSimCardUtils"

    const-string v4, "checkPhoneBookState, iPhb == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v2, 0x0

    .line 185
    :goto_0
    return v2

    .line 170
    :cond_0
    const/4 v2, 0x0

    .line 179
    .local v2, "isPbReady":Z
    :try_start_0
    invoke-static {v1}, Lcom/gionee/internal/telephony/GnITelephony;->isPhbReady(Lcom/android/internal/telephony/ITelephony;)Z

    move-result v2

    .line 180
    const-string v3, "ProviderSimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPbReady:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "||slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ProviderSimCardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e.getMessage is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSetRadioOn(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 141
    const/4 v0, 0x0

    .line 151
    .local v0, "isRadioOn":Z
    const-string v2, "airplane_mode_on"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public static isSimInserted(I)Z
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 99
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 101
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 103
    .local v2, "isSimInsert":Z
    if-eqz v1, :cond_0

    .line 109
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, v3}, Lcom/gionee/internal/telephony/GnITelephony;->isSimInsert(Lcom/android/internal/telephony/ITelephony;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 116
    :cond_0
    :goto_0
    return v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSimPinRequest(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 79
    .local v0, "isPinRequest":Z
    const/4 v1, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimPukRequest(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 66
    .local v0, "isPukRequest":Z
    const/4 v1, 0x3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimStateReady(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 92
    .local v0, "isSimStateReady":Z
    const/4 v1, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimUsimType(I)Z
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 210
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 212
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 220
    .local v2, "isUsim":Z
    :try_start_0
    const-string v3, "USIM"

    invoke-static {v1}, Lcom/gionee/internal/telephony/GnITelephony;->getIccCardType(Lcom/android/internal/telephony/ITelephony;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    const/4 v2, 0x1

    .line 227
    :cond_0
    :goto_0
    return v2

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ProviderSimCardUtils"

    const-string v4, "catched exception."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
