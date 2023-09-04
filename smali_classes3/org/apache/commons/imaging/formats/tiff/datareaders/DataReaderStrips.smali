.class public final Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;
.super Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;
.source "DataReaderStrips.java"


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

.field private final g:Ljava/nio/ByteOrder;

.field private h:I

.field private i:I

.field private final j:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIIILorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;Ljava/nio/ByteOrder;ILorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p11

    .line 1
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;[IIIIIILorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;)V

    move v0, p3

    .line 2
    iput v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->c:I

    move/from16 v0, p10

    .line 3
    iput v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->d:I

    move/from16 v0, p13

    .line 4
    iput v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->e:I

    move-object/from16 v0, p11

    .line 5
    iput-object v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->f:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    move-object/from16 v0, p14

    .line 6
    iput-object v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->j:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    move-object/from16 v0, p12

    .line 7
    iput-object v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->g:Ljava/nio/ByteOrder;

    return-void
.end method

.method private d(Lorg/apache/commons/imaging/common/ImageBuilder;[BII)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v8, p0

    move-object v0, p1

    move-object/from16 v5, p2

    move/from16 v1, p3

    move/from16 v2, p4

    .line 1
    iget v9, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->i:I

    if-lt v9, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget v3, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->sampleFormat:I

    const/4 v4, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_4

    .line 3
    iget v4, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    div-int/2addr v1, v4

    add-int v3, v9, v1

    if-le v3, v2, :cond_1

    sub-int v1, v2, v9

    :cond_1
    add-int v11, v9, v1

    .line 4
    iput v10, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->h:I

    add-int/2addr v1, v9

    .line 5
    iput v1, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->i:I

    new-array v12, v6, [I

    sub-int v3, v11, v9

    .line 6
    iget v6, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->c:I

    iget-object v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->g:Ljava/nio/ByteOrder;

    move-object v1, p0

    move v2, v4

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->unpackFloatingPointSamples(III[BILjava/nio/ByteOrder;)[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v9, v11, :cond_3

    const/4 v3, 0x0

    .line 7
    :goto_1
    iget v4, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    if-ge v3, v4, :cond_2

    .line 8
    aget v4, v1, v2

    aput v4, v12, v10

    .line 9
    iget v4, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    add-int/2addr v2, v4

    .line 10
    iget-object v4, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    invoke-virtual {v4, p1, v12, v3, v9}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    const/16 v3, 0x8

    .line 11
    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->isHomogenous(I)Z

    move-result v4

    .line 12
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->predictor:I

    const/4 v9, 0x2

    if-eq v7, v9, :cond_8

    iget v11, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->c:I

    if-ne v11, v3, :cond_8

    if-eqz v4, :cond_8

    .line 13
    iget v3, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    div-int/2addr v1, v3

    .line 14
    iget v3, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->i:I

    add-int v4, v3, v1

    if-le v4, v2, :cond_5

    sub-int v1, v2, v3

    :cond_5
    add-int v2, v3, v1

    .line 15
    iput v10, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->h:I

    add-int/2addr v1, v3

    .line 16
    iput v1, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->i:I

    new-array v1, v6, [I

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    const/4 v6, 0x0

    .line 17
    :goto_3
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    if-ge v6, v7, :cond_6

    add-int/lit8 v7, v4, 0x1

    .line 18
    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v10

    .line 19
    iget-object v4, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    invoke-virtual {v4, p1, v1, v6, v3}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-void

    .line 20
    :cond_8
    iget v11, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->c:I

    const/16 v12, 0x18

    if-eq v11, v12, :cond_9

    const/16 v13, 0x20

    if-ne v11, v13, :cond_10

    :cond_9
    if-eqz v4, :cond_10

    iget-object v4, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    instance-of v4, v4, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;

    if-eqz v4, :cond_10

    .line 21
    iget v4, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    div-int/2addr v1, v4

    .line 22
    iget v6, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->i:I

    add-int v11, v6, v1

    if-le v11, v2, :cond_a

    sub-int v1, v2, v6

    :cond_a
    add-int v2, v6, v1

    .line 23
    iput v10, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->h:I

    add-int v11, v6, v1

    .line 24
    iput v11, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->i:I

    if-ne v7, v9, :cond_b

    .line 25
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    invoke-virtual {p0, v4, v1, v7, v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->applyPredictorToBlock(III[B)V

    .line 26
    :cond_b
    iget v1, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->c:I

    if-ne v1, v12, :cond_d

    const/4 v1, 0x0

    :goto_4
    if-ge v6, v2, :cond_f

    const/4 v4, 0x0

    .line 27
    :goto_5
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    if-ge v4, v7, :cond_c

    const/high16 v7, -0x1000000

    .line 28
    aget-byte v9, v5, v1

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v3

    or-int/2addr v7, v9

    add-int/lit8 v9, v1, 0x2

    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    .line 29
    invoke-virtual {p1, v4, v6, v7}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x3

    goto :goto_5

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :goto_6
    if-ge v6, v2, :cond_f

    const/4 v4, 0x0

    .line 30
    :goto_7
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    if-ge v4, v7, :cond_e

    .line 31
    aget-byte v7, v5, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v3

    or-int/2addr v7, v9

    add-int/lit8 v9, v1, 0x2

    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    add-int/lit8 v9, v1, 0x3

    aget-byte v9, v5, v9

    shl-int/2addr v9, v12

    or-int/2addr v7, v9

    .line 32
    invoke-virtual {p1, v4, v6, v7}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_7

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    return-void

    .line 33
    :cond_10
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/datareaders/a;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v5, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->g:Ljava/nio/ByteOrder;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/a;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 34
    :try_start_0
    iget v4, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->bitsPerSampleLength:I

    new-array v4, v4, [I

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->resetPredictor()V

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v1, :cond_13

    .line 36
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->a(Lorg/apache/commons/imaging/formats/tiff/datareaders/a;[I)V

    .line 37
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->h:I

    iget v9, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    if-ge v7, v9, :cond_11

    .line 38
    invoke-virtual {p0, v4}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->applyPredictor([I)[I

    move-result-object v4

    .line 39
    iget-object v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    iget v9, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->h:I

    iget v11, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->i:I

    invoke-virtual {v7, p1, v4, v9, v11}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    .line 40
    :cond_11
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->h:I

    add-int/2addr v7, v6

    iput v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->h:I

    .line 41
    iget v9, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    if-lt v7, v9, :cond_12

    .line 42
    iput v10, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->h:I

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->resetPredictor()V

    .line 44
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->i:I

    add-int/2addr v7, v6

    iput v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->i:I

    .line 45
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/datareaders/a;->a()V

    .line 46
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v7, v2, :cond_12

    goto :goto_9

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 47
    :cond_13
    :goto_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 48
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v1
.end method

.method private e(Ljava/awt/Rectangle;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Ljava/awt/Rectangle;->x:I

    .line 2
    iget v2, v0, Ljava/awt/Rectangle;->y:I

    .line 3
    iget v3, v0, Ljava/awt/Rectangle;->width:I

    .line 4
    iget v0, v0, Ljava/awt/Rectangle;->height:I

    move v13, v0

    move v15, v1

    move v14, v2

    move v11, v3

    goto :goto_0

    .line 5
    :cond_0
    iget v3, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    .line 6
    iget v0, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    move v13, v0

    move v11, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    mul-int v0, v11, v13

    .line 7
    iget v1, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    mul-int v0, v0, v1

    new-array v10, v0, [F

    .line 8
    iget v0, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->e:I

    div-int v1, v14, v0

    add-int v2, v14, v13

    add-int/lit8 v2, v2, -0x1

    .line 9
    div-int v9, v2, v0

    move v8, v1

    :goto_1
    if-gt v8, v9, :cond_1

    .line 10
    iget v0, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->e:I

    mul-int v7, v8, v0

    .line 11
    iget v1, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    sub-int/2addr v1, v7

    .line 12
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 13
    iget v0, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->c:I

    iget v1, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int v3, v16, v0

    .line 14
    iget-object v0, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->j:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-virtual {v0, v8}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->getImageData(I)Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v1

    .line 15
    iget v2, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->d:I

    iget v4, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    move-object/from16 v0, p0

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->decompress([BIIII)[B

    move-result-object v4

    .line 16
    iget v3, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    iget v5, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->c:I

    iget-object v6, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->g:Ljava/nio/ByteOrder;

    move v1, v3

    move/from16 v2, v16

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->unpackFloatingPointSamples(III[BILjava/nio/ByteOrder;)[I

    move-result-object v5

    const/4 v1, 0x0

    .line 17
    iget v3, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    iget v6, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    move v2, v7

    move/from16 v4, v16

    move/from16 v16, v6

    move v6, v15

    move v7, v14

    move/from16 v17, v8

    move v8, v11

    move/from16 v18, v9

    move v9, v13

    move-object/from16 p1, v10

    move/from16 v10, v16

    move/from16 v16, v14

    move v14, v11

    move-object/from16 v11, p1

    invoke-virtual/range {v0 .. v11}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->b(IIII[IIIIII[F)V

    add-int/lit8 v8, v17, 0x1

    move-object/from16 v10, p1

    move v11, v14

    move/from16 v14, v16

    move/from16 v9, v18

    goto :goto_1

    :cond_1
    move-object/from16 p1, v10

    move v14, v11

    .line 18
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;

    iget v1, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    move-object/from16 v2, p1

    invoke-direct {v0, v14, v13, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;-><init>(III[F)V

    return-object v0
.end method

.method private f(Ljava/awt/Rectangle;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    iget v1, v0, Ljava/awt/Rectangle;->x:I

    .line 2
    iget v2, v0, Ljava/awt/Rectangle;->y:I

    .line 3
    iget v3, v0, Ljava/awt/Rectangle;->width:I

    .line 4
    iget v0, v0, Ljava/awt/Rectangle;->height:I

    move v12, v0

    move v14, v1

    move v13, v2

    move v15, v3

    goto :goto_0

    .line 5
    :cond_0
    iget v3, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    .line 6
    iget v0, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    move v12, v0

    move v15, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    mul-int v0, v15, v12

    .line 7
    new-array v10, v0, [I

    .line 8
    iget v0, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->e:I

    div-int v1, v13, v0

    add-int v2, v13, v12

    add-int/lit8 v2, v2, -0x1

    .line 9
    div-int v9, v2, v0

    move v8, v1

    :goto_1
    if-gt v8, v9, :cond_1

    .line 10
    iget v0, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->e:I

    mul-int v16, v8, v0

    .line 11
    iget v1, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    sub-int v1, v1, v16

    .line 12
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 13
    iget v0, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->c:I

    iget v1, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int v3, v17, v0

    .line 14
    iget-object v0, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->j:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-virtual {v0, v8}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->getImageData(I)Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v1

    .line 15
    iget v2, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->d:I

    iget v4, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    move-object/from16 v0, p0

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->decompress([BIIII)[B

    move-result-object v4

    .line 16
    iget v3, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    iget v5, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->predictor:I

    iget v6, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->c:I

    iget-object v7, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->g:Ljava/nio/ByteOrder;

    move v1, v3

    move/from16 v2, v17

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->unpackIntSamples(III[BIILjava/nio/ByteOrder;)[I

    move-result-object v5

    const/4 v1, 0x0

    .line 17
    iget v3, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    move/from16 v2, v16

    move/from16 v4, v17

    move v6, v14

    move v7, v13

    move/from16 v16, v8

    move v8, v15

    move/from16 v17, v9

    move v9, v12

    move-object/from16 p1, v10

    invoke-virtual/range {v0 .. v10}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->c(IIII[IIIII[I)V

    add-int/lit8 v8, v16, 0x1

    move/from16 v9, v17

    goto :goto_1

    :cond_1
    move-object/from16 p1, v10

    .line 18
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;

    move-object/from16 v1, p1

    invoke-direct {v0, v15, v12, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;-><init>(II[I)V

    return-object v0
.end method


# virtual methods
.method public readImageData(Ljava/awt/Rectangle;ZZ)Lorg/apache/commons/imaging/common/ImageBuilder;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    const/4 v7, 0x0

    if-nez p1, :cond_0

    .line 1
    new-instance v0, Ljava/awt/Rectangle;

    iget v1, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    iget v2, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    invoke-direct {v0, v7, v7, v1, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p1

    .line 2
    :goto_0
    iget v0, v8, Ljava/awt/Rectangle;->y:I

    iget v1, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->e:I

    div-int/2addr v0, v1

    .line 3
    iget v1, v8, Ljava/awt/Rectangle;->y:I

    iget v2, v8, Ljava/awt/Rectangle;->height:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->e:I

    div-int v9, v1, v2

    sub-int v1, v9, v0

    add-int/lit8 v1, v1, 0x1

    mul-int v10, v1, v2

    mul-int v11, v0, v2

    .line 4
    iget v1, v8, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v1, v11

    iget v2, v8, Ljava/awt/Rectangle;->height:I

    add-int v12, v1, v2

    .line 5
    new-instance v13, Lorg/apache/commons/imaging/common/ImageBuilder;

    iget v1, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v13, v1, v10, v2, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZZ)V

    .line 6
    iget-object v1, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->f:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->PLANAR:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    const-wide v14, 0xffffffffL

    if-eq v1, v2, :cond_2

    move v7, v0

    :goto_1
    if-gt v7, v9, :cond_1

    .line 7
    iget v0, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->e:I

    int-to-long v0, v0

    and-long/2addr v0, v14

    .line 8
    iget v2, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    int-to-long v2, v2

    int-to-long v4, v7

    mul-long v4, v4, v0

    sub-long/2addr v2, v4

    .line 9
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 10
    iget v2, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->c:I

    iget v3, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    mul-int v2, v2, v3

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    int-to-long v4, v2

    mul-long v4, v4, v0

    int-to-long v2, v3

    mul-long v2, v2, v0

    .line 11
    iget-object v14, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->j:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-virtual {v14, v7}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->getImageData(I)Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v14

    .line 12
    iget v15, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->d:I

    long-to-int v5, v4

    iget v4, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    long-to-int v1, v0

    move-object/from16 v0, p0

    move/from16 v16, v1

    move-object v1, v14

    move v14, v10

    move/from16 v17, v11

    move-wide v10, v2

    move v2, v15

    move v3, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->decompress([BIIII)[B

    move-result-object v0

    long-to-int v1, v10

    .line 13
    invoke-direct {v6, v13, v0, v1, v12}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->d(Lorg/apache/commons/imaging/common/ImageBuilder;[BII)V

    add-int/lit8 v7, v7, 0x1

    move v10, v14

    move/from16 v11, v17

    const-wide v14, 0xffffffffL

    goto :goto_1

    :cond_1
    move v14, v10

    move/from16 v17, v11

    goto/16 :goto_5

    :cond_2
    move v14, v10

    move/from16 v17, v11

    .line 14
    iget-object v1, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->j:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->getImageDataLength()I

    move-result v1

    const/4 v10, 0x3

    div-int/lit8 v11, v1, 0x3

    move v12, v0

    :goto_2
    if-gt v12, v9, :cond_5

    .line 15
    iget v0, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->e:I

    int-to-long v0, v0

    const-wide v15, 0xffffffffL

    and-long/2addr v0, v15

    .line 16
    iget v2, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    int-to-long v2, v2

    int-to-long v4, v12

    mul-long v4, v4, v0

    sub-long/2addr v2, v4

    .line 17
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 18
    iget v0, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->c:I

    iget v1, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    int-to-long v2, v0

    mul-long v2, v2, v4

    int-to-long v0, v1

    mul-long v0, v0, v4

    long-to-int v3, v2

    .line 19
    new-array v2, v3, [B

    :goto_3
    if-ge v7, v10, :cond_4

    mul-int v18, v7, v11

    add-int v15, v18, v12

    .line 20
    iget-object v10, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->j:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-virtual {v10, v15}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->getImageData(I)Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v10

    .line 21
    iget v15, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->d:I

    move/from16 v16, v9

    iget v9, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    move/from16 v18, v11

    long-to-int v11, v4

    move/from16 v20, v12

    move-object/from16 v19, v13

    move-wide v12, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v10, v2

    move v2, v15

    move v15, v3

    move-wide/from16 v21, v4

    move v4, v9

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->decompress([BIIII)[B

    move-result-object v0

    .line 22
    array-length v1, v0

    move v3, v7

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_3

    aget-byte v4, v0, v2

    .line 23
    aput-byte v4, v10, v3

    const/4 v4, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x3

    add-int/lit8 v7, v7, 0x1

    move-object v2, v10

    move-wide v0, v12

    move v3, v15

    move/from16 v9, v16

    move/from16 v11, v18

    move-object/from16 v13, v19

    move/from16 v12, v20

    move-wide/from16 v4, v21

    const/4 v10, 0x3

    const-wide v15, 0xffffffffL

    goto :goto_3

    :cond_4
    move-object v10, v2

    move/from16 v16, v9

    move/from16 v18, v11

    move/from16 v20, v12

    move-object/from16 v19, v13

    const/4 v4, 0x3

    move-wide v12, v0

    long-to-int v0, v12

    .line 24
    iget v1, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    move-object/from16 v2, v19

    invoke-direct {v6, v2, v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->d(Lorg/apache/commons/imaging/common/ImageBuilder;[BII)V

    add-int/lit8 v12, v20, 0x1

    move-object v13, v2

    const/4 v7, 0x0

    const/4 v10, 0x3

    goto/16 :goto_2

    :cond_5
    :goto_5
    move-object v2, v13

    .line 25
    iget v0, v8, Ljava/awt/Rectangle;->x:I

    if-nez v0, :cond_6

    iget v0, v8, Ljava/awt/Rectangle;->y:I

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    iget v0, v8, Ljava/awt/Rectangle;->width:I

    iget v3, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    if-ne v0, v3, :cond_7

    iget v0, v8, Ljava/awt/Rectangle;->height:I

    move v3, v14

    if-ne v0, v3, :cond_7

    return-object v2

    :cond_6
    move/from16 v1, v17

    .line 26
    :cond_7
    iget v0, v8, Ljava/awt/Rectangle;->x:I

    iget v3, v8, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v3, v1

    iget v1, v8, Ljava/awt/Rectangle;->width:I

    iget v4, v8, Ljava/awt/Rectangle;->height:I

    invoke-virtual {v2, v0, v3, v1, v4}, Lorg/apache/commons/imaging/common/ImageBuilder;->getSubset(IIII)Lorg/apache/commons/imaging/common/ImageBuilder;

    move-result-object v0

    return-object v0
.end method

.method public readRasterData(Ljava/awt/Rectangle;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->sampleFormat:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->e(Ljava/awt/Rectangle;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported sample format, value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->sampleFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->f(Ljava/awt/Rectangle;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;

    move-result-object p1

    return-object p1
.end method
