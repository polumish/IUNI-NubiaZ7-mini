.class public Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;
.super Ljava/lang/Object;
.source "ChineseToPinyinHelper.java"


# static fields
.field public static final CHARACTER_SEPARATOR:C = ' '

.field public static final CHARACTER_SEPARATOR_STR:Ljava/lang/String;

.field public static final POLYPHONIC_SEPARATOR:C = '\u00fe'

.field public static final POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

.field private static mLegalCharactSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->CHARACTER_SEPARATOR_STR:Ljava/lang/String;

    .line 17
    const/16 v0, 0xfe

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static setLegalCharactSet(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "legalCharactSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    sput-object p0, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->mLegalCharactSet:Ljava/util/Set;

    .line 149
    return-void
.end method

.method public static translateMulti(Ljava/lang/String;Z)[[Ljava/lang/String;
    .locals 26
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "flag"    # Z

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/16 v24, 0x0

    check-cast v24, [[Ljava/lang/String;

    .line 144
    :goto_0
    return-object v24

    .line 47
    :cond_0
    invoke-static {}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getInstance()Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;

    move-result-object v7

    .line 48
    .local v7, "chineseToPinyinResource":Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    .line 49
    .local v14, "inputLength":I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v23, "sb":Ljava/lang/StringBuilder;
    const/4 v11, 0x1

    .line 52
    .local v11, "duoyinRowCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v14, :cond_b

    .line 53
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 54
    .local v6, "character":C
    const/16 v24, 0x100

    move/from16 v0, v24

    if-ge v6, v0, :cond_4

    .line 56
    if-eqz p1, :cond_3

    .line 57
    const/16 v24, 0x20

    move/from16 v0, v24

    if-ne v6, v0, :cond_1

    .line 58
    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 59
    :cond_1
    sget-object v24, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->mLegalCharactSet:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 60
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 62
    :cond_2
    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 65
    :cond_3
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 69
    :cond_4
    invoke-virtual {v7, v6}, Lnet/sourceforge/pinyin4j/ChineseToPinyinResource;->getHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "array":[Ljava/lang/String;
    const/16 v24, 0x12

    move/from16 v0, v24

    if-le v11, v0, :cond_5

    if-eqz v4, :cond_5

    const/16 v24, 0x0

    aget-object v24, v4, v24

    if-eqz v24, :cond_5

    array-length v0, v4

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    .line 73
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v5, v0, [Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v25, 0x0

    aget-object v25, v4, v25

    aput-object v25, v5, v24

    .end local v4    # "array":[Ljava/lang/String;
    .local v5, "array":[Ljava/lang/String;
    move-object v4, v5

    .line 77
    .end local v5    # "array":[Ljava/lang/String;
    .restart local v4    # "array":[Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_7

    const/16 v24, 0x0

    aget-object v24, v4, v24

    if-eqz v24, :cond_7

    .line 78
    array-length v0, v4

    move/from16 v24, v0

    mul-int v11, v11, v24

    .line 80
    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_3
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_6

    .line 82
    aget-object v24, v4, v2

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/16 v24, 0xfe

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 85
    :cond_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 86
    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 89
    .end local v2    # "a":I
    :cond_7
    if-eqz p1, :cond_a

    .line 90
    const/16 v24, 0x20

    move/from16 v0, v24

    if-ne v6, v0, :cond_8

    .line 91
    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 92
    :cond_8
    sget-object v24, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->mLegalCharactSet:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 93
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 95
    :cond_9
    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 98
    :cond_a
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 105
    .end local v4    # "array":[Ljava/lang/String;
    .end local v6    # "character":C
    :cond_b
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 106
    .local v20, "retString":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_d

    .line 107
    const-string v20, "*"

    .line 123
    :goto_4
    sget-object v24, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->CHARACTER_SEPARATOR_STR:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 124
    .local v21, "retStringSplit":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    filled-new-array {v11, v0}, [I

    move-result-object v24

    const-class v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[Ljava/lang/String;

    .line 126
    .local v19, "result":[[Ljava/lang/String;
    const/16 v24, 0xfe

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    .line 127
    move/from16 v17, v11

    .line 128
    .local v17, "perRepeat":I
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_5
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_14

    .line 129
    aget-object v24, v21, v8

    sget-object v25, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->POLYPHONIC_SEPARATOR_STR:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "columnSplit":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v24, v0

    div-int v17, v17, v24

    .line 132
    const/16 v22, 0x0

    .local v22, "row":I
    :cond_c
    move/from16 v0, v22

    if-ge v0, v11, :cond_12

    .line 133
    const/4 v10, 0x0

    .local v10, "cs":I
    :goto_6
    array-length v0, v9

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_c

    .line 134
    const/16 v18, 0x0

    .local v18, "re":I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_11

    .line 135
    aget-object v24, v19, v22

    aget-object v25, v9, v10

    aput-object v25, v24, v8

    .line 134
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 109
    .end local v8    # "col":I
    .end local v9    # "columnSplit":[Ljava/lang/String;
    .end local v10    # "cs":I
    .end local v17    # "perRepeat":I
    .end local v18    # "re":I
    .end local v19    # "result":[[Ljava/lang/String;
    .end local v21    # "retStringSplit":[Ljava/lang/String;
    .end local v22    # "row":I
    :cond_d
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 110
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .local v3, "arr$":[C
    array-length v0, v3

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_8
    move/from16 v0, v16

    if-ge v13, v0, :cond_10

    aget-char v6, v3, v13

    .line 111
    .restart local v6    # "character":C
    const/16 v24, 0x20

    move/from16 v0, v24

    if-eq v6, v0, :cond_f

    .line 112
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :cond_e
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 114
    :cond_f
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    .line 115
    .local v15, "len":I
    if-lez v15, :cond_e

    add-int/lit8 v24, v15, -0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v24

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    .line 116
    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 120
    .end local v6    # "character":C
    .end local v15    # "len":I
    :cond_10
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4

    .line 133
    .end local v3    # "arr$":[C
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .restart local v8    # "col":I
    .restart local v9    # "columnSplit":[Ljava/lang/String;
    .restart local v10    # "cs":I
    .restart local v17    # "perRepeat":I
    .restart local v18    # "re":I
    .restart local v19    # "result":[[Ljava/lang/String;
    .restart local v21    # "retStringSplit":[Ljava/lang/String;
    .restart local v22    # "row":I
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 128
    .end local v10    # "cs":I
    .end local v18    # "re":I
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 141
    .end local v8    # "col":I
    .end local v9    # "columnSplit":[Ljava/lang/String;
    .end local v17    # "perRepeat":I
    .end local v22    # "row":I
    :cond_13
    const/16 v24, 0x0

    aput-object v21, v19, v24

    :cond_14
    move-object/from16 v24, v19

    .line 144
    goto/16 :goto_0
.end method
