.class public final Lorg/apache/commons/imaging/formats/tiff/constants/AliasSketchbookProTagConstants;
.super Ljava/lang/Object;
.source "AliasSketchbookProTagConstants.java"


# static fields
.field public static final ALL_ALIAS_SKETCHBOOK_PRO_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_ALIAS_LAYER_METADATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "Alias Layer Metadata"

    const v3, 0xc660

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AliasSketchbookProTagConstants;->EXIF_TAG_ALIAS_LAYER_METADATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AliasSketchbookProTagConstants;->ALL_ALIAS_SKETCHBOOK_PRO_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
