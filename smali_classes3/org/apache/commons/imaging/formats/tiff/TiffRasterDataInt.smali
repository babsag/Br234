.class public Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;
.super Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;
.source "TiffRasterDataInt.java"


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;-><init>(III)V

    .line 2
    iget p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->nCells:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;-><init>(III)V

    .line 4
    iget p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->nCells:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    return-void
.end method

.method public constructor <init>(III[I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;-><init>(III)V

    if-eqz p4, :cond_0

    .line 10
    array-length p1, p4

    iget p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->nCells:I

    if-lt p1, p2, :cond_0

    .line 11
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified data does not contain sufficient elements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II[I)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;-><init>(III)V

    if-eqz p3, :cond_0

    .line 6
    array-length p1, p3

    iget p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->nCells:I

    if-lt p1, p2, :cond_0

    .line 7
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified data does not contain sufficient elements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getData()[F
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->nCells:I

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->nCells:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    aget v2, v2, v1

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDataType()Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataType;->INTEGER:Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataType;

    return-object v0
.end method

.method public getIntData()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    return-object v0
.end method

.method public getIntValue(II)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 2
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    aget p1, p2, p1

    return p1
.end method

.method public getIntValue(III)I
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 4
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    aget p1, p2, p1

    return p1
.end method

.method public getSimpleStatistics()Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;F)V

    return-object v0
.end method

.method public getSimpleStatistics(F)Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;F)V

    return-object v0
.end method

.method public getValue(II)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 2
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    aget p1, p2, p1

    int-to-float p1, p1

    return p1
.end method

.method public getValue(III)F
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 4
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    aget p1, p2, p1

    int-to-float p1, p1

    return p1
.end method

.method public setIntValue(III)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 2
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    aput p3, p2, p1

    return-void
.end method

.method public setIntValue(IIII)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 4
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    aput p4, p2, p1

    return-void
.end method

.method public setValue(IIF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 2
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    float-to-int p3, p3

    aput p3, p2, p1

    return-void
.end method

.method public setValue(IIIF)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 4
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;->a:[I

    float-to-int p3, p4

    aput p3, p2, p1

    return-void
.end method
