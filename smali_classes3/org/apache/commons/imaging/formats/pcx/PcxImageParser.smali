.class public Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "PcxImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/ImageParser<",
        "Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;",
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
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PCX:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getExtensions()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->e:[Ljava/lang/String;

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

.method private a(Ljava/io/InputStream;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Palette"

    const/16 v1, 0x301

    const-string v2, "Error reading palette"

    .line 1
    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget-byte v1, p1, v0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v1, 0x100

    new-array v2, v1, [I

    :goto_0
    if-ge v0, v1, :cond_1

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    .line 3
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private b(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v1

    const-wide/16 v3, 0x301

    sub-long/2addr v1, v3

    long-to-int p1, v1

    int-to-long v1, p1

    .line 3
    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->a(Ljava/io/InputStream;)[I

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method private c(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;Ljava/io/InputStream;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->g:I

    iget v4, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->e:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-ltz v3, :cond_19

    .line 2
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->h:I

    iget v6, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->f:I

    sub-int/2addr v5, v6

    add-int/lit8 v11, v5, 0x1

    if-ltz v11, :cond_18

    .line 3
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->m:I

    if-lez v5, :cond_17

    const/4 v6, 0x4

    if-lt v6, v5, :cond_17

    .line 4
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->c:I

    const/4 v12, 0x0

    if-nez v5, :cond_0

    .line 5
    new-instance v5, Lorg/apache/commons/imaging/formats/pcx/b;

    invoke-direct {v5, v12}, Lorg/apache/commons/imaging/formats/pcx/b;-><init>(Z)V

    :goto_0
    move-object v13, v5

    goto :goto_1

    :cond_0
    if-ne v5, v4, :cond_16

    .line 6
    new-instance v5, Lorg/apache/commons/imaging/formats/pcx/b;

    invoke-direct {v5, v4}, Lorg/apache/commons/imaging/formats/pcx/b;-><init>(Z)V

    goto :goto_0

    .line 7
    :goto_1
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->n:I

    iget v7, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->m:I

    mul-int v5, v5, v7

    .line 8
    new-array v14, v5, [B

    .line 9
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->d:I

    const/16 v15, 0x8

    const/4 v8, 0x2

    if-eq v5, v4, :cond_1

    if-eq v5, v8, :cond_1

    if-eq v5, v6, :cond_1

    if-ne v5, v15, :cond_8

    :cond_1
    if-ne v7, v4, :cond_8

    mul-int v5, v5, v3

    add-int/lit8 v5, v5, 0x7

    .line 10
    div-int/lit8 v9, v5, 0x8

    mul-int v5, v11, v9

    .line 11
    new-array v6, v5, [B

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v11, :cond_2

    .line 12
    invoke-virtual {v13, v2, v14}, Lorg/apache/commons/imaging/formats/pcx/b;->a(Ljava/io/InputStream;[B)V

    mul-int v10, v7, v9

    .line 13
    invoke-static {v14, v12, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 14
    :cond_2
    new-instance v7, Ljava/awt/image/DataBufferByte;

    invoke-direct {v7, v6, v5}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    .line 15
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->d:I

    if-ne v5, v4, :cond_3

    new-array v2, v8, [I

    .line 16
    fill-array-data v2, :array_0

    :goto_3
    move-object/from16 v19, v2

    goto :goto_4

    :cond_3
    if-ne v5, v15, :cond_6

    .line 17
    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->a(Ljava/io/InputStream;)[I

    move-result-object v2

    if-nez v2, :cond_4

    move-object/from16 v5, p3

    .line 18
    invoke-direct {v0, v5}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->b(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)[I

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "No 256 color palette found in image that needs it"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_6
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->k:[I

    goto :goto_3

    .line 21
    :goto_4
    iget v2, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->d:I

    if-ne v2, v15, :cond_7

    const/4 v2, 0x1

    new-array v10, v4, [I

    aput v12, v10, v12

    const/4 v12, 0x0

    move-object v5, v7

    move v6, v3

    move v7, v11

    move v8, v9

    move v9, v2

    move-object v11, v12

    .line 22
    invoke-static/range {v5 .. v11}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v2

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    .line 23
    invoke-static {v7, v3, v11, v2, v5}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v2

    .line 24
    :goto_5
    new-instance v3, Ljava/awt/image/IndexColorModel;

    iget v1, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->d:I

    shl-int v18, v4, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move/from16 v17, v1

    invoke-direct/range {v16 .. v23}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    .line 25
    new-instance v1, Ljava/awt/image/BufferedImage;

    .line 26
    invoke-virtual {v3}, Ljava/awt/image/IndexColorModel;->isAlphaPremultiplied()Z

    move-result v4

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v1

    :cond_8
    if-ne v5, v4, :cond_d

    if-gt v8, v7, :cond_d

    if-gt v7, v6, :cond_d

    .line 27
    new-instance v5, Ljava/awt/image/IndexColorModel;

    iget v6, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->m:I

    shl-int v18, v4, v6

    iget-object v7, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->k:[I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    move-object/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v19, v7

    invoke-direct/range {v16 .. v23}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    .line 28
    new-instance v10, Ljava/awt/image/BufferedImage;

    const/16 v6, 0xc

    invoke-direct {v10, v3, v11, v6, v5}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    .line 29
    new-array v9, v3, [B

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v11, :cond_c

    .line 30
    invoke-virtual {v13, v2, v14}, Lorg/apache/commons/imaging/formats/pcx/b;->a(Ljava/io/InputStream;[B)V

    .line 31
    invoke-static {v9, v12}, Ljava/util/Arrays;->fill([BB)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 32
    :goto_7
    iget v7, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->m:I

    if-ge v5, v7, :cond_b

    const/4 v7, 0x0

    .line 33
    :goto_8
    iget v12, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->n:I

    if-ge v7, v12, :cond_a

    add-int/lit8 v12, v6, 0x1

    .line 34
    aget-byte v6, v14, v6

    and-int/lit16 v6, v6, 0xff

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v15, :cond_9

    mul-int/lit8 v18, v7, 0x8

    add-int v15, v18, v4

    if-ge v15, v3, :cond_9

    .line 35
    aget-byte v18, v9, v15

    rsub-int/lit8 v20, v4, 0x7

    shr-int v20, v6, v20

    const/16 v17, 0x1

    and-int/lit8 v20, v20, 0x1

    shl-int v0, v20, v5

    int-to-byte v0, v0

    or-int v0, v18, v0

    int-to-byte v0, v0

    aput-byte v0, v9, v15

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    const/16 v15, 0x8

    goto :goto_9

    :cond_9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move v6, v12

    const/4 v4, 0x1

    const/16 v15, 0x8

    goto :goto_8

    :cond_a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const/4 v4, 0x1

    const/4 v12, 0x0

    const/16 v15, 0x8

    goto :goto_7

    .line 36
    :cond_b
    invoke-virtual {v10}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v0, 0x1

    move v7, v8

    move v12, v8

    move v8, v3

    move-object v4, v9

    move v9, v0

    move-object v0, v10

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v8, v12, 0x1

    move-object v10, v0

    move-object v9, v4

    const/4 v4, 0x1

    const/4 v12, 0x0

    const/16 v15, 0x8

    move-object/from16 v0, p0

    goto :goto_6

    :cond_c
    move-object v0, v10

    return-object v0

    :cond_d
    const/16 v0, 0x3e8

    const/4 v4, 0x3

    const/16 v6, 0x8

    if-ne v5, v6, :cond_f

    if-ne v7, v4, :cond_f

    new-array v5, v4, [[B

    mul-int v6, v3, v11

    .line 37
    new-array v7, v6, [B

    const/4 v9, 0x0

    aput-object v7, v5, v9

    .line 38
    new-array v7, v6, [B

    const/4 v10, 0x1

    aput-object v7, v5, v10

    .line 39
    new-array v6, v6, [B

    aput-object v6, v5, v8

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v11, :cond_e

    .line 40
    invoke-virtual {v13, v2, v14}, Lorg/apache/commons/imaging/formats/pcx/b;->a(Ljava/io/InputStream;[B)V

    .line 41
    aget-object v7, v5, v9

    mul-int v12, v6, v3

    invoke-static {v14, v9, v7, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget v7, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->n:I

    aget-object v9, v5, v10

    invoke-static {v14, v7, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget v7, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->n:I

    mul-int/lit8 v7, v7, 0x2

    aget-object v9, v5, v8

    invoke-static {v14, v7, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_a

    .line 44
    :cond_e
    new-instance v1, Ljava/awt/image/DataBufferByte;

    const/4 v2, 0x0

    aget-object v2, v5, v2

    array-length v2, v2

    invoke-direct {v1, v5, v2}, Ljava/awt/image/DataBufferByte;-><init>([[BI)V

    new-array v9, v4, [I

    .line 45
    fill-array-data v9, :array_1

    new-array v10, v4, [I

    fill-array-data v10, :array_2

    const/4 v2, 0x0

    move-object v5, v1

    move v6, v3

    move v7, v11

    move v8, v3

    move-object v11, v2

    invoke-static/range {v5 .. v11}, Ljava/awt/image/Raster;->createBandedRaster(Ljava/awt/image/DataBuffer;III[I[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    .line 46
    new-instance v8, Ljava/awt/image/ComponentColorModel;

    .line 47
    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    .line 48
    new-instance v0, Ljava/awt/image/BufferedImage;

    .line 49
    invoke-virtual {v8}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-direct {v0, v8, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0

    :cond_f
    const/16 v6, 0x18

    const/4 v9, 0x1

    if-ne v5, v6, :cond_10

    if-eq v7, v9, :cond_11

    :cond_10
    const/16 v10, 0x20

    if-ne v5, v10, :cond_15

    if-ne v7, v9, :cond_15

    :cond_11
    mul-int/lit8 v9, v3, 0x3

    mul-int v5, v9, v11

    .line 50
    new-array v7, v5, [B

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v11, :cond_14

    .line 51
    invoke-virtual {v13, v2, v14}, Lorg/apache/commons/imaging/formats/pcx/b;->a(Ljava/io/InputStream;[B)V

    .line 52
    iget v12, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->d:I

    if-ne v12, v6, :cond_12

    mul-int v12, v10, v9

    const/4 v15, 0x0

    .line 53
    invoke-static {v14, v15, v7, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    :cond_12
    const/4 v15, 0x0

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v3, :cond_13

    mul-int v16, v10, v9

    mul-int/lit8 v17, v12, 0x3

    add-int v16, v16, v17

    mul-int/lit8 v17, v12, 0x4

    .line 54
    aget-byte v18, v14, v17

    aput-byte v18, v7, v16

    add-int/lit8 v18, v16, 0x1

    add-int/lit8 v19, v17, 0x1

    .line 55
    aget-byte v19, v14, v19

    aput-byte v19, v7, v18

    add-int/lit8 v16, v16, 0x2

    add-int/lit8 v17, v17, 0x2

    .line 56
    aget-byte v17, v14, v17

    aput-byte v17, v7, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_13
    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 57
    :cond_14
    new-instance v1, Ljava/awt/image/DataBufferByte;

    invoke-direct {v1, v7, v5}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    const/4 v2, 0x3

    new-array v10, v4, [I

    .line 58
    fill-array-data v10, :array_3

    const/4 v4, 0x0

    move-object v5, v1

    move v6, v3

    move v7, v11

    move v8, v9

    move v9, v2

    move-object v11, v4

    invoke-static/range {v5 .. v11}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    .line 59
    new-instance v8, Ljava/awt/image/ComponentColorModel;

    .line 60
    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    .line 61
    new-instance v0, Ljava/awt/image/BufferedImage;

    .line 62
    invoke-virtual {v8}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-direct {v0, v8, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0

    .line 63
    :cond_15
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid/unsupported image with bitsPerPixel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and planes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->m:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_16
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported/invalid image encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_17
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported/invalid image with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->m:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " planes"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_18
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Image height is negative"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_19
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Image width is negative"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x0
        0xffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data
.end method

.method private d(Ljava/io/InputStream;Z)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PcxHeader"

    const/16 v1, 0x80

    const-string v2, "Not a Valid PCX File"

    move-object/from16 v3, p1

    .line 1
    invoke-static {v0, v3, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-byte v2, v0, v1

    and-int/lit16 v4, v2, 0xff

    const/4 v2, 0x1

    .line 3
    aget-byte v2, v0, v2

    and-int/lit16 v5, v2, 0xff

    const/4 v2, 0x2

    .line 4
    aget-byte v3, v0, v2

    and-int/lit16 v6, v3, 0xff

    const/4 v3, 0x3

    .line 5
    aget-byte v3, v0, v3

    and-int/lit16 v7, v3, 0xff

    .line 6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    const/4 v8, 0x4

    invoke-static {v0, v8, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v8

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    const/4 v9, 0x6

    invoke-static {v0, v9, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v9

    .line 8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    const/16 v10, 0x8

    invoke-static {v0, v10, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v11

    .line 9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    const/16 v12, 0xa

    invoke-static {v0, v12, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v13

    .line 10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    const/16 v14, 0xc

    invoke-static {v0, v14, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v14

    .line 11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    const/16 v15, 0xe

    invoke-static {v0, v15, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v15

    const/16 v3, 0x10

    new-array v1, v3, [I

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v3, :cond_0

    const/high16 v17, -0x1000000

    mul-int/lit8 v18, v12, 0x3

    add-int/lit8 v18, v18, 0x10

    .line 12
    aget-byte v2, v0, v18

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v3

    or-int v2, v2, v17

    add-int/lit8 v17, v18, 0x1

    aget-byte v3, v0, v17

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    add-int/lit8 v18, v18, 0x2

    aget-byte v3, v0, v18

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v1, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x10

    goto :goto_0

    :cond_0
    const/16 v2, 0x40

    .line 13
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x41

    .line 14
    aget-byte v3, v0, v3

    and-int/lit16 v12, v3, 0xff

    const/16 v3, 0x42

    .line 15
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-static {v0, v3, v10}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v17

    const/16 v3, 0x44

    .line 16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-static {v0, v3, v10}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v18

    const/16 v3, 0x46

    .line 17
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-static {v0, v3, v10}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v19

    const/16 v3, 0x48

    .line 18
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-static {v0, v3, v10}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v20

    const/16 v0, 0xa

    if-ne v4, v0, :cond_3

    if-eqz p2, :cond_2

    .line 19
    rem-int/lit8 v0, v17, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    .line 20
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Not a Valid PCX File: bytesPerLine is odd"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_2
    :goto_1
    new-instance v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;

    move-object v3, v0

    move v10, v11

    move v11, v13

    move/from16 v16, v12

    move v12, v14

    move v13, v15

    move-object v14, v1

    move v15, v2

    invoke-direct/range {v3 .. v20}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;-><init>(IIIIIIIIII[IIIIIII)V

    return-object v0

    .line 22
    :cond_3
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Valid PCX File: manufacturer is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;
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
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->d(Ljava/io/InputStream;Z)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;

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
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->a(Ljava/io/PrintWriter;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->e:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    .line 1
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PCX:Lorg/apache/commons/imaging/ImageFormats;

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
    check-cast p2, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;

    invoke-direct {p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/commons/imaging/ImagingParameters;->isStrict()Z

    move-result p2

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->d(Ljava/io/InputStream;Z)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;

    move-result-object p2

    .line 5
    invoke-direct {p0, p2, v0, p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->c(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;Ljava/io/InputStream;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 7
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->d:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultParameters()Lorg/apache/commons/imaging/ImagingParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParameters()Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;-><init>()V

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
    check-cast p2, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)[B

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)[B
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
    check-cast p2, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;

    move-result-object v0

    .line 3
    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)Ljava/awt/Dimension;

    move-result-object v1

    .line 4
    new-instance v21, Lorg/apache/commons/imaging/ImageInfo;

    iget v2, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->m:I

    iget v3, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->d:I

    mul-int v4, v2, v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->PCX:Lorg/apache/commons/imaging/ImageFormats;

    iget v8, v1, Ljava/awt/Dimension;->height:I

    iget v11, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->j:I

    .line 5
    invoke-virtual {v1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v2

    iget v7, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->j:I

    int-to-double v9, v7

    div-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v12, v2

    iget v13, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->i:I

    .line 6
    invoke-virtual {v1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    iget v7, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->i:I

    int-to-double v9, v7

    div-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v14, v2

    iget v15, v1, Ljava/awt/Dimension;->width:I

    iget v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->m:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iget v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->d:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v18, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v18, 0x1

    :goto_1
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 7
    iget v0, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->c:I

    if-ne v0, v2, :cond_2

    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    .line 8
    :cond_2
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    :goto_2
    move-object/from16 v20, v0

    const-string v3, "PCX"

    const-string v7, "ZSoft PCX Image"

    const-string v9, "image/x-pcx"

    const/4 v10, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, v21

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v21
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
    check-cast p2, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->e(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;

    move-result-object p1

    .line 3
    iget p2, p1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->g:I

    iget v0, p1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->e:I

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    if-ltz p2, :cond_1

    .line 4
    iget v0, p1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->h:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$a;->f:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    .line 5
    new-instance p1, Ljava/awt/Dimension;

    invoke-direct {p1, p2, v0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Image height is negative"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Image width is negative"

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
    check-cast p2, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
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

    const-string v0, "Pcx-Custom"

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
    check-cast p3, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)V

    return-void
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/pcx/a;

    invoke-direct {v0, p3}, Lorg/apache/commons/imaging/formats/pcx/a;-><init>(Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/imaging/formats/pcx/a;->a(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;)V

    return-void
.end method
