.class public Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;
.super Ljava/lang/Object;
.source "UncompressedDataReader.java"

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
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;->a:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    return-void
.end method


# virtual methods
.method public readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/PsdImageContents;Lorg/apache/commons/imaging/common/BinaryFileParser;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p4, p3, Lorg/apache/commons/imaging/formats/psd/PsdImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    .line 2
    iget v0, p4, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    .line 3
    iget v1, p4, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    .line 4
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;->a:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->getBasicChannelsCount()I

    move-result v2

    .line 5
    iget p4, p4, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->depth:I

    .line 6
    new-instance v3, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, p1, v4}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 7
    new-instance p1, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;

    const/16 v4, 0x8

    invoke-direct {p1, v3, v4}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;-><init>(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;I)V

    const/4 v3, 0x3

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x2

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 8
    const-class v5, I

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_0

    .line 9
    invoke-virtual {p1, p4}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->readBits(I)I

    move-result v8

    .line 10
    aget-object v9, v3, v5

    aget-object v9, v9, v6

    int-to-byte v8, v8

    aput v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object p4, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;->a:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    invoke-virtual {p4, v3, p2, p3}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/PsdImageContents;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    .line 13
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
.end method
