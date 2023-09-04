.class public Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "BmpImageParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/ImageParser<",
        "Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/logging/Logger;

.field private static final e:Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->d:Ljava/util/logging/Logger;

    .line 2
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getExtensions()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->f:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->g:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0x4dt
    .end array-data
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

.method private a(II)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    const/16 v1, 0x4d

    if-ne p2, v1, :cond_0

    const-string p1, "Windows 3.1x, 95, NT,"

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    const/16 v0, 0x41

    if-ne p2, v0, :cond_1

    const-string p1, "OS/2 Bitmap Array"

    return-object p1

    :cond_1
    const/16 v0, 0x49

    const/16 v1, 0x43

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    const-string p1, "OS/2 Color Icon"

    return-object p1

    :cond_2
    const/16 v2, 0x50

    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_3

    const-string p1, "OS/2 Color Pointer"

    return-object p1

    :cond_3
    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    const-string p1, "OS/2 Icon"

    return-object p1

    :cond_4
    if-ne p1, v2, :cond_5

    const/16 p1, 0x54

    if-ne p2, p1, :cond_5

    const-string p1, "OS/2 Pointer"

    return-object p1

    :cond_5
    const-string p1, "Unknown"

    return-object p1
.end method

.method private b(Ljava/io/InputStream;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    const-string v2, "RLE a"

    const-string v3, "BMP: Bad RLE"

    .line 2
    invoke-static {v2, p1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 3
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v4, "RLE b"

    .line 4
    invoke-static {v4, p1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 5
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x1

    if-nez v2, :cond_0

    if-eqz v4, :cond_0

    if-eq v4, v5, :cond_4

    const/4 v2, 0x2

    if-eq v4, v2, :cond_3

    .line 6
    div-int v2, v4, p2

    .line 7
    rem-int/2addr v4, p2

    if-lez v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 8
    :cond_1
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    const-string v3, "bytes"

    const-string v4, "RLE: Absolute Mode"

    .line 9
    invoke-static {v3, p1, v2, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_3
    const-string v2, "RLE c"

    .line 11
    invoke-static {v2, p1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 12
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v2, "RLE d"

    .line 13
    invoke-static {v2, p1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 14
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/bmp/a;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Identifier1"

    const-string v4, "Not a Valid BMP File"

    .line 1
    invoke-static {v3, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    const-string v3, "Identifier2"

    .line 2
    invoke-static {v3, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    .line 3
    sget-object v9, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->g:[B

    new-array v10, v3, [B

    aput-byte v6, v10, v8

    aput-byte v7, v10, v5

    const-string v11, "Signature"

    invoke-virtual {v2, v11, v9, v10}, Lorg/apache/commons/imaging/FormatCompliance;->compareBytes(Ljava/lang/String;[B[B)Z

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    const-string v9, "File Size"

    invoke-static {v9, v1, v4, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    const-string v10, "Reserved"

    invoke-static {v10, v1, v4, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    .line 6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    const-string v12, "Bitmap Data Offset"

    invoke-static {v12, v1, v4, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    const-string v13, "Bitmap Header Size"

    invoke-static {v13, v1, v4, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    .line 8
    new-instance v15, Lorg/apache/commons/imaging/formats/bmp/a$a;

    invoke-direct {v15}, Lorg/apache/commons/imaging/formats/bmp/a$a;-><init>()V

    .line 9
    new-instance v13, Lorg/apache/commons/imaging/formats/bmp/a$b;

    invoke-direct {v13}, Lorg/apache/commons/imaging/formats/bmp/a$b;-><init>()V

    iput-object v13, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->a:Lorg/apache/commons/imaging/formats/bmp/a$b;

    .line 10
    new-instance v13, Lorg/apache/commons/imaging/formats/bmp/a$b;

    invoke-direct {v13}, Lorg/apache/commons/imaging/formats/bmp/a$b;-><init>()V

    iput-object v13, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->b:Lorg/apache/commons/imaging/formats/bmp/a$b;

    .line 11
    new-instance v13, Lorg/apache/commons/imaging/formats/bmp/a$b;

    invoke-direct {v13}, Lorg/apache/commons/imaging/formats/bmp/a$b;-><init>()V

    iput-object v13, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->c:Lorg/apache/commons/imaging/formats/bmp/a$b;

    const/16 v13, 0x28

    if-lt v12, v13, :cond_c

    .line 12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    const-string v14, "Width"

    invoke-static {v14, v1, v4, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    .line 13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    const-string v8, "Height"

    invoke-static {v8, v1, v4, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    .line 14
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    const-string v3, "Planes"

    invoke-static {v3, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 15
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    const-string v5, "Bits Per Pixel"

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    .line 16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    move/from16 p2, v8

    const-string v8, "Compression"

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    .line 17
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    move/from16 v19, v3

    const-string v3, "Bitmap Data Size"

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 18
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    move/from16 v20, v3

    const-string v3, "HResolution"

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 19
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    move/from16 v21, v3

    const-string v3, "VResolution"

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 20
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    move/from16 v22, v3

    const-string v3, "ColorsUsed"

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 21
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    move/from16 v23, v3

    const-string v3, "ColorsImportant"

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    const/4 v5, 0x3

    move/from16 v24, v3

    const/16 v3, 0x34

    if-ge v12, v3, :cond_2

    if-ne v8, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/16 v27, 0x0

    const/16 v35, 0x0

    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    const-string v3, "RedMask"

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 23
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    move/from16 v27, v3

    const-string v3, "GreenMask"

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 24
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    move/from16 v28, v3

    const-string v3, "BlueMask"

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    move/from16 v35, v3

    move/from16 v3, v27

    move/from16 v27, v28

    :goto_1
    const/16 v5, 0x38

    if-lt v12, v5, :cond_3

    .line 25
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    move/from16 v29, v3

    const-string v3, "AlphaMask"

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    goto :goto_2

    :cond_3
    move/from16 v29, v3

    const/4 v3, 0x0

    :goto_2
    const/16 v5, 0x6c

    if-lt v12, v5, :cond_4

    .line 26
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    move/from16 v31, v3

    const-string v3, "ColorSpaceType"

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 27
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->a:Lorg/apache/commons/imaging/formats/bmp/a$b;

    move/from16 v32, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    move/from16 v33, v8

    const-string v8, "ColorSpaceRedX"

    invoke-static {v8, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    iput v3, v5, Lorg/apache/commons/imaging/formats/bmp/a$b;->a:I

    .line 28
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->a:Lorg/apache/commons/imaging/formats/bmp/a$b;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    const-string v8, "ColorSpaceRedY"

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/a$b;->b:I

    .line 29
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->a:Lorg/apache/commons/imaging/formats/bmp/a$b;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    const-string v8, "ColorSpaceRedZ"

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/a$b;->c:I

    .line 30
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->b:Lorg/apache/commons/imaging/formats/bmp/a$b;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    const-string v8, "ColorSpaceGreenX"

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/a$b;->a:I

    .line 31
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->b:Lorg/apache/commons/imaging/formats/bmp/a$b;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    const-string v8, "ColorSpaceGreenY"

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/a$b;->b:I

    .line 32
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->b:Lorg/apache/commons/imaging/formats/bmp/a$b;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    const-string v8, "ColorSpaceGreenZ"

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/a$b;->c:I

    .line 33
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->c:Lorg/apache/commons/imaging/formats/bmp/a$b;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    const-string v8, "ColorSpaceBlueX"

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/a$b;->a:I

    .line 34
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->c:Lorg/apache/commons/imaging/formats/bmp/a$b;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    const-string v8, "ColorSpaceBlueY"

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/a$b;->b:I

    .line 35
    iget-object v3, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->c:Lorg/apache/commons/imaging/formats/bmp/a$b;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    const-string v8, "ColorSpaceBlueZ"

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    iput v5, v3, Lorg/apache/commons/imaging/formats/bmp/a$b;->c:I

    .line 36
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    const-string v5, "GammaRed"

    invoke-static {v5, v1, v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 37
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    const-string v8, "GammaGreen"

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    .line 38
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    move/from16 v34, v3

    const-string v3, "GammaBlue"

    invoke-static {v3, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    move/from16 v36, v3

    move/from16 v3, v32

    move/from16 v8, v34

    move/from16 v32, v5

    goto :goto_3

    :cond_4
    move/from16 v31, v3

    move/from16 v33, v8

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v32, 0x0

    const/16 v36, 0x0

    :goto_3
    const/16 v5, 0x7c

    if-lt v12, v5, :cond_5

    .line 39
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    move/from16 v37, v8

    const-string v8, "Intent"

    invoke-static {v8, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    .line 40
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    move/from16 v16, v5

    const-string v5, "ProfileData"

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    .line 41
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    move/from16 v38, v5

    const-string v5, "ProfileSize"

    invoke-static {v5, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    .line 42
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v10, v1, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    move v8, v1

    move v10, v5

    move/from16 v1, v16

    move/from16 v4, v38

    goto :goto_4

    :cond_5
    move/from16 v37, v8

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 43
    :goto_4
    sget-object v5, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->d:Ljava/util/logging/Logger;

    move/from16 v16, v8

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "identifier1"

    const/4 v8, 0x1

    .line 44
    invoke-virtual {v0, v5, v6, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "identifier2"

    .line 45
    invoke-virtual {v0, v5, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "fileSize"

    const/4 v8, 0x4

    .line 46
    invoke-virtual {v0, v5, v2, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "reserved"

    .line 47
    invoke-virtual {v0, v5, v9, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "bitmapDataOffset"

    .line 48
    invoke-virtual {v0, v5, v11, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "bitmapHeaderSize"

    .line 49
    invoke-virtual {v0, v5, v12, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "width"

    .line 50
    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "height"

    .line 51
    invoke-virtual {v0, v5, v14, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "planes"

    move/from16 v17, v14

    move/from16 v8, v19

    const/4 v14, 0x2

    .line 52
    invoke-virtual {v0, v5, v8, v14}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "bitsPerPixel"

    move/from16 v8, p2

    .line 53
    invoke-virtual {v0, v5, v8, v14}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "compression"

    move/from16 v14, v33

    const/4 v8, 0x4

    .line 54
    invoke-virtual {v0, v5, v14, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "bitmapDataSize"

    move/from16 v33, v13

    move/from16 v13, v20

    .line 55
    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "hResolution"

    move/from16 v13, v21

    .line 56
    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "vResolution"

    move/from16 v13, v22

    .line 57
    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorsUsed"

    move/from16 v13, v23

    .line 58
    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "colorsImportant"

    move/from16 v13, v24

    .line 59
    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const/16 v5, 0x34

    if-ge v12, v5, :cond_7

    const/4 v5, 0x3

    if-ne v14, v5, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v25, v13

    move/from16 v24, v14

    move/from16 v13, v27

    move/from16 v14, v35

    goto :goto_6

    :cond_7
    :goto_5
    const-string v5, "redMask"

    move/from16 v24, v14

    move/from16 v14, v29

    .line 60
    invoke-virtual {v0, v5, v14, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "greenMask"

    move/from16 v25, v13

    move/from16 v13, v27

    .line 61
    invoke-virtual {v0, v5, v13, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "blueMask"

    move/from16 v14, v35

    .line 62
    invoke-virtual {v0, v5, v14, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    :goto_6
    const/16 v5, 0x38

    if-lt v12, v5, :cond_8

    const-string v5, "alphaMask"

    move/from16 v26, v14

    move/from16 v14, v31

    .line 63
    invoke-virtual {v0, v5, v14, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_7

    :cond_8
    move/from16 v26, v14

    move/from16 v14, v31

    :goto_7
    const/16 v5, 0x6c

    if-lt v12, v5, :cond_9

    const-string v5, "colorSpaceType"

    .line 64
    invoke-virtual {v0, v5, v3, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 65
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->a:Lorg/apache/commons/imaging/formats/bmp/a$b;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/a$b;->a:I

    const-string v8, "colorSpace.red.x"

    move/from16 v27, v13

    const/4 v13, 0x1

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 66
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->a:Lorg/apache/commons/imaging/formats/bmp/a$b;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/a$b;->b:I

    const-string v8, "colorSpace.red.y"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 67
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->a:Lorg/apache/commons/imaging/formats/bmp/a$b;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/a$b;->c:I

    const-string v8, "colorSpace.red.z"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 68
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->b:Lorg/apache/commons/imaging/formats/bmp/a$b;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/a$b;->a:I

    const-string v8, "colorSpace.green.x"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 69
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->b:Lorg/apache/commons/imaging/formats/bmp/a$b;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/a$b;->b:I

    const-string v8, "colorSpace.green.y"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 70
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->b:Lorg/apache/commons/imaging/formats/bmp/a$b;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/a$b;->c:I

    const-string v8, "colorSpace.green.z"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 71
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->c:Lorg/apache/commons/imaging/formats/bmp/a$b;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/a$b;->a:I

    const-string v8, "colorSpace.blue.x"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 72
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->c:Lorg/apache/commons/imaging/formats/bmp/a$b;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/a$b;->b:I

    const-string v8, "colorSpace.blue.y"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 73
    iget-object v5, v15, Lorg/apache/commons/imaging/formats/bmp/a$a;->c:Lorg/apache/commons/imaging/formats/bmp/a$b;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/a$b;->c:I

    const-string v8, "colorSpace.blue.z"

    invoke-virtual {v0, v8, v5, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "gammaRed"

    move/from16 v8, v37

    const/4 v13, 0x4

    .line 74
    invoke-virtual {v0, v5, v8, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "gammaGreen"

    move/from16 v8, v32

    .line 75
    invoke-virtual {v0, v5, v8, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "gammaBlue"

    move/from16 v28, v3

    move/from16 v3, v36

    .line 76
    invoke-virtual {v0, v5, v3, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_8

    :cond_9
    move/from16 v28, v3

    move/from16 v27, v13

    move/from16 v8, v32

    move/from16 v3, v36

    const/4 v13, 0x4

    :goto_8
    const/16 v5, 0x7c

    if-lt v12, v5, :cond_a

    const-string v5, "intent"

    .line 77
    invoke-virtual {v0, v5, v1, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "profileData"

    .line 78
    invoke-virtual {v0, v5, v4, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "profileSize"

    .line 79
    invoke-virtual {v0, v5, v10, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "reservedV5"

    move/from16 v18, v8

    move/from16 v8, v16

    .line 80
    invoke-virtual {v0, v5, v8, v13}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_9

    :cond_a
    move/from16 v18, v8

    move/from16 v8, v16

    goto :goto_9

    :cond_b
    move/from16 v28, v3

    move/from16 v17, v14

    move/from16 v8, v16

    move/from16 v25, v24

    move/from16 v14, v31

    move/from16 v18, v32

    move/from16 v24, v33

    move/from16 v26, v35

    move/from16 v3, v36

    move/from16 v33, v13

    .line 81
    :goto_9
    new-instance v35, Lorg/apache/commons/imaging/formats/bmp/a;

    move/from16 v30, v18

    move-object/from16 v5, v35

    move/from16 v18, p2

    move/from16 v36, v8

    move/from16 v16, v19

    move/from16 v19, v24

    move/from16 v34, v37

    move v8, v2

    move v2, v10

    move v10, v11

    move v11, v12

    move/from16 v12, v33

    move/from16 v24, v25

    move/from16 v13, v17

    move/from16 v25, v29

    move/from16 v29, v14

    move/from16 v14, v16

    move-object/from16 v31, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    move/from16 v21, v24

    move/from16 v22, v25

    move/from16 v23, v27

    move/from16 v24, v26

    move/from16 v25, v29

    move/from16 v26, v28

    move-object/from16 v27, v31

    move/from16 v28, v34

    move/from16 v29, v30

    move/from16 v30, v3

    move/from16 v31, v1

    move/from16 v32, v4

    move/from16 v33, v2

    move/from16 v34, v36

    invoke-direct/range {v5 .. v34}, Lorg/apache/commons/imaging/formats/bmp/a;-><init>(BBIIIIIIIIIIIIIIIIIIILorg/apache/commons/imaging/formats/bmp/a$a;IIIIIII)V

    return-object v35

    .line 82
    :cond_c
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Invalid/unsupported BMP file"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private d(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/bmp/a;
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

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->c(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/bmp/a;

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

.method private e(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/bmp/b;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->c(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/bmp/a;

    move-result-object v2

    .line 2
    iget v3, v2, Lorg/apache/commons/imaging/formats/bmp/a;->o:I

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 3
    iget v3, v2, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    shl-int v3, v4, v3

    .line 4
    :cond_0
    sget-object v5, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->d:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_1

    .line 5
    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/a;->o:I

    const-string v9, "ColorsUsed"

    invoke-virtual {v0, v9, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 6
    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    const-string v9, "BitsPerPixel"

    invoke-virtual {v0, v9, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v7, "ColorTableSize"

    .line 7
    invoke-virtual {v0, v7, v3, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 8
    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/a;->o:I

    const-string v9, "bhi.colorsUsed"

    invoke-virtual {v0, v9, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 9
    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/a;->k:I

    const-string v9, "Compression"

    invoke-virtual {v0, v9, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 10
    :cond_1
    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/a;->k:I

    const-string v9, "BMP: Unknown Compression: "

    const/16 v10, 0x8

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v7, :cond_8

    if-eq v7, v4, :cond_6

    if-eq v7, v12, :cond_4

    if-ne v7, v11, :cond_3

    .line 11
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "Compression: BI_BITFIELDS"

    .line 12
    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    if-gt v7, v10, :cond_a

    goto :goto_0

    .line 14
    :cond_3
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/a;->k:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Compression: BI_RLE4"

    .line 16
    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5
    mul-int/lit8 v3, v3, 0x4

    const/4 v7, 0x1

    const/4 v14, 0x2

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "Compression: BI_RLE8"

    .line 18
    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_7
    mul-int/lit8 v3, v3, 0x4

    const/4 v7, 0x1

    const/4 v14, 0x1

    goto :goto_2

    .line 19
    :cond_8
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "Compression: BI_RGB"

    .line 20
    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 21
    :cond_9
    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    if-gt v7, v10, :cond_a

    :goto_0
    mul-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ltz v3, :cond_1a

    const/4 v15, 0x0

    const-string v13, "Not a Valid BMP File"

    if-lez v3, :cond_b

    const-string v15, "ColorTable"

    .line 22
    invoke-static {v15, v1, v3, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v15

    .line 23
    :cond_b
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v16

    if-eqz v16, :cond_d

    const-string v12, "paletteLength"

    .line 24
    invoke-virtual {v0, v12, v3, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 25
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorTable: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_c

    const-string v4, "null"

    goto :goto_3

    .line 26
    :cond_c
    array-length v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 28
    :cond_d
    iget v4, v2, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    iget v12, v2, Lorg/apache/commons/imaging/formats/bmp/a;->g:I

    mul-int v4, v4, v12

    add-int/lit8 v4, v4, 0x7

    div-int/2addr v4, v10

    .line 29
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 30
    iget v5, v2, Lorg/apache/commons/imaging/formats/bmp/a;->g:I

    iget v6, v2, Lorg/apache/commons/imaging/formats/bmp/a;->h:I

    mul-int v6, v6, v5

    const-string v10, "bhi.Width"

    .line 31
    invoke-virtual {v0, v10, v5, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 32
    iget v5, v2, Lorg/apache/commons/imaging/formats/bmp/a;->h:I

    const-string v10, "bhi.Height"

    invoke-virtual {v0, v10, v5, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "ImageLineLength"

    .line 33
    invoke-virtual {v0, v5, v4, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v5, "PixelCount"

    .line 34
    invoke-virtual {v0, v5, v6, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 35
    :cond_e
    :goto_4
    rem-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_f

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 36
    :cond_f
    iget v5, v2, Lorg/apache/commons/imaging/formats/bmp/a;->f:I

    add-int/lit8 v6, v5, 0xe

    const/16 v10, 0x28

    if-ne v5, v10, :cond_10

    .line 37
    iget v5, v2, Lorg/apache/commons/imaging/formats/bmp/a;->k:I

    if-ne v5, v11, :cond_10

    const/16 v5, 0xc

    goto :goto_5

    :cond_10
    const/4 v5, 0x0

    :goto_5
    add-int/2addr v6, v5

    add-int v5, v6, v3

    .line 38
    sget-object v10, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->d:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 39
    iget v11, v2, Lorg/apache/commons/imaging/formats/bmp/a;->e:I

    move/from16 v17, v6

    const-string v6, "bhi.BitmapDataOffset"

    invoke-virtual {v0, v6, v11, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    const-string v6, "expectedDataOffset"

    .line 40
    invoke-virtual {v0, v6, v5, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    goto :goto_6

    :cond_11
    move/from16 v17, v6

    .line 41
    :goto_6
    iget v6, v2, Lorg/apache/commons/imaging/formats/bmp/a;->e:I

    sub-int/2addr v6, v5

    if-ltz v6, :cond_19

    if-lez v6, :cond_12

    const-string v3, "BitmapDataOffset"

    .line 42
    invoke-static {v3, v1, v6, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    .line 43
    :cond_12
    iget v3, v2, Lorg/apache/commons/imaging/formats/bmp/a;->h:I

    mul-int v3, v3, v4

    .line 44
    invoke-virtual {v10, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "imageDataSize"

    .line 45
    invoke-virtual {v0, v4, v3, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    :cond_13
    if-eqz v7, :cond_14

    .line 46
    invoke-direct {v0, v1, v14}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->b(Ljava/io/InputStream;I)[B

    move-result-object v1

    goto :goto_7

    :cond_14
    const-string v4, "ImageData"

    .line 47
    invoke-static {v4, v1, v3, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v1

    .line 48
    :goto_7
    invoke-virtual {v10, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 49
    array-length v3, v1

    const-string v4, "ImageData.length"

    invoke-virtual {v0, v4, v3, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/lang/String;II)V

    .line 50
    :cond_15
    iget v3, v2, Lorg/apache/commons/imaging/formats/bmp/a;->k:I

    if-eqz v3, :cond_18

    const/4 v4, 0x1

    if-eq v3, v4, :cond_17

    const/4 v4, 0x2

    if-eq v3, v4, :cond_17

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    .line 51
    new-instance v3, Lorg/apache/commons/imaging/formats/bmp/g;

    invoke-direct {v3, v2, v15, v1}, Lorg/apache/commons/imaging/formats/bmp/g;-><init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V

    goto :goto_8

    .line 52
    :cond_16
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/a;->k:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_17
    new-instance v3, Lorg/apache/commons/imaging/formats/bmp/i;

    invoke-direct {v3, v2, v15, v1}, Lorg/apache/commons/imaging/formats/bmp/i;-><init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V

    goto :goto_8

    .line 54
    :cond_18
    new-instance v3, Lorg/apache/commons/imaging/formats/bmp/h;

    invoke-direct {v3, v2, v15, v1}, Lorg/apache/commons/imaging/formats/bmp/h;-><init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V

    .line 55
    :goto_8
    new-instance v4, Lorg/apache/commons/imaging/formats/bmp/b;

    invoke-direct {v4, v2, v15, v1, v3}, Lorg/apache/commons/imaging/formats/bmp/b;-><init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[BLorg/apache/commons/imaging/formats/bmp/f;)V

    return-object v4

    .line 56
    :cond_19
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BMP has invalid image data offset: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/a;->e:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", paletteLength: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", headerSize: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v17

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_1a
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BMP: Invalid negative palette length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bmp.dumpImageFile"

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p2

    const-string v0, ""

    .line 3
    invoke-virtual {p2, p1, v0}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->f:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    .line 1
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getBufferedImage(Ljava/io/InputStream;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->e(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/bmp/b;

    move-result-object p1

    .line 7
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/bmp/b;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    .line 8
    iget v0, p2, Lorg/apache/commons/imaging/formats/bmp/a;->g:I

    .line 9
    iget p2, p2, Lorg/apache/commons/imaging/formats/bmp/a;->h:I

    .line 10
    sget-object v1, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width*height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int v3, v0, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width*height*4: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/bmp/b;->d:Lorg/apache/commons/imaging/formats/bmp/f;

    .line 16
    new-instance v1, Lorg/apache/commons/imaging/common/ImageBuilder;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, v2}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    .line 17
    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/formats/bmp/f;->b(Lorg/apache/commons/imaging/common/ImageBuilder;)V

    .line 18
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

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
    check-cast p2, Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBufferedImage(Ljava/io/InputStream;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Ljava/awt/image/BufferedImage;

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

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->e:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultParameters()Lorg/apache/commons/imaging/ImagingParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParameters()Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;-><init>()V

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/FormatCompliance;

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/FormatCompliance;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->e(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/bmp/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 6
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

.method public bridge synthetic getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)[B

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)[B
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
    check-cast p2, Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->e(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/bmp/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 5
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/imaging/formats/bmp/b;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    .line 6
    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/b;->b:[B

    if-eqz v2, :cond_2

    .line 7
    iget v9, v2, Lorg/apache/commons/imaging/formats/bmp/a;->h:I

    .line 8
    iget v15, v2, Lorg/apache/commons/imaging/formats/bmp/a;->g:I

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget v5, v2, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    .line 11
    sget-object v7, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    .line 12
    iget v3, v2, Lorg/apache/commons/imaging/formats/bmp/a;->m:I

    int-to-double v3, v3

    const-wide v10, 0x3f9a027525460aa6L    # 0.0254

    mul-double v3, v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v14, v3

    int-to-double v3, v15

    int-to-double v12, v14

    div-double/2addr v3, v12

    double-to-float v13, v3

    .line 13
    iget v3, v2, Lorg/apache/commons/imaging/formats/bmp/a;->n:I

    int-to-double v3, v3

    mul-double v3, v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v12, v3

    int-to-double v3, v9

    int-to-double v10, v12

    div-double/2addr v3, v10

    double-to-float v4, v3

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bmp ("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v8, v2, Lorg/apache/commons/imaging/formats/bmp/a;->a:B

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v8, v2, Lorg/apache/commons/imaging/formats/bmp/a;->b:B

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v8, v2, Lorg/apache/commons/imaging/formats/bmp/a;->a:B

    iget-byte v2, v2, Lorg/apache/commons/imaging/formats/bmp/a;->b:B

    .line 15
    invoke-direct {v1, v8, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v19, 0x0

    .line 16
    :goto_0
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 17
    sget-object v21, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 18
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo;

    move-object v3, v0

    const/4 v11, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v8, "BMP Windows Bitmap"

    const-string v10, "image/x-ms-bmp"

    move/from16 v16, v4

    move-object v4, v2

    move v2, v13

    move/from16 v13, v16

    move/from16 v16, v15

    move v15, v2

    invoke-direct/range {v3 .. v21}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v0

    .line 19
    :cond_2
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "BMP: couldn\'t read header"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_3

    .line 20
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v3
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
    check-cast p2, Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->d(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/bmp/a;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/commons/imaging/formats/bmp/a;->g:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/bmp/a;->h:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2
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
    check-cast p2, Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
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

    const-string v0, "Bmp-Custom"

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
    check-cast p3, Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)V

    return-void
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;

    invoke-direct {p3}, Lorg/apache/commons/imaging/formats/bmp/BmpImagingParameters;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p3}, Lorg/apache/commons/imaging/ImagingParameters;->getPixelDensity()Lorg/apache/commons/imaging/PixelDensity;

    move-result-object p3

    .line 4
    new-instance v0, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    new-instance v1, Lorg/apache/commons/imaging/formats/bmp/e;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/bmp/e;-><init>()V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lorg/apache/commons/imaging/formats/bmp/d;

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/formats/bmp/d;-><init>(Lorg/apache/commons/imaging/palette/SimplePalette;)V

    .line 7
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/commons/imaging/formats/bmp/c;->a(Ljava/awt/image/BufferedImage;)[B

    move-result-object v2

    .line 8
    new-instance v3, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, p2, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const/16 v4, 0x42

    .line 9
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    const/16 v4, 0x4d

    .line 10
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 11
    invoke-interface {v1}, Lorg/apache/commons/imaging/formats/bmp/c;->d()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x36

    array-length v4, v2

    add-int/2addr p2, v4

    .line 12
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p2, 0x0

    .line 13
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 14
    invoke-interface {v1}, Lorg/apache/commons/imaging/formats/bmp/c;->d()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x36

    .line 15
    invoke-virtual {v3, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 16
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    .line 17
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    const/16 v5, 0x28

    .line 18
    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 19
    invoke-virtual {v3, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 20
    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 22
    invoke-interface {v1}, Lorg/apache/commons/imaging/formats/bmp/c;->b()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 23
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 24
    array-length p1, v2

    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz p3, :cond_2

    .line 25
    invoke-virtual {p3}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int p1, v4

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz p3, :cond_3

    .line 26
    invoke-virtual {p3}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityMetres()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int p1, v4

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez v0, :cond_4

    .line 27
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_3

    .line 28
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 29
    :goto_3
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 30
    invoke-interface {v1, v3}, Lorg/apache/commons/imaging/formats/bmp/c;->c(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    .line 31
    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    return-void
.end method
