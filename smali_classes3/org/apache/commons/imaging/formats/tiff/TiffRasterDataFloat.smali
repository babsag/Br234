.class public Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;
.super Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;
.source "TiffRasterDataFloat.java"


# instance fields
.field private final a:[F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;-><init>(III)V

    .line 2
    iget p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->nCells:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;-><init>(III)V

    .line 4
    iget p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->nCells:I

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    return-void
.end method

.method public constructor <init>(III[F)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;-><init>(III)V

    if-eqz p4, :cond_0

    .line 10
    array-length p1, p4

    iget p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->nCells:I

    if-lt p1, p2, :cond_0

    .line 11
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified data does not contain sufficient elements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II[F)V
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
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified data does not contain sufficient elements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic a(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    aget p1, v0, p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public synthetic b(I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a(I)I

    move-result p1

    return p1
.end method

.method public getData()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    return-object v0
.end method

.method public getDataType()Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataType;->FLOAT:Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataType;

    return-object v0
.end method

.method public getIntData()[I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->nCells:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/c;

    invoke-direct {v1, p0}, Lorg/apache/commons/imaging/formats/tiff/c;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getIntValue(II)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 2
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    aget p1, p2, p1

    float-to-int p1, p1

    return p1
.end method

.method public getIntValue(III)I
    .locals 0

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 4
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    aget p1, p2, p1

    float-to-int p1, p1

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
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    aget p1, p2, p1

    return p1
.end method

.method public getValue(III)F
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 4
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    aget p1, p2, p1

    return p1
.end method

.method public setIntValue(III)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 2
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    int-to-float p3, p3

    aput p3, p2, p1

    return-void
.end method

.method public setIntValue(IIII)V
    .locals 0

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 4
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    int-to-float p3, p4

    aput p3, p2, p1

    return-void
.end method

.method public setValue(IIF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 2
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    aput p3, p2, p1

    return-void
.end method

.method public setValue(IIIF)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->checkCoordinatesAndComputeIndex(III)I

    move-result p1

    .line 4
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;->a:[F

    aput p4, p2, p1

    return-void
.end method
