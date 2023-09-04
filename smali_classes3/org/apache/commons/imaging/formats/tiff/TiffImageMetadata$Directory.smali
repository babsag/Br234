.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;
.super Lorg/apache/commons/imaging/common/GenericImageMetadata;
.source "TiffImageMetadata.java"

# interfaces
.implements Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directory"
.end annotation


# instance fields
.field private final c:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

.field private final d:Ljava/nio/ByteOrder;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    .line 2
    iget v0, p2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->type:I

    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    .line 3
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->c:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 4
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->d:Ljava/nio/ByteOrder;

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;)Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->c:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/commons/imaging/formats/tiff/TiffField;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$TiffMetadataItem;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$TiffMetadataItem;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffField;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;)V

    return-void
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->c:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    return-object p1
.end method

.method public getAllFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffField;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->c:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getDirectoryEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->c:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v0

    return-object v0
.end method

.method public getOutputDirectory(Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;-><init>(ILjava/nio/ByteOrder;)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->getItems()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    .line 4
    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$TiffMetadataItem;

    .line 5
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$TiffMetadataItem;->getTiffField()Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->isOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object v6

    .line 9
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v7

    .line 10
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 11
    invoke-virtual {v6, v7, v3, p1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v9

    .line 12
    array-length v3, v9

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getSize()I

    move-result v4

    div-int v8, v3, v4

    .line 13
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 14
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v5

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 15
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getSortHint()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->setSortHint(I)V

    .line 16
    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V

    .line 18
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->setJpegImageData(Lorg/apache/commons/imaging/formats/tiff/JpegImageData;)V
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getThumbnail()Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->c:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->d:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImage(Ljava/nio/ByteOrder;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->c:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->c:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, " (tiffImageData)"

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v1, " (jpegImageData)"

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-super {p0, p1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
