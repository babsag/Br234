.class public Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "RgbeImageParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/ImageParser<",
        "Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method


# virtual methods
.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getExtensions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    .line 1
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public bridge synthetic getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p2, Lorg/apache/commons/imaging/formats/rgbe/b;

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/formats/rgbe/b;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    .line 3
    :try_start_0
    new-instance p1, Ljava/awt/image/DataBufferFloat;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->c()[[F

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    invoke-direct {p1, v0, v1}, Ljava/awt/image/DataBufferFloat;-><init>([[FI)V

    .line 5
    new-instance v0, Ljava/awt/image/BufferedImage;

    new-instance v7, Ljava/awt/image/ComponentColorModel;

    const/16 v1, 0x3e8

    .line 6
    invoke-static {v1}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 7
    invoke-virtual {p1}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    new-instance v1, Ljava/awt/image/BandedSampleModel;

    .line 8
    invoke-virtual {p1}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v2

    .line 9
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->getHeight()I

    move-result v4

    const/4 v5, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/awt/image/BandedSampleModel;-><init>(IIII)V

    new-instance v2, Ljava/awt/Point;

    invoke-direct {v2}, Ljava/awt/Point;-><init>()V

    .line 10
    invoke-static {v1, p1, v2}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v7, p1, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultParameters()Lorg/apache/commons/imaging/ImagingParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParameters()Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;)[B

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v1, Lorg/apache/commons/imaging/formats/rgbe/b;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/formats/rgbe/b;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    .line 3
    :try_start_0
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/rgbe/b;->getHeight()I

    move-result v8

    const-string v9, "image/vnd.radiance"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    .line 7
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/rgbe/b;->getWidth()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    move-object v2, v0

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/rgbe/b;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 9
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/rgbe/b;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public bridge synthetic getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Ljava/awt/Dimension;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;)Ljava/awt/Dimension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p2, Lorg/apache/commons/imaging/formats/rgbe/b;

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/formats/rgbe/b;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    .line 3
    :try_start_0
    new-instance p1, Ljava/awt/Dimension;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Ljava/awt/Dimension;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public bridge synthetic getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/rgbe/RgbeImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p2, Lorg/apache/commons/imaging/formats/rgbe/b;

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/formats/rgbe/b;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->b()Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/rgbe/b;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Radiance HDR"

    return-object v0
.end method
