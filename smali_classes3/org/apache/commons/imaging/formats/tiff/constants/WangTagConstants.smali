.class public final Lorg/apache/commons/imaging/formats/tiff/constants/WangTagConstants;
.super Ljava/lang/Object;
.source "WangTagConstants.java"


# static fields
.field public static final ALL_WANG_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_WANG_ANNOTATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "WangAnnotation"

    const v3, 0x80a4

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/WangTagConstants;->EXIF_TAG_WANG_ANNOTATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoBytes;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/WangTagConstants;->ALL_WANG_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
