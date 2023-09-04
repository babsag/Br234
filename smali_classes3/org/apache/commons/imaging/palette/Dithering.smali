.class public final Lorg/apache/commons/imaging/palette/Dithering;
.super Ljava/lang/Object;
.source "Dithering.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIIIII)I
    .locals 4

    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v2, p0, 0x10

    and-int/2addr v2, v1

    shr-int/lit8 v3, p0, 0x8

    and-int/2addr v3, v1

    and-int/2addr p0, v1

    mul-int p1, p1, p5

    .line 1
    div-int/lit8 p1, p1, 0x10

    add-int/2addr v0, p1

    mul-int p2, p2, p5

    .line 2
    div-int/lit8 p2, p2, 0x10

    add-int/2addr v2, p2

    mul-int p3, p3, p5

    .line 3
    div-int/lit8 p3, p3, 0x10

    add-int/2addr v3, p3

    mul-int p4, p4, p5

    .line 4
    div-int/lit8 p4, p4, 0x10

    add-int/2addr p0, p4

    const/4 p1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    const/16 v0, 0xff

    :cond_1
    :goto_0
    if-gez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    if-le v2, v1, :cond_3

    const/16 v2, 0xff

    :cond_3
    :goto_1
    if-gez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    if-le v3, v1, :cond_5

    const/16 v3, 0xff

    :cond_5
    :goto_2
    if-gez p0, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    if-le p0, v1, :cond_7

    goto :goto_3

    :cond_7
    move v1, p0

    :goto_3
    shl-int/lit8 p0, v0, 0x18

    shl-int/lit8 p1, v2, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v3, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v1

    return p0
.end method

.method public static applyFloydSteinbergDithering(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/Palette;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v4, 0x0

    .line 2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3
    invoke-virtual {v0, v4, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    .line 4
    invoke-interface {v1, v5}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v6

    .line 5
    invoke-interface {v1, v6}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v6

    .line 6
    invoke-virtual {v0, v4, v3, v6}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    shr-int/lit8 v7, v5, 0x18

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v5, 0x8

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v10, v6, 0x18

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v12, v6, 0x8

    and-int/lit16 v12, v12, 0xff

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v7, v10

    sub-int/2addr v8, v11

    sub-int/2addr v9, v12

    sub-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 8
    invoke-virtual {v0, v6, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v13

    const/16 v18, 0x7

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v5

    invoke-static/range {v13 .. v18}, Lorg/apache/commons/imaging/palette/Dithering;->a(IIIIII)I

    move-result v10

    .line 9
    invoke-virtual {v0, v6, v3, v10}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v10, v3, 0x1

    .line 10
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 11
    invoke-virtual {v0, v6, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v13

    const/16 v18, 0x1

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v5

    invoke-static/range {v13 .. v18}, Lorg/apache/commons/imaging/palette/Dithering;->a(IIIIII)I

    move-result v11

    .line 12
    invoke-virtual {v0, v6, v10, v11}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    :cond_0
    add-int/lit8 v10, v3, 0x1

    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 14
    invoke-virtual {v0, v4, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v13

    const/16 v18, 0x5

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v5

    invoke-static/range {v13 .. v18}, Lorg/apache/commons/imaging/palette/Dithering;->a(IIIIII)I

    move-result v11

    .line 15
    invoke-virtual {v0, v4, v10, v11}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_1

    .line 16
    invoke-virtual {v0, v4, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v13

    const/16 v18, 0x3

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v5

    invoke-static/range {v13 .. v18}, Lorg/apache/commons/imaging/palette/Dithering;->a(IIIIII)I

    move-result v5

    .line 17
    invoke-virtual {v0, v4, v10, v5}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    :cond_1
    move v4, v6

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method
