.class public Lorg/apache/commons/imaging/formats/png/PngImagingParameters;
.super Lorg/apache/commons/imaging/common/XmpImagingParameters;
.source "PngImagingParameters.java"


# static fields
.field public static final DEFAULT_BIT_DEPTH:B = 0x8t


# instance fields
.field private f:B

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lorg/apache/commons/imaging/formats/png/PhysicalScale;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/imaging/formats/png/PngText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/XmpImagingParameters;-><init>()V

    const/16 v0, 0x8

    .line 2
    iput-byte v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->f:B

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->g:Z

    .line 4
    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->h:Z

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->i:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->j:Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    .line 7
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBitDepth()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->f:B

    return v0
.end method

.method public getPhysicalScale()Lorg/apache/commons/imaging/formats/png/PhysicalScale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->j:Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    return-object v0
.end method

.method public getTextChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/imaging/formats/png/PngText;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isForceIndexedColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->g:Z

    return v0
.end method

.method public isForceTrueColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->h:Z

    return v0
.end method

.method public isPredictorEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->i:Z

    return v0
.end method

.method public setBitDepth(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->f:B

    return-void
.end method

.method public setForceIndexedColor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->g:Z

    return-void
.end method

.method public setForceTrueColor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->h:Z

    return-void
.end method

.method public setPhysicalScale(Lorg/apache/commons/imaging/formats/png/PhysicalScale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->j:Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    return-void
.end method

.method public setPredictorEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->i:Z

    return-void
.end method

.method public setTextChunks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/imaging/formats/png/PngText;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->k:Ljava/util/List;

    return-void
.end method
