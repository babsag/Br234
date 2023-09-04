.class public final Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;
.super Ljava/lang/Object;
.source "Rfc2301TagConstants.java"


# static fields
.field public static final ALL_RFC_2301_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLEAN_FAX_DATA_VALUE_CLEAN:I = 0x0

.field public static final CLEAN_FAX_DATA_VALUE_REGENERATED:I = 0x1

.field public static final CLEAN_FAX_DATA_VALUE_UNCLEAN:I = 0x2

.field public static final CODING_METHODS_VALUE_T4_1D:I = 0x2

.field public static final CODING_METHODS_VALUE_T4_2D:I = 0x4

.field public static final CODING_METHODS_VALUE_T6:I = 0x8

.field public static final CODING_METHODS_VALUE_T81:I = 0x20

.field public static final CODING_METHODS_VALUE_T82_T43:I = 0x40

.field public static final CODING_METHODS_VALUE_T82_T85:I = 0x10

.field public static final FAX_PROFILE_VALUE_EXTENDED_B_AND_W_LOSSLESS_F:I = 0x2

.field public static final FAX_PROFILE_VALUE_LOSSLESS_COLOR_AND_GRAYSCALE_L:I = 0x5

.field public static final FAX_PROFILE_VALUE_LOSSLESS_JBIG_B_AND_W_J:I = 0x3

.field public static final FAX_PROFILE_VALUE_LOSSY_COLOR_AND_GRAYSCALE_C:I = 0x4

.field public static final FAX_PROFILE_VALUE_MINIMAL_B_AND_W_LOSSLESS_S:I = 0x1

.field public static final FAX_PROFILE_VALUE_MIXED_RASTER_CONTENT_M:I = 0x6

.field public static final FAX_PROFILE_VALUE_UNKNOWN:I = 0x0

.field public static final PROFILE_TYPE_VALUE_GROUP_3_FAX:I = 0x1

.field public static final PROFILE_TYPE_VALUE_UNSPECIFIED:I

.field public static final TIFF_TAG_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

.field public static final TIFF_TAG_CLEAN_FAX_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final TIFF_TAG_CODING_METHODS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final TIFF_TAG_CONSECUTIVE_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

.field public static final TIFF_TAG_DECODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

.field public static final TIFF_TAG_DEFAULT_IMAGE_COLOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

.field public static final TIFF_TAG_FAX_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

.field public static final TIFF_TAG_GLOBAL_PARAMETERS_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

.field public static final TIFF_TAG_IMAGE_LAYER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

.field public static final TIFF_TAG_MODE_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

.field public static final TIFF_TAG_PROFILE_TYPE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final TIFF_TAG_STRIP_ROW_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongs;

.field public static final TIFF_TAG_VERSION_YEAR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "BadFaxLines"

    const/16 v3, 0x146

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 2
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v3, "CleanFaxData"

    const/16 v5, 0x147

    invoke-direct {v2, v3, v5, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CLEAN_FAX_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 3
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const-string v5, "ConsecutiveBadFaxLines"

    const/16 v6, 0x148

    invoke-direct {v3, v5, v6, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CONSECUTIVE_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 4
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    const-string v6, "GlobalParametersIFD"

    const/16 v7, 0x190

    invoke-direct {v5, v6, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_GLOBAL_PARAMETERS_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    .line 5
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v7, "ProfileType"

    const/16 v8, 0x191

    invoke-direct {v6, v7, v8, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_PROFILE_TYPE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 6
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v8, "FaxProfile"

    const/16 v9, 0x192

    invoke-direct {v7, v8, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_FAX_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 7
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v9, "CodingMethods"

    const/16 v10, 0x193

    invoke-direct {v8, v9, v10, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CODING_METHODS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 8
    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

    const-string v10, "VersionYear"

    const/16 v11, 0x194

    const/4 v12, 0x4

    invoke-direct {v9, v10, v11, v12, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_VERSION_YEAR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

    .line 9
    new-instance v10, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v11, "ModeNumber"

    const/16 v13, 0x195

    invoke-direct {v10, v11, v13, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_MODE_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 10
    new-instance v11, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    const-string v13, "Decode"

    const/16 v14, 0x1b1

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v11, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DECODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRationals;

    .line 11
    new-instance v13, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    const-string v14, "DefaultImageColor"

    const/16 v12, 0x1b2

    invoke-direct {v13, v14, v12, v15, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v13, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DEFAULT_IMAGE_COLOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    .line 12
    new-instance v12, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongs;

    const-string v14, "StripRowCounts"

    const/16 v4, 0x22f

    invoke-direct {v12, v14, v4, v15, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongs;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v12, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_STRIP_ROW_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongs;

    .line 13
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const-string v14, "ImageLayer"

    const v15, 0x87ac

    move-object/from16 v16, v12

    const/4 v12, 0x2

    invoke-direct {v4, v14, v15, v12, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_IMAGE_LAYER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/16 v1, 0xd

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v14, 0x0

    aput-object v0, v1, v14

    const/4 v0, 0x1

    aput-object v2, v1, v0

    aput-object v3, v1, v12

    const/4 v0, 0x3

    aput-object v5, v1, v0

    const/4 v0, 0x4

    aput-object v6, v1, v0

    const/4 v0, 0x5

    aput-object v7, v1, v0

    const/4 v0, 0x6

    aput-object v8, v1, v0

    const/4 v0, 0x7

    aput-object v9, v1, v0

    const/16 v0, 0x8

    aput-object v10, v1, v0

    const/16 v0, 0x9

    aput-object v11, v1, v0

    const/16 v0, 0xa

    aput-object v13, v1, v0

    const/16 v0, 0xb

    aput-object v16, v1, v0

    const/16 v0, 0xc

    aput-object v4, v1, v0

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->ALL_RFC_2301_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
