.class public Lorg/apache/commons/imaging/formats/tiff/TiffReader;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "TiffReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$b;,
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$a;,
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;
    }
.end annotation


# instance fields
.field private final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->c:Z

    return-void
.end method

.method private a(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/JpegImageData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getJpegRawImageDataElement()Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    move-result-object p2

    .line 2
    iget-wide v0, p2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    .line 3
    iget p2, p2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v2, p2

    add-long/2addr v2, v0

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int p2, v2

    .line 6
    :cond_0
    invoke-virtual {p1, v0, v1, p2}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object p1

    .line 7
    iget-boolean v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->c:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_1

    array-length v3, p1

    sub-int/2addr v3, v2

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const v3, 0xffd9

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "JPEG EOI marker could not be found at expected location"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    :goto_0
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    invoke-direct {v2, v0, v1, p2, p1}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;-><init>(JI[B)V

    return-object v2
.end method

.method private b(I)Ljava/nio/ByteOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/16 v0, 0x49

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    :cond_0
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TIFF byte order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;

    .line 3
    instance-of v2, p1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    check-cast p1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    .line 7
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;

    iget-wide v5, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v2, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    invoke-direct {v4, v5, v6, v2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;-><init>(JILorg/apache/commons/imaging/common/bytesource/ByteSourceFile;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    .line 10
    iget-wide v4, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v6, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    invoke-virtual {p1, v4, v5, v6}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v4

    .line 11
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;

    iget-wide v6, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    iget v2, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    invoke-direct {v5, v6, v7, v2, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;-><init>(JI[B)V

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->imageDataInStrips()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_ROWS_PER_STRIP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    const v0, 0x7fffffff

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v0

    goto :goto_2

    .line 15
    :cond_2
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v0

    .line 17
    :cond_3
    :goto_2
    new-instance p1, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;I)V

    return-object p1

    .line 18
    :cond_4
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 19
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p1

    .line 20
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 21
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p2

    .line 22
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;II)V

    return-object v0

    .line 23
    :cond_5
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Can\'t find tile length field."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Can\'t find tile width field."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->h(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    move-result-object v0

    .line 2
    invoke-interface {p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->setTiffHeader(Lorg/apache/commons/imaging/formats/tiff/TiffHeader;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-wide v4, v0, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->offsetToFirstIFD:J

    .line 4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    .line 5
    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z

    return-void
.end method

.method private e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "JI",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->f(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private f(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "JI",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v4, p2

    move-object/from16 v12, p6

    move-object/from16 v13, p8

    const-string v0, "Not a Valid TIFF File"

    .line 1
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    return v14

    .line 2
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 4
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v16, 0x1

    cmp-long v3, v4, v1

    if-ltz v3, :cond_2

    if-eqz v15, :cond_1

    .line 5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_1
    return v16

    .line 6
    :cond_2
    :try_start_1
    invoke-static {v15, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "DirectoryEntryCount"

    .line 8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v1, v15, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v17, 0x0

    if-ge v2, v1, :cond_a

    :try_start_3
    const-string v3, "Tag"

    .line 9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v3, v15, v0, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    const-string v8, "Type"

    .line 10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v8, v15, v0, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    const-string v14, "Count"

    .line 11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v14, v15, v0, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    int-to-long v6, v6

    const-wide v19, 0xffffffffL

    and-long v21, v6, v19

    const-string v6, "Offset"

    const/4 v7, 0x4

    .line 12
    invoke-static {v6, v15, v7, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v6

    .line 13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BLjava/nio/ByteOrder;)I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v4, v7

    const-wide v19, 0xffffffffL

    and-long v4, v4, v19

    if-nez v3, :cond_3

    goto/16 :goto_3

    .line 14
    :cond_3
    :try_start_4
    invoke-static {v8}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getFieldType(I)Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v20
    :try_end_4
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v7, v7, v21

    const-wide/16 v23, 0x4

    cmp-long v14, v7, v23

    if-lez v14, :cond_7

    cmp-long v6, v4, v17

    if-ltz v6, :cond_5

    add-long v17, v4, v7

    .line 16
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v23

    cmp-long v6, v17, v23

    if-lez v6, :cond_4

    goto :goto_1

    :cond_4
    long-to-int v6, v7

    .line 17
    invoke-virtual {v11, v4, v5, v6}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v6

    goto :goto_2

    .line 18
    :cond_5
    :goto_1
    iget-boolean v3, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->c:Z

    if-nez v3, :cond_6

    goto :goto_3

    .line 19
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to read byte range starting from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " which is outside the file\'s size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    move-object/from16 v25, v6

    .line 21
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    .line 22
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v26

    move-object/from16 v17, v6

    move/from16 v18, v3

    move/from16 v19, p4

    move-wide/from16 v23, v4

    move/from16 v27, v2

    invoke-direct/range {v17 .. v27}, Lorg/apache/commons/imaging/formats/tiff/TiffField;-><init>(IILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;JJ[BLjava/nio/ByteOrder;I)V

    .line 23
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v12, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->addField(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_9

    if-eqz v15, :cond_8

    .line 25
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_8
    return v16

    :catch_0
    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v4, p2

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_a
    :try_start_6
    const-string v1, "nextDirectoryOffset"

    .line 26
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 27
    invoke-static {v1, v15, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 28
    new-instance v14, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 29
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    move-object v1, v14

    move/from16 v2, p4

    move-object v3, v9

    move-wide/from16 v4, p2

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;-><init>(ILjava/util/List;JJLjava/nio/ByteOrder;)V

    .line 30
    invoke-interface/range {p6 .. p6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->readImageData()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasTiffImageData()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    invoke-direct {v10, v11, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->c(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v0

    .line 33
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V

    .line 34
    :cond_b
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasJpegImageData()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    invoke-direct {v10, v11, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->a(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v0

    .line 36
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->setJpegImageData(Lorg/apache/commons/imaging/formats/tiff/JpegImageData;)V

    .line 37
    :cond_c
    invoke-interface {v12, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_e

    if-eqz v15, :cond_d

    .line 38
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_d
    return v16

    .line 39
    :cond_e
    :try_start_7
    invoke-interface/range {p6 .. p6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->readOffsetDirectories()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v8, 0x3

    new-array v7, v8, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    .line 40
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    const/4 v1, 0x0

    aput-object v0, v7, v1

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_GPSINFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    aput-object v0, v7, v16

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    const/4 v1, 0x2

    aput-object v0, v7, v1

    new-array v6, v8, [I

    const/4 v0, -0x2

    const/16 v19, 0x0

    aput v0, v6, v19

    const/4 v0, -0x3

    aput v0, v6, v16

    const/4 v0, -0x4

    aput v0, v6, v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v8, :cond_12

    .line 41
    aget-object v0, v7, v5

    .line 42
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_10

    .line 43
    :try_start_8
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;)I

    move-result v0

    int-to-long v0, v0

    .line 44
    aget v20, v6, v5
    :try_end_8
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v21, 0x1

    move-wide/from16 v22, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v28, v3

    move-wide/from16 v3, v22

    move/from16 v22, v5

    move/from16 v5, v20

    move-object/from16 v20, v6

    move-object/from16 v6, p5

    move-object/from16 v23, v7

    move-object/from16 v7, p6

    const/16 v24, 0x3

    move/from16 v8, v21

    move-object v11, v9

    move-object/from16 v9, p8

    .line 45
    :try_start_9
    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->f(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z

    move-result v1
    :try_end_9
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v28, v3

    move/from16 v22, v5

    move-object/from16 v20, v6

    move-object/from16 v23, v7

    move-object v11, v9

    const/16 v24, 0x3

    .line 46
    :goto_5
    :try_start_a
    iget-boolean v1, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->c:Z

    if-nez v1, :cond_f

    const/4 v1, 0x0

    :goto_6
    if-nez v1, :cond_11

    move-object/from16 v1, v28

    .line 47
    invoke-interface {v11, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 48
    :cond_f
    throw v0

    :cond_10
    move/from16 v22, v5

    move-object/from16 v20, v6

    move-object/from16 v23, v7

    move-object v11, v9

    const/16 v24, 0x3

    :cond_11
    :goto_7
    add-int/lit8 v5, v22, 0x1

    move-object v9, v11

    move-object/from16 v6, v20

    move-object/from16 v7, v23

    const/4 v8, 0x3

    move-object/from16 v11, p1

    goto :goto_4

    :cond_12
    if-nez p7, :cond_13

    .line 49
    iget-wide v3, v14, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->nextDirectoryOffset:J

    cmp-long v0, v3, v17

    if-lez v0, :cond_13

    add-int/lit8 v5, p4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    .line 50
    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_13
    if-eqz v15, :cond_14

    .line 51
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_14
    return v16

    :catch_3
    move-exception v0

    .line 52
    :try_start_b
    iget-boolean v1, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->c:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v1, :cond_16

    if-eqz v15, :cond_15

    .line 53
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_15
    return v16

    .line 54
    :cond_16
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_17

    .line 55
    :try_start_d
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17
    :goto_8
    throw v1
.end method

.method private g(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BYTE_ORDER_1"

    const-string v1, "Not a Valid TIFF File"

    .line 1
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    const-string v2, "BYTE_ORDER_2"

    .line 2
    invoke-static {v2, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    if-ne v0, v2, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->b(I)Ljava/nio/ByteOrder;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    const-string v3, "tiffVersion"

    invoke-static {v3, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_0

    const-wide v3, 0xffffffffL

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    const-string v6, "offsetToFirstIFD"

    invoke-static {v6, p1, v1, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    int-to-long v5, v1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x8

    sub-long v5, v3, v5

    const-string v1, "Not a Valid TIFF File: couldn\'t find IFDs"

    .line 7
    invoke-static {p1, v5, v6, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 8
    new-instance p1, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    invoke-direct {p1, v0, v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;-><init>(Ljava/nio/ByteOrder;IJ)V

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Tiff Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Byte Order bytes don\'t match ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;
    .locals 1
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
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->g(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method


# virtual methods
.method public read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->d(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    return-void
.end method

.method public readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$a;

    invoke-direct {v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$a;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)V

    .line 2
    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$a;->a()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    return-object p1
.end method

.method public readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;->setReadThumbnails(Z)V

    .line 3
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/TiffReader$a;

    invoke-direct {p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$a;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffImagingParameters;)V

    .line 4
    invoke-direct {p0, p1, p3, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->d(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    .line 5
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$a;->a()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    .line 6
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Image did not contain any directories."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$b;

    invoke-direct {v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$b;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$a;->a()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p1

    .line 4
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Image did not contain any directories."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
