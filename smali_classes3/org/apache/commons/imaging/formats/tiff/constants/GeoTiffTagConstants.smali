.class public final Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;
.super Ljava/lang/Object;
.source "GeoTiffTagConstants.java"


# static fields
.field public static final ALL_GEO_TIFF_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_GEO_ASCII_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_GEO_DOUBLE_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

.field public static final EXIF_TAG_GEO_KEY_DIRECTORY_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

.field public static final EXIF_TAG_INTERGRAPH_MATRIX_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

.field public static final EXIF_TAG_MODEL_PIXEL_SCALE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

.field public static final EXIF_TAG_MODEL_TIEPOINT_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

.field public static final EXIF_TAG_MODEL_TRANSFORMATION_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "ModelPixelScaleTag"

    const v3, 0x830e

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_PIXEL_SCALE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

    .line 2
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

    const-string v3, "IntergraphMatrixTag"

    const v5, 0x8480

    const/4 v6, -0x1

    invoke-direct {v2, v3, v5, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_INTERGRAPH_MATRIX_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

    .line 3
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

    const-string v5, "ModelTiepointTag"

    const v7, 0x8482

    invoke-direct {v3, v5, v7, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TIEPOINT_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

    .line 4
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

    const-string v7, "ModelTransformationTag"

    const v8, 0x85d8

    const/16 v9, 0x10

    invoke-direct {v5, v7, v8, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TRANSFORMATION_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

    .line 5
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    const-string v8, "GeoKeyDirectoryTag"

    const v9, 0x87af

    invoke-direct {v7, v8, v9, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_KEY_DIRECTORY_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    .line 6
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

    const-string v9, "GeoDoubleParamsTag"

    const v10, 0x87b0

    invoke-direct {v8, v9, v10, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_DOUBLE_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDoubles;

    .line 7
    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v10, "GeoAsciiParamsTag"

    const v11, 0x87b1

    invoke-direct {v9, v10, v11, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_ASCII_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v6, 0x0

    aput-object v0, v1, v6

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    aput-object v5, v1, v4

    const/4 v0, 0x4

    aput-object v7, v1, v0

    const/4 v0, 0x5

    aput-object v8, v1, v0

    const/4 v0, 0x6

    aput-object v9, v1, v0

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->ALL_GEO_TIFF_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
