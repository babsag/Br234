.class public abstract Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;
.super Ljava/lang/Object;
.source "ImageDataReader.java"


# instance fields
.field private final a:[I

.field private final b:[I

.field protected final bitsPerSampleLength:I

.field protected final directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

.field protected final height:I

.field protected final photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

.field protected final planarConfiguration:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

.field protected final predictor:I

.field protected final sampleFormat:I

.field protected final samplesPerPixel:I

.field protected final width:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;[IIIIIILorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    .line 4
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->a:[I

    .line 5
    array-length p1, p3

    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->bitsPerSampleLength:I

    .line 6
    iput p5, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    .line 7
    iput p6, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->sampleFormat:I

    .line 8
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->predictor:I

    .line 9
    iput p7, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->width:I

    .line 10
    iput p8, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->height:I

    .line 11
    iput-object p9, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->planarConfiguration:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    .line 12
    new-array p1, p5, [I

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->b:[I

    return-void
.end method


# virtual methods
.method a(Lorg/apache/commons/imaging/formats/tiff/datareaders/a;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2
    aget v1, v1, v0

    .line 3
    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/a;->b(I)I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    and-int/lit8 v3, v2, 0x1

    rsub-int/lit8 v1, v1, 0x8

    shl-int/2addr v2, v1

    if-lez v3, :cond_1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    sub-int/2addr v1, v3

    or-int/2addr v1, v2

    move v2, v1

    goto :goto_1

    :cond_0
    if-le v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x8

    shr-int/2addr v2, v1

    .line 4
    :cond_1
    :goto_1
    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected applyPredictor([I)[I
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->predictor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3
    aget v1, p1, v0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->b:[I

    aget v3, v2, v0

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v0

    .line 4
    aget v1, p1, v0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected applyPredictorToBlock(III[B)V
    .locals 5

    mul-int p1, p1, p3

    const/4 v0, 0x0

    :cond_0
    if-ge v0, p2, :cond_1

    mul-int v1, v0, p1

    add-int/2addr v1, p3

    add-int/lit8 v0, v0, 0x1

    mul-int v2, v0, p1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1
    aget-byte v3, p4, v1

    sub-int v4, v1, p3

    aget-byte v4, p4, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(IIII[IIIIII[F)V
    .locals 20

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p8

    move/from16 v3, p9

    move/from16 v4, p10

    sub-int v5, p1, p6

    sub-int v6, p2, p7

    add-int v7, v5, v0

    add-int v8, v6, v1

    if-gez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    if-gez v6, :cond_1

    const/4 v6, 0x0

    :cond_1
    if-le v7, v2, :cond_2

    move v7, v2

    :cond_2
    if-le v8, v3, :cond_3

    move v8, v3

    :cond_3
    add-int v10, v5, p6

    sub-int v10, v10, p1

    add-int v11, v6, p7

    sub-int v11, v11, p2

    if-gez v10, :cond_4

    sub-int/2addr v5, v10

    const/4 v10, 0x0

    :cond_4
    if-gez v11, :cond_5

    sub-int/2addr v6, v11

    const/4 v11, 0x0

    :cond_5
    sub-int/2addr v7, v5

    sub-int/2addr v8, v6

    if-lez v7, :cond_12

    if-gtz v8, :cond_6

    goto/16 :goto_9

    :cond_6
    if-le v7, v0, :cond_7

    move v7, v0

    :cond_7
    if-le v8, v1, :cond_8

    move v8, v1

    :cond_8
    const/4 v12, 0x1

    if-ne v4, v12, :cond_b

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_a

    add-int v3, v6, v1

    add-int v4, v11, v1

    mul-int v3, v3, v2

    add-int/2addr v3, v5

    mul-int v4, v4, v0

    add-int/2addr v4, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v7, :cond_9

    add-int v13, v3, v12

    add-int v14, v4, v12

    .line 1
    aget v14, p5, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    aput v14, p11, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    move-object/from16 v12, p0

    goto/16 :goto_8

    :cond_b
    move-object/from16 v12, p0

    .line 2
    iget-object v13, v12, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->planarConfiguration:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    sget-object v14, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->CHUNKY:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    if-ne v13, v14, :cond_e

    mul-int v1, v2, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_11

    add-int v13, v6, v3

    add-int v14, v11, v3

    mul-int v13, v13, v2

    add-int/2addr v13, v5

    mul-int v14, v14, v0

    add-int/2addr v14, v10

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v7, :cond_d

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v4, :cond_c

    mul-int v16, v9, v1

    add-int v16, v16, v13

    add-int v16, v16, v15

    add-int v17, v14, v15

    mul-int v17, v17, v4

    add-int v17, v17, v9

    .line 3
    aget v17, p5, v17

    .line 4
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v17

    aput v17, p11, v16

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_e
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v4, :cond_11

    mul-int v13, v9, v2

    mul-int v13, v13, v3

    mul-int v14, v9, v0

    mul-int v14, v14, v1

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v8, :cond_10

    add-int v16, v6, v15

    add-int v17, v11, v15

    mul-int v16, v16, v2

    add-int v16, v13, v16

    add-int v16, v16, v5

    mul-int v17, v17, v0

    add-int v17, v14, v17

    add-int v17, v17, v10

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v7, :cond_f

    add-int v18, v16, v0

    add-int v19, v17, v0

    .line 5
    aget v19, p5, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v19

    aput v19, p11, v18

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p3

    goto :goto_6

    :cond_10
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p3

    goto :goto_5

    :cond_11
    :goto_8
    return-void

    :cond_12
    :goto_9
    move-object/from16 v12, p0

    return-void
.end method

.method c(IIII[IIIII[I)V
    .locals 5

    sub-int v0, p1, p6

    sub-int v1, p2, p7

    add-int v2, v0, p3

    add-int v3, v1, p4

    const/4 v4, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-le v2, p8, :cond_2

    move v2, p8

    :cond_2
    if-le v3, p9, :cond_3

    goto :goto_0

    :cond_3
    move p9, v3

    :goto_0
    add-int/2addr p6, v0

    sub-int/2addr p6, p1

    add-int/2addr p7, v1

    sub-int/2addr p7, p2

    if-gez p6, :cond_4

    sub-int/2addr v0, p6

    const/4 p6, 0x0

    :cond_4
    if-gez p7, :cond_5

    sub-int/2addr v1, p7

    const/4 p7, 0x0

    :cond_5
    sub-int/2addr v2, v0

    sub-int/2addr p9, v1

    if-lez v2, :cond_9

    if-gtz p9, :cond_6

    goto :goto_2

    :cond_6
    if-le v2, p3, :cond_7

    move v2, p3

    :cond_7
    if-le p9, p4, :cond_8

    goto :goto_1

    :cond_8
    move p4, p9

    :goto_1
    if-ge v4, p4, :cond_9

    add-int p1, v1, v4

    add-int p2, p7, v4

    mul-int p1, p1, p8

    add-int/2addr p1, v0

    mul-int p2, p2, p3

    add-int/2addr p2, p6

    .line 1
    invoke-static {p5, p2, p10, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method protected decompress([BIIII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_FILL_ORDER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move-object v0, p1

    goto :goto_2

    :cond_1
    if-ne v0, v2, :cond_14

    .line 3
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v4, 0x0

    .line 4
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 5
    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->reverse(I)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eq p2, v1, :cond_13

    if-eq p2, v2, :cond_12

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eq p2, v4, :cond_b

    if-eq p2, v5, :cond_7

    const/4 p4, 0x5

    const/16 p5, 0x8

    if-eq p2, p4, :cond_6

    if-eq p2, p5, :cond_5

    const p4, 0x8005

    if-eq p2, p4, :cond_4

    const p4, 0x80b2

    if-ne p2, p4, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Tiff: unknown/unsupported compression: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    new-instance p1, Lorg/apache/commons/imaging/common/PackBits;

    invoke-direct {p1}, Lorg/apache/commons/imaging/common/PackBits;-><init>()V

    invoke-virtual {p1, v0, p3}, Lorg/apache/commons/imaging/common/PackBits;->decompress([BI)[B

    move-result-object p1

    return-object p1

    .line 8
    :cond_5
    :goto_3
    invoke-static {p1, p3}, Lorg/apache/commons/imaging/common/ZlibDeflate;->decompress([BI)[B

    move-result-object p1

    return-object p1

    .line 9
    :cond_6
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    new-instance p2, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;

    sget-object p4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, p5, p4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;-><init>(ILjava/nio/ByteOrder;)V

    .line 11
    invoke-virtual {p2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->setTiffLZWMode()V

    .line 12
    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object p1

    return-object p1

    .line 13
    :cond_7
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object p2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T6_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 14
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    and-int/2addr p1, v2

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_a

    .line 15
    invoke-static {v0, p4, p5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT6([BII)[B

    move-result-object p1

    return-object p1

    .line 16
    :cond_a
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "T.6 compression with the uncompressed mode extension is not yet supported"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_b
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object p2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T4_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual {p1, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 18
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    :goto_6
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_d

    const/4 p2, 0x1

    goto :goto_7

    :cond_d
    const/4 p2, 0x0

    :goto_7
    and-int/lit8 p3, p1, 0x2

    if-eqz p3, :cond_e

    const/4 p3, 0x1

    goto :goto_8

    :cond_e
    const/4 p3, 0x0

    :goto_8
    if-nez p3, :cond_11

    and-int/2addr p1, v5

    if-eqz p1, :cond_f

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :goto_9
    if-eqz p2, :cond_10

    .line 19
    invoke-static {v0, p4, p5, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT4_2D([BIIZ)[B

    move-result-object p1

    return-object p1

    .line 20
    :cond_10
    invoke-static {v0, p4, p5, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT4_1D([BIIZ)[B

    move-result-object p1

    return-object p1

    .line 21
    :cond_11
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "T.4 compression with the uncompressed mode extension is not yet supported"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_12
    invoke-static {v0, p4, p5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressModifiedHuffman([BII)[B

    move-result-object p1

    return-object p1

    :cond_13
    return-object v0

    .line 23
    :cond_14
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TIFF FillOrder="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is invalid"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected isHomogenous(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-eq v4, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public abstract readImageData(Ljava/awt/Rectangle;ZZ)Lorg/apache/commons/imaging/common/ImageBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readRasterData(Ljava/awt/Rectangle;)Lorg/apache/commons/imaging/formats/tiff/TiffRasterData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected resetPredictor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->b:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method protected unpackFloatingPointSamples(III[BILjava/nio/ByteOrder;)[I
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 1
    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    div-int v7, v4, v6

    .line 2
    div-int/lit8 v8, v7, 0x8

    mul-int v9, v2, v6

    mul-int v9, v9, v8

    mul-int v8, v9, p2

    .line 3
    array-length v10, v3

    if-ge v10, v8, :cond_0

    div-int/2addr v8, v9

    goto :goto_0

    :cond_0
    move/from16 v8, p2

    :goto_0
    mul-int v9, v2, v6

    mul-int v9, v9, p2

    .line 4
    new-array v9, v9, [I

    .line 5
    iget v10, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->predictor:I

    const/4 v11, 0x3

    const-string v12, " bits per sample"

    const/16 v13, 0x20

    const/16 v16, 0x8

    const/16 v17, 0x0

    if-ne v10, v11, :cond_9

    .line 6
    div-int v5, v4, v6

    if-ne v5, v13, :cond_8

    .line 7
    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->planarConfiguration:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;->CHUNKY:Lorg/apache/commons/imaging/formats/tiff/constants/TiffPlanarConfiguration;

    if-ne v4, v5, :cond_3

    mul-int/lit8 v4, v2, 0x4

    mul-int v4, v4, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_7

    mul-int v6, v5, v4

    .line 8
    iget v10, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    mul-int v11, v2, v10

    add-int/2addr v11, v6

    mul-int v12, v2, v10

    add-int/2addr v12, v11

    mul-int v10, v10, v2

    add-int/2addr v10, v12

    const/4 v13, 0x1

    :goto_2
    if-ge v13, v4, :cond_1

    add-int v18, v6, v13

    .line 9
    aget-byte v19, v3, v18

    add-int/lit8 v20, v18, -0x1

    aget-byte v20, v3, v20

    add-int v7, v19, v20

    int-to-byte v7, v7

    aput-byte v7, v3, v18

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    mul-int v7, v5, v2

    const/4 v13, 0x0

    .line 10
    :goto_3
    iget v14, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    mul-int v14, v14, v1

    if-ge v13, v14, :cond_2

    add-int v14, v6, v13

    .line 11
    aget-byte v14, v3, v14

    add-int v19, v11, v13

    .line 12
    aget-byte v15, v3, v19

    add-int v19, v12, v13

    move/from16 p5, v4

    .line 13
    aget-byte v4, v3, v19

    add-int v19, v10, v13

    move/from16 p6, v6

    .line 14
    aget-byte v6, v3, v19

    add-int/lit8 v19, v7, 0x1

    and-int/lit16 v14, v14, 0xff

    const/16 v20, 0x18

    shl-int/lit8 v14, v14, 0x18

    and-int/lit16 v15, v15, 0xff

    const/16 v18, 0x10

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v14

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    .line 15
    aput v4, v9, v7

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, p5

    move/from16 v6, p6

    move/from16 v7, v19

    goto :goto_3

    :cond_2
    move/from16 p5, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    mul-int/lit8 v4, v2, 0x4

    const/4 v5, 0x0

    .line 16
    :goto_4
    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    if-ge v5, v6, :cond_7

    mul-int v6, v5, v8

    mul-int v6, v6, v2

    mul-int/lit8 v7, v6, 0x4

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v8, :cond_6

    mul-int v11, v10, v4

    add-int/2addr v11, v7

    add-int v12, v11, v2

    add-int v13, v12, v2

    add-int v14, v13, v2

    const/4 v15, 0x1

    :goto_6
    if-ge v15, v4, :cond_4

    add-int v19, v11, v15

    .line 17
    aget-byte v21, v3, v19

    add-int/lit8 v22, v19, -0x1

    aget-byte v22, v3, v22

    move/from16 p5, v4

    add-int v4, v21, v22

    int-to-byte v4, v4

    aput-byte v4, v3, v19

    add-int/lit8 v15, v15, 0x1

    move/from16 v4, p5

    goto :goto_6

    :cond_4
    move/from16 p5, v4

    mul-int v4, v10, v2

    add-int/2addr v4, v6

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v1, :cond_5

    add-int v19, v11, v15

    .line 18
    aget-byte v1, v3, v19

    add-int v19, v12, v15

    move/from16 p6, v6

    .line 19
    aget-byte v6, v3, v19

    add-int v19, v13, v15

    move/from16 v21, v7

    .line 20
    aget-byte v7, v3, v19

    add-int v19, v14, v15

    move/from16 v22, v11

    .line 21
    aget-byte v11, v3, v19

    add-int/lit8 v19, v4, 0x1

    and-int/lit16 v1, v1, 0xff

    const/16 v20, 0x18

    shl-int/lit8 v1, v1, 0x18

    and-int/lit16 v6, v6, 0xff

    const/16 v18, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    and-int/lit16 v6, v7, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v1, v6

    and-int/lit16 v6, v11, 0xff

    or-int/2addr v1, v6

    .line 22
    aput v1, v9, v4

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move/from16 v6, p6

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v11, v22

    goto :goto_7

    :cond_5
    move/from16 p6, v6

    move/from16 v21, v7

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v4, p5

    goto :goto_5

    :cond_6
    move/from16 p5, v4

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    goto/16 :goto_4

    :cond_7
    return-object v9

    .line 23
    :cond_8
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Imaging does not yet support floating-point data with predictor type 3 for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/16 v1, 0x40

    if-ne v7, v1, :cond_e

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_8
    if-ge v1, v8, :cond_c

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v2, :cond_b

    add-int/lit8 v10, v4, 0x1

    .line 24
    aget-byte v4, v3, v4

    int-to-long v11, v4

    const-wide/16 v14, 0xff

    and-long/2addr v11, v14

    add-int/lit8 v4, v10, 0x1

    .line 25
    aget-byte v10, v3, v10

    move/from16 v19, v1

    int-to-long v0, v10

    and-long/2addr v0, v14

    add-int/lit8 v10, v4, 0x1

    .line 26
    aget-byte v4, v3, v4

    move/from16 v22, v7

    move/from16 v21, v8

    int-to-long v7, v4

    and-long/2addr v7, v14

    add-int/lit8 v4, v10, 0x1

    .line 27
    aget-byte v10, v3, v10

    move-object/from16 p2, v9

    int-to-long v9, v10

    and-long/2addr v9, v14

    add-int/lit8 v23, v4, 0x1

    .line 28
    aget-byte v4, v3, v4

    move-wide/from16 v24, v11

    int-to-long v11, v4

    and-long/2addr v11, v14

    add-int/lit8 v4, v23, 0x1

    .line 29
    aget-byte v13, v3, v23

    move-wide/from16 v26, v0

    int-to-long v0, v13

    and-long/2addr v0, v14

    add-int/lit8 v13, v4, 0x1

    .line 30
    aget-byte v4, v3, v4

    move/from16 p1, v6

    move-wide/from16 v28, v7

    int-to-long v6, v4

    and-long/2addr v6, v14

    add-int/lit8 v4, v13, 0x1

    .line 31
    aget-byte v8, v3, v13

    move/from16 p5, v4

    int-to-long v3, v8

    and-long/2addr v3, v14

    .line 32
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v13, 0x28

    const/16 v14, 0x30

    const/16 v15, 0x38

    if-ne v5, v8, :cond_a

    shl-long/2addr v3, v15

    shl-long/2addr v6, v14

    or-long/2addr v3, v6

    shl-long/2addr v0, v13

    or-long/2addr v0, v3

    const/16 v3, 0x20

    shl-long v6, v11, v3

    or-long/2addr v0, v6

    const/16 v3, 0x18

    shl-long v6, v9, v3

    or-long/2addr v0, v6

    const/16 v3, 0x10

    shl-long v6, v28, v3

    or-long/2addr v0, v6

    shl-long v3, v26, v16

    or-long/2addr v0, v3

    or-long v0, v0, v24

    const/16 v10, 0x18

    const/16 v11, 0x10

    goto :goto_a

    :cond_a
    shl-long v23, v24, v15

    shl-long v14, v26, v14

    or-long v14, v23, v14

    shl-long v23, v28, v13

    or-long v13, v14, v23

    const/16 v8, 0x20

    shl-long/2addr v9, v8

    or-long v8, v13, v9

    const/16 v10, 0x18

    shl-long/2addr v11, v10

    or-long/2addr v8, v11

    const/16 v11, 0x10

    shl-long/2addr v0, v11

    or-long/2addr v0, v8

    shl-long v6, v6, v16

    or-long/2addr v0, v6

    or-long/2addr v0, v3

    .line 33
    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    double-to-float v0, v0

    add-int/lit8 v6, p1, 0x1

    .line 34
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    aput v0, p2, p1

    add-int/lit8 v7, v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v1, v19

    move/from16 v8, v21

    const/16 v13, 0x20

    goto/16 :goto_9

    :cond_b
    move/from16 v19, v1

    move/from16 p1, v6

    move/from16 v21, v8

    move-object/from16 p2, v9

    const/16 v10, 0x18

    const/16 v11, 0x10

    add-int/lit8 v1, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    const/16 v13, 0x20

    goto/16 :goto_8

    :cond_c
    move-object/from16 p2, v9

    :cond_d
    move-object/from16 v6, p0

    goto :goto_e

    :cond_e
    move/from16 v21, v8

    move-object/from16 p2, v9

    const/16 v0, 0x20

    if-ne v7, v0, :cond_11

    move/from16 v8, v21

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v0, v8, :cond_d

    const/4 v4, 0x0

    move-object/from16 v6, p0

    .line 35
    :goto_c
    iget v7, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/ImageDataReader;->samplesPerPixel:I

    mul-int v7, v7, v2

    if-ge v4, v7, :cond_10

    add-int/lit8 v7, v1, 0x1

    .line 36
    aget-byte v1, p4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v9, v7, 0x1

    .line 37
    aget-byte v7, p4, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v10, v9, 0x1

    .line 38
    aget-byte v9, p4, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v11, v10, 0x1

    .line 39
    aget-byte v10, p4, v10

    and-int/lit16 v10, v10, 0xff

    .line 40
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v12, :cond_f

    shl-int/lit8 v10, v10, 0x18

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v9

    or-int/2addr v1, v7

    goto :goto_d

    :cond_f
    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v1, v7

    shl-int/lit8 v7, v9, 0x8

    or-int/2addr v1, v7

    or-int/2addr v1, v10

    :goto_d
    add-int/lit8 v7, v3, 0x1

    .line 41
    aput v1, p2, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v7

    move v1, v11

    goto :goto_c

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :goto_e
    return-object p2

    :cond_11
    move-object/from16 v6, p0

    .line 42
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Imaging does not support floating-point samples with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected unpackIntSamples(III[BIILjava/nio/ByteOrder;)[I
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p6

    move-object/from16 v3, p7

    .line 1
    div-int/lit8 v4, v2, 0x8

    mul-int v5, v4, p3

    mul-int v5, v5, p2

    .line 2
    array-length v6, v1

    if-ge v6, v5, :cond_0

    div-int v5, v5, p3

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    mul-int v6, p3, p2

    .line 3
    new-array v6, v6, [I

    const/4 v7, 0x2

    move/from16 v10, p5

    if-ne v10, v7, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v5, :cond_7

    mul-int v12, v11, p3

    mul-int v13, v12, v4

    const/16 v14, 0x10

    if-ne v2, v14, :cond_3

    .line 4
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v14, :cond_2

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v0, :cond_5

    add-int v15, v12, v14

    add-int/lit8 v16, v13, 0x1

    .line 5
    aget-byte v16, v1, v16

    shl-int/lit8 v16, v16, 0x8

    aget-byte v8, v1, v13

    and-int/lit16 v8, v8, 0xff

    or-int v8, v16, v8

    aput v8, v6, v15

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v13, v7

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v0, :cond_5

    add-int v14, v12, v8

    .line 6
    aget-byte v15, v1, v13

    shl-int/lit8 v15, v15, 0x8

    add-int/lit8 v16, v13, 0x1

    aget-byte v9, v1, v16

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v15

    aput v9, v6, v14

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v13, v7

    goto :goto_4

    :cond_3
    const/16 v8, 0x20

    if-ne v2, v8, :cond_5

    .line 7
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v8, :cond_4

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v0, :cond_5

    add-int v9, v12, v8

    add-int/lit8 v15, v13, 0x3

    .line 8
    aget-byte v15, v1, v15

    shl-int/lit8 v15, v15, 0x18

    add-int/lit8 v16, v13, 0x2

    aget-byte v7, v1, v16

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v14

    or-int/2addr v7, v15

    add-int/lit8 v15, v13, 0x1

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v7, v15

    aget-byte v15, v1, v13

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v7, v15

    aput v7, v6, v9

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, 0x4

    const/4 v7, 0x2

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v0, :cond_5

    add-int v8, v12, v7

    .line 9
    aget-byte v9, v1, v13

    shl-int/lit8 v9, v9, 0x18

    add-int/lit8 v15, v13, 0x1

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v14

    or-int/2addr v9, v15

    add-int/lit8 v15, v13, 0x2

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v9, v15

    add-int/lit8 v15, v13, 0x3

    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v9, v15

    aput v9, v6, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v13, v13, 0x4

    goto :goto_6

    :cond_5
    if-eqz v10, :cond_6

    const/4 v7, 0x1

    :goto_7
    if-ge v7, v0, :cond_6

    add-int v8, v12, v7

    .line 10
    aget v9, v6, v8

    add-int/lit8 v13, v8, -0x1

    aget v13, v6, v13

    add-int/2addr v9, v13

    aput v9, v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x2

    goto/16 :goto_2

    :cond_7
    return-object v6
.end method
