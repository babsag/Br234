.class public Lorg/apache/commons/imaging/ColorTools;
.super Ljava/lang/Object;
.source "ColorTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    and-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 1
    new-instance v0, Ljava/awt/RenderingHints;

    sget-object v1, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v2, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 2
    sget-object v1, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v2, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v2, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/awt/image/ColorConvertOp;

    invoke-direct {v1, p2, p3, v0}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {v1, p1, p2}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public convertBetweenColorSpacesX2(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 1
    new-instance v0, Ljava/awt/RenderingHints;

    sget-object v1, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v2, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 2
    sget-object v1, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v2, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v2, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/awt/image/ColorConvertOp;

    invoke-direct {v1, p2, p3, v0}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {v1, p1, v0}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p1, v0}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public convertBetweenICCProfiles(Ljava/awt/image/BufferedImage;Ljava/awt/color/ICC_Profile;Ljava/awt/color/ICC_Profile;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1
    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, p2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 2
    new-instance p2, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {p2, p3}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/imaging/ColorTools;->convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method protected convertFromColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/ColorTools;->convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public convertToColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/awt/RenderingHints;

    sget-object v2, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 3
    sget-object v2, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Ljava/awt/image/ColorConvertOp;

    invoke-direct {v2, v0, p2, v1}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {v2, p1, v0}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public convertToICCProfile(Ljava/awt/image/BufferedImage;Ljava/awt/color/ICC_Profile;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1
    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, p2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ColorTools;->convertToColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public convertTosRGB(Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ColorTools;->convertToColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public correctImage(Ljava/awt/image/BufferedImage;Ljava/io/File;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Ljava/io/File;)Ljava/awt/color/ICC_Profile;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, p2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ColorTools;->convertFromColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/ColorModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/ColorTools;->deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;

    move-result-object p1

    return-object p1
.end method

.method public deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/ColorTools;->deriveColorModel(Ljava/awt/image/ColorModel;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;

    move-result-object p1

    return-object p1
.end method

.method public deriveColorModel(Ljava/awt/image/ColorModel;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Ljava/awt/image/ComponentColorModel;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/awt/image/ComponentColorModel;

    if-eqz p3, :cond_0

    .line 5
    new-instance p3, Ljava/awt/image/ComponentColorModel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 6
    invoke-virtual {p1}, Ljava/awt/image/ComponentColorModel;->getTransferType()I

    move-result v5

    move-object v0, p3

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    return-object p3

    .line 7
    :cond_0
    new-instance p3, Ljava/awt/image/ComponentColorModel;

    invoke-virtual {p1}, Ljava/awt/image/ComponentColorModel;->hasAlpha()Z

    move-result v8

    .line 8
    invoke-virtual {p1}, Ljava/awt/image/ComponentColorModel;->isAlphaPremultiplied()Z

    move-result v9

    invoke-virtual {p1}, Ljava/awt/image/ComponentColorModel;->getTransparency()I

    move-result v10

    .line 9
    invoke-virtual {p1}, Ljava/awt/image/ComponentColorModel;->getTransferType()I

    move-result v11

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v6 .. v11}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    return-object p3

    .line 10
    :cond_1
    instance-of p3, p1, Ljava/awt/image/DirectColorModel;

    if-eqz p3, :cond_2

    .line 11
    check-cast p1, Ljava/awt/image/DirectColorModel;

    .line 12
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result p3

    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result v0

    or-int/2addr p3, v0

    .line 13
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result v0

    or-int/2addr p3, v0

    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getAlphaMask()I

    move-result v0

    or-int/2addr p3, v0

    .line 14
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/ColorTools;->a(I)I

    move-result v2

    .line 15
    new-instance p3, Ljava/awt/image/DirectColorModel;

    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result v3

    .line 16
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result v4

    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result v5

    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getAlphaMask()I

    move-result v6

    .line 17
    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->isAlphaPremultiplied()Z

    move-result v7

    invoke-virtual {p1}, Ljava/awt/image/DirectColorModel;->getTransferType()I

    move-result v8

    move-object v0, p3

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Ljava/awt/image/DirectColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZI)V

    return-object p3

    .line 18
    :cond_2
    new-instance p1, Ljava/awt/image/ImagingOpException;

    const-string p2, "Could not clone unknown ColorModel Type."

    invoke-direct {p1, p2}, Ljava/awt/image/ImagingOpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ColorTools;->deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/ColorModel;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ICC_Profile;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, p2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p2, p1, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0
.end method
