.class public final Lorg/apache/commons/imaging/formats/tiff/constants/AdobePhotoshopTagConstants;
.super Ljava/lang/Object;
.source "AdobePhotoshopTagConstants.java"


# static fields
.field public static final ALL_ADOBE_PHOTOSHOP_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_IMAGE_SOURCE_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefineds;

.field public static final EXIF_TAG_JPEGTABLES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefineds;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefineds;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "JPEGTables"

    const/16 v3, 0x15b

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefineds;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePhotoshopTagConstants;->EXIF_TAG_JPEGTABLES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefineds;

    .line 2
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefineds;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v3, "ImageSourceData"

    const v5, 0x935c

    invoke-direct {v1, v3, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefineds;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePhotoshopTagConstants;->EXIF_TAG_IMAGE_SOURCE_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefineds;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePhotoshopTagConstants;->ALL_ADOBE_PHOTOSHOP_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
