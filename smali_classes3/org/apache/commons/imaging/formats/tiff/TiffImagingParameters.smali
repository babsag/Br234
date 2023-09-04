.class public Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;
.super Lorg/apache/commons/imaging/common/XmpImagingParameters;
.source "TiffImagingParameters.java"


# instance fields
.field private f:Z

.field private g:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

.field private m:Ljava/lang/Integer;

.field private n:Ljava/lang/Integer;

.field private o:Ljava/lang/Integer;

.field private p:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/XmpImagingParameters;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->f:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->g:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    .line 4
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->l:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    .line 5
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->m:Ljava/lang/Integer;

    .line 6
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->n:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->o:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->p:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public clearSubImage()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->j:I

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->k:I

    return-void
.end method

.method public getCompression()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCustomPhotometricInterpreter()Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->l:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    return-object v0
.end method

.method public getLzwCompressionBlockSize()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->g:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    return-object v0
.end method

.method public getSubImageHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->k:I

    return v0
.end method

.method public getSubImageWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->j:I

    return v0
.end method

.method public getSubImageX()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->h:I

    return v0
.end method

.method public getSubImageY()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->i:I

    return v0
.end method

.method public getT4Options()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public getT6Options()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->p:Ljava/lang/Integer;

    return-object v0
.end method

.method public isReadThumbnails()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->f:Z

    return v0
.end method

.method public isSubImageSet()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->j:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCompression(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->m:Ljava/lang/Integer;

    return-void
.end method

.method public setCustomPhotometricInterpreter(Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->l:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    return-void
.end method

.method public setLzwCompressionBlockSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->n:Ljava/lang/Integer;

    return-void
.end method

.method public setOutputSet(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->g:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    return-void
.end method

.method public setReadThumbnails(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->f:Z

    return-void
.end method

.method public setSubImage(IIII)V
    .locals 0

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 1
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->h:I

    .line 2
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->i:I

    .line 3
    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->j:I

    .line 4
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->k:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid sub-image specification width and height must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid sub-image specification: negative x and y values not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setT4Options(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->o:Ljava/lang/Integer;

    return-void
.end method

.method public setT6Options(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->p:Ljava/lang/Integer;

    return-void
.end method
