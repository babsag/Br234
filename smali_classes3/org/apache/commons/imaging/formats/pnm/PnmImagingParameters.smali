.class public Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;
.super Lorg/apache/commons/imaging/ImagingParameters;
.source "PnmImagingParameters.java"


# instance fields
.field private e:Z

.field private f:Lorg/apache/commons/imaging/ImageFormats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImagingParameters;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;->e:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;->f:Lorg/apache/commons/imaging/ImageFormats;

    return-void
.end method


# virtual methods
.method public getSubtype()Lorg/apache/commons/imaging/ImageFormats;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;->f:Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method

.method public isRawBits()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;->e:Z

    return v0
.end method

.method public setRawBits(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;->e:Z

    return-void
.end method

.method public setSubtype(Lorg/apache/commons/imaging/ImageFormats;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;->f:Lorg/apache/commons/imaging/ImageFormats;

    return-void
.end method
