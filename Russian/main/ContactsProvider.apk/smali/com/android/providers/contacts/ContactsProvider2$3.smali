.class Lcom/android/providers/contacts/ContactsProvider2$3;
.super Landroid/os/Handler;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/ContactsProvider2;->handleLocalAccountChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 10756
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$3;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 10759
    iget v0, p1, Landroid/os/Message;->what:I

    .line 10764
    return-void
.end method
