.class public Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;
.super Lorg/apache/commons/imaging/ImagingParameters;
.source "PcxImagingParameters.java"


# instance fields
.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImagingParameters;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->e:I

    .line 3
    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->f:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->g:I

    return-void
.end method


# virtual methods
.method public getBitDepth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->f:I

    return v0
.end method

.method public getCompression()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->g:I

    return v0
.end method

.method public getPlanes()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->e:I

    return v0
.end method

.method public setBitDepth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->f:I

    return-void
.end method

.method public setCompression(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->g:I

    return-void
.end method

.method public setPlanes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->e:I

    return-void
.end method
