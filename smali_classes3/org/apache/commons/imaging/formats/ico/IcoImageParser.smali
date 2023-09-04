.class public Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$g;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$b;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$a;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/ImageParser<",
        "Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->ICO:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getExtensions()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private a([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$e;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    const-string v2, "size"

    const-string v3, "Not a Valid ICO File"

    invoke-static {v2, v0, v3, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    const-string v2, "width"

    invoke-static {v2, v0, v3, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    const-string v4, "height"

    invoke-static {v4, v0, v3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v6, "planes"

    invoke-static {v6, v0, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v15

    .line 6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v6, "bitCount"

    invoke-static {v6, v0, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v6, "compression"

    invoke-static {v6, v0, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    .line 8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    const-string v7, "sizeImage"

    invoke-static {v7, v0, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    .line 9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    const-string v7, "xPelsPerMeter"

    .line 10
    invoke-static {v7, v0, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    .line 11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    const-string v7, "yPelsPerMeter"

    .line 12
    invoke-static {v7, v0, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    const-string v7, "colorsUsed"

    invoke-static {v7, v0, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    .line 14
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    const-string v7, "ColorsImportant"

    .line 15
    invoke-static {v7, v0, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    .line 16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    const-string v6, "redMask"

    invoke-static {v6, v0, v3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    .line 17
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    const-string v8, "greenMask"

    invoke-static {v8, v0, v3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    .line 18
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    move/from16 v17, v6

    const-string v6, "blueMask"

    invoke-static {v6, v0, v3, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    move v8, v7

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    move/from16 v18, v7

    const-string v7, "RestOfFile"

    invoke-static {v7, v0, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;I)[B

    move-result-object v0

    const/16 v6, 0x28

    if-ne v5, v6, :cond_e

    const/4 v7, 0x1

    if-ne v15, v7, :cond_d

    const/high16 v19, -0x1000000

    const/16 v6, 0x20

    move-object/from16 v20, v3

    if-nez v4, :cond_1

    if-ne v14, v6, :cond_1

    const/high16 v4, 0xff0000

    const v8, 0xff00

    const/4 v8, 0x3

    const/16 v17, 0xff

    const v18, 0xff00

    const/high16 v21, -0x1000000

    goto :goto_1

    :cond_1
    const/16 v21, 0x0

    move/from16 v31, v8

    move v8, v4

    move/from16 v4, v17

    move/from16 v17, v18

    move/from16 v18, v31

    .line 20
    :goto_1
    new-instance v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$a;

    move/from16 v22, v4

    move-object v4, v3

    move-object/from16 v23, v3

    const/16 v3, 0x20

    move v6, v1

    const/16 v24, 0x1

    move v7, v2

    move/from16 v16, v8

    const/4 v3, 0x0

    move v8, v15

    move/from16 v25, v9

    move v9, v14

    move/from16 v26, v10

    move/from16 v10, v16

    move/from16 v27, v11

    move v11, v13

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v13, v27

    move v3, v14

    move/from16 v14, v26

    move/from16 v30, v15

    move/from16 v15, v25

    invoke-direct/range {v4 .. v15}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$a;-><init>(IIIIIIIIIII)V

    const/16 v4, 0x8

    move/from16 v5, v26

    if-nez v5, :cond_2

    if-gt v3, v4, :cond_2

    shl-int v10, v24, v3

    goto :goto_2

    :cond_2
    move v10, v5

    :goto_2
    const/4 v6, 0x4

    mul-int v10, v10, v6

    const/16 v7, 0x46

    add-int/2addr v10, v7

    .line 21
    array-length v8, v0

    add-int/2addr v8, v7

    .line 22
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 23
    new-instance v9, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v9, v7, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const/16 v11, 0x42

    .line 24
    :try_start_0
    invoke-virtual {v9, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v11, 0x4d

    .line 25
    invoke-virtual {v9, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 26
    invoke-virtual {v9, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 v8, 0x0

    .line 27
    invoke-virtual {v9, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 28
    invoke-virtual {v9, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v10, 0x38

    .line 29
    invoke-virtual {v9, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 30
    invoke-virtual {v9, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 31
    div-int/lit8 v10, v2, 0x2

    invoke-virtual {v9, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v10, v30

    .line 32
    invoke-virtual {v9, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 33
    invoke-virtual {v9, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    move/from16 v10, v16

    .line 34
    invoke-virtual {v9, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v10, v29

    .line 35
    invoke-virtual {v9, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v10, v28

    .line 36
    invoke-virtual {v9, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v10, v27

    .line 37
    invoke-virtual {v9, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 38
    invoke-virtual {v9, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v5, v25

    .line 39
    invoke-virtual {v9, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v5, v22

    .line 40
    invoke-virtual {v9, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v5, v18

    .line 41
    invoke-virtual {v9, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v5, v17

    .line 42
    invoke-virtual {v9, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v5, v21

    .line 43
    invoke-virtual {v9, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 44
    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 45
    invoke-virtual {v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    .line 47
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 48
    new-instance v5, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;

    invoke-direct {v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBufferedImage(Ljava/io/InputStream;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object v5

    add-int/lit8 v1, v1, 0x7

    .line 49
    div-int/2addr v1, v4

    .line 50
    rem-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_3

    sub-int/2addr v6, v4

    add-int/2addr v1, v6

    :cond_3
    const/4 v4, 0x2

    .line 51
    div-int/2addr v2, v4

    mul-int v2, v2, v1

    :try_start_1
    const-string v6, "transparency_map"

    move-object/from16 v9, v20

    .line 52
    invoke-static {v6, v0, v2, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x20

    goto :goto_3

    :catch_0
    move-exception v0

    const/16 v2, 0x20

    if-ne v3, v2, :cond_c

    :goto_3
    const/4 v0, 0x1

    if-ne v3, v2, :cond_6

    const/4 v2, 0x0

    :goto_4
    if-eqz v0, :cond_6

    .line 53
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_6

    const/4 v3, 0x0

    .line 54
    :goto_5
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 55
    invoke-virtual {v5, v3, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    and-int v6, v6, v19

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_b

    .line 56
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    .line 57
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    const/4 v2, 0x0

    .line 58
    :goto_7
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_a

    const/4 v3, 0x0

    .line 59
    :goto_8
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_9

    if-eqz v7, :cond_8

    .line 60
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    mul-int v4, v4, v1

    div-int/lit8 v6, v3, 0x8

    add-int/2addr v4, v6

    aget-byte v4, v7, v4

    const/16 v6, 0xff

    and-int/2addr v4, v6

    .line 61
    rem-int/lit8 v9, v3, 0x8

    rsub-int/lit8 v9, v9, 0x7

    shr-int/2addr v4, v9

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_7

    goto :goto_9

    :cond_7
    const/4 v4, 0x0

    goto :goto_a

    :cond_8
    const/16 v6, 0xff

    :goto_9
    const/16 v4, 0xff

    :goto_a
    shl-int/lit8 v4, v4, 0x18

    const v9, 0xffffff

    .line 62
    invoke-virtual {v5, v3, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v10

    and-int/2addr v9, v10

    or-int/2addr v4, v9

    .line 63
    invoke-virtual {v0, v3, v2, v4}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    const/16 v6, 0xff

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    move-object v5, v0

    .line 64
    :cond_b
    new-instance v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$b;

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$b;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;Lorg/apache/commons/imaging/formats/ico/IcoImageParser$a;Ljava/awt/image/BufferedImage;)V

    return-object v0

    .line 65
    :cond_c
    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 66
    :try_start_2
    invoke-virtual {v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1

    :cond_d
    move v10, v15

    .line 67
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Valid ICO File: Planes can\'t be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_e
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Valid ICO File: Wrong bitmap header size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v1, "Reserved"

    const-string v2, "Not a Valid ICO File"

    invoke-static {v1, p1, v2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    const-string v3, "IconType"

    invoke-static {v3, p1, v2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    const-string v4, "IconCount"

    invoke-static {v4, p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    if-nez v0, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Valid ICO File: icon type is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    new-instance v2, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;

    invoke-direct {v2, v0, v1, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;-><init>(III)V

    return-object v2

    .line 6
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Valid ICO File: reserved is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$e;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/imaging/Imaging;->guessFormat([B)Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage([B)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 4
    new-instance v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$g;

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$g;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;Ljava/awt/image/BufferedImage;)V

    return-object v0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->a([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$e;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Width"

    const-string v1, "Not a Valid ICO File"

    .line 1
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    const-string v0, "Height"

    .line 2
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    const-string v0, "ColorCount"

    .line 3
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    const-string v0, "Reserved"

    .line 4
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v2, "Planes"

    invoke-static {v2, p1, v1, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v2, "BitCount"

    invoke-static {v2, p1, v1, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v2, "ImageSize"

    invoke-static {v2, p1, v1, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v2, "ImageOffset"

    invoke-static {v2, p1, v1, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    .line 9
    new-instance p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;-><init>(BBBBIIII)V

    return-object p1
.end method

.method private e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->b(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;

    move-result-object v1

    .line 3
    iget v2, v1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;->c:I

    new-array v2, v2, [Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget v5, v1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;->c:I

    if-ge v4, v5, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->d(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-array v4, v5, [Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;

    .line 7
    :goto_1
    iget v5, v1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;->c:I

    if-ge v3, v5, :cond_1

    .line 8
    aget-object v5, v2, v3

    iget v5, v5, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;->h:I

    aget-object v6, v2, v3

    iget v6, v6, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$e;->g:I

    invoke-virtual {p1, v5, v6}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(II)[B

    move-result-object v5

    .line 9
    aget-object v6, v2, v3

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->c([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$e;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;

    invoke-direct {p1, v1, v4}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    .line 12
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
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
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;

    move-result-object p2

    .line 2
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;->a:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;->a(Ljava/io/PrintWriter;)V

    .line 3
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;->b:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 4
    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;->a(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->e:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    .line 1
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->ICO:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 4
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
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;->a:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;->c:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;->c:I

    if-ge v2, v3, :cond_0

    .line 5
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;->b:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;

    aget-object v3, v3, v2

    .line 6
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;->c()Ljava/awt/image/BufferedImage;

    move-result-object v3

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
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
    check-cast p2, Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;

    move-result-object p1

    .line 3
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;->a:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;

    .line 4
    iget p2, p2, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$c;->c:I

    if-lez p2, :cond_0

    .line 5
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$f;->b:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$d;->c()Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "No icons in ICO file"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->d:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultParameters()Lorg/apache/commons/imaging/ImagingParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParameters()Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;-><init>()V

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
    check-cast p2, Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)[B

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)[B
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
    check-cast p2, Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
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

.method public bridge synthetic getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Ljava/awt/Dimension;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)Ljava/awt/Dimension;
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

.method public bridge synthetic getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
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

    const-string v0, "ico-Custom"

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
    check-cast p3, Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)V

    return-void
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    if-nez p3, :cond_0

    .line 2
    new-instance v1, Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/ico/IcoImagingParameters;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    .line 3
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/imaging/ImagingParameters;->getPixelDensity()Lorg/apache/commons/imaging/PixelDensity;

    move-result-object v1

    .line 4
    new-instance v2, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v2}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v3, 0x100

    .line 5
    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {v2, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x18

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v3}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v2

    if-gt v2, v5, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v3}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v2

    const/16 v10, 0x10

    if-gt v2, v10, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    .line 9
    :goto_1
    new-instance v10, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v12, p2

    invoke-direct {v10, v12, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v11

    mul-int v11, v11, v2

    add-int/lit8 v11, v11, 0x7

    div-int/2addr v11, v8

    .line 11
    rem-int/lit8 v12, v11, 0x4

    if-eqz v12, :cond_5

    rsub-int/lit8 v12, v12, 0x4

    add-int/2addr v11, v12

    .line 12
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v12

    add-int/lit8 v12, v12, 0x7

    div-int/2addr v12, v8

    .line 13
    rem-int/lit8 v13, v12, 0x4

    if-eqz v13, :cond_6

    rsub-int/lit8 v13, v13, 0x4

    add-int/2addr v12, v13

    :cond_6
    const/4 v13, 0x0

    if-gt v2, v8, :cond_7

    shl-int v14, v9, v2

    goto :goto_2

    :cond_7
    const/4 v14, 0x0

    :goto_2
    mul-int/lit8 v14, v14, 0x4

    const/16 v7, 0x28

    add-int/2addr v14, v7

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v15

    mul-int v15, v15, v11

    add-int/2addr v14, v15

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v15

    mul-int v15, v15, v12

    add-int/2addr v14, v15

    .line 15
    invoke-virtual {v10, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 16
    invoke-virtual {v10, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 17
    invoke-virtual {v10, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v15

    .line 19
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    const/16 v6, 0xff

    if-gt v15, v6, :cond_8

    if-le v4, v6, :cond_9

    :cond_8
    const/4 v4, 0x0

    const/4 v15, 0x0

    .line 20
    :cond_9
    invoke-virtual {v10, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 21
    invoke-virtual {v10, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-lt v2, v8, :cond_a

    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    shl-int v4, v9, v2

    .line 22
    :goto_3
    invoke-virtual {v10, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 23
    invoke-virtual {v10, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 24
    invoke-virtual {v10, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 25
    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 26
    invoke-virtual {v10, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v4, 0x16

    .line 27
    invoke-virtual {v10, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 28
    invoke-virtual {v10, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    invoke-virtual {v10, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v10, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 31
    invoke-virtual {v10, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 32
    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 33
    invoke-virtual {v10, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 34
    invoke-virtual {v10, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez v1, :cond_b

    const/4 v5, 0x0

    goto :goto_4

    .line 35
    :cond_b
    invoke-virtual {v1}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    :goto_4
    invoke-virtual {v10, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_5

    .line 36
    :cond_c
    invoke-virtual {v1}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    :goto_5
    invoke-virtual {v10, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 37
    invoke-virtual {v10, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 38
    invoke-virtual {v10, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz v3, :cond_e

    const/4 v1, 0x0

    :goto_6
    shl-int v4, v9, v2

    if-ge v1, v4, :cond_e

    .line 39
    invoke-virtual {v3}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 40
    invoke-virtual {v3, v1}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v4

    .line 41
    invoke-virtual {v10, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write3Bytes(I)V

    .line 42
    invoke-virtual {v10, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_7

    .line 43
    :cond_d
    invoke-virtual {v10, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 44
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v8

    sub-int/2addr v11, v1

    .line 45
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    sub-int/2addr v1, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    if-ltz v1, :cond_16

    const/4 v7, 0x0

    .line 46
    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v14

    if-ge v7, v14, :cond_13

    .line 47
    invoke-virtual {v0, v7, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v14

    if-nez v3, :cond_10

    const/16 v15, 0x18

    if-ne v2, v15, :cond_f

    .line 48
    invoke-virtual {v10, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write3Bytes(I)V

    const/16 v15, 0x20

    goto :goto_a

    :cond_f
    const/16 v15, 0x20

    if-ne v2, v15, :cond_12

    .line 49
    invoke-virtual {v10, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_a

    :cond_10
    const/16 v15, 0x20

    const v16, 0xffffff

    if-ge v2, v8, :cond_11

    and-int v14, v14, v16

    .line 50
    invoke-virtual {v3, v14}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v14

    shl-int/2addr v4, v2

    or-int/2addr v4, v14

    add-int/2addr v5, v2

    if-lt v5, v8, :cond_12

    and-int/lit16 v4, v4, 0xff

    .line 51
    invoke-virtual {v10, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_a

    :cond_11
    if-ne v2, v8, :cond_12

    and-int v14, v14, v16

    .line 52
    invoke-virtual {v3, v14}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v14

    and-int/2addr v14, v6

    .line 53
    invoke-virtual {v10, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_12
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_13
    const/16 v15, 0x20

    if-lez v5, :cond_14

    rsub-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    and-int/2addr v4, v6

    .line 54
    invoke-virtual {v10, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_14
    const/4 v7, 0x0

    :goto_b
    if-ge v7, v11, :cond_15

    .line 55
    invoke-virtual {v10, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 56
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v8

    sub-int/2addr v12, v1

    .line 57
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    sub-int/2addr v1, v9

    :goto_c
    if-ltz v1, :cond_1c

    const/4 v2, 0x0

    .line 58
    :goto_d
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_19

    .line 59
    invoke-virtual {v0, v2, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v3

    const/16 v7, 0x18

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    shl-int/lit8 v4, v4, 0x1

    if-nez v3, :cond_17

    or-int/lit8 v4, v4, 0x1

    :cond_17
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v8, :cond_18

    and-int/lit16 v3, v4, 0xff

    .line 60
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_19
    const/16 v7, 0x18

    if-lez v5, :cond_1a

    rsub-int/lit8 v2, v5, 0x8

    shl-int v2, v4, v2

    and-int/2addr v2, v6

    .line 61
    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1a
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v12, :cond_1b

    .line 62
    invoke-virtual {v10, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 63
    :cond_1c
    invoke-virtual {v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    return-void
.end method
