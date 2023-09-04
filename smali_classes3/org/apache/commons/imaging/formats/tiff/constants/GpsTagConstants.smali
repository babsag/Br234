.class public final Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;
.super Ljava/lang/Object;
.source "GpsTagConstants.java"


# static fields
.field public static final ALL_GPS_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_TAG_GPS_ALTITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final GPS_TAG_GPS_ALTITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

.field public static final GPS_TAG_GPS_ALTITUDE_REF_VALUE_ABOVE_SEA_LEVEL:I = 0x0

.field public static final GPS_TAG_GPS_ALTITUDE_REF_VALUE_BELOW_SEA_LEVEL:I = 0x1

.field public static final GPS_TAG_GPS_AREA_INFORMATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;

.field public static final GPS_TAG_GPS_DATE_STAMP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_DEST_BEARING:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final GPS_TAG_GPS_DEST_BEARING_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_DEST_BEARING_REF_VALUE_MAGNETIC_NORTH:Ljava/lang/String; = "M"

.field public static final GPS_TAG_GPS_DEST_BEARING_REF_VALUE_TRUE_NORTH:Ljava/lang/String; = "T"

.field public static final GPS_TAG_GPS_DEST_DISTANCE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final GPS_TAG_GPS_DEST_DISTANCE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_DEST_DISTANCE_REF_VALUE_KILOMETERS:Ljava/lang/String; = "K"

.field public static final GPS_TAG_GPS_DEST_DISTANCE_REF_VALUE_MILES:Ljava/lang/String; = "M"

.field public static final GPS_TAG_GPS_DEST_DISTANCE_REF_VALUE_NAUTICAL_MILES:Ljava/lang/String; = "N"

.field public static final GPS_TAG_GPS_DEST_LATITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

.field public static final GPS_TAG_GPS_DEST_LATITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_DEST_LATITUDE_REF_VALUE_NORTH:Ljava/lang/String; = "N"

.field public static final GPS_TAG_GPS_DEST_LATITUDE_REF_VALUE_SOUTH:Ljava/lang/String; = "S"

.field public static final GPS_TAG_GPS_DEST_LONGITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

.field public static final GPS_TAG_GPS_DEST_LONGITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_DEST_LONGITUDE_REF_VALUE_EAST:Ljava/lang/String; = "E"

.field public static final GPS_TAG_GPS_DEST_LONGITUDE_REF_VALUE_WEST:Ljava/lang/String; = "W"

.field public static final GPS_TAG_GPS_DIFFERENTIAL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final GPS_TAG_GPS_DIFFERENTIAL_VALUE_DIFFERENTIAL_CORRECTED:I = 0x1

.field public static final GPS_TAG_GPS_DIFFERENTIAL_VALUE_NO_CORRECTION:I = 0x0

.field public static final GPS_TAG_GPS_DOP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final GPS_TAG_GPS_IMG_DIRECTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final GPS_TAG_GPS_IMG_DIRECTION_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_IMG_DIRECTION_REF_VALUE_MAGNETIC_NORTH:Ljava/lang/String; = "M"

.field public static final GPS_TAG_GPS_IMG_DIRECTION_REF_VALUE_TRUE_NORTH:Ljava/lang/String; = "T"

.field public static final GPS_TAG_GPS_LATITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

.field public static final GPS_TAG_GPS_LATITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_LATITUDE_REF_VALUE_NORTH:Ljava/lang/String; = "N"

.field public static final GPS_TAG_GPS_LATITUDE_REF_VALUE_SOUTH:Ljava/lang/String; = "S"

.field public static final GPS_TAG_GPS_LONGITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

.field public static final GPS_TAG_GPS_LONGITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_LONGITUDE_REF_VALUE_EAST:Ljava/lang/String; = "E"

.field public static final GPS_TAG_GPS_LONGITUDE_REF_VALUE_WEST:Ljava/lang/String; = "W"

.field public static final GPS_TAG_GPS_MAP_DATUM:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_MEASURE_MODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_MEASURE_MODE_VALUE_2_DIMENSIONAL_MEASUREMENT:I = 0x2

.field public static final GPS_TAG_GPS_MEASURE_MODE_VALUE_3_DIMENSIONAL_MEASUREMENT:I = 0x3

.field public static final GPS_TAG_GPS_PROCESSING_METHOD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;

