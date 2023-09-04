.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterBiLevel.java"


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(I[IIIIZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 2
    iput-boolean p6, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;->b:Z

    return-void
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget p2, p2, v0

    .line 2
    iget-boolean v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;->b:Z

    if-eqz v1, :cond_0

    rsub-int p2, p2, 0xff

    :cond_0
    const/high16 v1, -0x1000000

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x8

    or-int/2addr v1, v2

    shl-int/2addr p2, v0

    or-int/2addr p2, v1

    .line 3
    invoke-virtual {p1, p3, p4, p2}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
