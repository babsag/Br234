.class final enum Lorg/apache/commons/imaging/formats/icns/b;
.super Ljava/lang/Enum;
.source "IcnsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/formats/icns/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/icns/b;

.field private static final ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/b;

.field private static final ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_1024x1024_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_128x128_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_16x16_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_256x256_2x_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_32x32_1BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_32x32_2x_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_32x32_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_512x512_2x_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_64x64_2x_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

.field public static final enum ICNS_64x64_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;


# instance fields
.field private final bitsPerPixel:I

.field private final hasMask:Z

.field private final height:I

.field private final type:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 56

    .line 1
    new-instance v8, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v1, "ICNS_16x12_1BIT_IMAGE_AND_MASK"

    const/4 v2, 0x0

    const-string v3, "icm#"

    const/16 v4, 0x10

    const/16 v5, 0xc

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v8, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/b;

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v10, "ICNS_16x12_4BIT_IMAGE"

    const/4 v11, 0x1

    const-string v12, "icm4"

    const/16 v13, 0x10

    const/16 v14, 0xc

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 3
    new-instance v1, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v18, "ICNS_16x12_8BIT_IMAGE"

    const/16 v19, 0x2

    const-string v20, "icm8"

    const/16 v21, 0x10

    const/16 v22, 0xc

    const/16 v23, 0x8

    const/16 v24, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v1, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 4
    new-instance v2, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v10, "ICNS_16x16_8BIT_MASK"

    const/4 v11, 0x3

    const-string v12, "s8mk"

    const/16 v14, 0x10

    const/16 v15, 0x8

    const/16 v16, 0x1

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v2, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/b;

    .line 5
    new-instance v3, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v18, "ICNS_16x16_1BIT_IMAGE_AND_MASK"

    const/16 v19, 0x4

    const-string v20, "ics#"

    const/16 v22, 0x10

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v3, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/b;

    .line 6
    new-instance v4, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v10, "ICNS_16x16_4BIT_IMAGE"

    const/4 v11, 0x5

    const-string v12, "ics4"

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v4, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 7
    new-instance v5, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v18, "ICNS_16x16_8BIT_IMAGE"

    const/16 v19, 0x6

    const-string v20, "ics8"

    const/16 v23, 0x8

    const/16 v24, 0x0

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v5, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 8
    new-instance v6, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v10, "ICNS_16x16_32BIT_IMAGE"

    const/4 v11, 0x7

    const-string v12, "is32"

    const/16 v15, 0x20

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v6, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 9
    new-instance v7, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v18, "ICNS_32x32_8BIT_MASK"

    const/16 v19, 0x8

    const-string v20, "l8mk"

    const/16 v21, 0x20

    const/16 v22, 0x20

    const/16 v24, 0x1

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v24}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v7, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/b;

    .line 10
    new-instance v17, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v10, "ICNS_32x32_1BIT_IMAGE"

    const/16 v11, 0x9

    const-string v12, "ICON"

    const/16 v13, 0x20

    const/16 v14, 0x20

    const/4 v15, 0x1

    move-object/from16 v9, v17

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v17, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_32x32_1BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 11
    new-instance v9, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v19, "ICNS_32x32_1BIT_IMAGE_AND_MASK"

    const/16 v20, 0xa

    const-string v21, "ICN#"

    const/16 v23, 0x20

    const/16 v25, 0x1

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v9, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/b;

    .line 12
    new-instance v10, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v27, "ICNS_32x32_4BIT_IMAGE"

    const/16 v28, 0xb

    const-string v29, "icl4"

    const/16 v30, 0x20

    const/16 v31, 0x20

    const/16 v32, 0x4

    const/16 v33, 0x0

    move-object/from16 v26, v10

    invoke-direct/range {v26 .. v33}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v10, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 13
    new-instance v11, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v19, "ICNS_32x32_8BIT_IMAGE"

    const/16 v20, 0xc

    const-string v21, "icl8"

    const/16 v24, 0x8

    const/16 v25, 0x0

    move-object/from16 v18, v11

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v11, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 14
    new-instance v12, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v27, "ICNS_32x32_32BIT_IMAGE"

    const/16 v28, 0xd

    const-string v29, "il32"

    const/16 v32, 0x20

    move-object/from16 v26, v12

    invoke-direct/range {v26 .. v33}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v12, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 15
    new-instance v13, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v19, "ICNS_48x48_8BIT_MASK"

    const/16 v20, 0xe

    const-string v21, "h8mk"

    const/16 v22, 0x30

    const/16 v23, 0x30

    const/16 v25, 0x1

    move-object/from16 v18, v13

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v13, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/b;

    .line 16
    new-instance v14, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v27, "ICNS_48x48_1BIT_IMAGE_AND_MASK"

    const/16 v28, 0xf

    const-string v29, "ich#"

    const/16 v30, 0x30

    const/16 v31, 0x30

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v26, v14

    invoke-direct/range {v26 .. v33}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v14, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/b;

    .line 17
    new-instance v15, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v19, "ICNS_48x48_4BIT_IMAGE"

    const/16 v20, 0x10

    const-string v21, "ich4"

    const/16 v24, 0x4

    const/16 v25, 0x0

    move-object/from16 v18, v15

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v15, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 18
    new-instance v16, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v27, "ICNS_48x48_8BIT_IMAGE"

    const/16 v28, 0x11

    const-string v29, "ich8"

    const/16 v32, 0x8

    const/16 v33, 0x0

    move-object/from16 v26, v16

    invoke-direct/range {v26 .. v33}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v16, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 19
    new-instance v26, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v19, "ICNS_48x48_32BIT_IMAGE"

    const/16 v20, 0x12

    const-string v21, "ih32"

    const/16 v24, 0x20

    move-object/from16 v18, v26

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v26, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 20
    new-instance v18, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v28, "ICNS_128x128_8BIT_MASK"

    const/16 v29, 0x13

    const-string v30, "t8mk"

    const/16 v31, 0x80

    const/16 v32, 0x80

    const/16 v33, 0x8

    const/16 v34, 0x1

    move-object/from16 v27, v18

    invoke-direct/range {v27 .. v34}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v18, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/b;

    .line 21
    new-instance v19, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v36, "ICNS_128x128_32BIT_IMAGE"

    const/16 v37, 0x14

    const-string v38, "it32"

    const/16 v39, 0x80

    const/16 v40, 0x80

    const/16 v41, 0x20

    const/16 v42, 0x0

    move-object/from16 v35, v19

    invoke-direct/range {v35 .. v42}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v19, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 22
    new-instance v20, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v28, "ICNS_16x16_32BIT_ARGB_IMAGE"

    const/16 v29, 0x15

    const-string v30, "icp4"

    const/16 v31, 0x10

    const/16 v32, 0x10

    const/16 v33, 0x20

    const/16 v34, 0x0

    move-object/from16 v27, v20

    invoke-direct/range {v27 .. v34}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v20, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_16x16_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 23
    new-instance v21, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v36, "ICNS_32x32_32BIT_ARGB_IMAGE"

    const/16 v37, 0x16

    const-string v38, "icp5"

    const/16 v39, 0x20

    const/16 v40, 0x20

    move-object/from16 v35, v21

    invoke-direct/range {v35 .. v42}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v21, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_32x32_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 24
    new-instance v22, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v28, "ICNS_64x64_32BIT_ARGB_IMAGE"

    const/16 v29, 0x17

    const-string v30, "icp6"

    const/16 v31, 0x40

    const/16 v32, 0x40

    move-object/from16 v27, v22

    invoke-direct/range {v27 .. v34}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v22, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_64x64_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 25
    new-instance v23, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v36, "ICNS_128x128_32BIT_ARGB_IMAGE"

    const/16 v37, 0x18

    const-string v38, "ic07"

    const/16 v39, 0x80

    const/16 v40, 0x80

    move-object/from16 v35, v23

    invoke-direct/range {v35 .. v42}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v23, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_128x128_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 26
    new-instance v24, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v28, "ICNS_256x256_32BIT_ARGB_IMAGE"

    const/16 v29, 0x19

    const-string v30, "ic08"

    const/16 v31, 0x100

    const/16 v32, 0x100

    move-object/from16 v27, v24

    invoke-direct/range {v27 .. v34}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v24, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 27
    new-instance v25, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v36, "ICNS_512x512_32BIT_ARGB_IMAGE"

    const/16 v37, 0x1a

    const-string v38, "ic09"

    const/16 v39, 0x200

    const/16 v40, 0x200

    move-object/from16 v35, v25

    invoke-direct/range {v35 .. v42}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v25, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 28
    new-instance v35, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v28, "ICNS_1024x1024_32BIT_ARGB_IMAGE"

    const/16 v29, 0x1b

    const-string v30, "ic10"

    const/16 v31, 0x400

    const/16 v32, 0x400

    move-object/from16 v27, v35

    invoke-direct/range {v27 .. v34}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v35, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_1024x1024_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 29
    new-instance v27, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v37, "ICNS_32x32_2x_32BIT_ARGB_IMAGE"

    const/16 v38, 0x1c

    const-string v39, "ic11"

    const/16 v40, 0x20

    const/16 v42, 0x20

    const/16 v43, 0x0

    move-object/from16 v36, v27

    invoke-direct/range {v36 .. v43}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v27, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_32x32_2x_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 30
    new-instance v28, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v45, "ICNS_64x64_2x_32BIT_ARGB_IMAGE"

    const/16 v46, 0x1d

    const-string v47, "ic12"

    const/16 v48, 0x40

    const/16 v49, 0x40

    const/16 v50, 0x20

    const/16 v51, 0x0

    move-object/from16 v44, v28

    invoke-direct/range {v44 .. v51}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v28, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_64x64_2x_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 31
    new-instance v29, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v37, "ICNS_256x256_2x_32BIT_ARGB_IMAGE"

    const/16 v38, 0x1e

    const-string v39, "ic13"

    const/16 v40, 0x100

    const/16 v41, 0x100

    move-object/from16 v36, v29

    invoke-direct/range {v36 .. v43}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v29, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_256x256_2x_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 32
    new-instance v30, Lorg/apache/commons/imaging/formats/icns/b;

    const-string v45, "ICNS_512x512_2x_32BIT_ARGB_IMAGE"

    const/16 v46, 0x1f

    const-string v47, "ic14"

    const/16 v48, 0x200

    const/16 v49, 0x200

    move-object/from16 v44, v30

    invoke-direct/range {v44 .. v51}, Lorg/apache/commons/imaging/formats/icns/b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v30, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_512x512_2x_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    move-object/from16 v31, v15

    const/16 v15, 0x20

    new-array v15, v15, [Lorg/apache/commons/imaging/formats/icns/b;

    const/16 v32, 0x0

    aput-object v8, v15, v32

    const/16 v33, 0x1

    aput-object v0, v15, v33

    const/16 v34, 0x2

    aput-object v1, v15, v34

    const/16 v36, 0x3

    aput-object v2, v15, v36

    const/16 v37, 0x4

    aput-object v3, v15, v37

    const/16 v38, 0x5

    aput-object v4, v15, v38

    const/16 v39, 0x6

    aput-object v5, v15, v39

    const/16 v40, 0x7

    aput-object v6, v15, v40

    move-object/from16 v41, v2

    const/16 v2, 0x8

    aput-object v7, v15, v2

    const/16 v42, 0x9

    aput-object v17, v15, v42

    const/16 v43, 0xa

    aput-object v9, v15, v43

    const/16 v44, 0xb

    aput-object v10, v15, v44

    const/16 v45, 0xc

    aput-object v11, v15, v45

    const/16 v46, 0xd

    aput-object v12, v15, v46

    const/16 v47, 0xe

    aput-object v13, v15, v47

    const/16 v48, 0xf

    aput-object v14, v15, v48

    const/16 v49, 0x10

    aput-object v31, v15, v49

    const/16 v50, 0x11

    aput-object v16, v15, v50

    const/16 v51, 0x12

    aput-object v26, v15, v51

    const/16 v52, 0x13

    aput-object v18, v15, v52

    const/16 v53, 0x14

    aput-object v19, v15, v53

    const/16 v54, 0x15

    aput-object v20, v15, v54

    const/16 v55, 0x16

    aput-object v21, v15, v55

    const/16 v55, 0x17

    aput-object v22, v15, v55

    const/16 v55, 0x18

    aput-object v23, v15, v55

    const/16 v55, 0x19

    aput-object v24, v15, v55

    const/16 v55, 0x1a

    aput-object v25, v15, v55

    const/16 v55, 0x1b

    aput-object v35, v15, v55

    const/16 v55, 0x1c

    aput-object v27, v15, v55

    const/16 v55, 0x1d

    aput-object v28, v15, v55

    const/16 v55, 0x1e

    aput-object v29, v15, v55

    const/16 v55, 0x1f

    aput-object v30, v15, v55

    .line 33
    sput-object v15, Lorg/apache/commons/imaging/formats/icns/b;->$VALUES:[Lorg/apache/commons/imaging/formats/icns/b;

    const/16 v15, 0x1c

    new-array v15, v15, [Lorg/apache/commons/imaging/formats/icns/b;

    aput-object v8, v15, v32

    aput-object v0, v15, v33

    aput-object v1, v15, v34

    aput-object v3, v15, v36

    aput-object v4, v15, v37

    aput-object v5, v15, v38

    aput-object v6, v15, v39

    aput-object v17, v15, v40

    aput-object v9, v15, v2

    aput-object v10, v15, v42

    aput-object v11, v15, v43

    aput-object v12, v15, v44

    aput-object v14, v15, v45

    aput-object v31, v15, v46

    aput-object v16, v15, v47

    aput-object v26, v15, v48

    aput-object v19, v15, v49

    aput-object v20, v15, v50

    aput-object v21, v15, v51

    aput-object v22, v15, v52

    aput-object v23, v15, v53

    aput-object v24, v15, v54

    const/16 v0, 0x16

    aput-object v25, v15, v0

    const/16 v0, 0x17

    aput-object v35, v15, v0

    const/16 v0, 0x18

    aput-object v27, v15, v0

    const/16 v0, 0x19

    aput-object v28, v15, v0

    const/16 v0, 0x1a

    aput-object v29, v15, v0

    const/16 v0, 0x1b

    aput-object v30, v15, v0

    .line 34
    sput-object v15, Lorg/apache/commons/imaging/formats/icns/b;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/b;

    new-array v0, v2, [Lorg/apache/commons/imaging/formats/icns/b;

    aput-object v8, v0, v32

    aput-object v3, v0, v33

    aput-object v41, v0, v34

    aput-object v9, v0, v36

    aput-object v7, v0, v37

    aput-object v14, v0, v38

    aput-object v13, v0, v39

    aput-object v18, v0, v40

    .line 35
    sput-object v0, Lorg/apache/commons/imaging/formats/icns/b;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-static {p3}, Lorg/apache/commons/imaging/formats/icns/b;->k(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/icns/b;->type:I

    .line 3
    iput p4, p0, Lorg/apache/commons/imaging/formats/icns/b;->width:I

    .line 4
    iput p5, p0, Lorg/apache/commons/imaging/formats/icns/b;->height:I

    .line 5
    iput p6, p0, Lorg/apache/commons/imaging/formats/icns/b;->bitsPerPixel:I

    .line 6
    iput-boolean p7, p0, Lorg/apache/commons/imaging/formats/icns/b;->hasMask:Z

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    .line 1
    new-instance p0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static b(Lorg/apache/commons/imaging/formats/icns/b;)Lorg/apache/commons/imaging/formats/icns/b;
    .locals 6

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/b;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/b;->f()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 3
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/b;->i()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/b;->i()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 4
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/b;->g()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/b;->g()I

    move-result v5

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lorg/apache/commons/imaging/formats/icns/b;)Lorg/apache/commons/imaging/formats/icns/b;
    .locals 6

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/b;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/b;->f()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 3
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/b;->i()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/b;->i()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 4
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/b;->g()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/b;->g()I

    move-result v5

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(I)Lorg/apache/commons/imaging/formats/icns/b;
    .locals 6

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/b;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/b;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/icns/b;->h()I

    move-result v5

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/b;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/b;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/b;->h()I

    move-result v4

    if-ne v4, p0, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(I)Lorg/apache/commons/imaging/formats/icns/b;
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/b;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/b;->h()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ICNS type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/icns/b;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/imaging/formats/icns/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/icns/b;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/icns/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/b;->$VALUES:[Lorg/apache/commons/imaging/formats/icns/b;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/icns/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/icns/b;

    return-object v0
.end method


# virtual methods
.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/icns/b;->bitsPerPixel:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/icns/b;->height:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/icns/b;->type:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/icns/b;->width:I

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/icns/b;->hasMask:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/commons/imaging/formats/icns/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/b;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/b;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/b;->bitsPerPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hasMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/commons/imaging/formats/icns/b;->hasMask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
