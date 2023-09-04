.class public Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "IcnsImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;,
        Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;,
        Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/ImageParser<",
        "Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;",
        ">;"
    }
.end annotation


# static fields
.field static final d:I

.field private static final e:Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "icns"

    .line 1
    invoke-static {v0}, Lorg/apache/commons/imaging/formats/icns/b;->k(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->d:I

    .line 2
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getExtensions()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v1, "Type"

    const-string v2, "Not a valid ICNS file"

    invoke-static {v1, p1, v2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    const-string v3, "ElementSize"

    invoke-static {v3, p1, v2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    if-gt v1, p2, :cond_0

    add-int/lit8 p2, v1, -0x8

    const-string v3, "Data"

    .line 3
    invoke-static {v3, p1, p2, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    .line 4
    new-instance p2, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;

    invoke-direct {p2, v0, v1, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;-><init>(II[B)V

    return-object p2

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Corrupted ICNS file: element size %d is greater than remaining size %d"

    .line 7
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v1, "Magic"

    const-string v2, "Not a Valid ICNS File"

    invoke-static {v1, p1, v2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    const-string v3, "FileSize"

    invoke-static {v3, p1, v2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    .line 3
    sget v1, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->d:I

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v1, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$c;

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$c;-><init>(II)V

    return-object v1

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Valid ICNS File: magic is 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->b(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$c;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget v2, v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$c;->b:I

    add-int/lit8 v2, v2, -0x8

    :goto_0
    if-lez v2, :cond_0

    .line 5
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->a(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;

    move-result-object v3

    .line 6
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget v3, v3, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;->b:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 9
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v1, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;-><init>(Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$c;[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 12
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->c(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;

    move-result-object p2

    .line 2
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;->a:Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$c;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$c;->a(Ljava/io/PrintWriter;)V

    .line 3
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;->b:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 4
    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;->a(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->f:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    .line 1
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->c(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;->b:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;

    invoke-static {p1}, Lorg/apache/commons/imaging/formats/icns/a;->g([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;)Ljava/util/List;

    move-result-object p1

    return-object p1
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
    check-cast p2, Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->c(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;->b:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;

    invoke-static {p1}, Lorg/apache/commons/imaging/formats/icns/a;->g([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/image/BufferedImage;

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "No icons in ICNS file"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->e:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultParameters()Lorg/apache/commons/imaging/ImagingParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParameters()Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;-><init>()V

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
    check-cast p2, Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)[B

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)[B
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
    check-cast p2, Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->c(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;->b:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/icns/a;->g([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/image/BufferedImage;

    .line 6
    new-instance v21, Lorg/apache/commons/imaging/ImageInfo;

    move-object/from16 v2, v21

    const/16 v4, 0x20

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;

    .line 7
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 8
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v3, "Icns"

    const-string v7, "ICNS Apple Icon Image"

    const-string v9, "image/x-icns"

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v21

    .line 9
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "No icons in ICNS file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
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
    check-cast p2, Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->c(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$a;->b:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;

    invoke-static {p1}, Lorg/apache/commons/imaging/formats/icns/a;->g([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$b;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/image/BufferedImage;

    .line 6
    new-instance p2, Ljava/awt/Dimension;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 7
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "No icons in ICNS file"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

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
    check-cast p2, Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
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

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Apple Icon Image"

    return-object v0
.end method

.method public bridge synthetic writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/ImagingParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)V

    return-void
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/icns/IcnsImagingParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p3

    const/16 v0, 0x10

    if-ne p3, v0, :cond_0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p3

    if-ne p3, v0, :cond_0

    .line 3
    sget-object p3, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p3

    const/16 v1, 0x20

    if-ne p3, v1, :cond_1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p3

    if-ne p3, v1, :cond_1

    .line 5
    sget-object p3, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p3

    const/16 v1, 0x30

    if-ne p3, v1, :cond_2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p3

    if-ne p3, v1, :cond_2

    .line 7
    sget-object p3, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p3

    const/16 v1, 0x80

    if-ne p3, v1, :cond_7

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p3

    if-ne p3, v1, :cond_7

    .line 9
    sget-object p3, Lorg/apache/commons/imaging/formats/icns/b;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/b;

    .line 10
    :goto_0
    new-instance v1, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 11
    :try_start_0
    sget p2, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->d:I

    invoke-virtual {v1, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 12
    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/icns/b;->i()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    .line 13
    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/icns/b;->g()I

    move-result v2

    mul-int p2, p2, v2

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/icns/b;->i()I

    move-result v0

    .line 14
    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/icns/b;->g()I

    move-result v2

    mul-int v0, v0, v2

    add-int/2addr p2, v0

    .line 15
    invoke-virtual {v1, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 16
    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/icns/b;->h()I

    move-result p2

    invoke-virtual {v1, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 17
    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/icns/b;->i()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    .line 18
    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/icns/b;->g()I

    move-result v0

    mul-int p2, p2, v0

    add-int/lit8 p2, p2, 0x8

    .line 19
    invoke-virtual {v1, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 20
    :goto_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_4

    const/4 v2, 0x0

    .line 21
    :goto_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 22
    invoke-virtual {p1, v2, v0}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v3

    .line 23
    invoke-virtual {v1, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v4, v3, 0x10

    .line 24
    invoke-virtual {v1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v4, v3, 0x8

    .line 25
    invoke-virtual {v1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 26
    invoke-virtual {v1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_4
    invoke-static {p3}, Lorg/apache/commons/imaging/formats/icns/b;->c(Lorg/apache/commons/imaging/formats/icns/b;)Lorg/apache/commons/imaging/formats/icns/b;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/icns/b;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 29
    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/icns/b;->i()I

    move-result v0

    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/icns/b;->i()I

    move-result p3

    mul-int v0, v0, p3

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p3, 0x0

    .line 30
    :goto_3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    if-ge p3, v0, :cond_6

    const/4 v0, 0x0

    .line 31
    :goto_4
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 32
    invoke-virtual {p1, v0, p3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    .line 33
    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 34
    :cond_6
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1

    .line 36
    :cond_7
    new-instance p2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid/unsupported source width "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and height "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
