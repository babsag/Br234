.class Lorg/apache/commons/imaging/formats/pcx/a;
.super Ljava/lang/Object;
.source "PcxWriter.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lorg/apache/commons/imaging/PixelDensity;

.field private final e:Lorg/apache/commons/imaging/formats/pcx/c;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/a;->b:I

    .line 3
    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/a;->c:I

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;

    invoke-direct {p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;-><init>()V

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/a;->a:I

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->getCompression()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 7
    iput v2, p0, Lorg/apache/commons/imaging/formats/pcx/a;->a:I

    .line 8
    :cond_1
    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/a;->a:I

    if-nez v1, :cond_2

    .line 9
    new-instance v0, Lorg/apache/commons/imaging/formats/pcx/c;

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/pcx/c;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/pcx/a;->e:Lorg/apache/commons/imaging/formats/pcx/c;

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Lorg/apache/commons/imaging/formats/pcx/c;

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/formats/pcx/c;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/pcx/a;->e:Lorg/apache/commons/imaging/formats/pcx/c;

    .line 11
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->getBitDepth()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/a;->b:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImagingParameters;->getPlanes()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/a;->c:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/imaging/ImagingParameters;->getPixelDensity()Lorg/apache/commons/imaging/PixelDensity;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pcx/a;->d:Lorg/apache/commons/imaging/PixelDensity;

    if-nez p1, :cond_3

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    .line 14
    invoke-static {v0, v1, v0, v1}, Lorg/apache/commons/imaging/PixelDensity;->createFromPixelsPerInch(DD)Lorg/apache/commons/imaging/PixelDensity;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pcx/a;->d:Lorg/apache/commons/imaging/PixelDensity;

    :cond_3
    return-void
.end method

.method private b(Ljava/awt/image/BufferedImage;IIILorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 1
    new-array v7, v4, [B

    .line 2
    new-array v8, v4, [B

    .line 3
    new-array v9, v4, [B

    .line 4
    new-array v4, v4, [B

    const/4 v10, 0x4

    new-array v11, v10, [[B

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v13, 0x1

    aput-object v8, v11, v13

    const/4 v14, 0x2

    aput-object v9, v11, v14

    const/4 v15, 0x3

    aput-object v4, v11, v15

    const/4 v10, 0x0

    .line 5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v15

    if-ge v10, v15, :cond_10

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v3, :cond_0

    .line 6
    aget-object v14, v11, v15

    invoke-static {v14, v12}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x2

    goto :goto_1

    :cond_0
    const v14, 0xffffff

    if-ne v2, v13, :cond_3

    if-ne v3, v13, :cond_3

    const/4 v15, 0x0

    .line 7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v12

    if-ge v15, v12, :cond_2

    .line 8
    invoke-virtual {v1, v15, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v12

    and-int/2addr v12, v14

    if-nez v12, :cond_1

    const/4 v12, 0x0

    goto :goto_3

    :cond_1
    const/4 v12, 0x1

    :goto_3
    ushr-int/lit8 v18, v15, 0x3

    .line 9
    aget-byte v19, v7, v18

    and-int/lit8 v20, v15, 0x7

    rsub-int/lit8 v20, v20, 0x7

    shl-int v12, v12, v20

    or-int v12, v19, v12

    int-to-byte v12, v12

    aput-byte v12, v7, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x3

    const/16 v17, 0x2

    :goto_4
    const/16 v19, 0x4

    goto/16 :goto_d

    :cond_3
    if-ne v2, v13, :cond_4

    const/4 v12, 0x2

    if-ne v3, v12, :cond_4

    const/4 v12, 0x0

    .line 10
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v15

    if-ge v12, v15, :cond_2

    .line 11
    invoke-virtual {v1, v12, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v15

    and-int/2addr v15, v14

    .line 12
    invoke-virtual {v5, v15}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v15

    ushr-int/lit8 v18, v12, 0x3

    .line 13
    aget-byte v19, v7, v18

    and-int/lit8 v20, v15, 0x1

    and-int/lit8 v21, v12, 0x7

    rsub-int/lit8 v21, v21, 0x7

    shl-int v20, v20, v21

    or-int v14, v19, v20

    int-to-byte v14, v14

    aput-byte v14, v7, v18

    .line 14
    aget-byte v14, v8, v18

    const/16 v17, 0x2

    and-int/lit8 v15, v15, 0x2

    shr-int/2addr v15, v13

    shl-int v15, v15, v21

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v8, v18

    add-int/lit8 v12, v12, 0x1

    const v14, 0xffffff

    goto :goto_5

    :cond_4
    if-ne v2, v13, :cond_5

    const/4 v12, 0x3

    if-ne v3, v12, :cond_5

    const/4 v12, 0x0

    .line 15
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v14

    if-ge v12, v14, :cond_2

    .line 16
    invoke-virtual {v1, v12, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v14

    const v15, 0xffffff

    and-int/2addr v14, v15

    .line 17
    invoke-virtual {v5, v14}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v14

    ushr-int/lit8 v15, v12, 0x3

    .line 18
    aget-byte v18, v7, v15

    and-int/lit8 v19, v14, 0x1

    and-int/lit8 v20, v12, 0x7

    rsub-int/lit8 v20, v20, 0x7

    shl-int v19, v19, v20

    or-int v13, v18, v19

    int-to-byte v13, v13

    aput-byte v13, v7, v15

    .line 19
    aget-byte v13, v8, v15

    and-int/lit8 v18, v14, 0x2

    const/16 v19, 0x1

    shr-int/lit8 v18, v18, 0x1

    shl-int v18, v18, v20

    or-int v13, v13, v18

    int-to-byte v13, v13

    aput-byte v13, v8, v15

    .line 20
    aget-byte v13, v9, v15

    const/16 v18, 0x4

    and-int/lit8 v14, v14, 0x4

    const/16 v17, 0x2

    shr-int/lit8 v14, v14, 0x2

    shl-int v14, v14, v20

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v15

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    goto :goto_6

    :cond_5
    const/4 v13, 0x1

    if-ne v2, v13, :cond_6

    const/4 v13, 0x4

    if-ne v3, v13, :cond_6

    const/4 v13, 0x0

    .line 21
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 22
    invoke-virtual {v1, v13, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v14

    const v15, 0xffffff

    and-int/2addr v14, v15

    .line 23
    invoke-virtual {v5, v14}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v14

    ushr-int/lit8 v15, v13, 0x3

    .line 24
    aget-byte v18, v7, v15

    and-int/lit8 v19, v14, 0x1

    and-int/lit8 v20, v13, 0x7

    rsub-int/lit8 v20, v20, 0x7

    shl-int v19, v19, v20

    or-int v12, v18, v19

    int-to-byte v12, v12

    aput-byte v12, v7, v15

    .line 25
    aget-byte v12, v8, v15

    and-int/lit8 v18, v14, 0x2

    const/16 v19, 0x1

    shr-int/lit8 v18, v18, 0x1

    shl-int v18, v18, v20

    or-int v12, v12, v18

    int-to-byte v12, v12

    aput-byte v12, v8, v15

    .line 26
    aget-byte v12, v9, v15

    and-int/lit8 v18, v14, 0x4

    const/16 v17, 0x2

    shr-int/lit8 v18, v18, 0x2

    shl-int v18, v18, v20

    or-int v12, v12, v18

    int-to-byte v12, v12

    aput-byte v12, v9, v15

    .line 27
    aget-byte v12, v4, v15

    const/16 v18, 0x8

    and-int/lit8 v14, v14, 0x8

    const/16 v16, 0x3

    shr-int/lit8 v14, v14, 0x3

    shl-int v14, v14, v20

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v4, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_6
    const/4 v12, 0x2

    if-ne v2, v12, :cond_8

    const/4 v12, 0x1

    if-ne v3, v12, :cond_8

    const/4 v12, 0x0

    .line 28
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_7

    .line 29
    invoke-virtual {v1, v12, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v13

    const v14, 0xffffff

    and-int/2addr v13, v14

    .line 30
    invoke-virtual {v5, v13}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v13

    ushr-int/lit8 v14, v12, 0x2

    .line 31
    aget-byte v15, v7, v14

    and-int/lit8 v18, v12, 0x3

    const/16 v16, 0x3

    rsub-int/lit8 v18, v18, 0x3

    const/16 v17, 0x2

    mul-int/lit8 v18, v18, 0x2

    shl-int v13, v13, v18

    or-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v7, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_7
    const/16 v17, 0x2

    const/4 v13, 0x3

    goto/16 :goto_4

    :cond_8
    const/16 v17, 0x2

    const/4 v12, 0x4

    if-ne v2, v12, :cond_a

    const/4 v12, 0x1

    if-ne v3, v12, :cond_a

    const/4 v12, 0x0

    .line 32
    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_9

    .line 33
    invoke-virtual {v1, v12, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v13

    const v14, 0xffffff

    and-int/2addr v13, v14

    .line 34
    invoke-virtual {v5, v13}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v13

    ushr-int/lit8 v14, v12, 0x1

    .line 35
    aget-byte v15, v7, v14

    and-int/lit8 v18, v12, 0x1

    const/16 v19, 0x1

    rsub-int/lit8 v18, v18, 0x1

    const/16 v19, 0x4

    mul-int/lit8 v18, v18, 0x4

    shl-int v13, v13, v18

    or-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v7, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_9
    const/16 v19, 0x4

    goto :goto_c

    :cond_a
    const/16 v19, 0x4

    const/16 v12, 0x8

    if-ne v2, v12, :cond_b

    const/4 v12, 0x1

    if-ne v3, v12, :cond_c

    const/4 v13, 0x0

    .line 36
    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v14

    if-ge v13, v14, :cond_d

    .line 37
    invoke-virtual {v1, v13, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v14

    const v15, 0xffffff

    and-int/2addr v14, v15

    .line 38
    invoke-virtual {v5, v14}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v14

    int-to-byte v14, v14

    .line 39
    aput-byte v14, v7, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_b
    const/4 v12, 0x1

    :cond_c
    const/16 v13, 0x8

    if-ne v2, v13, :cond_d

    const/4 v13, 0x3

    if-ne v3, v13, :cond_e

    const/4 v14, 0x0

    .line 40
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v15

    if-ge v14, v15, :cond_e

    .line 41
    invoke-virtual {v1, v14, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v15

    ushr-int/lit8 v12, v15, 0x10

    int-to-byte v12, v12

    .line 42
    aput-byte v12, v7, v14

    ushr-int/lit8 v12, v15, 0x8

    int-to-byte v12, v12

    .line 43
    aput-byte v12, v8, v14

    int-to-byte v12, v15

    .line 44
    aput-byte v12, v9, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    goto :goto_b

    :cond_d
    :goto_c
    const/4 v13, 0x3

    :cond_e
    :goto_d
    const/4 v12, 0x0

    :goto_e
    if-ge v12, v3, :cond_f

    .line 45
    iget-object v14, v0, Lorg/apache/commons/imaging/formats/pcx/a;->e:Lorg/apache/commons/imaging/formats/pcx/c;

    aget-object v15, v11, v12

    invoke-virtual {v14, v6, v15}, Lorg/apache/commons/imaging/formats/pcx/c;->b(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_f
    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    goto/16 :goto_0

    .line 46
    :cond_10
    iget-object v1, v0, Lorg/apache/commons/imaging/formats/pcx/a;->e:Lorg/apache/commons/imaging/formats/pcx/c;

    invoke-virtual {v1, v6}, Lorg/apache/commons/imaging/formats/pcx/c;->a(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    return-void
.end method

.method private c(Ljava/awt/image/BufferedImage;ILorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    new-array v9, v0, [I

    mul-int/lit8 p2, p2, 0x4

    .line 2
    new-array p2, p2, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    if-ge v11, v1, :cond_1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    move-object v1, p1

    move v3, v11

    move-object v6, v9

    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v2, 0x0

    .line 5
    aget v4, v9, v1

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v3, v2, 0x1

    .line 6
    aget v4, v9, v1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v3, v2, 0x2

    .line 7
    aget v4, v9, v1

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v2, v2, 0x3

    .line 8
    aput-byte v10, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pcx/a;->e:Lorg/apache/commons/imaging/formats/pcx/c;

    invoke-virtual {v1, p3, p2}, Lorg/apache/commons/imaging/formats/pcx/c;->b(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/pcx/a;->e:Lorg/apache/commons/imaging/formats/pcx/c;

    invoke-virtual {p1, p3}, Lorg/apache/commons/imaging/formats/pcx/c;->a(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v8, 0x100

    .line 2
    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v9

    .line 3
    new-instance v10, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v2, p2

    invoke-direct {v10, v2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const/4 v0, 0x4

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/4 v4, 0x3

    const/16 v11, 0x8

    const/4 v5, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v9, :cond_e

    .line 4
    iget v6, v7, Lorg/apache/commons/imaging/formats/pcx/a;->b:I

    const/16 v14, 0x18

    if-eq v6, v14, :cond_e

    if-ne v6, v3, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    invoke-virtual {v9}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v6

    if-gt v6, v2, :cond_d

    iget v6, v7, Lorg/apache/commons/imaging/formats/pcx/a;->b:I

    if-ne v6, v11, :cond_1

    goto/16 :goto_4

    .line 6
    :cond_1
    invoke-virtual {v9}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v6

    if-gt v6, v11, :cond_b

    iget v6, v7, Lorg/apache/commons/imaging/formats/pcx/a;->b:I

    if-ne v6, v0, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {v9}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v6

    if-gt v6, v0, :cond_a

    iget v0, v7, Lorg/apache/commons/imaging/formats/pcx/a;->b:I

    if-ne v0, v4, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v9}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v0

    if-gt v0, v5, :cond_7

    iget v0, v7, Lorg/apache/commons/imaging/formats/pcx/a;->b:I

    if-ne v0, v5, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v9}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v0

    const v6, 0xffffff

    if-lt v0, v13, :cond_5

    .line 10
    invoke-virtual {v9, v12}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    .line 11
    :goto_0
    invoke-virtual {v9}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v14

    if-ne v14, v5, :cond_6

    .line 12
    invoke-virtual {v9, v13}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v14

    if-eqz v14, :cond_6

    if-eq v14, v6, :cond_6

    const/4 v0, 0x0

    :cond_6
    if-eqz v0, :cond_8

    const/4 v14, 0x1

    goto :goto_6

    .line 13
    :cond_7
    :goto_1
    iget v0, v7, Lorg/apache/commons/imaging/formats/pcx/a;->c:I

    if-ne v0, v5, :cond_9

    :cond_8
    const/4 v14, 0x1

    const/4 v15, 0x2

    goto :goto_8

    :cond_9
    const/4 v14, 0x2

    goto :goto_6

    :cond_a
    :goto_2
    const/4 v14, 0x1

    goto :goto_7

    .line 14
    :cond_b
    :goto_3
    iget v6, v7, Lorg/apache/commons/imaging/formats/pcx/a;->c:I

    if-ne v6, v13, :cond_c

    const/4 v14, 0x4

    goto :goto_6

    :cond_c
    const/4 v14, 0x1

    const/4 v15, 0x4

    goto :goto_8

    :cond_d
    :goto_4
    const/16 v14, 0x8

    goto :goto_6

    .line 15
    :cond_e
    :goto_5
    iget v0, v7, Lorg/apache/commons/imaging/formats/pcx/a;->b:I

    if-ne v0, v3, :cond_f

    const/16 v14, 0x20

    :goto_6
    const/4 v15, 0x1

    goto :goto_8

    :cond_f
    const/16 v14, 0x8

    :goto_7
    const/4 v15, 0x3

    .line 16
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    mul-int v0, v0, v14

    add-int/lit8 v0, v0, 0x7

    div-int/2addr v0, v11

    .line 17
    rem-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_10

    add-int/lit8 v0, v0, 0x1

    :cond_10
    move v6, v0

    const/16 v0, 0x30

    new-array v0, v0, [B

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_12

    .line 18
    invoke-virtual {v9}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v2

    if-ge v4, v2, :cond_11

    .line 19
    invoke-virtual {v9, v4}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v2

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :goto_a
    mul-int/lit8 v16, v4, 0x3

    add-int/lit8 v17, v16, 0x0

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 20
    aput-byte v8, v0, v17

    add-int/lit8 v8, v16, 0x1

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    .line 21
    aput-byte v11, v0, v8

    add-int/lit8 v16, v16, 0x2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 22
    aput-byte v2, v0, v16

    add-int/lit8 v4, v4, 0x1

    const/16 v2, 0x10

    const/16 v8, 0x100

    const/16 v11, 0x8

    goto :goto_9

    :cond_12
    const/16 v2, 0xa

    .line 23
    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-ne v14, v13, :cond_13

    if-ne v15, v13, :cond_13

    const/4 v4, 0x3

    goto :goto_b

    :cond_13
    const/4 v4, 0x5

    .line 24
    :goto_b
    invoke-virtual {v10, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 25
    iget v2, v7, Lorg/apache/commons/imaging/formats/pcx/a;->a:I

    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 26
    invoke-virtual {v10, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 27
    invoke-virtual {v10, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 28
    invoke-virtual {v10, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 31
    iget-object v2, v7, Lorg/apache/commons/imaging/formats/pcx/a;->d:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    int-to-short v2, v2

    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 32
    iget-object v2, v7, Lorg/apache/commons/imaging/formats/pcx/a;->d:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    int-to-short v2, v2

    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 33
    invoke-virtual {v10, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 34
    invoke-virtual {v10, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 35
    invoke-virtual {v10, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 36
    invoke-virtual {v10, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 37
    invoke-virtual {v10, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 38
    invoke-virtual {v10, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 39
    invoke-virtual {v10, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v0, 0x36

    new-array v0, v0, [B

    .line 40
    invoke-virtual {v10, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    if-ne v14, v3, :cond_14

    .line 41
    invoke-direct {v7, v1, v6, v10}, Lorg/apache/commons/imaging/formats/pcx/a;->c(Ljava/awt/image/BufferedImage;ILorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_c

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v15

    move v4, v6

    move-object v5, v9

    move-object v6, v10

    .line 42
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/pcx/a;->b(Ljava/awt/image/BufferedImage;IIILorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    :goto_c
    const/16 v0, 0x8

    if-ne v14, v0, :cond_16

    if-ne v15, v13, :cond_16

    const/16 v0, 0xc

    .line 43
    invoke-virtual {v10, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v0, 0x0

    const/16 v1, 0x100

    :goto_d
    if-ge v0, v1, :cond_16

    .line 44
    invoke-virtual {v9}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 45
    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v2

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    :goto_e
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 46
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 47
    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    and-int/lit16 v2, v2, 0xff

    .line 48
    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    return-void
.end method
