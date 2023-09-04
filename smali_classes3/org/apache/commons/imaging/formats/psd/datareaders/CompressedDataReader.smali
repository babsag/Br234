.class public Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;
.super Ljava/lang/Object;
.source "CompressedDataReader.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/psd/datareaders/DataReader;


# instance fields
.field private final a:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;->a:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    return-void
.end method


# virtual methods
.method public readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/PsdImageContents;Lorg/apache/commons/imaging/common/BinaryFileParser;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lorg/apache/commons/imaging/formats/psd/PsdImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    .line 2
    iget v1, v0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    .line 3
    iget v2, v0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    .line 4
    iget v3, v0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->channels:I

    mul-int v3, v3, v2

    .line 5
    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    .line 6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scanline_bytecount["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual {p4}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    const-string v9, "PSD: bad Image Data"

    .line 8
    invoke-static {v7, p1, v9, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget p4, v0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->depth:I

    .line 10
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;->a:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->getBasicChannelsCount()I

    move-result v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v6, 0x1

    aput v2, v3, v6

    aput v0, v3, v5

    .line 11
    const-class v6, [I

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_1

    mul-int v8, v6, v2

    add-int/2addr v8, v7

    .line 12
    aget v8, v4, v8

    const-string v9, "scanline"

    const-string v10, "PSD: Missing Image Data"

    invoke-static {v9, p1, v8, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v8

    .line 13
    new-instance v9, Lorg/apache/commons/imaging/common/PackBits;

    invoke-direct {v9}, Lorg/apache/commons/imaging/common/PackBits;-><init>()V

    invoke-virtual {v9, v8, v1}, Lorg/apache/commons/imaging/common/PackBits;->decompress([BI)[B

    move-result-object v8

    .line 14
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 15
    new-instance v8, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 16
    new-instance v9, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;

    const/16 v10, 0x8

    invoke-direct {v9, v8, v10}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;-><init>(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;I)V

    .line 17
    :try_start_0
    invoke-virtual {v9, p4, v1}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->readBitsArray(II)[I

    move-result-object v8

    .line 18
    aget-object v10, v3, v6

    aput-object v8, v10, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 21
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;->a:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    invoke-virtual {p1, v3, p2, p3}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/PsdImageContents;)V

    return-void
.end method
