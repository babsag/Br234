.class public abstract Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
.super Ljava/lang/Object;
.source "TiffImageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;,
        Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;,
        Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;,
        Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->b(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)I

    move-result p0

    return p0
.end method

.method private static b(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_SAMPLE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShorts;Z)[S

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    array-length v0, p0

    if-lez v0, :cond_0

    .line 3
    aget-short p0, p0, v1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public abstract getDataReader(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation
.end method

.method public abstract getImageData()[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;
.end method

.method public abstract stripsNotTiles()Z
.end method
