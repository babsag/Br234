.class public Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;
.super Ljava/lang/Object;
.source "JpegImageMetadata.java"

# interfaces
.implements Lorg/apache/commons/imaging/common/ImageMetadata;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

.field private final c:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->b:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->c:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public findEXIFValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->c:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public findEXIFValueWithExactMatch(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->c:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getEXIFThumbnail()Ljava/awt/image/BufferedImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->c:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 4
    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 5
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getThumbnail()Ljava/awt/image/BufferedImage;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    .line 6
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage([B)Ljava/awt/image/BufferedImage;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 9
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    invoke-static {v1}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    .line 11
    throw v0

    .line 12
    :catch_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 13
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 14
    invoke-static {v3}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    return-object v1
.end method

.method public getEXIFThumbnailData()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->c:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 4
    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 5
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    return-object v1
.end method

.method public getEXIFThumbnailSize()Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->getEXIFThumbnailData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getImageSize([B)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExif()Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->c:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->c:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->b:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getPhotoshop()Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->b:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    return-object v0
.end method

.method public getRawImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->c:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 4
    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    .line 5
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->c:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const-string v2, "\t"

    if-nez v1, :cond_1

    const-string v1, "No Exif metadata."

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "Exif metadata:"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->c:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_0
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->b:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    if-nez p1, :cond_2

    const-string p1, "No Photoshop (IPTC) metadata."

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p1, "Photoshop (IPTC) metadata:"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->b:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
