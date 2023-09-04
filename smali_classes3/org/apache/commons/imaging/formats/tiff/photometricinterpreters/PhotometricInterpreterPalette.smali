.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterPalette.java"


# instance fields
.field private final b:[I

.field private final c:I


# direct methods
.method public constructor <init>(I[IIII[I)V
    .locals 5

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->getBitsPerSample(I)I

    move-result p2

    const/4 p3, 0x1

    shl-int p4, p3, p2

    .line 3
    new-array p5, p4, [I

    iput-object p5, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->b:[I

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_0

    .line 4
    aget v0, p6, p5

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    add-int v1, p5, p4

    .line 5
    aget v1, p6, v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v2, p4, 0x2

    add-int/2addr v2, p5

    .line 6
    aget v2, p6, v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 7
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->b:[I

    const/high16 v4, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v4

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    aput v0, v3, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_1
    if-ge p1, p2, :cond_1

    shl-int/lit8 p4, p4, 0x1

    or-int/2addr p4, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->c:I

    return-void
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->b:[I

    const/4 v1, 0x0

    aget p2, p2, v1

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->c:I

    and-int/2addr p2, v1

    aget p2, v0, p2

    invoke-virtual {p1, p3, p4, p2}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
