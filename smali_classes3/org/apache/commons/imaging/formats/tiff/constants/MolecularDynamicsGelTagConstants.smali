.class public final Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;
.super Ljava/lang/Object;
.source "MolecularDynamicsGelTagConstants.java"


# static fields
.field public static final ALL_MOLECULAR_DYNAMICS_GEL_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_MD_COLOR_TABLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

.field public static final EXIF_TAG_MD_FILE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final EXIF_TAG_MD_FILE_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_LAB_NAME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_PREP_DATE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_PREP_TIME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_SAMPLE_INFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_SCALE_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "MD FileTag"

    const v3, 0x82a5

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 2
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v3, "MD ScalePixel"

    const v4, 0x82a6

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SCALE_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 3
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    const-string v4, "MD ColorTable"

    const v5, 0x82a7

    const/4 v6, -0x1

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_COLOR_TABLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    .line 4
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v5, "MD LabName"

    const v7, 0x82a8

    invoke-direct {v4, v5, v7, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_LAB_NAME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 5
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v7, "MD SampleInfo"

    const v8, 0x82a9

    invoke-direct {v5, v7, v8, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SAMPLE_INFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 6
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v8, "MD PrepDate"

    const v9, 0x82aa

    invoke-direct {v7, v8, v9, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_DATE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 7
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v9, "MD PrepTime"

    const v10, 0x82ab

    invoke-direct {v8, v9, v10, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_TIME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 8
    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v10, "MD FileUnits"

    const v11, 0x82ac

    invoke-direct {v9, v10, v11, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/16 v1, 0x8

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v6, 0x0

    aput-object v0, v1, v6

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v4, v1, v0

    const/4 v0, 0x4

    aput-object v5, v1, v0

    const/4 v0, 0x5

    aput-object v7, v1, v0

    const/4 v0, 0x6

    aput-object v8, v1, v0

    const/4 v0, 0x7

    aput-object v9, v1, v0

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->ALL_MOLECULAR_DYNAMICS_GEL_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
