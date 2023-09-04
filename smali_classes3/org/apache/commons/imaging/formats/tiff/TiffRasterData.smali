.class public abstract Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;
.super Ljava/lang/Object;
.source "TiffRasterData.java"


# instance fields
.field protected final height:I

.field protected final nCells:I

.field protected final planarOffset:I

.field protected final samplesPerPixel:I

.field protected final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-lez p3, :cond_0

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->width:I

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->height:I

    .line 4
    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->samplesPerPixel:I

    mul-int p1, p1, p2

    mul-int p3, p3, p1

    .line 5
    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->nCells:I

    .line 6
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->planarOffset:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Raster samples-per-pixel specification must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Raster dimensions less than or equal to zero are not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final checkCoordinatesAndComputeIndex(III)I
    .locals 3

    const-string v0, ")"

    if-ltz p1, :cond_1

    .line 1
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->width:I

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->height:I

    if-ge p2, v2, :cond_1

    if-ltz p3, :cond_0

    .line 2
    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->samplesPerPixel:I

    if-ge p3, v2, :cond_0

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    .line 3
    iget p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->planarOffset:I

    mul-int p3, p3, p1

    add-int/2addr p2, p3

    return p2

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sample index out of range, value "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " where valid range is (0,"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->samplesPerPixel:I

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coordinates out of range ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public abstract getData()[F
.end method

.method public abstract getDataType()Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataType;
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->height:I

    return v0
.end method

.method public abstract getIntData()[I
.end method

.method public abstract getIntValue(II)I
.end method

.method public abstract getIntValue(III)I
.end method

.method public final getSamplesPerPixel()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->samplesPerPixel:I

    return v0
.end method

.method public abstract getSimpleStatistics()Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;
.end method

.method public abstract getSimpleStatistics(F)Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;
.end method

.method public abstract getValue(II)F
.end method

.method public abstract getValue(III)F
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->width:I

    return v0
.end method

.method public abstract setIntValue(III)V
.end method

.method public abstract setIntValue(IIII)V
.end method

.method public abstract setValue(IIF)V
.end method

.method public abstract setValue(IIIF)V
.end method
