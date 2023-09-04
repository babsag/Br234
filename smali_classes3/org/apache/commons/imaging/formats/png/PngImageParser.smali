.class public Lorg/apache/commons/imaging/formats/png/PngImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "PngImageParser.java"

# interfaces
.implements Lorg/apache/commons/imaging/common/XmpEmbeddable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/ImageParser<",
        "Lorg/apache/commons/imaging/formats/png/PngImagingParameters;",
        ">;",
        "Lorg/apache/commons/imaging/common/XmpEmbeddable;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/logging/Logger;

.field private static final e:Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/commons/imaging/formats/png/PngImageParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser;->d:Ljava/util/logging/Logger;

    .line 2
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/formats/png/PngImageParser;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getExtensions()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
            ">;",
            "Lorg/apache/commons/imaging/formats/png/ChunkType;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 3
    iget v2, v1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    iget v3, p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v2, v3, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(Lorg/apache/commons/imaging/formats/png/PngColorType;Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;)Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p1, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterIndexedColor;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterIndexedColor;-><init>([B)V

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Simple Transparency not compatible with ColorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;-><init>([B)V

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;-><init>([B)V

    return-object p1
.end method

.method private c(I[Lorg/apache/commons/imaging/formats/png/ChunkType;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 2
    iget v4, v4, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private d(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "[",
            "Lorg/apache/commons/imaging/formats/png/ChunkType;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    const-string v2, "Length"

    const-string v3, "Not a Valid PNG File"

    invoke-static {v2, p1, v3, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    if-ltz v1, :cond_f

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v5, "ChunkType"

    invoke-static {v5, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    .line 4
    sget-object v6, Lorg/apache/commons/imaging/formats/png/PngImageParser;->d:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    const/4 v9, 0x4

    if-eqz v8, :cond_1

    .line 5
    invoke-static {v5, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0, v2, v1, v9}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 7
    :cond_1
    invoke-direct {p0, v4, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->c(I[Lorg/apache/commons/imaging/formats/png/ChunkType;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    const-string v5, "Chunk Data"

    const-string v8, "Not a Valid PNG File: Couldn\'t read Chunk Data."

    .line 8
    invoke-static {v5, p1, v1, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v5

    goto :goto_0

    :cond_2
    int-to-long v10, v1

    .line 9
    invoke-static {p1, v10, v11, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 10
    :goto_0
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 11
    array-length v6, v5

    const-string v7, "bytes"

    invoke-virtual {p0, v7, v6, v9}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 12
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    const-string v7, "CRC"

    invoke-static {v7, p1, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    if-eqz v2, :cond_e

    .line 13
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v2, v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, v2, :cond_4

    .line 14
    new-instance v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;

    invoke-direct {v2, v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;-><init>(III[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 15
    :cond_4
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v2, v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, v2, :cond_5

    .line 16
    new-instance v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;

    invoke-direct {v2, v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;-><init>(III[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 17
    :cond_5
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v2, v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, v2, :cond_6

    .line 18
    new-instance v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;

    invoke-direct {v2, v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;-><init>(III[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 19
    :cond_6
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v2, v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, v2, :cond_7

    .line 20
    new-instance v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    invoke-direct {v2, v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;-><init>(III[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_7
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v2, v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, v2, :cond_8

    .line 22
    new-instance v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    invoke-direct {v2, v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;-><init>(III[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_8
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v2, v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, v2, :cond_9

    .line 24
    new-instance v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;

    invoke-direct {v2, v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;-><init>(III[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_9
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->sCAL:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v2, v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, v2, :cond_a

    .line 26
    new-instance v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;

    invoke-direct {v2, v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;-><init>(III[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_a
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v2, v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, v2, :cond_b

    .line 28
    new-instance v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIdat;

    invoke-direct {v2, v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIdat;-><init>(III[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    :cond_b
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v2, v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, v2, :cond_c

    .line 30
    new-instance v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;

    invoke-direct {v2, v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;-><init>(III[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    :cond_c
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v2, v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, v2, :cond_d

    .line 32
    new-instance v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    invoke-direct {v2, v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;-><init>(III[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_d
    new-instance v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    invoke-direct {v2, v1, v4, v3, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p3, :cond_e

    return-object v0

    .line 34
    :cond_e
    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v1, v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v4, v1, :cond_0

    return-object v0

    .line 35
    :cond_f
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid PNG chunk length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "[",
            "Lorg/apache/commons/imaging/formats/png/ChunkType;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
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
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readSignature(Ljava/io/InputStream;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->d(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public static getChunkTypeName(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x0

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/ImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, ""

    .line 2
    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p2, v0, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p2

    .line 4
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 6
    sget-object p1, Lorg/apache/commons/imaging/formats/png/PngImageParser;->d:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "PNG contains more than one Header"

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_1
    return v1

    .line 8
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Color: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chunks: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 12
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 13
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    invoke-static {p1, v3, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return v4
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser;->f:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    .line 1
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

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
    check-cast p2, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 2
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v5, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v8, 0x2

    aput-object v7, v2, v8

    sget-object v9, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v10, 0x3

    aput-object v9, v2, v10

    sget-object v9, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v10, 0x4

    aput-object v9, v2, v10

    sget-object v9, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v10, 0x5

    aput-object v9, v2, v10

    sget-object v9, Lorg/apache/commons/imaging/formats/png/ChunkType;->sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v10, 0x6

    aput-object v9, v2, v10

    move-object/from16 v9, p1

    invoke-direct {v1, v9, v2, v4}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_16

    .line 4
    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v6, :cond_15

    .line 6
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    .line 7
    invoke-direct {v1, v2, v5}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v6, :cond_14

    .line 9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    if-ne v9, v6, :cond_0

    .line 10
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    goto :goto_0

    :cond_0
    move-object v5, v10

    .line 11
    :goto_0
    invoke-direct {v1, v2, v7}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v7

    .line 12
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_13

    .line 13
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 15
    check-cast v11, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIdat;

    .line 16
    invoke-virtual {v11}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object v11

    .line 17
    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 19
    sget-object v9, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v1, v2, v9}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v9

    .line 20
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 21
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 22
    iget-object v11, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-direct {v1, v11, v9}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->b(Lorg/apache/commons/imaging/formats/png/PngColorType;Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;)Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    move-result-object v9

    move-object/from16 v21, v9

    goto :goto_2

    :cond_2
    move-object/from16 v21, v10

    .line 23
    :goto_2
    sget-object v9, Lorg/apache/commons/imaging/formats/png/ChunkType;->sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v1, v2, v9}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v9

    .line 24
    sget-object v11, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v1, v2, v11}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v11

    .line 25
    sget-object v12, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v1, v2, v12}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v2

    .line 26
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-gt v12, v6, :cond_12

    .line 27
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-gt v12, v6, :cond_11

    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-gt v12, v6, :cond_10

    .line 29
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v6, :cond_3

    .line 30
    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngImageParser;->d:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "sRGB, no color management necessary."

    .line 31
    invoke-virtual {v2, v9}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_4

    .line 32
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v6, :cond_5

    .line 33
    sget-object v9, Lorg/apache/commons/imaging/formats/png/PngImageParser;->d:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "iCCP."

    .line 34
    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 35
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;

    .line 36
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->getUncompressedProfile()[B

    move-result-object v2

    .line 37
    :try_start_0
    invoke-static {v2}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v20, v10

    move-object v10, v2

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 38
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "The image data does not correspond to a valid ICC Profile"

    invoke-direct {v0, v3, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 39
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_8

    .line 40
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;

    .line 41
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;->getGamma()D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v15, v13, v11

    .line 42
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v15, v17

    if-ltz v2, :cond_6

    .line 43
    new-instance v2, Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-direct {v2, v11, v12, v13, v14}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;-><init>(DD)V

    goto :goto_3

    :cond_6
    move-object v2, v10

    :goto_3
    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    .line 44
    invoke-virtual {v5, v2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->correct(Lorg/apache/commons/imaging/formats/png/GammaCorrection;)V

    :cond_7
    move-object/from16 v20, v2

    goto :goto_5

    :cond_8
    :goto_4
    move-object/from16 v20, v10

    .line 45
    :goto_5
    iget v12, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->width:I

    .line 46
    iget v13, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->height:I

    .line 47
    iget-object v2, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    .line 48
    iget v9, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->bitDepth:I

    .line 49
    iget v11, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->filterMethod:I

    if-nez v11, :cond_f

    .line 50
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/PngColorType;->b()I

    move-result v11

    mul-int v18, v9, v11

    .line 51
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/PngColorType;->d()Z

    move-result v11

    if-nez v11, :cond_9

    if-eqz v21, :cond_a

    :cond_9
    const/4 v4, 0x1

    .line 52
    :cond_a
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/PngColorType;->f()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 53
    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/ImageParser;->getBufferedImageFactory(Lorg/apache/commons/imaging/ImagingParameters;)Lorg/apache/commons/imaging/common/BufferedImageFactory;

    move-result-object v0

    invoke-interface {v0, v12, v13, v4}, Lorg/apache/commons/imaging/common/BufferedImageFactory;->getGrayscaleBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_6

    .line 54
    :cond_b
    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/ImageParser;->getBufferedImageFactory(Lorg/apache/commons/imaging/ImagingParameters;)Lorg/apache/commons/imaging/common/BufferedImageFactory;

    move-result-object v0

    invoke-interface {v0, v12, v13, v4}, Lorg/apache/commons/imaging/common/BufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 55
    :goto_6
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 56
    new-instance v14, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v14, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    sget-object v4, Lorg/apache/commons/imaging/formats/png/PngImageParser$a;->b:[I

    iget-object v7, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v4, v4, v7

    if-eq v4, v6, :cond_d

    if-ne v4, v8, :cond_c

    .line 58
    new-instance v3, Lorg/apache/commons/imaging/formats/png/f;

    move-object v11, v3

    move-object v15, v0

    move-object/from16 v16, v2

    move/from16 v17, v9

    move-object/from16 v19, v5

    invoke-direct/range {v11 .. v21}, Lorg/apache/commons/imaging/formats/png/f;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    goto :goto_7

    .line 59
    :cond_c
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown InterlaceMethod: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_d
    new-instance v3, Lorg/apache/commons/imaging/formats/png/g;

    move-object v11, v3

    move-object v15, v0

    move-object/from16 v16, v2

    move/from16 v17, v9

    move-object/from16 v19, v5

    invoke-direct/range {v11 .. v21}, Lorg/apache/commons/imaging/formats/png/g;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    .line 61
    :goto_7
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/png/e;->a()V

    if-eqz v10, :cond_e

    .line 62
    new-instance v2, Lorg/apache/commons/imaging/icc/IccProfileParser;

    invoke-direct {v2}, Lorg/apache/commons/imaging/icc/IccProfileParser;-><init>()V

    invoke-virtual {v2, v10}, Lorg/apache/commons/imaging/icc/IccProfileParser;->issRGB(Ljava/awt/color/ICC_Profile;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 63
    new-instance v2, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v2, v10}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 64
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v3

    .line 66
    new-instance v4, Lorg/apache/commons/imaging/ColorTools;

    invoke-direct {v4}, Lorg/apache/commons/imaging/ColorTools;-><init>()V

    invoke-virtual {v4, v0, v2, v3}, Lorg/apache/commons/imaging/ColorTools;->convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    :cond_e
    return-object v0

    .line 67
    :cond_f
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PNG: unknown FilterMethod: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->filterMethod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_10
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "PNG: unexpected iCCP chunk"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_11
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "PNG: unexpected gAMA chunk"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_12
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "PNG: unexpected sRGB chunk"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_13
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "PNG missing image data"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_14
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "PNG contains more than one Palette"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_15
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "PNG contains more than one Header"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_16
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "PNG: no chunks"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChunkTypes(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->d(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 4
    iget v1, v1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getChunkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser;->e:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultParameters()Lorg/apache/commons/imaging/ImagingParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/png/PngImagingParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParameters()Lorg/apache/commons/imaging/formats/png/PngImagingParameters;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;-><init>()V

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
    check-cast p2, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)[B

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x1

    new-array v0, p2, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 2
    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->getUncompressedProfile()[B

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "PNG contains more than one ICC Profile "

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
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
    check-cast p2, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 2
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->sCAL:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    sget-object v10, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    sget-object v12, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    sget-object v14, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    sget-object v14, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v15, 0x7

    aput-object v14, v1, v15

    move-object/from16 v15, p1

    invoke-direct {v0, v15, v1, v3}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_f

    .line 4
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ne v15, v5, :cond_e

    .line 6
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    .line 7
    invoke-direct {v0, v1, v12}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v12

    .line 8
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    const/16 v30, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v12, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v12}, Lorg/apache/commons/imaging/formats/png/PngColorType;->d()Z

    move-result v12

    move/from16 v30, v12

    :goto_0
    const/4 v12, 0x0

    .line 10
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v4

    .line 11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-gt v15, v5, :cond_d

    .line 12
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ne v15, v5, :cond_1

    .line 13
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;

    .line 14
    :cond_1
    sget-object v4, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->UNDEFINED:Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    .line 15
    invoke-direct {v0, v1, v6}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v6

    .line 16
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-gt v15, v5, :cond_c

    .line 17
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-ne v15, v5, :cond_3

    .line 18
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;

    .line 19
    iget v6, v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;->unitSpecifier:I

    if-ne v6, v5, :cond_2

    .line 20
    iget-wide v5, v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;->unitsPerPixelXAxis:D

    iget-wide v3, v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;->unitsPerPixelYAxis:D

    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->createFromMeters(DD)Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    move-result-object v3

    goto :goto_1

    .line 21
    :cond_2
    iget-wide v5, v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;->unitsPerPixelXAxis:D

    iget-wide v3, v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkScal;->unitsPerPixelYAxis:D

    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/imaging/formats/png/PhysicalScale;->createFromRadians(DD)Lorg/apache/commons/imaging/formats/png/PhysicalScale;

    move-result-object v3

    :goto_1
    move-object/from16 v35, v3

    goto :goto_2

    :cond_3
    move-object/from16 v35, v4

    .line 22
    :goto_2
    invoke-direct {v0, v1, v8}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v3

    .line 23
    invoke-direct {v0, v1, v10}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v4

    .line 24
    invoke-direct {v0, v1, v14}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v5

    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v6, v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v6, v8

    .line 26
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v14, ": "

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 29
    check-cast v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;

    .line 30
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->getContents()Lorg/apache/commons/imaging/formats/png/PngText;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    goto :goto_3

    .line 32
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 33
    check-cast v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;

    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->keyword:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->text:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->getContents()Lorg/apache/commons/imaging/formats/png/PngText;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 36
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 37
    check-cast v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->keyword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->getContents()Lorg/apache/commons/imaging/formats/png/PngText;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 40
    :cond_6
    iget v3, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->bitDepth:I

    iget-object v4, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/png/PngColorType;->b()I

    move-result v4

    mul-int v17, v3, v4

    .line 41
    sget-object v19, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    .line 42
    iget v3, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->height:I

    .line 43
    iget v4, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->width:I

    .line 44
    iget-object v5, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->isProgressive()Z

    move-result v29

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    if-eqz v12, :cond_7

    .line 45
    iget v13, v12, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->unitSpecifier:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 46
    iget v5, v12, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitXAxis:I

    int-to-double v5, v5

    const-wide v13, 0x3f9a027525460aa6L    # 0.0254

    mul-double v5, v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v6, v5

    move-object/from16 v34, v10

    int-to-double v9, v4

    .line 47
    iget v5, v12, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitXAxis:I

    move-object/from16 v21, v8

    int-to-double v7, v5

    mul-double v7, v7, v13

    div-double/2addr v9, v7

    double-to-float v5, v9

    .line 48
    iget v7, v12, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitYAxis:I

    int-to-double v7, v7

    mul-double v7, v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v8, v7

    int-to-double v9, v3

    .line 49
    iget v7, v12, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitYAxis:I

    int-to-double v11, v7

    mul-double v11, v11, v13

    div-double/2addr v9, v11

    double-to-float v7, v9

    move/from16 v27, v5

    move/from16 v26, v6

    move/from16 v25, v7

    move/from16 v24, v8

    goto :goto_6

    :cond_7
    move-object/from16 v21, v8

    move-object/from16 v34, v10

    const/16 v24, -0x1

    const/high16 v25, -0x40800000    # -1.0f

    const/16 v26, -0x1

    const/high16 v27, -0x40800000    # -1.0f

    .line 50
    :goto_6
    sget-object v5, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->a(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_8

    const/16 v31, 0x1

    goto :goto_7

    :cond_8
    const/16 v31, 0x0

    .line 52
    :goto_7
    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngImageParser$a;->a:[I

    iget-object v6, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v5, :cond_b

    const/4 v5, 0x2

    if-eq v1, v5, :cond_a

    const/4 v5, 0x3

    if-eq v1, v5, :cond_a

    const/4 v5, 0x4

    if-eq v1, v5, :cond_b

    const/4 v5, 0x5

    if-ne v1, v5, :cond_9

    goto :goto_8

    .line 53
    :cond_9
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Png: Unknown ColorType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_a
    :goto_8
    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_9

    .line 55
    :cond_b
    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    :goto_9
    move-object/from16 v32, v1

    .line 56
    sget-object v33, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 57
    new-instance v1, Lorg/apache/commons/imaging/formats/png/PngImageInfo;

    move-object v15, v1

    const/16 v23, 0x1

    const-string v16, "Png"

    const-string v20, "PNG Portable Network Graphics"

    const-string v22, "image/png"

    move-object/from16 v18, v21

    move/from16 v21, v3

    move/from16 v28, v4

    invoke-direct/range {v15 .. v35}, Lorg/apache/commons/imaging/formats/png/PngImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;Ljava/util/List;Lorg/apache/commons/imaging/formats/png/PhysicalScale;)V

    return-object v1

    .line 58
    :cond_c
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PNG contains more than one sCAL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_d
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PNG contains more than one pHYs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_e
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "PNG contains more than one Header"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_f
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "PNG: no chunks"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
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
    check-cast p2, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)Ljava/awt/Dimension;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x1

    new-array v0, p2, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 2
    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    .line 6
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->width:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->height:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2

    .line 7
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "PNG contains more than one Header"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Png: No chunks"

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
    check-cast p2, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x2

    new-array p2, p2, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 2
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v2, 0x1

    aput-object v0, p2, v2

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-direct {p2}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 6
    check-cast v0, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;

    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Png-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/common/XmpImagingParameters;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x1

    new-array v0, p2, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 1
    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 5
    check-cast v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    .line 6
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->getKeyword()Ljava/lang/String;

    move-result-object v4

    const-string v5, "XML:com.adobe.xmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    .line 9
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, p2, :cond_4

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    .line 11
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "PNG contains more than one XMP chunk."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasChunkType(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/ChunkType;)Z
    .locals 3
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
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readSignature(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 3
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->d(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr p2, v0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public readSignature(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngConstants;->PNG_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    const-string v1, "Not a Valid PNG Segment: Incorrect Signature"

    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;Lorg/apache/commons/imaging/common/BinaryConstant;Ljava/lang/String;)V

    return-void
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
    check-cast p3, Lorg/apache/commons/imaging/formats/png/PngImagingParameters;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)V

    return-void
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/png/d;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/png/d;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/png/d;->p(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngImagingParameters;)V

    return-void
.end method
