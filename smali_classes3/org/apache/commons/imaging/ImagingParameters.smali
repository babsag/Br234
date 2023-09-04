.class public Lorg/apache/commons/imaging/ImagingParameters;
.super Ljava/lang/Object;
.source "ImagingParameters.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Lorg/apache/commons/imaging/common/BufferedImageFactory;

.field private d:Lorg/apache/commons/imaging/PixelDensity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/imaging/ImagingParameters;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/commons/imaging/ImagingParameters;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/apache/commons/imaging/ImagingParameters;->c:Lorg/apache/commons/imaging/common/BufferedImageFactory;

    return-void
.end method


# virtual methods
.method public getBufferedImageFactory()Lorg/apache/commons/imaging/common/BufferedImageFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/ImagingParameters;->c:Lorg/apache/commons/imaging/common/BufferedImageFactory;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/ImagingParameters;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPixelDensity()Lorg/apache/commons/imaging/PixelDensity;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/ImagingParameters;->d:Lorg/apache/commons/imaging/PixelDensity;

    return-object v0
.end method

.method public isStrict()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/ImagingParameters;->a:Z

    return v0
.end method

.method public setBufferedImageFactory(Lorg/apache/commons/imaging/common/BufferedImageFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/ImagingParameters;->c:Lorg/apache/commons/imaging/common/BufferedImageFactory;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/ImagingParameters;->b:Ljava/lang/String;

    return-void
.end method

.method public setPixelDensity(Lorg/apache/commons/imaging/PixelDensity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/ImagingParameters;->d:Lorg/apache/commons/imaging/PixelDensity;

    return-void
.end method

.method public setStrict(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/imaging/ImagingParameters;->a:Z

    return-void
.end method