.field public static final GPS_TAG_GPS_SATELLITES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_SPEED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final GPS_TAG_GPS_SPEED_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_SPEED_REF_VALUE_KMPH:Ljava/lang/String; = "K"

.field public static final GPS_TAG_GPS_SPEED_REF_VALUE_KNOTS:Ljava/lang/String; = "N"

.field public static final GPS_TAG_GPS_SPEED_REF_VALUE_MPH:Ljava/lang/String; = "M"

.field public static final GPS_TAG_GPS_STATUS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_STATUS_VALUE_MEASUREMENT_INTEROPERABILITY:Ljava/lang/String; = "V"

.field public static final GPS_TAG_GPS_STATUS_VALUE_MEASUREMENT_IN_PROGRESS:Ljava/lang/String; = "A"

.field public static final GPS_TAG_GPS_TIME_STAMP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

.field public static final GPS_TAG_GPS_TRACK:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final GPS_TAG_GPS_TRACK_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final GPS_TAG_GPS_TRACK_REF_VALUE_MAGNETIC_NORTH:Ljava/lang/String; = "M"

.field public static final GPS_TAG_GPS_TRACK_REF_VALUE_TRUE_NORTH:Ljava/lang/String; = "T"

.field public static final GPS_TAG_GPS_VERSION_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_GPS:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "GPSVersionID"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_VERSION_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

    new-array v2, v4, [B

    .line 2
    fill-array-data v2, :array_0

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->a:[B

    .line 3
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v5, "GPSLatitudeRef"

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-direct {v2, v5, v6, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 4
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    const-string v8, "GPSLatitude"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v7, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    .line 5
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v10, "GPSLongitudeRef"

    invoke-direct {v8, v10, v9, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 6
    new-instance v10, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    const-string v11, "GPSLongitude"

    invoke-direct {v10, v11, v4, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    .line 7
    new-instance v11, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v12, "GPSAltitudeRef"

    const/4 v13, 0x5

    invoke-direct {v11, v12, v13, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v11, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_ALTITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 8
    new-instance v12, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v14, "GPSAltitude"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v12, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_ALTITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 9
    new-instance v14, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    const-string v15, "GPSTimeStamp"

    const/4 v13, 0x7

    invoke-direct {v14, v15, v13, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v14, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_TIME_STAMP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    .line 10
    new-instance v15, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v13, "GPSSatellites"

    const/16 v4, 0x8

    const/4 v6, -0x1

    invoke-direct {v15, v13, v4, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_SATELLITES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 11
    new-instance v13, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v4, "GPSStatus"

    const/16 v3, 0x9

    invoke-direct {v13, v4, v3, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v13, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_STATUS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 12
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v3, "GPSMeasureMode"

    const/16 v9, 0xa

    invoke-direct {v4, v3, v9, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_MEASURE_MODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 13
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v9, "GPSDOP"

    const/16 v6, 0xb

    invoke-direct {v3, v9, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_DOP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 14
    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v6, "GPSSpeedRef"

    move-object/from16 v16, v3

    const/16 v3, 0xc

    invoke-direct {v9, v6, v3, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_SPEED_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 15
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v3, "GPSSpeed"

    const/16 v7, 0xd

    invoke-direct {v6, v3, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_SPEED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 16
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v7, "GPSTrackRef"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    move-object/from16 v18, v9

    const/4 v9, 0x2

    invoke-direct {v3, v7, v6, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_TRACK_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 17
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v6, "GPSTrack"

    const/16 v9, 0xf

    invoke-direct {v7, v6, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_TRACK:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 18
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v9, "GPSImgDirectionRef"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    move-object/from16 v20, v3

    const/4 v3, 0x2

    invoke-direct {v6, v9, v7, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_IMG_DIRECTION_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 19
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v9, "GPSImgDirection"

    const/16 v7, 0x11

    invoke-direct {v3, v9, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_IMG_DIRECTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 20
    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v7, "GPSMapDatum"

    move-object/from16 v21, v3

    const/16 v3, 0x12

    move-object/from16 v22, v6

    const/4 v6, -0x1

    invoke-direct {v9, v7, v3, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_MAP_DATUM:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 21
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v7, "GPSDestLatitudeRef"

    const/16 v3, 0x13

    move-object/from16 v23, v9

    const/4 v9, 0x2

    invoke-direct {v6, v7, v3, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_DEST_LATITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 22
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    const-string v3, "GPSDestLatitude"

    const/16 v9, 0x14

    move-object/from16 v24, v6

    const/4 v6, 0x3

    invoke-direct {v7, v3, v9, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_DEST_LATITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    .line 23
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v9, "GPSDestLongitudeRef"

    const/16 v6, 0x15

    move-object/from16 v25, v7

    const/4 v7, 0x2

    invoke-direct {v3, v9, v6, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_DEST_LONGITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 24
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    const-string v9, "GPSDestLongitude"

    const/16 v7, 0x16

    move-object/from16 v26, v3

    const/4 v3, 0x3

    invoke-direct {v6, v9, v7, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_DEST_LONGITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    .line 25
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v7, "GPSDestBearingRef"

    const/16 v9, 0x17

    move-object/from16 v27, v6

    const/4 v6, 0x2

    invoke-direct {v3, v7, v9, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_DEST_BEARING_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 26
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v9, "GPSDestBearing"

    const/16 v6, 0x18

    invoke-direct {v7, v9, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_DEST_BEARING:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 27
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v9, "GPSDestDistanceRef"

    move-object/from16 v28, v7

    const/16 v7, 0x19

    move-object/from16 v29, v3

    const/4 v3, 0x2

    invoke-direct {v6, v9, v7, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_DEST_DISTANCE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 28
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v7, "GPSDestDistance"

    const/16 v9, 0x1a

    invoke-direct {v3, v7, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_DEST_DISTANCE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 29
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;

    const-string v9, "GPSProcessingMethod"

    move-object/from16 v30, v3

    const/16 v3, 0x1b

    invoke-direct {v7, v9, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_PROCESSING_METHOD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;

    .line 30
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;

    const-string v9, "GPSAreaInformation"

    move-object/from16 v31, v7

    const/16 v7, 0x1c

    invoke-direct {v3, v9, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_AREA_INFORMATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;

    .line 31
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v9, "GPSDateStamp"

    move-object/from16 v32, v3

    const/16 v3, 0x1d

    move-object/from16 v33, v6

    const/16 v6, 0xb

    invoke-direct {v7, v9, v3, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_DATE_STAMP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 32
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v6, "GPSDifferential"

    const/16 v9, 0x1e

    invoke-direct {v3, v6, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_DIFFERENTIAL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v1, 0x1f

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v6, 0x0

    aput-object v0, v1, v6

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v5, v1, v0

    const/4 v0, 0x3

    aput-object v8, v1, v0

    const/4 v0, 0x4

    aput-object v10, v1, v0

    const/4 v0, 0x5

    aput-object v11, v1, v0

    const/4 v0, 0x6

    aput-object v12, v1, v0

    const/4 v0, 0x7

    aput-object v14, v1, v0

    const/16 v0, 0x8

    aput-object v15, v1, v0

    const/16 v0, 0x9

    aput-object v13, v1, v0

    const/16 v0, 0xa

    aput-object v4, v1, v0

    const/16 v0, 0xb

    aput-object v16, v1, v0

    const/16 v0, 0xc

    aput-object v18, v1, v0

    const/16 v0, 0xd

    aput-object v17, v1, v0

    const/16 v0, 0xe

    aput-object v20, v1, v0

    const/16 v0, 0xf

    aput-object v19, v1, v0

    const/16 v0, 0x10

    aput-object v22, v1, v0

    const/16 v0, 0x11

    aput-object v21, v1, v0

    const/16 v0, 0x12

    aput-object v23, v1, v0

    const/16 v0, 0x13

    aput-object v24, v1, v0

    const/16 v0, 0x14

    aput-object v25, v1, v0

    const/16 v0, 0x15

    aput-object v26, v1, v0

    const/16 v0, 0x16

    aput-object v27, v1, v0

    const/16 v0, 0x17

    aput-object v29, v1, v0

    const/16 v0, 0x18

    aput-object v28, v1, v0

    const/16 v0, 0x19

    aput-object v33, v1, v0

    const/16 v0, 0x1a

    aput-object v30, v1, v0

    const/16 v0, 0x1b

    aput-object v31, v1, v0

    const/16 v0, 0x1c

    aput-object v32, v1, v0

    const/16 v0, 0x1d

    aput-object v7, v1, v0

    const/16 v0, 0x1e

    aput-object v3, v1, v0

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->ALL_GPS_TAGS:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x3t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gpsVersion()[B
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->a:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
