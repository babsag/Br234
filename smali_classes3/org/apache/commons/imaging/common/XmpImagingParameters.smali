.class public Lorg/apache/commons/imaging/common/XmpImagingParameters;
.super Lorg/apache/commons/imaging/ImagingParameters;
.source "XmpImagingParameters.java"


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImagingParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public getXmpXml()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/XmpImagingParameters;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setXmpXml(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/common/XmpImagingParameters;->e:Ljava/lang/String;

    return-void
.end method
