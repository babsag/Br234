.class public Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegDecoder.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final c:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

.field private final d:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

.field private final e:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

.field private f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

.field private g:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

.field private final h:[[F

.field private i:Ljava/awt/image/BufferedImage;

.field private j:Lorg/apache/commons/imaging/ImageReadException;

.field private k:Ljava/io/IOException;

.field private final l:[I

.field private final m:[I

.field private final n:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    .line 2
    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->c:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    new-array v1, v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 3
    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->d:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    new-array v1, v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 4
    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->e:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    new-array v0, v0, [[F

    .line 5
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->h:[[F

    const/16 v0, 0x40

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->l:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->m:[I

    new-array v0, v0, [F

    .line 8
    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->n:[F

    return-void
.end method

.method private a()[Lorg/apache/commons/imaging/formats/jpeg/decoder/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->g:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/jpeg/decoder/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->g:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    iget v4, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    if-ge v2, v4, :cond_3

    .line 3
    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v7, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge v5, v7, :cond_1

    .line 5
    invoke-virtual {v6, v5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v6

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    iget v7, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->scanComponentSelector:I

    if-ne v6, v7, :cond_0

    .line 6
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v4

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 7
    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;

    iget v5, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    mul-int/lit8 v5, v5, 0x8

    iget v4, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v5, v4}, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;-><init>(II)V

    .line 8
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Invalid component"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method private b(Lorg/apache/commons/imaging/formats/jpeg/decoder/c;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/c;->b()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    :goto_0
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getMaxCode(I)I

    move-result v2

    if-le v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/c;->b()I

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getValPtr(I)I

    move-result p1

    .line 5
    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getMinCode(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 6
    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getHuffVal(I)I

    move-result p1

    return p1
.end method

.method private c(II)I
    .locals 2

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    shl-int p2, v0, p2

    add-int/2addr p2, v1

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private static d(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method static e([I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_4

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 4
    aget v6, p0, v2

    const/16 v7, 0xd0

    if-lt v6, v7, :cond_0

    aget v6, p0, v2

    const/16 v7, 0xd7

    if-gt v6, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 5
    :cond_1
    :goto_1
    aget v6, p0, v2

    const/16 v7, 0xff

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    move v3, v5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private f(Lorg/apache/commons/imaging/formats/jpeg/decoder/c;[I[Lorg/apache/commons/imaging/formats/jpeg/decoder/a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget-object v4, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->g:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    iget v5, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    if-ge v3, v5, :cond_d

    .line 2
    invoke-virtual {v4, v3}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    :goto_1
    iget-object v7, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v8, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge v6, v8, :cond_1

    .line 4
    invoke-virtual {v7, v6}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v7

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    iget v8, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->scanComponentSelector:I

    if-ne v7, v8, :cond_0

    .line 5
    iget-object v5, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v5, v6}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v5

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v5, :cond_c

    .line 6
    aget-object v6, p3, v3

    const/4 v7, 0x0

    .line 7
    :goto_3
    iget v8, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    if-ge v7, v8, :cond_b

    const/4 v8, 0x0

    .line 8
    :goto_4
    iget v9, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    if-ge v8, v9, :cond_a

    .line 9
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->l:[I

    invoke-static {v9, v2}, Ljava/util/Arrays;->fill([II)V

    .line 10
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->d:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iget v10, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->dcCodingTableSelector:I

    aget-object v9, v9, v10

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->b(Lorg/apache/commons/imaging/formats/jpeg/decoder/c;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I

    move-result v9

    .line 11
    invoke-direct {v0, v9, v1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->g(ILorg/apache/commons/imaging/formats/jpeg/decoder/c;)I

    move-result v10

    .line 12
    invoke-direct {v0, v10, v9}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->c(II)I

    move-result v9

    .line 13
    iget-object v10, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->l:[I

    aget v11, p2, v3

    add-int/2addr v11, v9

    aput v11, v10, v2

    .line 14
    aget v9, v10, v2

    aput v9, p2, v3

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 15
    :goto_5
    iget-object v11, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->e:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iget v12, v4, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->acCodingTableSelector:I

    aget-object v11, v11, v12

    invoke-direct {v0, v1, v11}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->b(Lorg/apache/commons/imaging/formats/jpeg/decoder/c;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I

    move-result v11

    and-int/lit8 v12, v11, 0xf

    shr-int/lit8 v11, v11, 0x4

    if-nez v12, :cond_3

    const/16 v12, 0xf

    if-eq v11, v12, :cond_2

    goto :goto_6

    :cond_2
    add-int/lit8 v10, v10, 0x10

    goto/16 :goto_b

    :cond_3
    add-int/2addr v10, v11

    .line 16
    iget-object v11, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->l:[I

    invoke-direct {v0, v12, v1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->g(ILorg/apache/commons/imaging/formats/jpeg/decoder/c;)I

    move-result v13

    aput v13, v11, v10

    .line 17
    iget-object v11, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->l:[I

    aget v13, v11, v10

    invoke-direct {v0, v13, v12}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->c(II)I

    move-result v12

    aput v12, v11, v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_9

    .line 18
    :goto_6
    iget-object v10, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v10, v10, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    add-int/lit8 v11, v10, -0x1

    shl-int v11, v9, v11

    shl-int v10, v9, v10

    sub-int/2addr v10, v9

    .line 19
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->h:[[F

    iget v12, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->quantTabDestSelector:I

    aget-object v9, v9, v12

    .line 20
    iget-object v12, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->l:[I

    iget-object v13, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->m:[I

    invoke-static {v12, v13}, Lorg/apache/commons/imaging/formats/jpeg/decoder/e;->a([I[I)V

    const/4 v12, 0x0

    :goto_7
    const/16 v13, 0x40

    if-ge v12, v13, :cond_4

    .line 21
    iget-object v13, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->n:[F

    iget-object v14, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->m:[I

    aget v14, v14, v12

    int-to-float v14, v14

    aget v15, v9, v12

    mul-float v14, v14, v15

    aput v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 22
    :cond_4
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->n:[F

    invoke-static {v9}, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->a([F)V

    mul-int/lit8 v9, v7, 0x8

    const/16 v12, 0x8

    mul-int/lit8 v9, v9, 0x8

    .line 23
    iget v13, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    mul-int v9, v9, v13

    mul-int/lit8 v13, v8, 0x8

    add-int/2addr v9, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_8
    if-ge v13, v12, :cond_8

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v12, :cond_7

    .line 24
    iget-object v2, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->n:[F

    add-int/lit8 v16, v14, 0x1

    aget v2, v2, v14

    int-to-float v14, v11

    add-float/2addr v2, v14

    const/4 v14, 0x0

    cmpg-float v14, v2, v14

    if-gez v14, :cond_5

    const/4 v2, 0x0

    goto :goto_a

    :cond_5
    int-to-float v14, v10

    cmpl-float v14, v2, v14

    if-lez v14, :cond_6

    move v2, v10

    goto :goto_a

    .line 25
    :cond_6
    invoke-static {v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->d(F)I

    move-result v2

    .line 26
    :goto_a
    iget-object v14, v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    add-int v17, v9, v15

    aput v2, v14, v17

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    const/4 v2, 0x0

    goto :goto_9

    .line 27
    :cond_7
    iget v2, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v9, v2

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v10, v10, 0x1

    :goto_b
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_a
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 28
    :cond_c
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Invalid component"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    return-void
.end method

.method private g(ILorg/apache/commons/imaging/formats/jpeg/decoder/c;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eq v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    .line 1
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/c;->b()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private h([Lorg/apache/commons/imaging/formats/jpeg/decoder/a;II[Lorg/apache/commons/imaging/formats/jpeg/decoder/a;)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 2
    aget-object v5, v0, v4

    .line 3
    iget v6, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->b:I

    if-ne v6, v1, :cond_0

    iget v7, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->c:I

    if-ne v7, v2, :cond_0

    .line 4
    iget-object v5, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    aget-object v6, p4, v4

    iget-object v6, v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    mul-int v7, v1, v2

    invoke-static {v5, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 5
    :cond_0
    div-int v6, v1, v6

    .line 6
    iget v7, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->c:I

    div-int v7, v2, v7

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    if-ne v7, v8, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    :goto_1
    iget v9, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->c:I

    if-ge v6, v9, :cond_4

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v1, :cond_1

    .line 8
    iget-object v10, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    shr-int/lit8 v11, v9, 0x1

    add-int/2addr v11, v7

    aget v10, v10, v11

    .line 9
    aget-object v11, p4, v4

    iget-object v11, v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    add-int v12, v8, v9

    aput v10, v11, v12

    .line 10
    aget-object v11, p4, v4

    iget-object v11, v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    add-int v12, v8, v1

    add-int/2addr v12, v9

    aput v10, v11, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 11
    :cond_1
    iget v9, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->b:I

    add-int/2addr v7, v9

    mul-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v2, :cond_4

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v1, :cond_3

    .line 12
    aget-object v11, p4, v4

    iget-object v11, v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    add-int v12, v9, v10

    iget-object v13, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    div-int v14, v8, v7

    iget v15, v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->b:I

    mul-int v14, v14, v15

    div-int v15, v10, v6

    add-int/2addr v14, v15

    aget v13, v13, v14

    aput v13, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    add-int/2addr v9, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static i([I)[Lorg/apache/commons/imaging/formats/jpeg/decoder/c;
    .locals 6

    .line 1
    invoke-static {p0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->e([I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3
    new-array v2, v1, [Lorg/apache/commons/imaging/formats/jpeg/decoder/c;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    if-ge v3, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    goto :goto_1

    .line 6
    :cond_0
    array-length v5, p0

    .line 7
    :goto_1
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v4

    .line 8
    new-instance v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/c;

    invoke-direct {v5, v4}, Lorg/apache/commons/imaging/formats/jpeg/decoder/c;-><init>([I)V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public decode(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    .line 3
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->j:Lorg/apache/commons/imaging/ImageReadException;

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->k:Ljava/io/IOException;

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->i:Ljava/awt/image/BufferedImage;

    return-object p1

    .line 6
    :cond_0
    throw p1

    .line 7
    :cond_1
    throw p1
.end method

.method public visitSOS(I[B[B)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "Not a Valid JPEG File"

    .line 1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string v4, "segmentLength"

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v4, v3, v2, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v5, "SosSegment"

    add-int/lit8 v6, v4, -0x2

    .line 3
    invoke-static {v5, v3, v6, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v2

    .line 4
    new-instance v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    move/from16 v6, p1

    invoke-direct {v5, v6, v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;-><init>(I[B)V

    iput-object v5, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->g:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    .line 5
    array-length v0, v0

    sub-int/2addr v0, v4

    new-array v2, v0, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    .line 6
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 7
    :goto_1
    iget-object v6, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v7, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge v0, v7, :cond_1

    .line 8
    invoke-virtual {v6, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v6

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    .line 9
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 10
    iget-object v6, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    .line 11
    invoke-virtual {v6, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v6

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    mul-int/lit8 v3, v3, 0x8

    mul-int/lit8 v5, v5, 0x8

    .line 13
    iget v0, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    add-int/2addr v0, v3

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    div-int/2addr v0, v3

    .line 14
    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    add-int/2addr v6, v5

    sub-int/2addr v6, v7

    div-int/2addr v6, v5

    .line 15
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->a()[Lorg/apache/commons/imaging/formats/jpeg/decoder/a;

    move-result-object v8

    .line 16
    array-length v9, v8

    new-array v10, v9, [Lorg/apache/commons/imaging/formats/jpeg/decoder/a;

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_2

    .line 17
    new-instance v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;

    invoke-direct {v12, v3, v5}, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;-><init>(II)V

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 18
    :cond_2
    iget-object v11, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v11, v11, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    new-array v12, v11, [I

    const/4 v13, 0x4

    const/16 v15, 0x18

    const/16 v14, 0xff

    const/16 v16, 0x2

    const/4 v4, 0x3

    if-eq v11, v7, :cond_5

    if-eq v11, v4, :cond_4

    if-ne v11, v13, :cond_3

    .line 19
    new-instance v11, Ljava/awt/image/DirectColorModel;

    const/high16 v7, 0xff0000

    const v13, 0xff00

    invoke-direct {v11, v15, v7, v13, v14}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    new-array v15, v4, [I

    const/16 v17, 0x0

    aput v7, v15, v17

    const/4 v7, 0x1

    aput v13, v15, v7

    aput v14, v15, v16

    .line 20
    iget-object v7, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v13, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    const/4 v14, 0x0

    invoke-static {v4, v13, v7, v15, v14}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v7

    goto :goto_3

    .line 21
    :cond_3
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v3, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " components are invalid or unsupported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_4
    new-instance v11, Ljava/awt/image/DirectColorModel;

    const v7, 0xff00

    const/high16 v13, 0xff0000

    invoke-direct {v11, v15, v13, v7, v14}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    .line 23
    iget-object v7, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v15, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    new-array v14, v4, [I

    const/16 v17, 0x0

    aput v13, v14, v17

    const v13, 0xff00

    const/16 v17, 0x1

    aput v13, v14, v17

    const/16 v13, 0xff

    aput v13, v14, v16

    const/4 v13, 0x0

    invoke-static {v4, v15, v7, v14, v13}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v7

    goto :goto_3

    .line 24
    :cond_5
    new-instance v11, Ljava/awt/image/DirectColorModel;

    const/16 v7, 0xff

    const v13, 0xff00

    const/high16 v14, 0xff0000

    invoke-direct {v11, v15, v14, v13, v7}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    .line 25
    iget-object v7, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v13, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    new-array v15, v4, [I

    const/16 v17, 0x0

    aput v14, v15, v17

    const v14, 0xff00

    const/16 v17, 0x1

    aput v14, v15, v17

    const/16 v14, 0xff

    aput v14, v15, v16

    const/4 v14, 0x0

    invoke-static {v4, v13, v7, v15, v14}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v7

    .line 26
    :goto_3
    invoke-virtual {v7}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v13

    .line 27
    invoke-static {v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->i([I)[Lorg/apache/commons/imaging/formats/jpeg/decoder/c;

    move-result-object v2

    const/4 v14, 0x0

    .line 28
    aget-object v15, v2, v14

    const/16 p3, 0x0

    const/4 v4, 0x0

    :goto_4
    mul-int v14, v5, v6

    if-ge v4, v14, :cond_f

    move/from16 v14, p3

    move/from16 p3, v6

    move-object/from16 v17, v7

    const/4 v6, 0x0

    :goto_5
    mul-int v7, v3, v0

    if-ge v6, v7, :cond_e

    .line 29
    invoke-virtual {v15}, Lorg/apache/commons/imaging/formats/jpeg/decoder/c;->a()Z

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v14, v14, 0x1

    .line 30
    array-length v7, v2

    if-ge v14, v7, :cond_6

    .line 31
    aget-object v15, v2, v14

    .line 32
    :cond_6
    invoke-direct {v1, v15, v12, v8}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f(Lorg/apache/commons/imaging/formats/jpeg/decoder/c;[I[Lorg/apache/commons/imaging/formats/jpeg/decoder/a;)V

    .line 33
    invoke-direct {v1, v8, v3, v5, v10}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->h([Lorg/apache/commons/imaging/formats/jpeg/decoder/a;II[Lorg/apache/commons/imaging/formats/jpeg/decoder/a;)V

    .line 34
    iget-object v7, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    mul-int v7, v7, v4

    add-int/2addr v7, v6

    move/from16 v19, v0

    const/4 v0, 0x0

    const/16 v20, 0x0

    :goto_6
    if-ge v0, v5, :cond_d

    move-object/from16 v21, v2

    add-int v2, v4, v0

    move-object/from16 v22, v12

    .line 35
    iget-object v12, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v12, v12, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    if-ge v2, v12, :cond_c

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_b

    add-int v12, v6, v2

    move/from16 v23, v14

    .line 36
    iget-object v14, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v14, v14, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    if-ge v12, v14, :cond_a

    const/4 v12, 0x4

    if-ne v9, v12, :cond_7

    const/4 v14, 0x0

    .line 37
    aget-object v12, v10, v14

    iget-object v12, v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    add-int v14, v20, v2

    aget v12, v12, v14

    move-object/from16 v24, v15

    const/16 v18, 0x1

    .line 38
    aget-object v15, v10, v18

    iget-object v15, v15, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    aget v15, v15, v14

    move-object/from16 v25, v11

    .line 39
    aget-object v11, v10, v16

    iget-object v11, v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    aget v11, v11, v14

    move/from16 v27, v4

    const/16 v26, 0x3

    .line 40
    aget-object v4, v10, v26

    iget-object v4, v4, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    aget v4, v4, v14

    .line 41
    invoke-static {v12, v15, v11, v4}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result v4

    add-int v11, v7, v2

    .line 42
    invoke-virtual {v13, v11, v4}, Ljava/awt/image/DataBuffer;->setElem(II)V

    const/4 v4, 0x3

    goto :goto_8

    :cond_7
    move/from16 v27, v4

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    const/4 v4, 0x3

    if-ne v9, v4, :cond_8

    const/4 v11, 0x0

    .line 43
    aget-object v12, v10, v11

    iget-object v11, v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    add-int v12, v20, v2

    aget v11, v11, v12

    const/4 v14, 0x1

    .line 44
    aget-object v15, v10, v14

    iget-object v14, v15, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    aget v14, v14, v12

    .line 45
    aget-object v15, v10, v16

    iget-object v15, v15, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    aget v12, v15, v12

    .line 46
    invoke-static {v11, v14, v12}, Lorg/apache/commons/imaging/formats/jpeg/decoder/d;->a(III)I

    move-result v11

    add-int v12, v7, v2

    .line 47
    invoke-virtual {v13, v12, v11}, Ljava/awt/image/DataBuffer;->setElem(II)V

    :goto_8
    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_9

    .line 48
    :cond_8
    array-length v11, v8

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v11, 0x0

    .line 49
    aget-object v14, v10, v11

    iget-object v14, v14, Lorg/apache/commons/imaging/formats/jpeg/decoder/a;->a:[I

    add-int v15, v20, v2

    aget v14, v14, v15

    add-int v15, v7, v2

    shl-int/lit8 v18, v14, 0x10

    shl-int/lit8 v26, v14, 0x8

    or-int v18, v18, v26

    or-int v14, v18, v14

    .line 50
    invoke-virtual {v13, v15, v14}, Ljava/awt/image/DataBuffer;->setElem(II)V

    :goto_9
    add-int/lit8 v2, v2, 0x1

    move/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v11, v25

    move/from16 v4, v27

    goto/16 :goto_7

    .line 51
    :cond_9
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported JPEG with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " components"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move/from16 v27, v4

    move-object/from16 v25, v11

    goto :goto_a

    :cond_b
    move/from16 v27, v4

    move-object/from16 v25, v11

    move/from16 v23, v14

    :goto_a
    move-object/from16 v24, v15

    const/4 v4, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    add-int v20, v20, v3

    .line 52
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v2, v2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    add-int/2addr v7, v2

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v21

    move-object/from16 v12, v22

    move/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v11, v25

    move/from16 v4, v27

    goto/16 :goto_6

    :cond_c
    move/from16 v27, v4

    move-object/from16 v25, v11

    goto :goto_b

    :cond_d
    move-object/from16 v21, v2

    move/from16 v27, v4

    move-object/from16 v25, v11

    move-object/from16 v22, v12

    :goto_b
    move/from16 v23, v14

    move-object/from16 v24, v15

    const/4 v4, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    add-int/2addr v6, v3

    move/from16 v0, v19

    move-object/from16 v2, v21

    move-object/from16 v12, v22

    move/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v11, v25

    move/from16 v4, v27

    goto/16 :goto_5

    :cond_e
    move/from16 v19, v0

    move-object/from16 v21, v2

    move/from16 v27, v4

    move-object/from16 v25, v11

    move-object/from16 v22, v12

    const/4 v4, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    add-int v0, v27, v5

    move/from16 v6, p3

    move v4, v0

    move/from16 p3, v14

    move-object/from16 v7, v17

    move/from16 v0, v19

    move-object/from16 v12, v22

    move-object/from16 v11, v25

    goto/16 :goto_4

    :cond_f
    move-object/from16 v17, v7

    move-object/from16 v25, v11

    .line 53
    new-instance v0, Ljava/awt/image/BufferedImage;

    .line 54
    invoke-virtual/range {v25 .. v25}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    move-object/from16 v7, v17

    move-object/from16 v11, v25

    invoke-direct {v0, v11, v7, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    iput-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->i:Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 55
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Error parsing JPEG"

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->j:Lorg/apache/commons/imaging/ImageReadException;

    goto :goto_c

    :catch_1
    move-exception v0

    .line 56
    iput-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->k:Ljava/io/IOException;

    goto :goto_c

    :catch_2
    move-exception v0

    .line 57
    iput-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->j:Lorg/apache/commons/imaging/ImageReadException;

    :goto_c
    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0xd

    new-array p2, p2, [I

    .line 1
    fill-array-data p2, :array_0

    .line 2
    invoke-static {p2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p2

    const/4 p3, 0x1

    if-ltz p2, :cond_1

    const p2, 0xffc0

    if-ne p1, p2, :cond_0

    .line 3
    new-instance p2, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-direct {p2, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;-><init>(I[B)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->f:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    goto/16 :goto_4

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Only sequential, baseline JPEGs are supported at the moment"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const p2, 0xffdb

    if-ne p1, p2, :cond_4

    .line 5
    new-instance p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;

    invoke-direct {p2, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;-><init>(I[B)V

    .line 6
    iget-object p1, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->quantizationTables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    .line 7
    iget p4, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    if-ltz p4, :cond_3

    iget-object p5, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->c:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    array-length v0, p5

    if-ge p4, v0, :cond_3

    .line 8
    aput-object p2, p5, p4

    const/16 p4, 0x40

    new-array p5, p4, [I

    .line 9
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->getElements()[I

    move-result-object v0

    invoke-static {v0, p5}, Lorg/apache/commons/imaging/formats/jpeg/decoder/e;->a([I[I)V

    new-array v0, p4, [F

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p4, :cond_2

    .line 10
    aget v2, p5, v1

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->b([F)V

    .line 12
    iget-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->h:[[F

    iget p2, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    aput-object v0, p4, p2

    goto :goto_0

    .line 13
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid quantization table identifier "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const p2, 0xffc4

    if-ne p1, p2, :cond_8

    .line 14
    new-instance p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;

    invoke-direct {p2, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;-><init>(I[B)V

    .line 15
    iget-object p1, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;->huffmanTables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 16
    iget p4, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    if-nez p4, :cond_5

    .line 17
    iget-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->d:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    goto :goto_3

    :cond_5
    if-ne p4, p3, :cond_7

    .line 18
    iget-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->e:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    .line 19
    :goto_3
    iget p5, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    if-ltz p5, :cond_6

    array-length v0, p4

    if-ge p5, v0, :cond_6

    .line 20
    aput-object p2, p4, p5

    goto :goto_2

    .line 21
    :cond_6
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid huffman table identifier "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_7
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid huffman table class "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    return p3

    :array_0
    .array-data 4
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc5
        0xffc6
        0xffc7
        0xffc9
        0xffca
        0xffcb
        0xffcd
        0xffce
        0xffcf
    .end array-data
.end method
