.class public final Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;
.super Ljava/lang/Object;
.source "AdobePageMaker6TagConstants.java"


# static fields
.field public static final ALL_ADOBE_PAGEMAKER_6_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEXED_VALUE_INDEXED:I = 0x1

.field public static final INDEXED_VALUE_NOT_INDEXED:I = 0x0

.field public static final OPIPROXY_VALUE_HIGHER_RESOLUTION_IMAGE_DOES_NOT_EXIST:I = 0x0

.field public static final OPIPROXY_VALUE_HIGHER_RESOLUTION_IMAGE_EXISTS:I = 0x1

.field public static final TIFF_TAG_CLIP_PATH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

.field public static final TIFF_TAG_IMAGE_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final TIFF_TAG_INDEXED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final TIFF_TAG_OPIPROXY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final TIFF_TAG_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;

.field public static final TIFF_TAG_XCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final TIFF_TAG_YCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v1, "SubIFDs"

    const/16 v2, 0x14a

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

    const-string v1, "ClipPath"

    const/16 v2, 0x157

    invoke-direct {v0, v1, v2, v3, v7}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_CLIP_PATH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

    .line 3
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v2, "XClipPathUnits"

    const/16 v4, 0x158

    invoke-direct {v1, v2, v4, v7}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_XCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 4
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v4, "YClipPathUnits"

    const/16 v5, 0x159

    invoke-direct {v2, v4, v5, v7}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_YCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 5
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v5, "Indexed"

    const/16 v8, 0x15a

    invoke-direct {v4, v5, v8, v7}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_INDEXED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 6
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v8, "OPIProxy"

    const/16 v9, 0x15f

    invoke-direct {v5, v8, v9, v7}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_OPIPROXY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 7
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v9, "ImageID"

    const v10, 0x800d

    invoke-direct {v8, v9, v10, v3, v7}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_IMAGE_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v3, 0x7

    new-array v3, v3, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const/4 v6, 0x1

    aput-object v0, v3, v6

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    const/4 v0, 0x4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    aput-object v5, v3, v0

    const/4 v0, 0x6

    aput-object v8, v3, v0

    .line 8
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->ALL_ADOBE_PAGEMAKER_6_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
