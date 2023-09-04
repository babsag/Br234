.class public Lorg/apache/commons/imaging/common/ImageBuilder;
.super Ljava/lang/Object;
.source "ImageBuilder.java"


# instance fields
.field private final a:[I

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/common/ImageBuilder;->b(II)V

    mul-int v0, p1, p2

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->a:[I

    .line 4
    iput p1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->b:I

    .line 5
    iput p2, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->c:I

    .line 6
    iput-boolean p3, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->d:Z

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->e:Z

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/common/ImageBuilder;->b(II)V

    mul-int v0, p1, p2

    .line 10
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->a:[I

    .line 11
    iput p1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->b:I

    .line 12
    iput p2, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->c:I

    .line 13
    iput-boolean p3, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->d:Z

    .line 14
    iput-boolean p4, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->e:Z

    return-void
.end method

.method private a(IIII)V
    .locals 1

    if-lez p3, :cond_5

    if-lez p4, :cond_4

    if-ltz p1, :cond_3

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->b:I

    if-ge p1, v0, :cond_3

    add-int/2addr p1, p3

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_1

    .line 2
    iget p1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->c:I

    if-ge p2, p1, :cond_1

    add-int/2addr p2, p4

    if-gt p2, p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "subimage (y+height) is outside raster"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "subimage y is outside raster"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "subimage (x+width) is outside raster"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "subimage x is outside raster"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "negative or zero subimage height"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_5
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "negative or zero subimage width"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(II)V
    .locals 0

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "zero or negative height value"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/awt/image/RasterFormatException;

    const-string p2, "zero or negative width value"

    invoke-direct {p1, p2}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c([IIIZ)Ljava/awt/image/BufferedImage;
    .locals 11

    .line 1
    new-instance v0, Ljava/awt/image/DataBufferInt;

    mul-int v1, p2, p3

    invoke-direct {v0, p1, v1}, Ljava/awt/image/DataBufferInt;-><init>([II)V

    if-eqz p4, :cond_0

    .line 2
    new-instance p1, Ljava/awt/image/DirectColorModel;

    const/16 p4, 0x3e8

    .line 3
    invoke-static {p4}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v3

    const/16 v4, 0x20

    const/high16 v5, 0xff0000

    const v6, 0xff00

    const/16 v7, 0xff

    const/high16 v8, -0x1000000

    iget-boolean v9, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->e:Z

    const/4 v10, 0x3

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Ljava/awt/image/DirectColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZI)V

    const/4 p4, 0x4

    new-array v4, p4, [I

    .line 4
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p2

    invoke-static/range {v0 .. v5}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/awt/image/DirectColorModel;

    const/16 p4, 0x18

    const/high16 v1, 0xff0000

    const v2, 0xff00

    const/16 v3, 0xff

    invoke-direct {p1, p4, v1, v2, v3}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    const/4 p4, 0x3

    new-array v4, p4, [I

    .line 6
    fill-array-data v4, :array_1

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p2

    invoke-static/range {v0 .. v5}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p2

    .line 7
    :goto_0
    new-instance p3, Ljava/awt/image/BufferedImage;

    .line 8
    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p3, p1, p2, p4, v0}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p3

    nop

    :array_0
    .array-data 4
        0xff0000
        0xff00
        0xff
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        0xff0000
        0xff00
        0xff
    .end array-data
.end method


# virtual methods
.method public getBufferedImage()Ljava/awt/image/BufferedImage;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->a:[I

    iget v1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->b:I

    iget v2, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->c:I

    iget-boolean v3, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->d:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->c([IIIZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->c:I

    return v0
.end method

.method public getRGB(II)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->b:I

    mul-int p2, p2, v0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->a:[I

    add-int/2addr p2, p1

    aget p1, v0, p2

    return p1
.end method

.method public getSubimage(IIII)Ljava/awt/image/BufferedImage;
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/common/ImageBuilder;->a(IIII)V

    mul-int v0, p3, p4

    .line 2
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    add-int v3, v1, p2

    .line 3
    iget v4, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->b:I

    mul-int v3, v3, v4

    add-int/2addr v3, p1

    .line 4
    iget-object v4, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->a:[I

    invoke-static {v4, v3, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->d:Z

    invoke-direct {p0, v0, p3, p4, p1}, Lorg/apache/commons/imaging/common/ImageBuilder;->c([IIIZ)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getSubset(IIII)Lorg/apache/commons/imaging/common/ImageBuilder;
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/common/ImageBuilder;->a(IIII)V

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/common/ImageBuilder;

    iget-boolean v1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->d:Z

    iget-boolean v2, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->e:Z

    invoke-direct {v0, p3, p4, v1, v2}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZZ)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    add-int v2, v1, p2

    .line 3
    iget v3, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->b:I

    mul-int v2, v2, v3

    add-int/2addr v2, p1

    mul-int v3, v1, p3

    .line 4
    iget-object v4, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->a:[I

    iget-object v5, v0, Lorg/apache/commons/imaging/common/ImageBuilder;->a:[I

    invoke-static {v4, v2, v5, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->b:I

    return v0
.end method

.method public setRGB(III)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->b:I

    mul-int p2, p2, v0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->a:[I

    add-int/2addr p2, p1

    aput p3, v0, p2

    return-void
.end method
