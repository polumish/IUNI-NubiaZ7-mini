.class public Lcom/android/providers/contacts/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HanziToPinyin$DialerSearchToken;,
        Lcom/android/providers/contacts/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static final COLLATOR:Ljava/text/Collator;

.field private static final DEBUG:Z = false

.field private static final FIRST_PINYIN_UNIHAN:Ljava/lang/String; = "\u963f"

.field private static final FIRST_UNIHAN:C = '\u3400'

.field public static final GN_PINYINS:[[B

.field public static final GN_UNIHANS:[C

.field private static final LAST_PINYIN_UNIHAN:Ljava/lang/String; = "\u84d9"

.field private static final LOW_TO_BIG_GAP:I = -0x20

.field public static final PINYINS:[[B

.field public static final SPLIT_STRING:Ljava/lang/String; = "`!``!!!`!!`"

.field private static final TAG:Ljava/lang/String; = "HanziToPinyin"

.field public static final UNIHANS:[C

.field private static final dialerKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final russian_array:[[I

.field private static sInstance:Lcom/android/providers/contacts/HanziToPinyin;


# instance fields
.field private final mHasChinaCollator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x39

    const/16 v5, 0x37

    const/4 v4, 0x2

    const/4 v3, 0x6

    .line 62
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/contacts/HanziToPinyin;->GN_UNIHANS:[C

    .line 80
    const/16 v0, 0x1a

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [B

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [B

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [B

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [B

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [B

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [B

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [B

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [B

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [B

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [B

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/HanziToPinyin;->GN_PINYINS:[[B

    .line 110
    const/16 v0, 0x197

    new-array v0, v0, [C

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/android/providers/contacts/HanziToPinyin;->UNIHANS:[C

    .line 167
    const/16 v0, 0x197

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_1e

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_22

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [B

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [B

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [B

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [B

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [B

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [B

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [B

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [B

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [B

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [B

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [B

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [B

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [B

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [B

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [B

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [B

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [B

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [B

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [B

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [B

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [B

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [B

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [B

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [B

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [B

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [B

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [B

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [B

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [B

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [B

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [B

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [B

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [B

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [B

    fill-array-data v2, :array_4d

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_4e

    aput-object v1, v0, v7

    const/16 v1, 0x33

    new-array v2, v3, [B

    fill-array-data v2, :array_4f

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [B

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [B

    fill-array-data v2, :array_51

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [B

    fill-array-data v2, :array_52

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_53

    aput-object v1, v0, v5

    const/16 v1, 0x38

    new-array v2, v3, [B

    fill-array-data v2, :array_54

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_55

    aput-object v1, v0, v6

    const/16 v1, 0x3a

    new-array v2, v3, [B

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [B

    fill-array-data v2, :array_57

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [B

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [B

    fill-array-data v2, :array_59

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [B

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [B

    fill-array-data v2, :array_5b

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [B

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [B

    fill-array-data v2, :array_5d

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [B

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [B

    fill-array-data v2, :array_5f

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [B

    fill-array-data v2, :array_60

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [B

    fill-array-data v2, :array_61

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [B

    fill-array-data v2, :array_62

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [B

    fill-array-data v2, :array_63

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [B

    fill-array-data v2, :array_64

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [B

    fill-array-data v2, :array_65

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [B

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [B

    fill-array-data v2, :array_67

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [B

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [B

    fill-array-data v2, :array_69

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [B

    fill-array-data v2, :array_6a

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [B

    fill-array-data v2, :array_6b

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [B

    fill-array-data v2, :array_6c

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [B

    fill-array-data v2, :array_6d

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [B

    fill-array-data v2, :array_6e

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [B

    fill-array-data v2, :array_6f

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [B

    fill-array-data v2, :array_70

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [B

    fill-array-data v2, :array_71

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [B

    fill-array-data v2, :array_72

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [B

    fill-array-data v2, :array_73

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [B

    fill-array-data v2, :array_74

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [B

    fill-array-data v2, :array_75

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [B

    fill-array-data v2, :array_76

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [B

    fill-array-data v2, :array_77

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [B

    fill-array-data v2, :array_78

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [B

    fill-array-data v2, :array_79

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [B

    fill-array-data v2, :array_7a

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [B

    fill-array-data v2, :array_7b

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [B

    fill-array-data v2, :array_7c

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [B

    fill-array-data v2, :array_7d

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [B

    fill-array-data v2, :array_7e

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [B

    fill-array-data v2, :array_7f

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [B

    fill-array-data v2, :array_80

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [B

    fill-array-data v2, :array_81

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v3, [B

    fill-array-data v2, :array_82

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v3, [B

    fill-array-data v2, :array_83

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v3, [B

    fill-array-data v2, :array_84

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v3, [B

    fill-array-data v2, :array_85

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v3, [B

    fill-array-data v2, :array_86

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v3, [B

    fill-array-data v2, :array_87

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v3, [B

    fill-array-data v2, :array_88

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v3, [B

    fill-array-data v2, :array_89

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v3, [B

    fill-array-data v2, :array_8a

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v3, [B

    fill-array-data v2, :array_8b

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v3, [B

    fill-array-data v2, :array_8c

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v3, [B

    fill-array-data v2, :array_8d

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v3, [B

    fill-array-data v2, :array_8e

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v3, [B

    fill-array-data v2, :array_8f

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v3, [B

    fill-array-data v2, :array_90

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v3, [B

    fill-array-data v2, :array_91

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v3, [B

    fill-array-data v2, :array_92

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v3, [B

    fill-array-data v2, :array_93

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v3, [B

    fill-array-data v2, :array_94

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v3, [B

    fill-array-data v2, :array_95

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v3, [B

    fill-array-data v2, :array_96

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v3, [B

    fill-array-data v2, :array_97

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v3, [B

    fill-array-data v2, :array_98

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v3, [B

    fill-array-data v2, :array_99

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v3, [B

    fill-array-data v2, :array_9a

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v3, [B

    fill-array-data v2, :array_9b

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v3, [B

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v3, [B

    fill-array-data v2, :array_9d

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v3, [B

    fill-array-data v2, :array_9e

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v3, [B

    fill-array-data v2, :array_9f

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v3, [B

    fill-array-data v2, :array_a0

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v3, [B

    fill-array-data v2, :array_a1

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v3, [B

    fill-array-data v2, :array_a2

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v3, [B

    fill-array-data v2, :array_a3

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v3, [B

    fill-array-data v2, :array_a4

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v3, [B

    fill-array-data v2, :array_a5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v3, [B

    fill-array-data v2, :array_a6

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v3, [B

    fill-array-data v2, :array_a7

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v3, [B

    fill-array-data v2, :array_a8

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v3, [B

    fill-array-data v2, :array_a9

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v3, [B

    fill-array-data v2, :array_aa

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v3, [B

    fill-array-data v2, :array_ab

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v3, [B

    fill-array-data v2, :array_ac

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v3, [B

    fill-array-data v2, :array_ad

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v3, [B

    fill-array-data v2, :array_ae

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v3, [B

    fill-array-data v2, :array_af

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v3, [B

    fill-array-data v2, :array_b0

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v3, [B

    fill-array-data v2, :array_b1

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v3, [B

    fill-array-data v2, :array_b2

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v3, [B

    fill-array-data v2, :array_b3

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v3, [B

    fill-array-data v2, :array_b4

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v3, [B

    fill-array-data v2, :array_b5

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v3, [B

    fill-array-data v2, :array_b6

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v3, [B

    fill-array-data v2, :array_b7

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v3, [B

    fill-array-data v2, :array_b8

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v3, [B

    fill-array-data v2, :array_b9

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v3, [B

    fill-array-data v2, :array_ba

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v3, [B

    fill-array-data v2, :array_bb

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v3, [B

    fill-array-data v2, :array_bc

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v3, [B

    fill-array-data v2, :array_bd

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v3, [B

    fill-array-data v2, :array_be

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v3, [B

    fill-array-data v2, :array_bf

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v3, [B

    fill-array-data v2, :array_c0

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v3, [B

    fill-array-data v2, :array_c1

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v3, [B

    fill-array-data v2, :array_c2

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v3, [B

    fill-array-data v2, :array_c3

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v3, [B

    fill-array-data v2, :array_c4

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v3, [B

    fill-array-data v2, :array_c5

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v3, [B

    fill-array-data v2, :array_c6

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v3, [B

    fill-array-data v2, :array_c7

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v3, [B

    fill-array-data v2, :array_c8

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v3, [B

    fill-array-data v2, :array_c9

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v3, [B

    fill-array-data v2, :array_ca

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v3, [B

    fill-array-data v2, :array_cb

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v3, [B

    fill-array-data v2, :array_cc

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v3, [B

    fill-array-data v2, :array_cd

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v3, [B

    fill-array-data v2, :array_ce

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v3, [B

    fill-array-data v2, :array_cf

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v3, [B

    fill-array-data v2, :array_d0

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v3, [B

    fill-array-data v2, :array_d1

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v3, [B

    fill-array-data v2, :array_d2

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v3, [B

    fill-array-data v2, :array_d3

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v3, [B

    fill-array-data v2, :array_d4

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v3, [B

    fill-array-data v2, :array_d5

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v3, [B

    fill-array-data v2, :array_d6

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v3, [B

    fill-array-data v2, :array_d7

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v3, [B

    fill-array-data v2, :array_d8

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v3, [B

    fill-array-data v2, :array_d9

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v3, [B

    fill-array-data v2, :array_da

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v3, [B

    fill-array-data v2, :array_db

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v3, [B

    fill-array-data v2, :array_dc

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v3, [B

    fill-array-data v2, :array_dd

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v3, [B

    fill-array-data v2, :array_de

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v3, [B

    fill-array-data v2, :array_df

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v3, [B

    fill-array-data v2, :array_e0

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v3, [B

    fill-array-data v2, :array_e1

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v3, [B

    fill-array-data v2, :array_e2

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v3, [B

    fill-array-data v2, :array_e3

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v3, [B

    fill-array-data v2, :array_e4

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v3, [B

    fill-array-data v2, :array_e5

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v3, [B

    fill-array-data v2, :array_e6

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v3, [B

    fill-array-data v2, :array_e7

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v3, [B

    fill-array-data v2, :array_e8

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v3, [B

    fill-array-data v2, :array_e9

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v3, [B

    fill-array-data v2, :array_ea

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v3, [B

    fill-array-data v2, :array_eb

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v3, [B

    fill-array-data v2, :array_ec

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v3, [B

    fill-array-data v2, :array_ed

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v3, [B

    fill-array-data v2, :array_ee

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v3, [B

    fill-array-data v2, :array_ef

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v3, [B

    fill-array-data v2, :array_f0

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v3, [B

    fill-array-data v2, :array_f1

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v3, [B

    fill-array-data v2, :array_f2

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v3, [B

    fill-array-data v2, :array_f3

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v3, [B

    fill-array-data v2, :array_f4

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v3, [B

    fill-array-data v2, :array_f5

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v3, [B

    fill-array-data v2, :array_f6

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v3, [B

    fill-array-data v2, :array_f7

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v3, [B

    fill-array-data v2, :array_f8

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v3, [B

    fill-array-data v2, :array_f9

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v3, [B

    fill-array-data v2, :array_fa

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v3, [B

    fill-array-data v2, :array_fb

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v3, [B

    fill-array-data v2, :array_fc

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v3, [B

    fill-array-data v2, :array_fd

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v3, [B

    fill-array-data v2, :array_fe

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v3, [B

    fill-array-data v2, :array_ff

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v3, [B

    fill-array-data v2, :array_100

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v3, [B

    fill-array-data v2, :array_101

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v3, [B

    fill-array-data v2, :array_102

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v3, [B

    fill-array-data v2, :array_103

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v3, [B

    fill-array-data v2, :array_104

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v3, [B

    fill-array-data v2, :array_105

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v3, [B

    fill-array-data v2, :array_106

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v3, [B

    fill-array-data v2, :array_107

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v3, [B

    fill-array-data v2, :array_108

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v3, [B

    fill-array-data v2, :array_109

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v3, [B

    fill-array-data v2, :array_10a

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v3, [B

    fill-array-data v2, :array_10b

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v3, [B

    fill-array-data v2, :array_10c

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v3, [B

    fill-array-data v2, :array_10d

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v3, [B

    fill-array-data v2, :array_10e

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v3, [B

    fill-array-data v2, :array_10f

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v3, [B

    fill-array-data v2, :array_110

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v3, [B

    fill-array-data v2, :array_111

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v3, [B

    fill-array-data v2, :array_112

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v3, [B

    fill-array-data v2, :array_113

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v3, [B

    fill-array-data v2, :array_114

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v3, [B

    fill-array-data v2, :array_115

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v3, [B

    fill-array-data v2, :array_116

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v3, [B

    fill-array-data v2, :array_117

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v3, [B

    fill-array-data v2, :array_118

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v3, [B

    fill-array-data v2, :array_119

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v3, [B

    fill-array-data v2, :array_11a

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v3, [B

    fill-array-data v2, :array_11b

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v3, [B

    fill-array-data v2, :array_11c

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-array v2, v3, [B

    fill-array-data v2, :array_11d

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v3, [B

    fill-array-data v2, :array_11e

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v3, [B

    fill-array-data v2, :array_11f

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v3, [B

    fill-array-data v2, :array_120

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v3, [B

    fill-array-data v2, :array_121

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v3, [B

    fill-array-data v2, :array_122

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v3, [B

    fill-array-data v2, :array_123

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v3, [B

    fill-array-data v2, :array_124

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v3, [B

    fill-array-data v2, :array_125

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v3, [B

    fill-array-data v2, :array_126

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v3, [B

    fill-array-data v2, :array_127

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v3, [B

    fill-array-data v2, :array_128

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v3, [B

    fill-array-data v2, :array_129

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v3, [B

    fill-array-data v2, :array_12a

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v3, [B

    fill-array-data v2, :array_12b

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v3, [B

    fill-array-data v2, :array_12c

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v3, [B

    fill-array-data v2, :array_12d

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v3, [B

    fill-array-data v2, :array_12e

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v3, [B

    fill-array-data v2, :array_12f

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v3, [B

    fill-array-data v2, :array_130

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v3, [B

    fill-array-data v2, :array_131

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v3, [B

    fill-array-data v2, :array_132

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v3, [B

    fill-array-data v2, :array_133

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v3, [B

    fill-array-data v2, :array_134

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v3, [B

    fill-array-data v2, :array_135

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v3, [B

    fill-array-data v2, :array_136

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v3, [B

    fill-array-data v2, :array_137

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v3, [B

    fill-array-data v2, :array_138

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v3, [B

    fill-array-data v2, :array_139

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v3, [B

    fill-array-data v2, :array_13a

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v3, [B

    fill-array-data v2, :array_13b

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v3, [B

    fill-array-data v2, :array_13c

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v3, [B

    fill-array-data v2, :array_13d

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v3, [B

    fill-array-data v2, :array_13e

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v3, [B

    fill-array-data v2, :array_13f

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v3, [B

    fill-array-data v2, :array_140

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-array v2, v3, [B

    fill-array-data v2, :array_141

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-array v2, v3, [B

    fill-array-data v2, :array_142

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v3, [B

    fill-array-data v2, :array_143

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v3, [B

    fill-array-data v2, :array_144

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-array v2, v3, [B

    fill-array-data v2, :array_145

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v3, [B

    fill-array-data v2, :array_146

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-array v2, v3, [B

    fill-array-data v2, :array_147

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v3, [B

    fill-array-data v2, :array_148

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-array v2, v3, [B

    fill-array-data v2, :array_149

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-array v2, v3, [B

    fill-array-data v2, :array_14a

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-array v2, v3, [B

    fill-array-data v2, :array_14b

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v3, [B

    fill-array-data v2, :array_14c

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-array v2, v3, [B

    fill-array-data v2, :array_14d

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v3, [B

    fill-array-data v2, :array_14e

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-array v2, v3, [B

    fill-array-data v2, :array_14f

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v3, [B

    fill-array-data v2, :array_150

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-array v2, v3, [B

    fill-array-data v2, :array_151

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v3, [B

    fill-array-data v2, :array_152

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-array v2, v3, [B

    fill-array-data v2, :array_153

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v3, [B

    fill-array-data v2, :array_154

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-array v2, v3, [B

    fill-array-data v2, :array_155

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v3, [B

    fill-array-data v2, :array_156

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-array v2, v3, [B

    fill-array-data v2, :array_157

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v3, [B

    fill-array-data v2, :array_158

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-array v2, v3, [B

    fill-array-data v2, :array_159

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v3, [B

    fill-array-data v2, :array_15a

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-array v2, v3, [B

    fill-array-data v2, :array_15b

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-array v2, v3, [B

    fill-array-data v2, :array_15c

    aput-object v2, v0, v1

    const/16 v1, 0x141

    new-array v2, v3, [B

    fill-array-data v2, :array_15d

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v3, [B

    fill-array-data v2, :array_15e

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-array v2, v3, [B

    fill-array-data v2, :array_15f

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v3, [B

    fill-array-data v2, :array_160

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-array v2, v3, [B

    fill-array-data v2, :array_161

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v3, [B

    fill-array-data v2, :array_162

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-array v2, v3, [B

    fill-array-data v2, :array_163

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v3, [B

    fill-array-data v2, :array_164

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-array v2, v3, [B

    fill-array-data v2, :array_165

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v3, [B

    fill-array-data v2, :array_166

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-array v2, v3, [B

    fill-array-data v2, :array_167

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v3, [B

    fill-array-data v2, :array_168

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-array v2, v3, [B

    fill-array-data v2, :array_169

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-array v2, v3, [B

    fill-array-data v2, :array_16a

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-array v2, v3, [B

    fill-array-data v2, :array_16b

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-array v2, v3, [B

    fill-array-data v2, :array_16c

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-array v2, v3, [B

    fill-array-data v2, :array_16d

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-array v2, v3, [B

    fill-array-data v2, :array_16e

    aput-object v2, v0, v1

    const/16 v1, 0x153

    new-array v2, v3, [B

    fill-array-data v2, :array_16f

    aput-object v2, v0, v1

    const/16 v1, 0x154

    new-array v2, v3, [B

    fill-array-data v2, :array_170

    aput-object v2, v0, v1

    const/16 v1, 0x155

    new-array v2, v3, [B

    fill-array-data v2, :array_171

    aput-object v2, v0, v1

    const/16 v1, 0x156

    new-array v2, v3, [B

    fill-array-data v2, :array_172

    aput-object v2, v0, v1

    const/16 v1, 0x157

    new-array v2, v3, [B

    fill-array-data v2, :array_173

    aput-object v2, v0, v1

    const/16 v1, 0x158

    new-array v2, v3, [B

    fill-array-data v2, :array_174

    aput-object v2, v0, v1

    const/16 v1, 0x159

    new-array v2, v3, [B

    fill-array-data v2, :array_175

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    new-array v2, v3, [B

    fill-array-data v2, :array_176

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    new-array v2, v3, [B

    fill-array-data v2, :array_177

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    new-array v2, v3, [B

    fill-array-data v2, :array_178

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    new-array v2, v3, [B

    fill-array-data v2, :array_179

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    new-array v2, v3, [B

    fill-array-data v2, :array_17a

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    new-array v2, v3, [B

    fill-array-data v2, :array_17b

    aput-object v2, v0, v1

    const/16 v1, 0x160

    new-array v2, v3, [B

    fill-array-data v2, :array_17c

    aput-object v2, v0, v1

    const/16 v1, 0x161

    new-array v2, v3, [B

    fill-array-data v2, :array_17d

    aput-object v2, v0, v1

    const/16 v1, 0x162

    new-array v2, v3, [B

    fill-array-data v2, :array_17e

    aput-object v2, v0, v1

    const/16 v1, 0x163

    new-array v2, v3, [B

    fill-array-data v2, :array_17f

    aput-object v2, v0, v1

    const/16 v1, 0x164

    new-array v2, v3, [B

    fill-array-data v2, :array_180

    aput-object v2, v0, v1

    const/16 v1, 0x165

    new-array v2, v3, [B

    fill-array-data v2, :array_181

    aput-object v2, v0, v1

    const/16 v1, 0x166

    new-array v2, v3, [B

    fill-array-data v2, :array_182

    aput-object v2, v0, v1

    const/16 v1, 0x167

    new-array v2, v3, [B

    fill-array-data v2, :array_183

    aput-object v2, v0, v1

    const/16 v1, 0x168

    new-array v2, v3, [B

    fill-array-data v2, :array_184

    aput-object v2, v0, v1

    const/16 v1, 0x169

    new-array v2, v3, [B

    fill-array-data v2, :array_185

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    new-array v2, v3, [B

    fill-array-data v2, :array_186

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    new-array v2, v3, [B

    fill-array-data v2, :array_187

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    new-array v2, v3, [B

    fill-array-data v2, :array_188

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    new-array v2, v3, [B

    fill-array-data v2, :array_189

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    new-array v2, v3, [B

    fill-array-data v2, :array_18a

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    new-array v2, v3, [B

    fill-array-data v2, :array_18b

    aput-object v2, v0, v1

    const/16 v1, 0x170

    new-array v2, v3, [B

    fill-array-data v2, :array_18c

    aput-object v2, v0, v1

    const/16 v1, 0x171

    new-array v2, v3, [B

    fill-array-data v2, :array_18d

    aput-object v2, v0, v1

    const/16 v1, 0x172

    new-array v2, v3, [B

    fill-array-data v2, :array_18e

    aput-object v2, v0, v1

    const/16 v1, 0x173

    new-array v2, v3, [B

    fill-array-data v2, :array_18f

    aput-object v2, v0, v1

    const/16 v1, 0x174

    new-array v2, v3, [B

    fill-array-data v2, :array_190

    aput-object v2, v0, v1

    const/16 v1, 0x175

    new-array v2, v3, [B

    fill-array-data v2, :array_191

    aput-object v2, v0, v1

    const/16 v1, 0x176

    new-array v2, v3, [B

    fill-array-data v2, :array_192

    aput-object v2, v0, v1

    const/16 v1, 0x177

    new-array v2, v3, [B

    fill-array-data v2, :array_193

    aput-object v2, v0, v1

    const/16 v1, 0x178

    new-array v2, v3, [B

    fill-array-data v2, :array_194

    aput-object v2, v0, v1

    const/16 v1, 0x179

    new-array v2, v3, [B

    fill-array-data v2, :array_195

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    new-array v2, v3, [B

    fill-array-data v2, :array_196

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    new-array v2, v3, [B

    fill-array-data v2, :array_197

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    new-array v2, v3, [B

    fill-array-data v2, :array_198

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    new-array v2, v3, [B

    fill-array-data v2, :array_199

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    new-array v2, v3, [B

    fill-array-data v2, :array_19a

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    new-array v2, v3, [B

    fill-array-data v2, :array_19b

    aput-object v2, v0, v1

    const/16 v1, 0x180

    new-array v2, v3, [B

    fill-array-data v2, :array_19c

    aput-object v2, v0, v1

    const/16 v1, 0x181

    new-array v2, v3, [B

    fill-array-data v2, :array_19d

    aput-object v2, v0, v1

    const/16 v1, 0x182

    new-array v2, v3, [B

    fill-array-data v2, :array_19e

    aput-object v2, v0, v1

    const/16 v1, 0x183

    new-array v2, v3, [B

    fill-array-data v2, :array_19f

    aput-object v2, v0, v1

    const/16 v1, 0x184

    new-array v2, v3, [B

    fill-array-data v2, :array_1a0

    aput-object v2, v0, v1

    const/16 v1, 0x185

    new-array v2, v3, [B

    fill-array-data v2, :array_1a1

    aput-object v2, v0, v1

    const/16 v1, 0x186

    new-array v2, v3, [B

    fill-array-data v2, :array_1a2

    aput-object v2, v0, v1

    const/16 v1, 0x187

    new-array v2, v3, [B

    fill-array-data v2, :array_1a3

    aput-object v2, v0, v1

    const/16 v1, 0x188

    new-array v2, v3, [B

    fill-array-data v2, :array_1a4

    aput-object v2, v0, v1

    const/16 v1, 0x189

    new-array v2, v3, [B

    fill-array-data v2, :array_1a5

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    new-array v2, v3, [B

    fill-array-data v2, :array_1a6

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    new-array v2, v3, [B

    fill-array-data v2, :array_1a7

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    new-array v2, v3, [B

    fill-array-data v2, :array_1a8

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    new-array v2, v3, [B

    fill-array-data v2, :array_1a9

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    new-array v2, v3, [B

    fill-array-data v2, :array_1aa

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    new-array v2, v3, [B

    fill-array-data v2, :array_1ab

    aput-object v2, v0, v1

    const/16 v1, 0x190

    new-array v2, v3, [B

    fill-array-data v2, :array_1ac

    aput-object v2, v0, v1

    const/16 v1, 0x191

    new-array v2, v3, [B

    fill-array-data v2, :array_1ad

    aput-object v2, v0, v1

    const/16 v1, 0x192

    new-array v2, v3, [B

    fill-array-data v2, :array_1ae

    aput-object v2, v0, v1

    const/16 v1, 0x193

    new-array v2, v3, [B

    fill-array-data v2, :array_1af

    aput-object v2, v0, v1

    const/16 v1, 0x194

    new-array v2, v3, [B

    fill-array-data v2, :array_1b0

    aput-object v2, v0, v1

    const/16 v1, 0x195

    new-array v2, v3, [B

    fill-array-data v2, :array_1b1

    aput-object v2, v0, v1

    const/16 v1, 0x196

    new-array v2, v3, [B

    fill-array-data v2, :array_1b2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/HanziToPinyin;->PINYINS:[[B

    .line 306
    const/16 v0, 0x20

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    fill-array-data v2, :array_1b3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_1b4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_1b5

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_1b6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_1b7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_1b8

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_1b9

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_1ba

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_1bb

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_1bc

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_1bd

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    fill-array-data v2, :array_1be

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_1bf

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_1c0

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [I

    fill-array-data v2, :array_1c1

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [I

    fill-array-data v2, :array_1c2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [I

    fill-array-data v2, :array_1c3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [I

    fill-array-data v2, :array_1c4

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [I

    fill-array-data v2, :array_1c5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [I

    fill-array-data v2, :array_1c6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v4, [I

    fill-array-data v2, :array_1c7

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [I

    fill-array-data v2, :array_1c8

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v4, [I

    fill-array-data v2, :array_1c9

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v4, [I

    fill-array-data v2, :array_1ca

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v4, [I

    fill-array-data v2, :array_1cb

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v4, [I

    fill-array-data v2, :array_1cc

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v4, [I

    fill-array-data v2, :array_1cd

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v4, [I

    fill-array-data v2, :array_1ce

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v4, [I

    fill-array-data v2, :array_1cf

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v4, [I

    fill-array-data v2, :array_1d0

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v4, [I

    fill-array-data v2, :array_1d1

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v4, [I

    fill-array-data v2, :array_1d2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/HanziToPinyin;->russian_array:[[I

    .line 347
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    .line 1077
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    .line 1078
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x77

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x7a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x60

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    return-void

    .line 62
    nop

    :array_0
    .array-data 2
        0x6c88s
        -0x69e6s
        0x4fdes
        -0x6b53s
        0x65bcs
        0x7fdfs
        0x77bfs
        0x513fs
        0x5355s
        0x66fes
        -0x72c2s
        0x5446s
        0x4e01s
        0x5927s
        0x55efs
        0x76cas
        -0x77b4s
        0x5934s
        0x6234s
        0x5ba2s
        -0x6a81s
        0x5b9cs
        0x533as
        0x5475s
        0x4e50s
        0x67e5s
    .end array-data

    .line 80
    :array_1
    .array-data 1
        0x53t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4bt
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x59t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x44t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x59t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x51t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x45t
        0x52t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x53t
        0x68t
        0x61t
        0x6et
        0x0t
        0x0t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x5at
        0x65t
        0x6et
        0x67t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x4at
        0x69t
        0x61t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x44t
        0x61t
        0x69t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x44t
        0x69t
        0x6et
        0x67t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x44t
        0x61t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x45t
        0x6et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x59t
        0x69t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x48t
        0x61t
        0x6et
        0x67t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x54t
        0x6ft
        0x75t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x44t
        0x61t
        0x69t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x4bt
        0x65t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x43t
        0x68t
        0x61t
        0x6et
        0x67t
        0x0t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x59t
        0x69t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x4ft
        0x75t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x48t
        0x65t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x59t
        0x75t
        0x65t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x5at
        0x68t
        0x61t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 110
    nop

    :array_1b
    .array-data 2
        0x5475s
        0x54ces
        0x5b89s
        -0x7f52s
        0x51f9s
        0x516bs
        0x6300s
        0x6273s
        -0x6f5as
        0x5305s
        0x5351s
        0x5954s
        0x4f3bs
        0x5c44s
        -0x7047s
        0x6807s
        0x618bs
        -0x6f60s
        0x69dfs
        0x7676s
        0x5cecs
        0x5693s
        0x5a47s
        -0x671fs
        0x4ed3s
        0x64cds
        0x518as
        0x5d7es
        0x564cs
        0x53c9s
        -0x6b69s
        -0x7041s
        0x4f25s
        0x6284s
        -0x709as
        0x62bbs
        0x67fds
        0x5403s
        0x5145s
        0x62bds
        0x51fas
        0x6b3bs
        0x63e3s
        0x5ddds
        0x75aes
        0x5439s
        0x6776s
        -0x6fccs
        0x75b5s
        0x5306s
        0x51d1s
        0x7c97s
        0x6c46s
        0x5d14s
        -0x6f58s
        0x6413s
        0x5491s
        0x5927s
        0x75b8s
        0x5f53s
        0x5200s
        0x6dc2s
        0x5f97s
        0x6265s
        0x706fs
        0x6c10s
        0x55f2s
        0x7538s
        0x5201s
        0x7239s
        0x4ec3s
        0x4e1fs
        0x4e1cs
        0x5517s
        0x561fs
        0x5073s
        0x5806s
        -0x6beds
        0x591as
        0x5a40s
        -0x740as
        0x5940s
        -0x685bs
        -0x7ff4s
        0x53d1s
        0x5e06s
        0x65b9s
        -0x6722s
        0x5206s
        0x4e30s
        -0x767bs
        0x4ecfs
        0x7d11s
        0x4f15s
        0x65ees
        -0x741bs
        0x7518s
        0x5188s
        0x768bs
        0x6208s
        0x7d66s
        0x6839s
        0x5e9as
        0x5de5s
        0x52fes
        0x4f30s
        0x74dcs
        0x7f6bs
        0x5173s
        0x5149s
        0x5f52s
        -0x7792s
        0x5459s
        0x54c8s
        0x54b3s
        -0x6788s
        -0x7d40s
        -0x7b41s
        -0x743ds
        -0x612es
        0x62ebs
        0x4ea8s
        0x5677s
        0x543ds
        -0x60bfs
        0x5322s
        -0x7d4fs
        0x6000s
        0x72bfs
        0x5ddfs
        0x7070s
        0x660fs
        0x5419s
        0x4e0cs
        0x52a0s
        0x620bs
        0x6c5fs
        -0x7d83s
        -0x69cas
        0x5dfes
        0x52a4s
        0x5182s
        0x52fcs
        0x530as
        0x5a1fs
        0x5658s
        0x519bs
        0x5494s
        0x5f00s
        0x520as
        -0x6a0as
        0x5c3bs
        0x533cs
        0x524bs
        -0x7f51s
        -0x69d4s
        0x7a7as
        0x62a0s
        0x5233s
        0x5938s
        -0x7b51s
        0x5bbds
        0x5321s
        0x4e8fs
        0x5764s
        0x6269s
        0x5783s
        0x6765s
        0x5170s
        0x5577s
        0x635es
        0x4ec2s
        0x52d2s
        0x5844s
        0x5215s
        0x5006s
        0x5941s
        -0x7d91s
        0x64a9s
        0x5217s
        0x62ces
        0x3007s
        0x6e9cs
        -0x6067s
        0x779cs
        0x565cs
        0x5a08s
        0x7567s
        0x62a1s
        0x7f57s
        0x5463s
        0x5988s
        -0x68c2s
        0x5adas
        -0x6f67s
        0x732bs
        -0x6144s
        0x6c92s
        -0x6a18s
        0x753fs
        0x54aas
        0x7720s
        0x55b5s
        0x54a9s
        0x6c11s
        0x540ds
        -0x73d4s
        0x6478s
        0x54des
        0x6beas
        0x62cfs
        0x5b7bs
        0x56e1s
        0x56cas
        0x5b6cs
        -0x7449s
        -0x667fs
        0x6041s
        -0x7f03s
        0x59aes
        0x62c8s
        0x5b22s
        -0x61e1s
        0x634fs
        0x60a8s
        0x5b81s
        0x599es
        0x519cs
        0x7fbas
        0x5974s
        0x597bs
        -0x79b0s
        0x632as
        0x5594s
        -0x744cs
        -0x724cs
        0x62cds
        0x7705s
        0x4e53s
        0x629bs
        0x5478s
        0x55b7s
        0x5309s
        0x4e15s
        0x504fs
        0x527ds
        0x6c15s
        0x59d8s
        0x4e52s
        -0x6b75s
        0x5256s
        0x4ec6s
        0x4e03s
        0x6390s
        0x5343s
        0x545bs
        0x6084s
        0x767fs
        0x4fb5s
        -0x68afs
        -0x6f65s
        0x4e18s
        0x66f2s
        0x5f2es
        0x7f3as
        0x590bs
        0x5465s
        0x7a63s
        0x5a06s
        0x60f9s
        0x4ebas
        0x6254s
        0x65e5s
        -0x7cc8s
        0x53b9s
        0x5982s
        0x5827s
        0x6875s
        -0x6a10s
        -0x7d1bs
        0x4ee8s
        0x6be2s
        0x4e09s
        0x6852s
        0x63bbs
        -0x7d8es
        0x68ees
        0x50e7s
        0x6740s
        0x7b5bs
        0x5c71s
        0x4f24s
        0x5f30s
        0x5962s
        0x7533s
        0x5347s
        0x5c38s
        0x53ces
        0x4e66s
        0x5237s
        0x6454s
        -0x6a17s
        0x53ccs
        -0x73ffs
        0x542es
        0x5981s
        0x53b6s
        0x5feas
        0x635cs
        -0x7d31s
        0x72fbs
        0x590as
        0x5b59s
        0x5506s
        0x4ed6s
        -0x7d2cs
        0x574ds
        -0x6b0cs
        0x5932s
        0x5fd1s
        0x71a5s
        0x5254s
        0x5929s
        0x4f7bs
        0x5e16s
        0x5385s
        0x56f2s
        0x5077s
        -0x6d40s
        0x6e4ds
        0x63a8s
        0x541es
        0x6258s
        0x6316s
        0x6b6as
        0x5f2fs
        0x5c2as
        0x5371s
        0x586ds
        0x7fc1s
        0x631ds
        0x5140s
        0x5915s
        -0x7982s
        0x4edas
        0x4e61s
        0x7071s
        0x4e9bs
        0x5fc3s
        0x661fs
        0x51f6s
        0x4f11s
        0x65f4s
        -0x7097s
        0x75b6s
        0x52cbs
        0x4e2bs
        0x6079s
        0x592es
        0x5e7as
        -0x7fcas
        0x4e00s
        0x6b2ds
        0x5e94s
        0x54dfs
        0x4f63s
        0x4f18s
        0x625cs
        -0x61des
        0x66f0s
        0x6655s
        0x531ds
        0x707ds
        0x7cccs
        0x7242s
        0x50aes
        0x5219s
        -0x72c4s
        0x600es
        0x5897s
        0x5412s
        0x635as
        0x6cbes
        0x5f20s
        -0x6b76s
        -0x78f9s
        -0x72e2s
        0x4e89s
        0x4e4bs
        0x4e2ds
        0x5ddes
        0x6731s
        0x6293s
        -0x7217s
        0x4e13s
        0x5986s
        -0x6947s
        0x5b92s
        0x5353s
        0x5b5cs
        0x5b97s
        -0x6f47s
        0x79dfs
        -0x6b45s
        0x539cs
        0x5c0as
        0x6628s
    .end array-data

    .line 167
    nop

    :array_1c
    .array-data 1
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x42t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x42t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_23
    .array-data 1
        0x42t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x42t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_25
    .array-data 1
        0x42t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_26
    .array-data 1
        0x42t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x42t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x42t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29
    .array-data 1
        0x42t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x42t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_2b
    .array-data 1
        0x42t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_2c
    .array-data 1
        0x42t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x42t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2e
    .array-data 1
        0x42t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2f
    .array-data 1
        0x42t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_30
    .array-data 1
        0x42t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_31
    .array-data 1
        0x43t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_32
    .array-data 1
        0x43t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_33
    .array-data 1
        0x43t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_34
    .array-data 1
        0x43t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_35
    .array-data 1
        0x43t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_36
    .array-data 1
        0x43t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_37
    .array-data 1
        0x43t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_38
    .array-data 1
        0x43t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_39
    .array-data 1
        0x43t
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a
    .array-data 1
        0x43t
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3b
    .array-data 1
        0x43t
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_3c
    .array-data 1
        0x43t
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_3d
    .array-data 1
        0x43t
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_3e
    .array-data 1
        0x43t
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3f
    .array-data 1
        0x43t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_40
    .array-data 1
        0x43t
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_41
    .array-data 1
        0x43t
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_42
    .array-data 1
        0x43t
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_43
    .array-data 1
        0x43t
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_44
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_45
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
    .end array-data

    nop

    :array_46
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_47
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_48
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_49
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4a
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_4b
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x43t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4d
    .array-data 1
        0x43t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4e
    .array-data 1
        0x43t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4f
    .array-data 1
        0x43t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_50
    .array-data 1
        0x43t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_51
    .array-data 1
        0x43t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_52
    .array-data 1
        0x43t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_53
    .array-data 1
        0x43t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_54
    .array-data 1
        0x44t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_55
    .array-data 1
        0x44t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_56
    .array-data 1
        0x44t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_57
    .array-data 1
        0x44t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_58
    .array-data 1
        0x44t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_59
    .array-data 1
        0x44t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5a
    .array-data 1
        0x44t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5b
    .array-data 1
        0x44t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5c
    .array-data 1
        0x44t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5d
    .array-data 1
        0x44t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5e
    .array-data 1
        0x44t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5f
    .array-data 1
        0x44t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_60
    .array-data 1
        0x44t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_61
    .array-data 1
        0x44t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_62
    .array-data 1
        0x44t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_63
    .array-data 1
        0x44t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_64
    .array-data 1
        0x44t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_65
    .array-data 1
        0x44t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_66
    .array-data 1
        0x44t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_67
    .array-data 1
        0x44t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_68
    .array-data 1
        0x44t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_69
    .array-data 1
        0x44t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6a
    .array-data 1
        0x44t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6b
    .array-data 1
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6c
    .array-data 1
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6d
    .array-data 1
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6e
    .array-data 1
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6f
    .array-data 1
        0x45t
        0x52t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_70
    .array-data 1
        0x46t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_71
    .array-data 1
        0x46t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_72
    .array-data 1
        0x46t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_73
    .array-data 1
        0x46t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_74
    .array-data 1
        0x46t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_75
    .array-data 1
        0x46t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_76
    .array-data 1
        0x46t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_77
    .array-data 1
        0x46t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_78
    .array-data 1
        0x46t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_79
    .array-data 1
        0x46t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7a
    .array-data 1
        0x47t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7b
    .array-data 1
        0x47t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7c
    .array-data 1
        0x47t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7d
    .array-data 1
        0x47t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7e
    .array-data 1
        0x47t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7f
    .array-data 1
        0x47t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_80
    .array-data 1
        0x47t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_81
    .array-data 1
        0x47t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_82
    .array-data 1
        0x47t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_83
    .array-data 1
        0x47t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_84
    .array-data 1
        0x47t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_85
    .array-data 1
        0x47t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_86
    .array-data 1
        0x47t
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_87
    .array-data 1
        0x47t
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_88
    .array-data 1
        0x47t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_89
    .array-data 1
        0x47t
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_8a
    .array-data 1
        0x47t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8b
    .array-data 1
        0x47t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8c
    .array-data 1
        0x47t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8d
    .array-data 1
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8e
    .array-data 1
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8f
    .array-data 1
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_90
    .array-data 1
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_91
    .array-data 1
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_92
    .array-data 1
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_93
    .array-data 1
        0x48t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_94
    .array-data 1
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_95
    .array-data 1
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_96
    .array-data 1
        0x48t
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_97
    .array-data 1
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_98
    .array-data 1
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_99
    .array-data 1
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9a
    .array-data 1
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9b
    .array-data 1
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9c
    .array-data 1
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_9d
    .array-data 1
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_9e
    .array-data 1
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_9f
    .array-data 1
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a0
    .array-data 1
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a1
    .array-data 1
        0x4at
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a2
    .array-data 1
        0x4at
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a3
    .array-data 1
        0x4at
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_a4
    .array-data 1
        0x4at
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_a5
    .array-data 1
        0x4at
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_a6
    .array-data 1
        0x4at
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a7
    .array-data 1
        0x4at
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a8
    .array-data 1
        0x4at
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_a9
    .array-data 1
        0x4at
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_aa
    .array-data 1
        0x4at
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ab
    .array-data 1
        0x4at
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ac
    .array-data 1
        0x4at
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_ad
    .array-data 1
        0x4at
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ae
    .array-data 1
        0x4at
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_af
    .array-data 1
        0x4bt
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b0
    .array-data 1
        0x4bt
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b1
    .array-data 1
        0x4bt
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b2
    .array-data 1
        0x4bt
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b3
    .array-data 1
        0x4bt
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b4
    .array-data 1
        0x4bt
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b5
    .array-data 1
        0x4bt
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b6
    .array-data 1
        0x4bt
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b7
    .array-data 1
        0x4bt
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b8
    .array-data 1
        0x4bt
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_b9
    .array-data 1
        0x4bt
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ba
    .array-data 1
        0x4bt
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_bb
    .array-data 1
        0x4bt
        0x55t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_bc
    .array-data 1
        0x4bt
        0x55t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_bd
    .array-data 1
        0x4bt
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_be
    .array-data 1
        0x4bt
        0x55t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_bf
    .array-data 1
        0x4bt
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c0
    .array-data 1
        0x4bt
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c1
    .array-data 1
        0x4bt
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c2
    .array-data 1
        0x4ct
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c3
    .array-data 1
        0x4ct
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c4
    .array-data 1
        0x4ct
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c5
    .array-data 1
        0x4ct
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c6
    .array-data 1
        0x4ct
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c7
    .array-data 1
        0x4ct
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c8
    .array-data 1
        0x4ct
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_c9
    .array-data 1
        0x4ct
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ca
    .array-data 1
        0x4ct
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_cb
    .array-data 1
        0x4ct
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_cc
    .array-data 1
        0x4ct
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_cd
    .array-data 1
        0x4ct
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_ce
    .array-data 1
        0x4ct
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_cf
    .array-data 1
        0x4ct
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d0
    .array-data 1
        0x4ct
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d1
    .array-data 1
        0x4ct
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d2
    .array-data 1
        0x4ct
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d3
    .array-data 1
        0x4ct
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d4
    .array-data 1
        0x4ct
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d5
    .array-data 1
        0x4ct
        0x56t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d6
    .array-data 1
        0x4ct
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_d7
    .array-data 1
        0x4ct
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d8
    .array-data 1
        0x4ct
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_d9
    .array-data 1
        0x4ct
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_da
    .array-data 1
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_db
    .array-data 1
        0x4dt
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_dc
    .array-data 1
        0x4dt
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_dd
    .array-data 1
        0x4dt
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_de
    .array-data 1
        0x4dt
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_df
    .array-data 1
        0x4dt
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e0
    .array-data 1
        0x4dt
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e1
    .array-data 1
        0x4dt
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e2
    .array-data 1
        0x4dt
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e3
    .array-data 1
        0x4dt
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e4
    .array-data 1
        0x4dt
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e5
    .array-data 1
        0x4dt
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_e6
    .array-data 1
        0x4dt
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_e7
    .array-data 1
        0x4dt
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e8
    .array-data 1
        0x4dt
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_e9
    .array-data 1
        0x4dt
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ea
    .array-data 1
        0x4dt
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_eb
    .array-data 1
        0x4dt
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ec
    .array-data 1
        0x4dt
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ed
    .array-data 1
        0x4dt
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ee
    .array-data 1
        0x4et
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ef
    .array-data 1
        0x4et
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f0
    .array-data 1
        0x4et
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f1
    .array-data 1
        0x4et
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f2
    .array-data 1
        0x4et
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f3
    .array-data 1
        0x4et
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f4
    .array-data 1
        0x4et
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f5
    .array-data 1
        0x4et
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f6
    .array-data 1
        0x4et
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f7
    .array-data 1
        0x4et
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_f8
    .array-data 1
        0x4et
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_f9
    .array-data 1
        0x4et
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_fa
    .array-data 1
        0x4et
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_fb
    .array-data 1
        0x4et
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_fc
    .array-data 1
        0x4et
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_fd
    .array-data 1
        0x4et
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_fe
    .array-data 1
        0x4et
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_ff
    .array-data 1
        0x4et
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_100
    .array-data 1
        0x4et
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_101
    .array-data 1
        0x4et
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_102
    .array-data 1
        0x4et
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_103
    .array-data 1
        0x4et
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_104
    .array-data 1
        0x4et
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_105
    .array-data 1
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_106
    .array-data 1
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_107
    .array-data 1
        0x50t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_108
    .array-data 1
        0x50t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_109
    .array-data 1
        0x50t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10a
    .array-data 1
        0x50t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10b
    .array-data 1
        0x50t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10c
    .array-data 1
        0x50t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10d
    .array-data 1
        0x50t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10e
    .array-data 1
        0x50t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_10f
    .array-data 1
        0x50t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_110
    .array-data 1
        0x50t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_111
    .array-data 1
        0x50t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_112
    .array-data 1
        0x50t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_113
    .array-data 1
        0x50t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_114
    .array-data 1
        0x50t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_115
    .array-data 1
        0x50t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_116
    .array-data 1
        0x50t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_117
    .array-data 1
        0x50t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_118
    .array-data 1
        0x51t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_119
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11a
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_11b
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_11c
    .array-data 1
        0x51t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_11d
    .array-data 1
        0x51t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11e
    .array-data 1
        0x51t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11f
    .array-data 1
        0x51t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_120
    .array-data 1
        0x51t
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_121
    .array-data 1
        0x51t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_122
    .array-data 1
        0x51t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_123
    .array-data 1
        0x51t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_124
    .array-data 1
        0x51t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_125
    .array-data 1
        0x51t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_126
    .array-data 1
        0x52t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_127
    .array-data 1
        0x52t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_128
    .array-data 1
        0x52t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_129
    .array-data 1
        0x52t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12a
    .array-data 1
        0x52t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12b
    .array-data 1
        0x52t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12c
    .array-data 1
        0x52t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12d
    .array-data 1
        0x52t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12e
    .array-data 1
        0x52t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_12f
    .array-data 1
        0x52t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_130
    .array-data 1
        0x52t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_131
    .array-data 1
        0x52t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_132
    .array-data 1
        0x52t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_133
    .array-data 1
        0x52t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_134
    .array-data 1
        0x53t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_135
    .array-data 1
        0x53t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_136
    .array-data 1
        0x53t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_137
    .array-data 1
        0x53t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_138
    .array-data 1
        0x53t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_139
    .array-data 1
        0x53t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13a
    .array-data 1
        0x53t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13b
    .array-data 1
        0x53t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13c
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13d
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_13e
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_13f
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_140
    .array-data 1
        0x53t
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_141
    .array-data 1
        0x53t
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_142
    .array-data 1
        0x53t
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_143
    .array-data 1
        0x53t
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_144
    .array-data 1
        0x53t
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_145
    .array-data 1
        0x53t
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_146
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_147
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
    .end array-data

    nop

    :array_148
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_149
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_14a
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_14b
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14c
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_14d
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_14e
    .array-data 1
        0x53t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_14f
    .array-data 1
        0x53t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_150
    .array-data 1
        0x53t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_151
    .array-data 1
        0x53t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_152
    .array-data 1
        0x53t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_153
    .array-data 1
        0x53t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_154
    .array-data 1
        0x53t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_155
    .array-data 1
        0x53t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_156
    .array-data 1
        0x54t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_157
    .array-data 1
        0x54t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_158
    .array-data 1
        0x54t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_159
    .array-data 1
        0x54t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_15a
    .array-data 1
        0x54t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_15b
    .array-data 1
        0x54t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_15c
    .array-data 1
        0x54t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_15d
    .array-data 1
        0x54t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_15e
    .array-data 1
        0x54t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_15f
    .array-data 1
        0x54t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_160
    .array-data 1
        0x54t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_161
    .array-data 1
        0x54t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_162
    .array-data 1
        0x54t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_163
    .array-data 1
        0x54t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_164
    .array-data 1
        0x54t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_165
    .array-data 1
        0x54t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_166
    .array-data 1
        0x54t
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_167
    .array-data 1
        0x54t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_168
    .array-data 1
        0x54t
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_169
    .array-data 1
        0x57t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16a
    .array-data 1
        0x57t
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16b
    .array-data 1
        0x57t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16c
    .array-data 1
        0x57t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16d
    .array-data 1
        0x57t
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16e
    .array-data 1
        0x57t
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16f
    .array-data 1
        0x57t
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_170
    .array-data 1
        0x57t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_171
    .array-data 1
        0x57t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_172
    .array-data 1
        0x58t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_173
    .array-data 1
        0x58t
        0x49t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_174
    .array-data 1
        0x58t
        0x49t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_175
    .array-data 1
        0x58t
        0x49t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_176
    .array-data 1
        0x58t
        0x49t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_177
    .array-data 1
        0x58t
        0x49t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_178
    .array-data 1
        0x58t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_179
    .array-data 1
        0x58t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17a
    .array-data 1
        0x58t
        0x49t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_17b
    .array-data 1
        0x58t
        0x49t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17c
    .array-data 1
        0x58t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17d
    .array-data 1
        0x58t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_17e
    .array-data 1
        0x58t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17f
    .array-data 1
        0x58t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_180
    .array-data 1
        0x59t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_181
    .array-data 1
        0x59t
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_182
    .array-data 1
        0x59t
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_183
    .array-data 1
        0x59t
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_184
    .array-data 1
        0x59t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_185
    .array-data 1
        0x59t
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_186
    .array-data 1
        0x59t
        0x49t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_187
    .array-data 1
        0x59t
        0x49t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_188
    .array-data 1
        0x59t
        0x4ft
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_189
    .array-data 1
        0x59t
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_18a
    .array-data 1
        0x59t
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_18b
    .array-data 1
        0x59t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_18c
    .array-data 1
        0x59t
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_18d
    .array-data 1
        0x59t
        0x55t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_18e
    .array-data 1
        0x59t
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_18f
    .array-data 1
        0x5at
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_190
    .array-data 1
        0x5at
        0x41t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_191
    .array-data 1
        0x5at
        0x41t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_192
    .array-data 1
        0x5at
        0x41t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_193
    .array-data 1
        0x5at
        0x41t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_194
    .array-data 1
        0x5at
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_195
    .array-data 1
        0x5at
        0x45t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_196
    .array-data 1
        0x5at
        0x45t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_197
    .array-data 1
        0x5at
        0x45t
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_198
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_199
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_19a
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_19b
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_19c
    .array-data 1
        0x5at
        0x48t
        0x41t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_19d
    .array-data 1
        0x5at
        0x48t
        0x45t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_19e
    .array-data 1
        0x5at
        0x48t
        0x45t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_19f
    .array-data 1
        0x5at
        0x48t
        0x45t
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_1a0
    .array-data 1
        0x5at
        0x48t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1a1
    .array-data 1
        0x5at
        0x48t
        0x4ft
        0x4et
        0x47t
        0x0t
    .end array-data

    nop

    :array_1a2
    .array-data 1
        0x5at
        0x48t
        0x4ft
        0x55t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1a3
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1a4
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x41t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1a5
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x41t
        0x49t
        0x0t
    .end array-data

    nop

    :array_1a6
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x41t
        0x4et
        0x0t
    .end array-data

    nop

    :array_1a7
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    nop

    :array_1a8
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x49t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1a9
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_1aa
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x4ft
        0x0t
        0x0t
    .end array-data

    nop

    :array_1ab
    .array-data 1
        0x5at
        0x49t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1ac
    .array-data 1
        0x5at
        0x4ft
        0x4et
        0x47t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1ad
    .array-data 1
        0x5at
        0x4ft
        0x55t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1ae
    .array-data 1
        0x5at
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1af
    .array-data 1
        0x5at
        0x55t
        0x41t
        0x4et
        0x0t
        0x0t
    .end array-data

    nop

    :array_1b0
    .array-data 1
        0x5at
        0x55t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1b1
    .array-data 1
        0x5at
        0x55t
        0x4et
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1b2
    .array-data 1
        0x5at
        0x55t
        0x4ft
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 306
    nop

    :array_1b3
    .array-data 4
        0x410
        0x430
    .end array-data

    :array_1b4
    .array-data 4
        0x411
        0x431
    .end array-data

    :array_1b5
    .array-data 4
        0x412
        0x432
    .end array-data

    :array_1b6
    .array-data 4
        0x413
        0x433
    .end array-data

    :array_1b7
    .array-data 4
        0x414
        0x434
    .end array-data

    :array_1b8
    .array-data 4
        0x415
        0x435
    .end array-data

    :array_1b9
    .array-data 4
        0x416
        0x436
    .end array-data

    :array_1ba
    .array-data 4
        0x417
        0x437
    .end array-data

    :array_1bb
    .array-data 4
        0x418
        0x438
    .end array-data

    :array_1bc
    .array-data 4
        0x419
        0x439
    .end array-data

    :array_1bd
    .array-data 4
        0x41a
        0x43a
    .end array-data

    :array_1be
    .array-data 4
        0x41b
        0x43b
    .end array-data

    :array_1bf
    .array-data 4
        0x41c
        0x43c
    .end array-data

    :array_1c0
    .array-data 4
        0x41d
        0x43d
    .end array-data

    :array_1c1
    .array-data 4
        0x41e
        0x43e
    .end array-data

    :array_1c2
    .array-data 4
        0x41f
        0x43f
    .end array-data

    :array_1c3
    .array-data 4
        0x420
        0x440
    .end array-data

    :array_1c4
    .array-data 4
        0x421
        0x441
    .end array-data

    :array_1c5
    .array-data 4
        0x422
        0x442
    .end array-data

    :array_1c6
    .array-data 4
        0x423
        0x443
    .end array-data

    :array_1c7
    .array-data 4
        0x424
        0x444
    .end array-data

    :array_1c8
    .array-data 4
        0x425
        0x445
    .end array-data

    :array_1c9
    .array-data 4
        0x426
        0x446
    .end array-data

    :array_1ca
    .array-data 4
        0x427
        0x447
    .end array-data

    :array_1cb
    .array-data 4
        0x428
        0x448
    .end array-data

    :array_1cc
    .array-data 4
        0x429
        0x449
    .end array-data

    :array_1cd
    .array-data 4
        0x42a
        0x44a
    .end array-data

    :array_1ce
    .array-data 4
        0x42b
        0x44b
    .end array-data

    :array_1cf
    .array-data 4
        0x42c
        0x44c
    .end array-data

    :array_1d0
    .array-data 4
        0x42d
        0x44d
    .end array-data

    :array_1d1
    .array-data 4
        0x42e
        0x44e
    .end array-data

    :array_1d2
    .array-data 4
        0x42f
        0x44f
    .end array-data
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "hasChinaCollator"    # Z

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-boolean p1, p0, Lcom/android/providers/contacts/HanziToPinyin;->mHasChinaCollator:Z

    .line 388
    return-void
.end method

.method private addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1029
    .local p2, "shortSubStrOffset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1032
    return-void
.end method

.method private addSubString(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 11
    .param p3, "subStrSet"    # Ljava/lang/StringBuilder;
    .param p4, "offsets"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/HanziToPinyin$Token;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1036
    .local p1, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/HanziToPinyin$Token;>;"
    .local p2, "shortSubStrOffset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1040
    .local v8, "size":I
    const/4 v1, 0x0

    .line 1041
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1042
    .local v2, "mShortSubStr":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1043
    .local v3, "mShortSubStrOffsets":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1044
    .local v5, "mShortSubStrSet":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1046
    .local v4, "mShortSubStrOffsetsSet":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1047
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/contacts/HanziToPinyin$Token;

    iget-object v7, v9, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 1049
    .local v7, "mTempStr":Ljava/lang/String;
    if-nez v0, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/contacts/HanziToPinyin$Token;

    iget v9, v9, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1050
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1053
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v1, v9

    .line 1054
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1055
    .local v6, "mTempOffset":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 1056
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1057
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1059
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const/4 v9, 0x0

    int-to-char v10, v1

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1061
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    const/4 v9, 0x0

    int-to-char v10, v1

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1063
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1064
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1046
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1067
    .end local v6    # "mTempOffset":Ljava/lang/String;
    .end local v7    # "mTempStr":Ljava/lang/String;
    :cond_4
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1070
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "tokenType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lcom/android/providers/contacts/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lcom/android/providers/contacts/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 713
    return-void
.end method

.method private auronaGetToken(CZ)Ljava/util/ArrayList;
    .locals 25
    .param p1, "character"    # C
    .param p2, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v21, "tokenResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/HanziToPinyin$Token;>;"
    new-instance v20, Lcom/android/providers/contacts/HanziToPinyin$Token;

    invoke-direct/range {v20 .. v20}, Lcom/android/providers/contacts/HanziToPinyin$Token;-><init>()V

    .line 529
    .local v20, "token":Lcom/android/providers/contacts/HanziToPinyin$Token;
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    .line 530
    .local v12, "letter":Ljava/lang/String;
    move-object/from16 v0, v20

    iput-object v12, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 531
    const/4 v13, -0x1

    .line 533
    .local v13, "offset":I
    const/16 v23, 0x100

    move/from16 v0, p1

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 534
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 535
    move-object/from16 v0, v20

    iput-object v12, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 536
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_0
    :goto_0
    return-object v21

    .line 538
    :cond_1
    const/16 v23, 0x3400

    move/from16 v0, p1

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 539
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 540
    move-object/from16 v0, v20

    iput-object v12, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 541
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    :cond_2
    sget-object v23, Lcom/android/providers/contacts/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string v24, "\u963f"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 545
    .local v5, "cmp":I
    if-gez v5, :cond_3

    .line 546
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 547
    move-object/from16 v0, v20

    iput-object v12, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 548
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    :cond_3
    if-nez v5, :cond_7

    .line 551
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 552
    const/4 v13, 0x0

    .line 567
    :cond_4
    :goto_1
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 569
    if-gez v13, :cond_5

    .line 570
    const/4 v4, 0x0

    .line 571
    .local v4, "begin":I
    sget-object v23, Lcom/android/providers/contacts/HanziToPinyin;->UNIHANS:[C

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v6, v23, -0x1

    .line 572
    .local v6, "end":I
    :goto_2
    if-gt v4, v6, :cond_5

    .line 573
    add-int v23, v4, v6

    div-int/lit8 v13, v23, 0x2

    .line 574
    sget-object v23, Lcom/android/providers/contacts/HanziToPinyin;->UNIHANS:[C

    aget-char v23, v23, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v22

    .line 575
    .local v22, "unihan":Ljava/lang/String;
    sget-object v23, Lcom/android/providers/contacts/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 576
    if-nez v5, :cond_9

    .line 585
    .end local v4    # "begin":I
    .end local v6    # "end":I
    .end local v22    # "unihan":Ljava/lang/String;
    :cond_5
    if-gez v5, :cond_6

    .line 586
    add-int/lit8 v13, v13, -0x1

    .line 588
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .local v14, "pinyin":Ljava/lang/StringBuilder;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-static {v12, v0}, Lnet/sourceforge/pinyin4j/ChineseToPinyinHelper;->translateMulti(Ljava/lang/String;Z)[[Ljava/lang/String;

    move-result-object v16

    .line 591
    .local v16, "pinyinArrays":[[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_c

    .line 592
    move-object/from16 v2, v16

    .local v2, "arr$":[[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v2    # "arr$":[[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .local v8, "i$":I
    :goto_3
    if-ge v8, v10, :cond_0

    aget-object v15, v2, v8

    .line 593
    .local v15, "pinyinArray":[Ljava/lang/String;
    move-object v3, v15

    .local v3, "arr$":[Ljava/lang/String;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v11, :cond_b

    aget-object v18, v3, v7

    .line 594
    .local v18, "quanpin":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .local v17, "py":Ljava/lang/StringBuilder;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    new-instance v19, Lcom/android/providers/contacts/HanziToPinyin$Token;

    invoke-direct/range {v19 .. v19}, Lcom/android/providers/contacts/HanziToPinyin$Token;-><init>()V

    .line 597
    .local v19, "t":Lcom/android/providers/contacts/HanziToPinyin$Token;
    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 598
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 599
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 600
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 554
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v11    # "len$":I
    .end local v14    # "pinyin":Ljava/lang/StringBuilder;
    .end local v15    # "pinyinArray":[Ljava/lang/String;
    .end local v16    # "pinyinArrays":[[Ljava/lang/String;
    .end local v17    # "py":Ljava/lang/StringBuilder;
    .end local v18    # "quanpin":Ljava/lang/String;
    .end local v19    # "t":Lcom/android/providers/contacts/HanziToPinyin$Token;
    :cond_7
    sget-object v23, Lcom/android/providers/contacts/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string v24, "\u84d9"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 555
    if-lez v5, :cond_8

    .line 556
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 557
    move-object/from16 v0, v20

    iput-object v12, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 558
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 560
    :cond_8
    if-nez v5, :cond_4

    .line 561
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 562
    sget-object v23, Lcom/android/providers/contacts/HanziToPinyin;->UNIHANS:[C

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v13, v23, -0x1

    goto/16 :goto_1

    .line 578
    .restart local v4    # "begin":I
    .restart local v6    # "end":I
    .restart local v22    # "unihan":Ljava/lang/String;
    :cond_9
    if-lez v5, :cond_a

    .line 579
    add-int/lit8 v4, v13, 0x1

    goto/16 :goto_2

    .line 581
    :cond_a
    add-int/lit8 v6, v13, -0x1

    goto/16 :goto_2

    .line 592
    .end local v4    # "begin":I
    .end local v6    # "end":I
    .end local v22    # "unihan":Ljava/lang/String;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v11    # "len$":I
    .restart local v14    # "pinyin":Ljava/lang/StringBuilder;
    .restart local v15    # "pinyinArray":[Ljava/lang/String;
    .restart local v16    # "pinyinArrays":[[Ljava/lang/String;
    :cond_b
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_3

    .line 604
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v11    # "len$":I
    .end local v15    # "pinyinArray":[Ljava/lang/String;
    :cond_c
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    sget-object v23, Lcom/android/providers/contacts/HanziToPinyin;->PINYINS:[[B

    aget-object v23, v23, v13

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_d

    sget-object v23, Lcom/android/providers/contacts/HanziToPinyin;->PINYINS:[[B

    aget-object v23, v23, v13

    aget-byte v23, v23, v9

    if-eqz v23, :cond_d

    .line 605
    sget-object v23, Lcom/android/providers/contacts/HanziToPinyin;->PINYINS:[[B

    aget-object v23, v23, v13

    aget-byte v23, v23, v9

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 610
    :cond_d
    if-eqz p2, :cond_e

    .line 611
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 612
    const/16 v23, 0x30

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 616
    :cond_e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 617
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static doSelfValidation()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 419
    sget-object v9, Lcom/android/providers/contacts/HanziToPinyin;->UNIHANS:[C

    aget-char v5, v9, v8

    .line 420
    .local v5, "lastChar":C
    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    .line 421
    .local v6, "lastString":Ljava/lang/String;
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->UNIHANS:[C

    .local v0, "arr$":[C
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_2

    aget-char v1, v0, v4

    .line 422
    .local v1, "c":C
    if-ne v5, v1, :cond_0

    .line 421
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 425
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "curString":Ljava/lang/String;
    sget-object v9, Lcom/android/providers/contacts/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    invoke-virtual {v9, v6, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 427
    .local v2, "cmp":I
    if-ltz v2, :cond_1

    .line 428
    const-string v9, "HanziToPinyin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Internal error in Unihan table. The last string \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" is greater than current string \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v1    # "c":C
    .end local v2    # "cmp":I
    .end local v3    # "curString":Ljava/lang/String;
    :goto_2
    return v8

    .line 432
    .restart local v1    # "c":C
    .restart local v2    # "cmp":I
    .restart local v3    # "curString":Ljava/lang/String;
    :cond_1
    move-object v6, v3

    goto :goto_1

    .line 434
    .end local v1    # "c":C
    .end local v2    # "cmp":I
    .end local v3    # "curString":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    goto :goto_2
.end method

.method public static getInstance()Lcom/android/providers/contacts/HanziToPinyin;
    .locals 5

    .prologue
    .line 391
    const-class v3, Lcom/android/providers/contacts/HanziToPinyin;

    monitor-enter v3

    .line 392
    :try_start_0
    sget-object v2, Lcom/android/providers/contacts/HanziToPinyin;->sInstance:Lcom/android/providers/contacts/HanziToPinyin;

    if-eqz v2, :cond_0

    .line 393
    sget-object v2, Lcom/android/providers/contacts/HanziToPinyin;->sInstance:Lcom/android/providers/contacts/HanziToPinyin;

    monitor-exit v3

    .line 409
    .local v0, "i":I
    .local v1, "locale":[Ljava/util/Locale;
    :goto_0
    return-object v2

    .line 396
    .end local v0    # "i":I
    .end local v1    # "locale":[Ljava/util/Locale;
    :cond_0
    invoke-static {}, Ljava/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 397
    .restart local v1    # "locale":[Ljava/util/Locale;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 398
    aget-object v2, v1, v0

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v1, v0

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    :cond_1
    new-instance v2, Lcom/android/providers/contacts/HanziToPinyin;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lcom/android/providers/contacts/HanziToPinyin;-><init>(Z)V

    sput-object v2, Lcom/android/providers/contacts/HanziToPinyin;->sInstance:Lcom/android/providers/contacts/HanziToPinyin;

    .line 404
    sget-object v2, Lcom/android/providers/contacts/HanziToPinyin;->sInstance:Lcom/android/providers/contacts/HanziToPinyin;

    monitor-exit v3

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 397
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    :cond_3
    :try_start_1
    const-string v2, "HanziToPinyin"

    const-string v4, "There is no Chinese collator, HanziToPinyin is disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v2, Lcom/android/providers/contacts/HanziToPinyin;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/providers/contacts/HanziToPinyin;-><init>(Z)V

    sput-object v2, Lcom/android/providers/contacts/HanziToPinyin;->sInstance:Lcom/android/providers/contacts/HanziToPinyin;

    .line 409
    sget-object v2, Lcom/android/providers/contacts/HanziToPinyin;->sInstance:Lcom/android/providers/contacts/HanziToPinyin;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getToken(CZ)Lcom/android/providers/contacts/HanziToPinyin$Token;
    .locals 12
    .param p1, "character"    # C
    .param p2, "flag"    # Z

    .prologue
    .line 440
    new-instance v8, Lcom/android/providers/contacts/HanziToPinyin$Token;

    invoke-direct {v8}, Lcom/android/providers/contacts/HanziToPinyin$Token;-><init>()V

    .line 441
    .local v8, "token":Lcom/android/providers/contacts/HanziToPinyin$Token;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, "letter":Ljava/lang/String;
    iput-object v5, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 443
    const/4 v6, -0x1

    .line 445
    .local v6, "offset":I
    const/16 v10, 0x100

    if-ge p1, v10, :cond_0

    .line 446
    const/4 v10, 0x1

    iput v10, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 447
    iput-object v5, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 522
    :goto_0
    return-object v8

    .line 449
    :cond_0
    const/16 v10, 0x3400

    if-ge p1, v10, :cond_1

    .line 450
    const/4 v10, 0x3

    iput v10, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 451
    iput-object v5, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 454
    :cond_1
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string v11, "\u963f"

    invoke-virtual {v10, v5, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 455
    .local v1, "cmp":I
    if-gez v1, :cond_2

    .line 456
    const/4 v10, 0x3

    iput v10, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 457
    iput-object v5, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 459
    :cond_2
    if-nez v1, :cond_4

    .line 460
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 461
    const/4 v6, 0x0

    .line 475
    :cond_3
    :goto_1
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 478
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->GN_UNIHANS:[C

    array-length v10, v10

    if-ge v3, v10, :cond_8

    .line 479
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    sget-object v11, Lcom/android/providers/contacts/HanziToPinyin;->GN_UNIHANS:[C

    aget-char v11, v11, v3

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_7

    .line 480
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v7, "pinyin":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->GN_PINYINS:[[B

    aget-object v10, v10, v3

    array-length v10, v10

    if-ge v4, v10, :cond_6

    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->GN_PINYINS:[[B

    aget-object v10, v10, v3

    aget-byte v10, v10, v4

    if-eqz v10, :cond_6

    .line 482
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->GN_PINYINS:[[B

    aget-object v10, v10, v3

    aget-byte v10, v10, v4

    int-to-char v10, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 463
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v7    # "pinyin":Ljava/lang/StringBuilder;
    :cond_4
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string v11, "\u84d9"

    invoke-virtual {v10, v5, v11}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 464
    if-lez v1, :cond_5

    .line 465
    const/4 v10, 0x3

    iput v10, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 466
    iput-object v5, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 468
    :cond_5
    if-nez v1, :cond_3

    .line 469
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 470
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->UNIHANS:[C

    array-length v10, v10

    add-int/lit8 v6, v10, -0x1

    goto :goto_1

    .line 484
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v7    # "pinyin":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 478
    .end local v4    # "j":I
    .end local v7    # "pinyin":Ljava/lang/StringBuilder;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 490
    :cond_8
    if-gez v6, :cond_9

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "begin":I
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->UNIHANS:[C

    array-length v10, v10

    add-int/lit8 v2, v10, -0x1

    .line 493
    .local v2, "end":I
    :goto_4
    if-gt v0, v2, :cond_9

    .line 494
    add-int v10, v0, v2

    div-int/lit8 v6, v10, 0x2

    .line 495
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->UNIHANS:[C

    aget-char v10, v10, v6

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    .line 496
    .local v9, "unihan":Ljava/lang/String;
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    invoke-virtual {v10, v5, v9}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 497
    if-nez v1, :cond_b

    .line 506
    .end local v0    # "begin":I
    .end local v2    # "end":I
    .end local v9    # "unihan":Ljava/lang/String;
    :cond_9
    if-gez v1, :cond_a

    .line 507
    add-int/lit8 v6, v6, -0x1

    .line 509
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .restart local v7    # "pinyin":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_5
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->PINYINS:[[B

    aget-object v10, v10, v6

    array-length v10, v10

    if-ge v4, v10, :cond_d

    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->PINYINS:[[B

    aget-object v10, v10, v6

    aget-byte v10, v10, v4

    if-eqz v10, :cond_d

    .line 511
    sget-object v10, Lcom/android/providers/contacts/HanziToPinyin;->PINYINS:[[B

    aget-object v10, v10, v6

    aget-byte v10, v10, v4

    int-to-char v10, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 499
    .end local v4    # "j":I
    .end local v7    # "pinyin":Ljava/lang/StringBuilder;
    .restart local v0    # "begin":I
    .restart local v2    # "end":I
    .restart local v9    # "unihan":Ljava/lang/String;
    :cond_b
    if-lez v1, :cond_c

    .line 500
    add-int/lit8 v0, v6, 0x1

    goto :goto_4

    .line 502
    :cond_c
    add-int/lit8 v2, v6, -0x1

    goto :goto_4

    .line 515
    .end local v0    # "begin":I
    .end local v2    # "end":I
    .end local v9    # "unihan":Ljava/lang/String;
    .restart local v4    # "j":I
    .restart local v7    # "pinyin":Ljava/lang/StringBuilder;
    :cond_d
    if-eqz p2, :cond_e

    .line 516
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 517
    const/16 v10, 0x30

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    :cond_e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public HanziToPinyinString(Ljava/lang/String;)Ljava/lang/String;
    .locals 31
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1229
    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1231
    :cond_0
    const/16 v28, 0x0

    .line 1380
    :goto_0
    return-object v28

    .line 1233
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1234
    .local v16, "returnStr":Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1235
    .local v19, "subStrSet":Ljava/lang/StringBuilder;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v26, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/HanziToPinyin$Token;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v17, "shortSubStrOffset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 1238
    .local v11, "inputLength":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1239
    .local v20, "subString":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1240
    .local v18, "subStrOffset":Ljava/lang/StringBuilder;
    const/16 v25, 0x1

    .line 1241
    .local v25, "tokenType":I
    const/4 v6, 0x0

    .line 1242
    .local v6, "caseTypePre":I
    const/4 v5, 0x1

    .line 1243
    .local v5, "caseTypeCurr":I
    const/4 v14, 0x0

    .line 1252
    .local v14, "mPos":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v11, :cond_3

    .line 1253
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1254
    .local v7, "character":C
    const/16 v28, 0x2d

    move/from16 v0, v28

    if-eq v7, v0, :cond_2

    const/16 v28, 0x2c

    move/from16 v0, v28

    if-ne v7, v0, :cond_6

    .line 1255
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 1341
    :goto_2
    const/16 v28, 0x7f

    move/from16 v0, v28

    if-le v14, v0, :cond_12

    .line 1344
    .end local v7    # "character":C
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_4

    .line 1345
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 1350
    :cond_4
    const/16 v27, 0x0

    .line 1351
    .local v27, "transChars":[C
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/providers/contacts/HanziToPinyin$Token;

    .line 1352
    .local v15, "mtoken":Lcom/android/providers/contacts/HanziToPinyin$Token;
    if-eqz v15, :cond_5

    iget-object v0, v15, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1353
    iget v0, v15, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 1354
    iget-object v0, v15, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1355
    .local v13, "lowerCaseString":Ljava/lang/String;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1356
    .local v8, "firstChar":C
    const/16 v28, 0x61

    move/from16 v0, v28

    if-lt v8, v0, :cond_13

    const/16 v28, 0x7a

    move/from16 v0, v28

    if-gt v8, v0, :cond_13

    .line 1357
    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v27

    .line 1358
    const/16 v28, 0x0

    aget-char v29, v27, v28

    add-int/lit8 v29, v29, -0x20

    move/from16 v0, v29

    int-to-char v0, v0

    move/from16 v29, v0

    aput-char v29, v27, v28

    .line 1359
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1256
    .end local v8    # "firstChar":C
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "lowerCaseString":Ljava/lang/String;
    .end local v15    # "mtoken":Lcom/android/providers/contacts/HanziToPinyin$Token;
    .end local v27    # "transChars":[C
    .restart local v7    # "character":C
    :cond_6
    const/16 v28, 0x20

    move/from16 v0, v28

    if-ne v7, v0, :cond_8

    .line 1257
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_7

    .line 1258
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 1259
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 1261
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 1262
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1263
    :cond_8
    const/16 v28, 0x100

    move/from16 v0, v28

    if-ge v7, v0, :cond_d

    .line 1264
    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_9

    .line 1265
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 1266
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 1268
    :cond_9
    const/16 v28, 0x41

    move/from16 v0, v28

    if-lt v7, v0, :cond_c

    const/16 v28, 0x5a

    move/from16 v0, v28

    if-gt v7, v0, :cond_c

    const/4 v5, 0x1

    .line 1269
    :goto_4
    const/16 v28, 0x2

    move/from16 v0, v28

    if-ne v6, v0, :cond_a

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v5, v0, :cond_a

    .line 1270
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 1271
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 1273
    :cond_a
    move v6, v5

    .line 1274
    const/16 v25, 0x1

    .line 1275
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 1276
    .local v4, "c":Ljava/lang/Character;
    if-eqz v4, :cond_b

    .line 1277
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1278
    int-to-char v0, v14

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1280
    :cond_b
    add-int/lit8 v14, v14, 0x1

    .line 1281
    goto/16 :goto_2

    .line 1268
    .end local v4    # "c":Ljava/lang/Character;
    :cond_c
    const/4 v5, 0x2

    goto :goto_4

    .line 1281
    :cond_d
    const/16 v28, 0x3400

    move/from16 v0, v28

    if-ge v7, v0, :cond_e

    .line 1297
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1299
    :cond_e
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v7, v1}, Lcom/android/providers/contacts/HanziToPinyin;->getToken(CZ)Lcom/android/providers/contacts/HanziToPinyin$Token;

    move-result-object v21

    .line 1300
    .local v21, "t":Lcom/android/providers/contacts/HanziToPinyin$Token;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v24

    .line 1302
    .local v24, "tokenSize":I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 1303
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_f

    .line 1304
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 1305
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 1307
    :cond_f
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_5
    move/from16 v0, v24

    if-ge v12, v0, :cond_10

    .line 1309
    int-to-char v0, v14

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1308
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1310
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 1311
    const/16 v25, 0x2

    .line 1312
    const/4 v6, 0x0

    .line 1313
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1337
    .end local v12    # "j":I
    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1252
    .end local v21    # "t":Lcom/android/providers/contacts/HanziToPinyin$Token;
    .end local v24    # "tokenSize":I
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1361
    .end local v7    # "character":C
    .restart local v8    # "firstChar":C
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v13    # "lowerCaseString":Ljava/lang/String;
    .restart local v15    # "mtoken":Lcom/android/providers/contacts/HanziToPinyin$Token;
    .restart local v27    # "transChars":[C
    :cond_13
    iget-object v0, v15, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1364
    .end local v8    # "firstChar":C
    .end local v13    # "lowerCaseString":Ljava/lang/String;
    :cond_14
    iget-object v0, v15, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1365
    .local v22, "targetStr":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 1366
    .local v23, "tempStr":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    :goto_6
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v9, v0, :cond_15

    .line 1367
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1369
    :cond_15
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_16

    .line 1370
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1372
    :cond_16
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1380
    .end local v15    # "mtoken":Lcom/android/providers/contacts/HanziToPinyin$Token;
    .end local v22    # "targetStr":Ljava/lang/String;
    .end local v23    # "tempStr":Ljava/lang/StringBuilder;
    :cond_17
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-nez v28, :cond_18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_0

    :cond_18
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "0"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v6, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/HanziToPinyin$Token;>;"
    iget-boolean v7, p0, Lcom/android/providers/contacts/HanziToPinyin;->mHasChinaCollator:Z

    if-eqz v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-object v6

    .line 635
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 636
    .local v2, "inputLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 637
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .line 642
    .local v5, "tokenType":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_b

    .line 643
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 644
    .local v0, "character":C
    const/16 v7, 0x20

    if-ne v0, v7, :cond_3

    .line 645
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 646
    invoke-direct {p0, v3, v6, v5}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 642
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 648
    :cond_3
    const/16 v7, 0x100

    if-ge v0, v7, :cond_5

    .line 649
    const/4 v7, 0x1

    if-eq v5, v7, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 650
    invoke-direct {p0, v3, v6, v5}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 652
    :cond_4
    const/4 v5, 0x1

    .line 653
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 654
    :cond_5
    const/16 v7, 0x3400

    if-ge v0, v7, :cond_7

    .line 655
    const/4 v7, 0x3

    if-eq v5, v7, :cond_6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 656
    invoke-direct {p0, v3, v6, v5}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 658
    :cond_6
    const/4 v5, 0x3

    .line 659
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 682
    :cond_7
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lcom/android/providers/contacts/HanziToPinyin;->getToken(CZ)Lcom/android/providers/contacts/HanziToPinyin$Token;

    move-result-object v4

    .line 687
    .local v4, "t":Lcom/android/providers/contacts/HanziToPinyin$Token;
    iget v7, v4, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 688
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 689
    invoke-direct {p0, v3, v6, v5}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 691
    :cond_8
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    const/4 v5, 0x2

    goto :goto_2

    .line 694
    :cond_9
    iget v7, v4, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    if-eq v5, v7, :cond_a

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 695
    invoke-direct {p0, v3, v6, v5}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 697
    :cond_a
    iget v5, v4, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 698
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 702
    .end local v0    # "character":C
    .end local v4    # "t":Lcom/android/providers/contacts/HanziToPinyin$Token;
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 703
    invoke-direct {p0, v3, v6, v5}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public getFristCharsForDialerSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 29
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 869
    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 871
    :cond_0
    const/16 v25, 0x0

    .line 1024
    :goto_0
    return-object v25

    .line 874
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    .local v14, "returnStr":Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .local v17, "subStrSet":Ljava/lang/StringBuilder;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v24, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/HanziToPinyin$Token;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v15, "shortSubStrOffset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 879
    .local v10, "inputLength":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .local v18, "subString":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    .local v16, "subStrOffset":Ljava/lang/StringBuilder;
    const/16 v23, 0x1

    .line 882
    .local v23, "tokenType":I
    const/4 v6, 0x0

    .line 883
    .local v6, "caseTypePre":I
    const/4 v5, 0x1

    .line 884
    .local v5, "caseTypeCurr":I
    const/4 v12, 0x0

    .line 893
    .local v12, "mPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_3

    .line 894
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 895
    .local v7, "character":C
    const/16 v25, 0x2d

    move/from16 v0, v25

    if-eq v7, v0, :cond_2

    const/16 v25, 0x2c

    move/from16 v0, v25

    if-ne v7, v0, :cond_6

    .line 896
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 983
    :goto_2
    const/16 v25, 0x7f

    move/from16 v0, v25

    if-le v12, v0, :cond_12

    .line 986
    .end local v7    # "character":C
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_4

    .line 987
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 989
    :cond_4
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/providers/contacts/HanziToPinyin$Token;

    .line 990
    .local v13, "mtoken":Lcom/android/providers/contacts/HanziToPinyin$Token;
    if-eqz v13, :cond_5

    iget-object v0, v13, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 991
    iget-object v0, v13, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_5

    .line 992
    iget v0, v13, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 993
    iget-object v0, v13, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 897
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "mtoken":Lcom/android/providers/contacts/HanziToPinyin$Token;
    .restart local v7    # "character":C
    :cond_6
    const/16 v25, 0x20

    move/from16 v0, v25

    if-ne v7, v0, :cond_8

    .line 898
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_7

    .line 899
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 900
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 902
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 903
    const/4 v6, 0x0

    goto :goto_2

    .line 904
    :cond_8
    const/16 v25, 0x100

    move/from16 v0, v25

    if-ge v7, v0, :cond_d

    .line 905
    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_9

    .line 906
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 907
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 909
    :cond_9
    const/16 v25, 0x41

    move/from16 v0, v25

    if-lt v7, v0, :cond_c

    const/16 v25, 0x5a

    move/from16 v0, v25

    if-gt v7, v0, :cond_c

    const/4 v5, 0x1

    .line 910
    :goto_4
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_a

    .line 911
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 912
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 914
    :cond_a
    move v6, v5

    .line 915
    const/16 v23, 0x1

    .line 917
    sget-object v25, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    .line 918
    .local v4, "c":Ljava/lang/Character;
    if-eqz v4, :cond_b

    .line 919
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 920
    int-to-char v0, v12

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 922
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 923
    goto/16 :goto_2

    .line 909
    .end local v4    # "c":Ljava/lang/Character;
    :cond_c
    const/4 v5, 0x2

    goto :goto_4

    .line 923
    :cond_d
    const/16 v25, 0x3400

    move/from16 v0, v25

    if-ge v7, v0, :cond_e

    .line 939
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 941
    :cond_e
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v7, v1}, Lcom/android/providers/contacts/HanziToPinyin;->getToken(CZ)Lcom/android/providers/contacts/HanziToPinyin$Token;

    move-result-object v19

    .line 942
    .local v19, "t":Lcom/android/providers/contacts/HanziToPinyin$Token;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v22

    .line 944
    .local v22, "tokenSize":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 945
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_f

    .line 946
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 947
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 949
    :cond_f
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_5
    move/from16 v0, v22

    if-ge v11, v0, :cond_10

    .line 951
    int-to-char v0, v12

    move/from16 v25, v0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 950
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 952
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 953
    const/16 v23, 0x2

    .line 954
    const/4 v6, 0x0

    .line 955
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 979
    .end local v11    # "j":I
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 893
    .end local v19    # "t":Lcom/android/providers/contacts/HanziToPinyin$Token;
    .end local v22    # "tokenSize":I
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 995
    .end local v7    # "character":C
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v13    # "mtoken":Lcom/android/providers/contacts/HanziToPinyin$Token;
    :cond_13
    iget-object v0, v13, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1001
    .end local v13    # "mtoken":Lcom/android/providers/contacts/HanziToPinyin$Token;
    :cond_14
    const-string v25, "`!``!!!`!!`"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_15
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/providers/contacts/HanziToPinyin$Token;

    .line 1004
    .restart local v13    # "mtoken":Lcom/android/providers/contacts/HanziToPinyin$Token;
    if-eqz v13, :cond_15

    iget-object v0, v13, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15

    .line 1005
    iget v0, v13, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 1006
    iget-object v0, v13, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1008
    :cond_16
    iget-object v0, v13, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1009
    .local v20, "targetStr":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    .local v21, "tempStr":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    :goto_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v8, v0, :cond_17

    .line 1011
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1013
    :cond_17
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_18

    .line 1014
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1016
    :cond_18
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1020
    .end local v13    # "mtoken":Lcom/android/providers/contacts/HanziToPinyin$Token;
    .end local v20    # "targetStr":Ljava/lang/String;
    .end local v21    # "tempStr":Ljava/lang/StringBuilder;
    :cond_19
    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v8, v0, :cond_1a

    .line 1021
    add-int/lit8 v25, v8, 0x1

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/providers/contacts/HanziToPinyin;->dialerKeyMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v14, v8, v0, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1024
    :cond_1a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "0"

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_0
.end method

.method public getTokensForDialerSearch(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 21
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "offsets"    # Ljava/lang/StringBuilder;

    .prologue
    .line 725
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 727
    :cond_0
    const/16 v19, 0x0

    .line 859
    :goto_0
    return-object v19

    .line 730
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .local v13, "subStrSet":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v18, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/HanziToPinyin$Token;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v11, "shortSubStrOffset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 734
    .local v8, "inputLength":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .local v14, "subString":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    .local v12, "subStrOffset":Ljava/lang/StringBuilder;
    const/16 v17, 0x1

    .line 737
    .local v17, "tokenType":I
    const/4 v5, 0x0

    .line 738
    .local v5, "caseTypePre":I
    const/4 v4, 0x1

    .line 739
    .local v4, "caseTypeCurr":I
    const/4 v10, 0x0

    .line 748
    .local v10, "mPos":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 749
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 750
    .local v6, "character":C
    const/16 v19, 0x2d

    move/from16 v0, v19

    if-eq v6, v0, :cond_2

    const/16 v19, 0x2c

    move/from16 v0, v19

    if-ne v6, v0, :cond_5

    .line 751
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 851
    :goto_2
    const/16 v19, 0x7f

    move/from16 v0, v19

    if-le v10, v0, :cond_11

    .line 854
    .end local v6    # "character":C
    :cond_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_4

    .line 855
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 856
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 858
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v11, v13, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addSubString(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 859
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 752
    .restart local v6    # "character":C
    :cond_5
    const/16 v19, 0x20

    move/from16 v0, v19

    if-ne v6, v0, :cond_7

    .line 753
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_6

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 755
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 757
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v11, v13, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addSubString(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 758
    add-int/lit8 v10, v10, 0x1

    .line 759
    const/4 v5, 0x0

    goto :goto_2

    .line 760
    :cond_7
    const/16 v19, 0x100

    move/from16 v0, v19

    if-ge v6, v0, :cond_c

    .line 761
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_8

    .line 762
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 763
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 765
    :cond_8
    const/16 v19, 0x41

    move/from16 v0, v19

    if-lt v6, v0, :cond_b

    const/16 v19, 0x5a

    move/from16 v0, v19

    if-gt v6, v0, :cond_b

    const/4 v4, 0x1

    .line 766
    :goto_3
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v5, v0, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_9

    .line 767
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 768
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 770
    :cond_9
    move v5, v4

    .line 771
    const/16 v17, 0x1

    .line 778
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 781
    .local v3, "c":Ljava/lang/Character;
    if-eqz v3, :cond_a

    .line 782
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 783
    int-to-char v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 785
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 786
    goto/16 :goto_2

    .line 765
    .end local v3    # "c":Ljava/lang/Character;
    :cond_b
    const/4 v4, 0x2

    goto :goto_3

    .line 786
    :cond_c
    const/16 v19, 0x3400

    move/from16 v0, v19

    if-ge v6, v0, :cond_d

    .line 803
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 807
    :cond_d
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/providers/contacts/HanziToPinyin;->getToken(CZ)Lcom/android/providers/contacts/HanziToPinyin$Token;

    move-result-object v15

    .line 809
    .local v15, "t":Lcom/android/providers/contacts/HanziToPinyin$Token;
    iget-object v0, v15, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v16

    .line 811
    .local v16, "tokenSize":I
    iget v0, v15, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 812
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_e

    .line 813
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 814
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 816
    :cond_e
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_4
    move/from16 v0, v16

    if-ge v9, v0, :cond_f

    .line 818
    int-to-char v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 817
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 819
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/providers/contacts/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 820
    const/16 v17, 0x2

    .line 821
    const/4 v5, 0x0

    .line 822
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 847
    .end local v9    # "j":I
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 748
    .end local v15    # "t":Lcom/android/providers/contacts/HanziToPinyin$Token;
    .end local v16    # "tokenSize":I
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method
