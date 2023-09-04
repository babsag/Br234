.class public final Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;
.super Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;
.source "DataReaderTiled.java"


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ljava/nio/ByteOrder;

.field private final h:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;III[IIIIIIILorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move-object/from16 v9, p13

    .line 1
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;[IIIIIILorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;)V

    move v0, p3

    .line 2
    iput v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    move v0, p4

    .line 3
    iput v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    move/from16 v0, p5

    .line 4
    iput v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->e:I

    move/from16 v0, p12

    .line 5
    iput v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->f:I

    move-object/from16 v0, p15

    .line 6
    iput-object v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->h:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    move-object/from16 v0, p14

    .line 7
    iput-object v0, v10, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->g:Ljava/nio/ByteOrder;

    return-void
.end method

.method private d(Lorg/apache/commons/imaging/common/ImageBuilder;[BIIII)V
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

    move/from16 v1, p5

    move/from16 v2, p6

    .line 1
    iget v3, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->sampleFormat:I

    const/4 v4, 0x4

    const/4 v6, 0x3

    const/4 v9, 0x0

    if-ne v3, v6, :cond_4

    .line 2
    iget v3, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    add-int v3, p4, v3

    if-le v3, v2, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v3

    .line 3
    :goto_0
    iget v6, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    add-int v2, p3, v6

    if-le v2, v1, :cond_1

    move v11, v1

    goto :goto_1

    :cond_1
    move v11, v2

    :goto_1
    new-array v12, v4, [I

    sub-int v2, v11, p3

    sub-int v3, v10, p4

    .line 4
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->e:I

    iget-object v13, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->g:Ljava/nio/ByteOrder;

    move-object v1, p0

    move v4, v6

    move-object/from16 v5, p2

    move v6, v7

    move-object v7, v13

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->unpackFloatingPointSamples(III[BILjava/nio/ByteOrder;)[I

    move-result-object v1

    move/from16 v2, p4

    :goto_2
    if-ge v2, v10, :cond_3

    sub-int v3, v2, p4

    .line 5
    iget v4, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    mul-int v3, v3, v4

    move/from16 v4, p3

    :goto_3
    if-ge v4, v11, :cond_2

    sub-int v5, v4, p3

    add-int/2addr v5, v3

    .line 6
    iget v6, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    mul-int v5, v5, v6

    .line 7
    aget v5, v1, v5

    aput v5, v12, v9

    .line 8
    iget-object v5, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    invoke-virtual {v5, p1, v12, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    const/16 v3, 0x8

    .line 9
    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->isHomogenous(I)Z

    move-result v7

    .line 10
    iget v10, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->e:I

    const/16 v11, 0x20

    const/16 v12, 0x18

    if-eq v10, v12, :cond_5

    if-ne v10, v11, :cond_d

    :cond_5
    if-eqz v7, :cond_d

    iget-object v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    instance-of v7, v7, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;

    if-eqz v7, :cond_d

    .line 11
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    add-int v7, p4, v7

    if-le v7, v2, :cond_6

    goto :goto_4

    :cond_6
    move v2, v7

    .line 12
    :goto_4
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    add-int v9, p3, v7

    if-le v9, v1, :cond_7

    move v9, v1

    .line 13
    :cond_7
    iget v1, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->predictor:I

    const/4 v10, 0x2

    if-ne v1, v10, :cond_8

    sub-int v1, v2, p4

    .line 14
    iget v10, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    invoke-virtual {p0, v7, v1, v10, v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->applyPredictorToBlock(III[B)V

    .line 15
    :cond_8
    iget v1, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->e:I

    if-ne v1, v12, :cond_a

    move/from16 v1, p4

    :goto_5
    if-ge v1, v2, :cond_c

    sub-int v4, v1, p4

    .line 16
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    mul-int v4, v4, v7

    mul-int/lit8 v4, v4, 0x3

    move/from16 v7, p3

    :goto_6
    if-ge v7, v9, :cond_9

    const/high16 v10, -0x1000000

    .line 17
    aget-byte v11, v5, v4

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    add-int/lit8 v11, v4, 0x1

    aget-byte v11, v5, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v3

    or-int/2addr v10, v11

    add-int/lit8 v11, v4, 0x2

    aget-byte v11, v5, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    .line 18
    invoke-virtual {p1, v7, v1, v10}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v6

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    if-ne v1, v11, :cond_c

    move/from16 v1, p4

    :goto_7
    if-ge v1, v2, :cond_c

    sub-int v6, v1, p4

    .line 19
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    mul-int v6, v6, v7

    mul-int/lit8 v6, v6, 0x4

    move/from16 v7, p3

    :goto_8
    if-ge v7, v9, :cond_b

    .line 20
    aget-byte v10, v5, v6

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, v5, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v3

    or-int/2addr v10, v11

    add-int/lit8 v11, v6, 0x2

    aget-byte v11, v5, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    add-int/lit8 v11, v6, 0x3

    aget-byte v11, v5, v11

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    .line 21
    invoke-virtual {p1, v7, v1, v10}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v4

    goto :goto_8

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    return-void

    .line 22
    :cond_d
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/datareaders/a;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v5, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->g:Ljava/nio/ByteOrder;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/a;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 23
    :try_start_0
    iget v4, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    iget v5, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    mul-int v4, v4, v5

    .line 24
    iget v5, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->bitsPerSampleLength:I

    new-array v5, v5, [I

    .line 25
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->resetPredictor()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_9
    if-ge v6, v4, :cond_11

    add-int v11, v7, p3

    add-int v12, v10, p4

    .line 26
    invoke-virtual {p0, v3, v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->a(Lorg/apache/commons/imaging/formats/tiff/datareaders/a;[I)V

    if-ge v11, v1, :cond_e

    if-ge v12, v2, :cond_e

    .line 27
    invoke-virtual {p0, v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->applyPredictor([I)[I

    move-result-object v5

    .line 28
    iget-object v13, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    invoke-virtual {v13, p1, v5, v11, v12}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 29
    iget v11, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    if-lt v7, v11, :cond_10

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->resetPredictor()V

    add-int/lit8 v10, v10, 0x1

    .line 31
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/datareaders/a;->a()V

    .line 32
    iget v7, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v10, v7, :cond_f

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 33
    :cond_11
    :goto_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 34
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1
.end method

.method private e(Ljava/awt/Rectangle;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    .line 1
    iget v1, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    iget v2, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->e:I

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x7

    .line 2
    div-int/lit8 v1, v1, 0x8

    .line 3
    iget v2, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    mul-int v13, v1, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget v1, v0, Ljava/awt/Rectangle;->x:I

    .line 5
    iget v2, v0, Ljava/awt/Rectangle;->y:I

    .line 6
    iget v3, v0, Ljava/awt/Rectangle;->width:I

    .line 7
    iget v0, v0, Ljava/awt/Rectangle;->height:I

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    move v11, v3

    goto :goto_0

    .line 8
    :cond_0
    iget v3, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    .line 9
    iget v0, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    move v14, v0

    move v11, v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    mul-int v0, v11, v14

    .line 10
    iget v1, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    mul-int v0, v0, v1

    new-array v10, v0, [F

    .line 11
    iget v0, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    div-int v17, v15, v0

    add-int v1, v15, v11

    add-int/lit8 v1, v1, -0x1

    .line 12
    div-int v9, v1, v0

    .line 13
    iget v1, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    div-int v2, v16, v1

    add-int v3, v16, v14

    add-int/lit8 v3, v3, -0x1

    .line 14
    div-int v8, v3, v1

    .line 15
    iget v1, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int v18, v1, v0

    move v7, v2

    :goto_1
    if-gt v7, v8, :cond_2

    move/from16 v6, v17

    :goto_2
    if-gt v6, v9, :cond_1

    mul-int v0, v7, v18

    add-int/2addr v0, v6

    .line 16
    iget-object v1, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->h:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    iget-object v1, v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v1

    .line 17
    iget v2, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->f:I

    iget v4, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    iget v5, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    move-object/from16 v0, p0

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->decompress([BIIII)[B

    move-result-object v4

    .line 18
    iget v3, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    mul-int v19, v6, v3

    .line 19
    iget v2, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    mul-int v20, v7, v2

    .line 20
    iget v5, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->e:I

    iget-object v1, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->g:Ljava/nio/ByteOrder;

    move-object/from16 v21, v1

    move v1, v3

    move/from16 v22, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->unpackFloatingPointSamples(III[BILjava/nio/ByteOrder;)[I

    move-result-object v5

    .line 21
    iget v3, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    iget v4, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    iget v6, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v19, v6

    move v6, v15

    move/from16 v20, v7

    move/from16 v7, v16

    move/from16 v21, v8

    move v8, v11

    move/from16 v23, v9

    move v9, v14

    move-object/from16 p1, v10

    move/from16 v10, v19

    move/from16 v19, v13

    move v13, v11

    move-object/from16 v11, p1

    invoke-virtual/range {v0 .. v11}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->b(IIII[IIIIII[F)V

    add-int/lit8 v6, v22, 0x1

    move-object/from16 v10, p1

    move v11, v13

    move/from16 v13, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v23

    goto :goto_2

    :cond_1
    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v23, v9

    move-object/from16 p1, v10

    move/from16 v19, v13

    move v13, v11

    add-int/lit8 v7, v20, 0x1

    move/from16 v13, v19

    goto :goto_1

    :cond_2
    move-object/from16 p1, v10

    move v13, v11

    .line 22
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;

    iget v1, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    move-object/from16 v2, p1

    invoke-direct {v0, v13, v14, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataFloat;-><init>(III[F)V

    return-object v0
.end method

.method private f(Ljava/awt/Rectangle;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1
    iget v1, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    iget v2, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->e:I

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x7

    .line 2
    div-int/lit8 v1, v1, 0x8

    .line 3
    iget v2, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    mul-int v12, v1, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget v1, v0, Ljava/awt/Rectangle;->x:I

    .line 5
    iget v2, v0, Ljava/awt/Rectangle;->y:I

    .line 6
    iget v3, v0, Ljava/awt/Rectangle;->width:I

    .line 7
    iget v0, v0, Ljava/awt/Rectangle;->height:I

    move v13, v0

    move v14, v1

    move v15, v2

    move v10, v3

    goto :goto_0

    .line 8
    :cond_0
    iget v3, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    .line 9
    iget v0, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    move v13, v0

    move v10, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    mul-int v0, v10, v13

    .line 10
    new-array v9, v0, [I

    .line 11
    iget v0, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    div-int v16, v14, v0

    add-int v1, v14, v10

    add-int/lit8 v1, v1, -0x1

    .line 12
    div-int v8, v1, v0

    .line 13
    iget v1, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    div-int v2, v15, v1

    add-int v3, v15, v13

    add-int/lit8 v3, v3, -0x1

    .line 14
    div-int v7, v3, v1

    .line 15
    iget v1, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int v17, v1, v0

    move v6, v2

    :goto_1
    if-gt v6, v7, :cond_2

    move/from16 v5, v16

    :goto_2
    if-gt v5, v8, :cond_1

    mul-int v0, v6, v17

    add-int/2addr v0, v5

    .line 16
    iget-object v1, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->h:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    iget-object v1, v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v1

    .line 17
    iget v2, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->f:I

    iget v4, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    iget v3, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    move-object/from16 v0, p0

    move/from16 v18, v3

    move v3, v12

    move/from16 v19, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->decompress([BIIII)[B

    move-result-object v4

    .line 18
    iget v3, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    mul-int v18, v19, v3

    .line 19
    iget v2, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    mul-int v20, v6, v2

    .line 20
    iget v5, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->predictor:I

    iget v1, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->e:I

    iget-object v0, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->g:Ljava/nio/ByteOrder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v22, v1

    move v1, v3

    move/from16 v23, v6

    move/from16 v6, v22

    move/from16 v22, v7

    move-object/from16 v7, v21

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->unpackIntSamples(III[BIILjava/nio/ByteOrder;)[I

    move-result-object v5

    .line 21
    iget v3, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    iget v4, v11, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    move/from16 v1, v18

    move/from16 v2, v20

    move v6, v14

    move v7, v15

    move/from16 v18, v8

    move v8, v10

    move-object/from16 p1, v9

    move v9, v13

    move v11, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v0 .. v10}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->c(IIII[IIIII[I)V

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v9, p1

    move v10, v11

    move/from16 v8, v18

    move/from16 v7, v22

    move/from16 v6, v23

    move-object/from16 v11, p0

    goto :goto_2

    :cond_1
    move/from16 v23, v6

    move/from16 v22, v7

    move/from16 v18, v8

    move-object/from16 p1, v9

    move v11, v10

    add-int/lit8 v6, v23, 0x1

    move-object/from16 v11, p0

    goto :goto_1

    :cond_2
    move-object/from16 p1, v9

    move v11, v10

    .line 22
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v13, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffRasterDataInt;-><init>(II[I)V

    return-object v0
.end method


# virtual methods
.method public readImageData(Ljava/awt/Rectangle;ZZ)Lorg/apache/commons/imaging/common/ImageBuilder;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    if-nez p1, :cond_0

    .line 1
    new-instance v0, Ljava/awt/Rectangle;

    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    iget v2, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p1

    .line 2
    :goto_0
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->e:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    .line 3
    div-int/lit8 v0, v0, 0x8

    .line 4
    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    mul-int v9, v0, v1

    .line 5
    iget v0, v8, Ljava/awt/Rectangle;->x:I

    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    div-int v10, v0, v1

    .line 6
    iget v0, v8, Ljava/awt/Rectangle;->x:I

    iget v1, v8, Ljava/awt/Rectangle;->width:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    div-int v11, v0, v1

    .line 7
    iget v0, v8, Ljava/awt/Rectangle;->y:I

    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    div-int/2addr v0, v1

    .line 8
    iget v1, v8, Ljava/awt/Rectangle;->y:I

    iget v2, v8, Ljava/awt/Rectangle;->height:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    div-int v12, v1, v2

    sub-int v1, v11, v10

    add-int/lit8 v1, v1, 0x1

    sub-int v3, v12, v0

    add-int/lit8 v3, v3, 0x1

    .line 9
    iget v4, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    mul-int v13, v1, v4

    mul-int v14, v3, v2

    .line 10
    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    div-int v15, v1, v4

    mul-int v6, v10, v4

    mul-int v5, v0, v2

    .line 11
    new-instance v4, Lorg/apache/commons/imaging/common/ImageBuilder;

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v4, v13, v14, v1, v2}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZZ)V

    move v3, v0

    :goto_1
    if-gt v3, v12, :cond_2

    move v2, v10

    :goto_2
    if-gt v2, v11, :cond_1

    mul-int v0, v3, v15

    add-int/2addr v0, v2

    .line 12
    iget-object v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->h:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    iget-object v1, v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v1

    .line 13
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->f:I

    move-object/from16 p1, v4

    iget v4, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    move/from16 v16, v5

    iget v5, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v18, v2

    move/from16 v2, v17

    move/from16 v17, v3

    move v3, v9

    move-object/from16 p2, p1

    move/from16 p1, v9

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->decompress([BIIII)[B

    move-result-object v2

    .line 14
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->c:I

    mul-int v0, v0, v18

    sub-int v3, v0, v6

    .line 15
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d:I

    mul-int v0, v0, v17

    sub-int v4, v0, v9

    .line 16
    iget v5, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    move-object/from16 v0, p0

    move/from16 v16, v1

    move-object/from16 v1, p2

    move v7, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->d(Lorg/apache/commons/imaging/common/ImageBuilder;[BIIII)V

    add-int/lit8 v2, v18, 0x1

    move-object/from16 v4, p2

    move v6, v7

    move v5, v9

    move/from16 v3, v17

    move-object/from16 v7, p0

    move/from16 v9, p1

    goto :goto_2

    :cond_1
    move/from16 v17, v3

    move-object/from16 p2, v4

    move v7, v6

    move/from16 p1, v9

    move v9, v5

    add-int/lit8 v3, v17, 0x1

    move-object/from16 v7, p0

    move/from16 v9, p1

    goto :goto_1

    :cond_2
    move-object/from16 p2, v4

    move v9, v5

    move v7, v6

    .line 17
    iget v0, v8, Ljava/awt/Rectangle;->x:I

    if-ne v0, v7, :cond_3

    iget v0, v8, Ljava/awt/Rectangle;->y:I

    if-ne v0, v9, :cond_3

    iget v0, v8, Ljava/awt/Rectangle;->width:I

    if-ne v0, v13, :cond_3

    iget v0, v8, Ljava/awt/Rectangle;->height:I

    if-ne v0, v14, :cond_3

    move-object/from16 v0, p2

    return-object v0

    :cond_3
    move-object/from16 v0, p2

    .line 18
    iget v1, v8, Ljava/awt/Rectangle;->x:I

    sub-int/2addr v1, v7

    iget v2, v8, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v2, v9

    iget v3, v8, Ljava/awt/Rectangle;->width:I

    iget v4, v8, Ljava/awt/Rectangle;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/common/ImageBuilder;->getSubset(IIII)Lorg/apache/commons/imaging/common/ImageBuilder;

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
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->e(Ljava/awt/Rectangle;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;

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
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->f(Ljava/awt/Rectangle;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;

    move-result-object p1

    return-object p1
.end method
