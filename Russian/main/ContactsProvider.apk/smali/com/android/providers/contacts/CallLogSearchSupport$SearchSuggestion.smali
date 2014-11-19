.class Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
.super Ljava/lang/Object;
.source "CallLogSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/CallLogSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchSuggestion"
.end annotation


# instance fields
.field callNumberLabel:Ljava/lang/String;

.field callsId:J

.field date:J

.field icon1:Ljava/lang/String;

.field icon2:Ljava/lang/String;

.field isVTCall:I

.field number:Ljava/lang/String;

.field processed:Z

.field sortKey:Ljava/lang/String;

.field text1:Ljava/lang/String;

.field text2:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "callsId"    # J

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-wide p1, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    .line 134
    return-void
.end method

.method private addColumnValue(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p2, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-wide v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v0, "suggest_text_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_1
    const-string v0, "suggest_text_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_2
    const-string v0, "suggest_icon_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_3
    const-string v0, "suggest_icon_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_4
    const-string v0, "suggest_intent_data_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    iget-wide v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_5
    const-string v0, "suggest_shortcut_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 211
    iget-wide v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid column name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private process()V
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->processed:Z

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 140
    :cond_0
    const v0, 0x7f020007

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    .line 141
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->type:I

    sget v1, Lgionee/provider/GnCallLog$Calls;->INCOMING_TYPE:I

    if-ne v0, v1, :cond_3

    .line 142
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->isVTCall:I

    if-nez v0, :cond_2

    .line 143
    const v0, 0x7f020008

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    .line 160
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->processed:Z

    goto :goto_0

    .line 145
    :cond_2
    const v0, 0x7f02000b

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    goto :goto_1

    .line 147
    :cond_3
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->type:I

    sget v1, Lgionee/provider/GnCallLog$Calls;->OUTGOING_TYPE:I

    if-ne v0, v1, :cond_5

    .line 148
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->isVTCall:I

    if-nez v0, :cond_4

    .line 149
    const v0, 0x7f02000a

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    goto :goto_1

    .line 151
    :cond_4
    const v0, 0x7f02000d

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    goto :goto_1

    .line 153
    :cond_5
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->type:I

    sget v1, Lgionee/provider/GnCallLog$Calls;->MISSED_TYPE:I

    if-ne v0, v1, :cond_1

    .line 154
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->isVTCall:I

    if-nez v0, :cond_6

    .line 155
    const v0, 0x7f020009

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    goto :goto_1

    .line 157
    :cond_6
    const v0, 0x7f02000c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public asList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->process()V

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 182
    iget-wide v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-wide v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-wide v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    return-object v1

    .line 190
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 191
    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->addColumnValue(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->sortKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->process()V

    .line 171
    iget-wide v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->date:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->sortKey:Ljava/lang/String;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->sortKey:Ljava/lang/String;

    return-object v0
.end method
