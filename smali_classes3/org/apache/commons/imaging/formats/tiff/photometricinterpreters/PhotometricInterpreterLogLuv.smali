.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterLogLuv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$a;,
        Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;
    }
.end annotation


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method


# virtual methods
.method a(Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;)Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$a;
    .locals 12

    .line 1
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;->a:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 2
    iget v2, p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;->b:F

    div-float/2addr v2, v1

    .line 3
    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;->c:F

    div-float/2addr p1, v1

    const v1, 0x404f65fe

    mul-float v1, v1, v0

    const v3, -0x403b3d08    # -1.5372f

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    const v3, -0x4100b780    # -0.4986f

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    const v3, -0x4087f62b    # -0.9689f

    mul-float v3, v3, v0

    const v4, 0x3ff01a37    # 1.8758f

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    const v4, 0x3d29fbe7    # 0.0415f

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    const v4, 0x3d6425af    # 0.0557f

    mul-float v0, v0, v4

    const v4, -0x41af1aa0    # -0.204f

    mul-float v2, v2, v4

    add-float/2addr v0, v2

    const v2, 0x3f874bc7    # 1.057f

    mul-float p1, p1, v2

    add-float/2addr v0, p1

    float-to-double v4, v1

    const p1, 0x3d6147ae    # 0.055f

    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const v2, 0x3f870a3d    # 1.055f

    const v8, 0x414eb852    # 12.92f

    const-wide v9, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v11, v4, v9

    if-lez v11, :cond_0

    .line 4
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float v1, v1, v2

    sub-float/2addr v1, p1

    goto :goto_0

    :cond_0
    mul-float v1, v1, v8

    :goto_0
    float-to-double v4, v3

    cmpl-double v11, v4, v9

    if-lez v11, :cond_1

    .line 5
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v3, p1

    goto :goto_1

    :cond_1
    mul-float v3, v3, v8

    :goto_1
    float-to-double v4, v0

    cmpl-double v11, v4, v9

    if-lez v11, :cond_2

    .line 6
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v0, v0, v2

    sub-float/2addr v0, p1

    goto :goto_2

    :cond_2
    mul-float v0, v0, v8

    .line 7
    :goto_2
    new-instance p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$a;

    invoke-direct {p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$a;-><init>()V

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 8
    iput v1, p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$a;->a:I

    mul-float v3, v3, v2

    float-to-int v1, v3

    .line 9
    iput v1, p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$a;->b:I

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 10
    iput v0, p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$a;->c:I

    return-object p1
.end method

.method b(III)Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;
    .locals 8

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x41800000    # 16.0f

    add-float/2addr p1, v1

    const/high16 v1, 0x42e80000    # 116.0f

    div-float/2addr p1, v1

    int-to-float p2, p2

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr p2, v1

    add-float/2addr p2, p1

    int-to-float p3, p3

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr p3, v1

    sub-float p3, p1, p3

    float-to-double v1, p2

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 1
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v5, p1

    .line 2
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v2, v5

    float-to-double v5, p3

    .line 3
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x40f92f1b    # 7.787f

    const v5, 0x3e0d3dcb

    const v6, 0x3c1118c2    # 0.008856f

    cmpl-float v7, v2, v6

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v5

    div-float v2, p1, v4

    :goto_0
    cmpl-float p1, v1, v6

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    sub-float/2addr p2, v5

    div-float v1, p2, v4

    :goto_1
    cmpl-float p1, v3, v6

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    sub-float/2addr p3, v5

    div-float v3, p3, v4

    .line 4
    :goto_2
    new-instance p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;

    invoke-direct {p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;-><init>()V

    const p2, 0x42be1810

    mul-float v1, v1, p2

    .line 5
    iput v1, p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;->a:F

    mul-float v2, v2, v0

    .line 6
    iput v2, p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;->b:F

    const p2, 0x42d9c419

    mul-float v3, v3, p2

    .line 7
    iput v3, p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;->c:F

    return-object p1
.end method

.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    array-length v0, p2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    aget v1, p2, v0

    const/4 v2, 0x1

    .line 3
    aget v2, p2, v2

    int-to-byte v2, v2

    const/4 v3, 0x2

    .line 4
    aget p2, p2, v3

    int-to-byte p2, p2

    .line 5
    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;->b(III)Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;->a(Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$b;)Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$a;

    move-result-object p2

    .line 7
    iget v1, p2, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$a;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0xff

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8
    iget v3, p2, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$a;->b:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9
    iget p2, p2, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv$a;->c:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v2, -0x1000000

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    shl-int/2addr p2, v0

    or-int/2addr p2, v1

    .line 10
    invoke-virtual {p1, p3, p4, p2}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Invalid length of bits per sample (expected 3)."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
