.class public Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;
.super Ljava/lang/Object;
.source "TiffRasterStatistics.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;F)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->f:F

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;->getData()[F

    move-result-object p1

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    const-wide/16 v4, 0x0

    move-wide v6, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_0
    if-ge v1, v0, :cond_4

    aget v8, p1, v1

    .line 5
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    cmpl-float v9, v8, p2

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    float-to-double v9, v8

    add-double/2addr v6, v9

    cmpg-float v9, v8, v4

    if-gez v9, :cond_2

    move v4, v8

    :cond_2
    cmpl-float v9, v8, v5

    if-lez v9, :cond_3

    move v5, v8

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_4
    iput v4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->c:F

    .line 7
    iput v5, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->d:F

    .line 8
    iput v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->a:I

    .line 9
    iput v3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->b:I

    if-nez v2, :cond_5

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->e:F

    goto :goto_2

    :cond_5
    int-to-double p1, v2

    div-double/2addr v6, p1

    double-to-float p1, v6

    .line 11
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->e:F

    :goto_2
    return-void
.end method


# virtual methods
.method public getCountOfNulls()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->b:I

    return v0
.end method

.method public getCountOfSamples()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->a:I

    return v0
.end method

.method public getExcludedValue()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->f:F

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->d:F

    return v0
.end method

.method public getMeanValue()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->e:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->c:F

    return v0
.end method

.method public isAnExcludedValueSet()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterStatistics;->f:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
