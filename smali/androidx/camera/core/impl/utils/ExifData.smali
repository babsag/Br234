.class public Landroidx/camera/core/impl/utils/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/ExifData$Builder;,
        Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;

.field private static final b:[Landroidx/camera/core/impl/utils/e;

.field private static final c:[Landroidx/camera/core/impl/utils/e;

.field private static final d:[Landroidx/camera/core/impl/utils/e;

.field static final e:[Landroidx/camera/core/impl/utils/e;

.field private static final f:[Landroidx/camera/core/impl/utils/e;

.field static final g:[[Landroidx/camera/core/impl/utils/e;

.field static final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, ""

    const-string v1, "BYTE"

    const-string v2, "STRING"

    const-string v3, "USHORT"

    const-string v4, "ULONG"

    const-string v5, "URATIONAL"

    const-string v6, "SBYTE"

    const-string v7, "UNDEFINED"

    const-string v8, "SSHORT"

    const-string v9, "SLONG"

    const-string v10, "SRATIONAL"

    const-string v11, "SINGLE"

    const-string v12, "DOUBLE"

    const-string v13, "IFD"

    .line 1
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->a:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v1, v0, [Landroidx/camera/core/impl/utils/e;

    .line 2
    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v3, "ImageWidth"

    const/16 v4, 0x100

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;III)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v4, "ImageLength"

    const/16 v7, 0x101

    invoke-direct {v2, v4, v7, v5, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;III)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v7, "Make"

    const/16 v8, 0x10f

    const/4 v9, 0x2

    invoke-direct {v2, v7, v8, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v9

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v7, "Model"

    const/16 v8, 0x110

    invoke-direct {v2, v7, v8, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v5

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v7, "Orientation"

    const/16 v8, 0x112

    invoke-direct {v2, v7, v8, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v6

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v7, "XResolution"

    const/16 v8, 0x11a

    const/4 v10, 0x5

    invoke-direct {v2, v7, v8, v10}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v10

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v7, "YResolution"

    const/16 v8, 0x11b

    invoke-direct {v2, v7, v8, v10}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v2, v1, v7

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v8, "ResolutionUnit"

    const/16 v11, 0x128

    invoke-direct {v2, v8, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x7

    aput-object v2, v1, v8

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v11, "Software"

    const/16 v12, 0x131

    invoke-direct {v2, v11, v12, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x8

    aput-object v2, v1, v11

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v12, "DateTime"

    const/16 v13, 0x132

    invoke-direct {v2, v12, v13, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x9

    aput-object v2, v1, v12

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v13, "YCbCrPositioning"

    const/16 v14, 0x213

    invoke-direct {v2, v13, v14, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0xa

    aput-object v2, v1, v13

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v14, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v2, v14, v15, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v16, 0xb

    aput-object v2, v1, v16

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v15, "ExifIFDPointer"

    const v0, 0x8769

    invoke-direct {v2, v15, v0, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v0, 0xc

    aput-object v2, v1, v0

    new-instance v2, Landroidx/camera/core/impl/utils/e;

    const-string v0, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v2, v0, v12, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xd

    aput-object v2, v1, v12

    sput-object v1, Landroidx/camera/core/impl/utils/ExifData;->b:[Landroidx/camera/core/impl/utils/e;

    const/16 v2, 0x25

    new-array v2, v2, [Landroidx/camera/core/impl/utils/e;

    .line 3
    new-instance v12, Landroidx/camera/core/impl/utils/e;

    const-string v13, "ExposureTime"

    const v11, 0x829a

    invoke-direct {v12, v13, v11, v10}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v12, v2, v3

    new-instance v11, Landroidx/camera/core/impl/utils/e;

    const-string v12, "FNumber"

    const v3, 0x829d

    invoke-direct {v11, v12, v3, v10}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v11, v2, v4

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v11, "ExposureProgram"

    const v12, 0x8822

    invoke-direct {v3, v11, v12, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v3, v2, v9

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v11, "PhotographicSensitivity"

    const v12, 0x8827

    invoke-direct {v3, v11, v12, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v3, v2, v5

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v11, "SensitivityType"

    const v12, 0x8830

    invoke-direct {v3, v11, v12, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v3, v2, v6

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v11, "ExifVersion"

    const v12, 0x9000

    invoke-direct {v3, v11, v12, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v3, v2, v10

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v11, "DateTimeOriginal"

    const v12, 0x9003

    invoke-direct {v3, v11, v12, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v11, "DateTimeDigitized"

    const v12, 0x9004

    invoke-direct {v3, v11, v12, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v3, v2, v8

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v11, "ComponentsConfiguration"

    const v12, 0x9101

    invoke-direct {v3, v11, v12, v8}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x8

    aput-object v3, v2, v11

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v11, "ShutterSpeedValue"

    const v12, 0x9201

    const/16 v7, 0xa

    invoke-direct {v3, v11, v12, v7}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v11, 0x9

    aput-object v3, v2, v11

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v11, "ApertureValue"

    const v12, 0x9202

    invoke-direct {v3, v11, v12, v10}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v11, "BrightnessValue"

    const v12, 0x9203

    invoke-direct {v3, v11, v12, v7}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v3, v2, v16

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v11, "ExposureBiasValue"

    const v12, 0x9204

    invoke-direct {v3, v11, v12, v7}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xc

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "MaxApertureValue"

    const v11, 0x9205

    invoke-direct {v3, v7, v11, v10}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xd

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "MeteringMode"

    const v11, 0x9207

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xe

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "LightSource"

    const v11, 0x9208

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xf

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "Flash"

    const v11, 0x9209

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x10

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "FocalLength"

    const v11, 0x920a

    invoke-direct {v3, v7, v11, v10}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x11

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "SubSecTime"

    const v11, 0x9290

    invoke-direct {v3, v7, v11, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x12

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "SubSecTimeOriginal"

    const v11, 0x9291

    invoke-direct {v3, v7, v11, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x13

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "SubSecTimeDigitized"

    const v11, 0x9292

    invoke-direct {v3, v7, v11, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x14

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "FlashpixVersion"

    const v11, 0xa000

    invoke-direct {v3, v7, v11, v8}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x15

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "ColorSpace"

    const v11, 0xa001

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x16

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "PixelXDimension"

    const v11, 0xa002

    invoke-direct {v3, v7, v11, v5, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0x17

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "PixelYDimension"

    const v11, 0xa003

    invoke-direct {v3, v7, v11, v5, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0x18

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "InteroperabilityIFDPointer"

    const v11, 0xa005

    invoke-direct {v3, v7, v11, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x19

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "FocalPlaneResolutionUnit"

    const v11, 0xa210

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1a

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "SensingMethod"

    const v11, 0xa217

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1b

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "FileSource"

    const v11, 0xa300

    invoke-direct {v3, v7, v11, v8}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1c

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "SceneType"

    const v11, 0xa301

    invoke-direct {v3, v7, v11, v8}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1d

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "CustomRendered"

    const v11, 0xa401

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1e

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "ExposureMode"

    const v11, 0xa402

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1f

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "WhiteBalance"

    const v11, 0xa403

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x20

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "SceneCaptureType"

    const v11, 0xa406

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x21

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "Contrast"

    const v11, 0xa408

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x22

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "Saturation"

    const v11, 0xa409

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x23

    aput-object v3, v2, v7

    new-instance v3, Landroidx/camera/core/impl/utils/e;

    const-string v7, "Sharpness"

    const v11, 0xa40a

    invoke-direct {v3, v7, v11, v5}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x24

    aput-object v3, v2, v7

    sput-object v2, Landroidx/camera/core/impl/utils/ExifData;->c:[Landroidx/camera/core/impl/utils/e;

    const/16 v3, 0xd

    new-array v3, v3, [Landroidx/camera/core/impl/utils/e;

    .line 4
    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v11, "GPSVersionID"

    const/4 v12, 0x0

    invoke-direct {v7, v11, v12, v4}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v7, v3, v12

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v11, "GPSLatitudeRef"

    invoke-direct {v7, v11, v4, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v7, v3, v4

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v11, "GPSLatitude"

    const/16 v12, 0xa

    invoke-direct {v7, v11, v9, v10, v12}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;III)V

    aput-object v7, v3, v9

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v11, "GPSLongitudeRef"

    invoke-direct {v7, v11, v5, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v7, v3, v5

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v11, "GPSLongitude"

    invoke-direct {v7, v11, v6, v10, v12}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;III)V

    aput-object v7, v3, v6

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v11, "GPSAltitudeRef"

    invoke-direct {v7, v11, v10, v4}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v7, v3, v10

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v11, "GPSAltitude"

    const/4 v12, 0x6

    invoke-direct {v7, v11, v12, v10}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v7, v3, v12

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v11, "GPSTimeStamp"

    invoke-direct {v7, v11, v8, v10}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v7, v3, v8

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v8, "GPSSpeedRef"

    const/16 v10, 0xc

    invoke-direct {v7, v8, v10, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x8

    aput-object v7, v3, v8

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v8, "GPSTrackRef"

    const/16 v10, 0xe

    invoke-direct {v7, v8, v10, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0x9

    aput-object v7, v3, v8

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v8, "GPSImgDirectionRef"

    const/16 v10, 0x10

    invoke-direct {v7, v8, v10, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0xa

    aput-object v7, v3, v8

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v8, "GPSDestBearingRef"

    const/16 v10, 0x17

    invoke-direct {v7, v8, v10, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v7, v3, v16

    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v8, "GPSDestDistanceRef"

    const/16 v10, 0x19

    invoke-direct {v7, v8, v10, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/16 v8, 0xc

    aput-object v7, v3, v8

    sput-object v3, Landroidx/camera/core/impl/utils/ExifData;->d:[Landroidx/camera/core/impl/utils/e;

    new-array v7, v6, [Landroidx/camera/core/impl/utils/e;

    .line 5
    new-instance v8, Landroidx/camera/core/impl/utils/e;

    const/16 v10, 0x14a

    invoke-direct {v8, v14, v10, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v8, v7, v10

    new-instance v8, Landroidx/camera/core/impl/utils/e;

    const v10, 0x8769

    invoke-direct {v8, v15, v10, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v8, v7, v4

    new-instance v8, Landroidx/camera/core/impl/utils/e;

    const v10, 0x8825

    invoke-direct {v8, v0, v10, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v8, v7, v9

    new-instance v0, Landroidx/camera/core/impl/utils/e;

    const-string v8, "InteroperabilityIFDPointer"

    const v10, 0xa005

    invoke-direct {v0, v8, v10, v6}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    aput-object v0, v7, v5

    sput-object v7, Landroidx/camera/core/impl/utils/ExifData;->e:[Landroidx/camera/core/impl/utils/e;

    new-array v0, v4, [Landroidx/camera/core/impl/utils/e;

    .line 6
    new-instance v7, Landroidx/camera/core/impl/utils/e;

    const-string v8, "InteroperabilityIndex"

    invoke-direct {v7, v8, v4, v9}, Landroidx/camera/core/impl/utils/e;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x0

    aput-object v7, v0, v8

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->f:[Landroidx/camera/core/impl/utils/e;

    new-array v6, v6, [[Landroidx/camera/core/impl/utils/e;

    aput-object v1, v6, v8

    aput-object v2, v6, v4

    aput-object v3, v6, v9

    aput-object v0, v6, v5

    .line 7
    sput-object v6, Landroidx/camera/core/impl/utils/ExifData;->g:[[Landroidx/camera/core/impl/utils/e;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FNumber"

    const-string v2, "GPSTimeStamp"

    filled-new-array {v1, v13, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData;->h:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteOrder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/d;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Landroidx/camera/core/impl/utils/ExifData;->g:[[Landroidx/camera/core/impl/utils/e;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Malformed attributes list. Number of IFDs mismatch."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3
    iput-object p1, p0, Landroidx/camera/core/impl/utils/ExifData;->j:Ljava/nio/ByteOrder;

    .line 4
    iput-object p2, p0, Landroidx/camera/core/impl/utils/ExifData;->i:Ljava/util/List;

    return-void
.end method

.method private b(Ljava/lang/String;)Landroidx/camera/core/impl/utils/d;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "ISOSpeedRatings"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PhotographicSensitivity"

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Landroidx/camera/core/impl/utils/ExifData;->g:[[Landroidx/camera/core/impl/utils/e;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Landroidx/camera/core/impl/utils/ExifData;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/utils/d;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static builderForDevice()Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/utils/ExifData$Builder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;-><init>(Ljava/nio/ByteOrder;)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Orientation"

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    const-string v2, "XResolution"

    const-string v3, "72/1"

    .line 3
    invoke-virtual {v0, v2, v3}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    const-string v2, "YResolution"

    .line 4
    invoke-virtual {v0, v2, v3}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolutionUnit"

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "YCbCrPositioning"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Make"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Model"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroidx/camera/core/ImageProxy;I)Landroidx/camera/core/impl/utils/ExifData;
    .locals 2
    .param p0    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/ExifData;->builderForDevice()Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/camera/core/ImageInfo;->populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    .line 3
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setOrientationDegrees(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 4
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setImageWidth(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object p1

    .line 5
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setImageHeight(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->build()Landroidx/camera/core/impl/utils/ExifData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(I)Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/d;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/impl/utils/ExifData;->g:[[Landroidx/camera/core/impl/utils/e;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IFD index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Index should be between [0, EXIF_TAGS.length] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 2
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ExifData;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/utils/ExifData;->b(Ljava/lang/String;)Landroidx/camera/core/impl/utils/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    sget-object v2, Landroidx/camera/core/impl/utils/ExifData;->h:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/camera/core/impl/utils/ExifData;->j:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/utils/d;->k(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget p1, v0, Landroidx/camera/core/impl/utils/d;->e:I

    const/4 v2, 0x5

    const-string v3, "ExifData"

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS Timestamp format is not rational. format="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/camera/core/impl/utils/d;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 7
    :cond_1
    iget-object p1, p0, Landroidx/camera/core/impl/utils/ExifData;->j:Ljava/nio/ByteOrder;

    .line 8
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/utils/d;->l(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/camera/core/impl/utils/f;

    if-eqz p1, :cond_3

    .line 9
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    .line 11
    invoke-virtual {v3}, Landroidx/camera/core/impl/utils/f;->b()J

    move-result-wide v3

    long-to-float v3, v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/f;->a()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v3, p1, v2

    .line 12
    invoke-virtual {v3}, Landroidx/camera/core/impl/utils/f;->b()J

    move-result-wide v3

    long-to-float v3, v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/f;->a()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-object v3, p1, v2

    .line 13
    invoke-virtual {v3}, Landroidx/camera/core/impl/utils/f;->b()J

    move-result-wide v3

    long-to-float v3, v3

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroidx/camera/core/impl/utils/f;->a()J

    move-result-wide v4

    long-to-float p1, v4

    div-float/2addr v3, p1

    float-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%02d:%02d:%02d"

    .line 14
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid GPS Timestamp array. array="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 16
    :cond_4
    :try_start_0
    iget-object p1, p0, Landroidx/camera/core/impl/utils/ExifData;->j:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/utils/d;->j(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_5
    return-object v1
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ExifData;->j:Ljava/nio/ByteOrder;

    return-object v0
.end method
