.class Lorg/apache/commons/imaging/formats/png/d;
.super Ljava/lang/Object;
.source "PngWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/png/d$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 8
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private b(Lorg/apache/commons/imaging/formats/png/PngColorType;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)B
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->getBitDepth()B

    move-result p2

    .line 2
    invoke-virtual {p1, p2}, Lorg/apache/commons/imaging/formats/png/PngColorType;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    return p2
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    array-length v0, p3

    .line 2
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/png/d;->q(Ljava/io/OutputStream;I)V

    .line 3
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->array:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 5
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/formats/png/c;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/png/c;-><init>()V

    .line 6
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->array:[B

    array-length v1, p2

    invoke-virtual {v0, p2, v1}, Lorg/apache/commons/imaging/formats/png/c;->d([BI)J

    move-result-wide v1

    if-nez p3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    array-length p2, p3

    invoke-virtual {v0, v1, v2, p3, p2}, Lorg/apache/commons/imaging/formats/png/c;->a(J[BI)J

    move-result-wide v1

    .line 8
    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/c;->b(J)J

    move-result-wide p2

    long-to-int p3, p2

    .line 9
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/imaging/formats/png/d;->q(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private e(Ljava/io/OutputStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/imaging/formats/png/d;->d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private f(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/png/d;->d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private g(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    iget v1, p2, Lorg/apache/commons/imaging/formats/png/d$a;->a:I

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/png/d;->q(Ljava/io/OutputStream;I)V

    .line 3
    iget v1, p2, Lorg/apache/commons/imaging/formats/png/d$a;->b:I

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/png/d;->q(Ljava/io/OutputStream;I)V

    .line 4
    iget-byte v1, p2, Lorg/apache/commons/imaging/formats/png/d$a;->c:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 5
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/d$a;->d:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->c()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 6
    iget-byte v1, p2, Lorg/apache/commons/imaging/formats/png/d$a;->e:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 7
    iget-byte v1, p2, Lorg/apache/commons/imaging/formats/png/d$a;->f:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 8
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/d$a;->g:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 9
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/png/d;->d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private h(Ljava/io/OutputStream;IIB)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [B

    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    shr-int/2addr p2, v2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x3

    aput-byte p2, v0, v1

    shr-int/lit8 p2, p3, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x4

    aput-byte p2, v0, v1

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x5

    aput-byte p2, v0, v1

    shr-int/lit8 p2, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x6

    aput-byte p2, v0, v1

    shr-int/lit8 p2, p3, 0x0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 p3, 0x7

    aput-byte p2, v0, p3

    const/16 p2, 0x8

    aput-byte p4, v0, p2

    .line 1
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/png/d;->d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private i(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 2
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    invoke-interface {p2, v3}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v4

    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v6, v5, 0x0

    shr-int/lit8 v7, v4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 4
    aput-byte v7, v1, v6

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 5
    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x2

    shr-int/2addr v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/d;->d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private j(Ljava/io/OutputStream;DDB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-virtual {v0, p6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 5
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 6
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->sCAL:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/png/d;->d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private k(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    invoke-interface {p2, v2}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/d;->d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private l(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "XML:com.adobe.xmp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 7
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 9
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/png/d;->a([B)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 10
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/png/d;->d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private m(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Itxt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText;->keyword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->languageTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText;->keyword:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 8
    iget-object v2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->languageTag:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 10
    iget-object v2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->translatedKeyword:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 12
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText;->text:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/png/d;->a([B)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 13
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/png/d;->d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void

    .line 14
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Png tEXt chunk language tag is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->languageTag:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Png tEXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText;->keyword:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private n(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Text;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText;->keyword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText;->keyword:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 6
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText;->text:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 7
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/png/d;->d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Png tEXt chunk text is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText;->text:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Png tEXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText;->keyword:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private o(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText;->keyword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText;->keyword:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 7
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText;->text:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/png/d;->a([B)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 8
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/png/d;->d(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Png zTXt chunk text is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText;->text:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Png zTXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText;->keyword:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private q(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p2, p2, 0x0

    and-int/lit16 p2, p2, 0xff

    .line 4
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public p(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    if-nez p3, :cond_0

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;-><init>()V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p3

    :goto_0
    const/4 v13, -0x1

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v12

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v11

    .line 4
    new-instance v0, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v0, v15}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasAlpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 6
    new-instance v1, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v1, v15}, Lorg/apache/commons/imaging/palette/PaletteFactory;->isGrayscale(Ljava/awt/image/BufferedImage;)Z

    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGrayscale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->isForceIndexedColor()Z

    move-result v2

    .line 9
    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->isForceTrueColor()Z

    move-result v3

    if-eqz v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Params: Cannot force both indexed and true color modes"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v10, 0x0

    if-eqz v2, :cond_3

    .line 11
    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    :goto_2
    move/from16 v24, v1

    move-object v9, v2

    goto :goto_4

    :cond_3
    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    .line 12
    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    goto :goto_3

    :cond_4
    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    :goto_3
    move-object v2, v1

    move-object v9, v2

    const/16 v24, 0x0

    goto :goto_4

    .line 13
    :cond_5
    invoke-static {v0, v1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->a(ZZ)Lorg/apache/commons/imaging/formats/png/PngColorType;

    move-result-object v2

    goto :goto_2

    .line 14
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 15
    invoke-direct {v7, v9, v8}, Lorg/apache/commons/imaging/formats/png/d;->b(Lorg/apache/commons/imaging/formats/png/PngColorType;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)B

    move-result v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitDepth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 17
    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-ne v9, v2, :cond_6

    const/16 v3, 0x8

    goto :goto_5

    :cond_6
    move v3, v1

    .line 18
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sampleDepth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 19
    sget-object v3, Lorg/apache/commons/imaging/formats/png/PngConstants;->PNG_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v3, v14}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    .line 20
    sget-object v23, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->NONE:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    .line 21
    new-instance v3, Lorg/apache/commons/imaging/formats/png/d$a;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move/from16 v17, v12

    move/from16 v18, v11

    move/from16 v19, v1

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v23}, Lorg/apache/commons/imaging/formats/png/d$a;-><init>(IIBLorg/apache/commons/imaging/formats/png/PngColorType;BBLorg/apache/commons/imaging/formats/png/InterlaceMethod;)V

    .line 22
    invoke-direct {v7, v14, v3}, Lorg/apache/commons/imaging/formats/png/d;->g(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/d$a;)V

    const/4 v1, 0x0

    if-ne v9, v2, :cond_8

    .line 23
    new-instance v1, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v2, 0x100

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {v1, v15, v0, v2}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeQuantizedRgbaPalette(Ljava/awt/image/BufferedImage;ZI)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object v1

    .line 25
    invoke-direct {v7, v14, v1}, Lorg/apache/commons/imaging/formats/png/d;->i(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V

    .line 26
    invoke-direct {v7, v14, v1}, Lorg/apache/commons/imaging/formats/png/d;->k(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V

    goto :goto_6

    .line 27
    :cond_7
    invoke-virtual {v1, v15, v2}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeQuantizedRgbPalette(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object v1

    .line 28
    invoke-direct {v7, v14, v1}, Lorg/apache/commons/imaging/formats/png/d;->i(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V

    :cond_8
    :goto_6
    move-object v6, v1

    .line 29
    invoke-virtual {v8}, Lorg/apache/commons/imaging/ImagingParameters;->getPixelDensity()Lorg/apache/commons/imaging/PixelDensity;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {v0}, Lorg/apache/commons/imaging/PixelDensity;->isUnitless()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    invoke-virtual {v0}, Lorg/apache/commons/imaging/PixelDensity;->getRawHorizontalDensity()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    .line 32
    invoke-virtual {v0}, Lorg/apache/commons/imaging/PixelDensity;->getRawVerticalDensity()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 33
    invoke-direct {v7, v14, v2, v1, v10}, Lorg/apache/commons/imaging/formats/png/d;->h(Ljava/io/OutputStream;IIB)V

    goto :goto_7

    .line 34
    :cond_9
    invoke-virtual {v0}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    .line 35
    invoke-virtual {v0}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityMetres()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 36
    invoke-direct {v7, v14, v2, v1, v4}, Lorg/apache/commons/imaging/formats/png/d;->h(Ljava/io/OutputStream;IIB)V

    .line 37
    :cond_a
    :goto_7
    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->getPhysicalScale()Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 38
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->getHorizontalUnitsPerPixel()D

    move-result-wide v2

    .line 39
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->getVerticalUnitsPerPixel()D

    move-result-wide v16

    .line 40
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->isInMeters()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v18, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x2

    const/16 v18, 0x2

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/16 v19, 0x1

    move-wide/from16 v4, v16

    move-object v15, v6

    move/from16 v6, v18

    .line 41
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/png/d;->j(Ljava/io/OutputStream;DDB)V

    goto :goto_9

    :cond_c
    move-object v15, v6

    const/16 v19, 0x1

    .line 42
    :goto_9
    invoke-virtual {v8}, Lorg/apache/commons/imaging/common/XmpImagingParameters;->getXmpXml()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 43
    invoke-direct {v7, v14, v0}, Lorg/apache/commons/imaging/formats/png/d;->l(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 44
    :cond_d
    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->getTextChunks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/png/PngText;

    .line 46
    instance-of v2, v1, Lorg/apache/commons/imaging/formats/png/PngText$Text;

    if-eqz v2, :cond_e

    .line 47
    check-cast v1, Lorg/apache/commons/imaging/formats/png/PngText$Text;

    invoke-direct {v7, v14, v1}, Lorg/apache/commons/imaging/formats/png/d;->n(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Text;)V

    goto :goto_a

    .line 48
    :cond_e
    instance-of v2, v1, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;

    if-eqz v2, :cond_f

    .line 49
    check-cast v1, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;

    invoke-direct {v7, v14, v1}, Lorg/apache/commons/imaging/formats/png/d;->o(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;)V

    goto :goto_a

    .line 50
    :cond_f
    instance-of v2, v1, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;

    if-eqz v2, :cond_10

    .line 51
    check-cast v1, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;

    invoke-direct {v7, v14, v1}, Lorg/apache/commons/imaging/formats/png/d;->m(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Itxt;)V

    goto :goto_a

    .line 52
    :cond_10
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown text to embed in PNG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_11
    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;->isPredictorEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    if-nez v24, :cond_12

    if-nez v15, :cond_12

    const/4 v4, 0x1

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    :goto_b
    if-nez v4, :cond_1a

    .line 54
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-eq v9, v1, :cond_14

    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-ne v9, v1, :cond_13

    goto :goto_c

    :cond_13
    const/4 v4, 0x0

    goto :goto_d

    :cond_14
    :goto_c
    const/4 v4, 0x1

    .line 56
    :goto_d
    new-array v1, v12, [I

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v11, :cond_19

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v8, p1

    const/4 v6, 0x0

    move v10, v2

    move v6, v11

    move v11, v12

    move/from16 v16, v12

    move v12, v3

    const/4 v3, -0x1

    move-object v13, v1

    move v14, v5

    move-object v5, v15

    move/from16 v15, v16

    .line 57
    invoke-virtual/range {v8 .. v15}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 58
    sget-object v8, Lorg/apache/commons/imaging/formats/png/b;->NONE:Lorg/apache/commons/imaging/formats/png/b;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v15, :cond_18

    .line 59
    aget v8, v1, v10

    if-eqz v5, :cond_15

    .line 60
    invoke-interface {v5, v8}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 61
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_11

    :cond_15
    shr-int/lit8 v9, v8, 0x18

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v8, v8, 0x0

    and-int/lit16 v8, v8, 0xff

    if-eqz v24, :cond_16

    add-int/2addr v11, v12

    add-int/2addr v11, v8

    .line 62
    div-int/lit8 v11, v11, 0x3

    .line 63
    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_10

    .line 64
    :cond_16
    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 66
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_10
    if-eqz v4, :cond_17

    .line 67
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_17
    :goto_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_18
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v14, p2

    move v11, v6

    move v12, v15

    const/4 v10, 0x0

    const/4 v13, -0x1

    move-object v15, v5

    goto :goto_e

    :cond_19
    const/4 v3, -0x1

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_15

    :cond_1a
    move v6, v11

    move v15, v12

    const/4 v3, -0x1

    .line 69
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-eq v9, v1, :cond_1c

    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-ne v9, v1, :cond_1b

    goto :goto_12

    :cond_1b
    const/16 v19, 0x0

    .line 71
    :cond_1c
    :goto_12
    new-array v1, v15, [I

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v6, :cond_1f

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move v10, v2

    move v11, v15

    move-object v13, v1

    move v4, v15

    .line 72
    invoke-virtual/range {v8 .. v15}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 73
    sget-object v5, Lorg/apache/commons/imaging/formats/png/b;->SUB:Lorg/apache/commons/imaging/formats/png/b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_14
    if-ge v10, v4, :cond_1e

    .line 74
    aget v12, v1, v10

    shr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v14, v12, 0x10

    and-int/lit16 v14, v14, 0xff

    shr-int/lit8 v15, v12, 0x8

    and-int/lit16 v15, v15, 0xff

    and-int/lit16 v12, v12, 0xff

    sub-int v5, v14, v5

    .line 75
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sub-int v5, v15, v8

    .line 76
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sub-int v5, v12, v9

    .line 77
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz v19, :cond_1d

    sub-int v5, v13, v11

    .line 78
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v11, v13

    :cond_1d
    add-int/lit8 v10, v10, 0x1

    move v9, v12

    move v5, v14

    move v8, v15

    goto :goto_14

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    move v15, v4

    goto :goto_13

    .line 79
    :cond_1f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 80
    :goto_15
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 82
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    const/high16 v4, 0x40000

    invoke-direct {v3, v1, v2, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V

    const/4 v10, 0x0

    .line 83
    :goto_16
    array-length v2, v0

    if-ge v10, v2, :cond_21

    .line 84
    array-length v2, v0

    add-int v5, v10, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v10

    .line 85
    invoke-virtual {v3, v0, v10, v2}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 86
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    .line 87
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 88
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 89
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 90
    array-length v6, v2

    if-lez v6, :cond_20

    move-object/from16 v6, p2

    .line 91
    invoke-direct {v7, v6, v2}, Lorg/apache/commons/imaging/formats/png/d;->e(Ljava/io/OutputStream;[B)V

    goto :goto_17

    :cond_20
    move-object/from16 v6, p2

    :goto_17
    move v10, v5

    goto :goto_16

    :cond_21
    move-object/from16 v6, p2

    .line 92
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 93
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 94
    array-length v1, v0

    if-lez v1, :cond_22

    .line 95
    invoke-direct {v7, v6, v0}, Lorg/apache/commons/imaging/formats/png/d;->e(Ljava/io/OutputStream;[B)V

    .line 96
    :cond_22
    invoke-direct {v7, v6}, Lorg/apache/commons/imaging/formats/png/d;->f(Ljava/io/OutputStream;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    return-void
.end method
