.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final a:Lcom/google/zxing/common/BitMatrix;

.field private final b:Lcom/google/zxing/common/detector/WhiteRectangleDetector;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    .line 3
    new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->b:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    return-void
.end method

.method private a([Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/ResultPoint;
    .locals 12

    const/4 v0, 0x0

    .line 1
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 2
    aget-object v2, p1, v1

    const/4 v3, 0x2

    .line 3
    aget-object v4, p1, v3

    const/4 v5, 0x3

    .line 4
    aget-object p1, p1, v5

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v5

    .line 6
    invoke-direct {p0, v2, p1}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v6

    add-int/2addr v6, v1

    shl-int/2addr v6, v3

    .line 7
    invoke-static {v0, v2, v6}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v6

    add-int/2addr v5, v1

    shl-int/lit8 v3, v5, 0x2

    .line 8
    invoke-static {v4, v2, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 9
    invoke-direct {p0, v6, p1}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v5

    .line 10
    invoke-direct {p0, v3, p1}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    .line 11
    new-instance v8, Lcom/google/zxing/ResultPoint;

    .line 12
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    add-int/2addr v5, v1

    int-to-float v5, v5

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    .line 13
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    sub-float/2addr v4, v11

    div-float/2addr v4, v5

    add-float/2addr v10, v4

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 14
    new-instance v4, Lcom/google/zxing/ResultPoint;

    .line 15
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    sub-float/2addr v9, v10

    add-int/2addr v7, v1

    int-to-float v1, v7

    div-float/2addr v9, v1

    add-float/2addr v5, v9

    .line 16
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    invoke-direct {v4, v5, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 17
    invoke-direct {p0, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->d(Lcom/google/zxing/ResultPoint;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    invoke-direct {p0, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->d(Lcom/google/zxing/ResultPoint;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v4

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 19
    :cond_1
    invoke-direct {p0, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->d(Lcom/google/zxing/ResultPoint;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v8

    .line 20
    :cond_2
    invoke-direct {p0, v6, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result p1

    invoke-direct {p0, v3, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    add-int/2addr p1, v0

    .line 21
    invoke-direct {p0, v6, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    invoke-direct {p0, v3, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    add-int/2addr v0, v1

    if-le p1, v0, :cond_3

    return-object v8

    :cond_3
    return-object v4
.end method

.method private b([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 12

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 2
    aget-object v3, p1, v2

    const/4 v4, 0x3

    .line 3
    aget-object v5, p1, v4

    const/4 v6, 0x2

    .line 4
    aget-object p1, p1, v6

    .line 5
    invoke-direct {p0, v1, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    .line 6
    invoke-direct {p0, v3, v5}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v8

    .line 7
    invoke-direct {p0, v5, p1}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v9

    .line 8
    invoke-direct {p0, p1, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v10

    const/4 v11, 0x4

    new-array v11, v11, [Lcom/google/zxing/ResultPoint;

    aput-object p1, v11, v0

    aput-object v1, v11, v2

    aput-object v3, v11, v6

    aput-object v5, v11, v4

    if-le v7, v8, :cond_0

    aput-object v1, v11, v0

    aput-object v3, v11, v2

    aput-object v5, v11, v6

    aput-object p1, v11, v4

    move v7, v8

    :cond_0
    if-le v7, v9, :cond_1

    aput-object v3, v11, v0

    aput-object v5, v11, v2

    aput-object p1, v11, v6

    aput-object v1, v11, v4

    goto :goto_0

    :cond_1
    move v9, v7

    :goto_0
    if-le v9, v10, :cond_2

    aput-object v5, v11, v0

    aput-object p1, v11, v2

    aput-object v1, v11, v6

    aput-object v3, v11, v4

    :cond_2
    return-object v11
.end method

.method private c([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 10

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 2
    aget-object v3, p1, v2

    const/4 v4, 0x2

    .line 3
    aget-object v5, p1, v4

    const/4 v6, 0x3

    .line 4
    aget-object v7, p1, v6

    .line 5
    invoke-direct {p0, v1, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v8

    add-int/2addr v8, v2

    shl-int/2addr v8, v4

    .line 6
    invoke-static {v3, v5, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 7
    invoke-static {v5, v3, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v8

    .line 8
    invoke-direct {p0, v9, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v9

    .line 9
    invoke-direct {p0, v8, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v8

    if-ge v9, v8, :cond_0

    .line 10
    aput-object v1, p1, v0

    .line 11
    aput-object v3, p1, v2

    .line 12
    aput-object v5, p1, v4

    .line 13
    aput-object v7, p1, v6

    goto :goto_0

    .line 14
    :cond_0
    aput-object v3, p1, v0

    .line 15
    aput-object v5, p1, v2

    .line 16
    aput-object v7, p1, v4

    .line 17
    aput-object v1, p1, v6

    :goto_0
    return-object p1
.end method

.method private d(Lcom/google/zxing/ResultPoint;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/datamatrix/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static e(Lcom/google/zxing/ResultPoint;FF)Lcom/google/zxing/ResultPoint;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    add-float/2addr v0, v1

    :goto_0
    cmpg-float p1, p0, p2

    if-gez p1, :cond_1

    sub-float/2addr p0, v1

    goto :goto_1

    :cond_1
    add-float/2addr p0, v1

    .line 3
    :goto_1
    new-instance p1, Lcom/google/zxing/ResultPoint;

    invoke-direct {p1, v0, p0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p1
.end method

.method private static f(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    .line 1
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    move/from16 v4, p5

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v6, v4, v5

    move v8, v6

    move/from16 v4, p6

    int-to-float v4, v4

    sub-float v11, v4, v5

    move v9, v11

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    .line 4
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    .line 7
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 10
    invoke-virtual/range {v0 .. v19}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method private static g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    div-float/2addr p1, p2

    .line 3
    new-instance p2, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p0

    add-float/2addr p0, p1

    invoke-direct {p2, v1, p0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p2
.end method

.method private h([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 13

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 2
    aget-object v3, p1, v2

    const/4 v4, 0x2

    .line 3
    aget-object v5, p1, v4

    const/4 v6, 0x3

    .line 4
    aget-object p1, p1, v6

    .line 5
    invoke-direct {p0, v1, p1}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    add-int/2addr v7, v2

    .line 6
    invoke-direct {p0, v5, p1}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v8

    add-int/2addr v8, v2

    shl-int/2addr v8, v4

    .line 7
    invoke-static {v1, v3, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v8

    shl-int/2addr v7, v4

    .line 8
    invoke-static {v5, v3, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .line 9
    invoke-direct {p0, v8, p1}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v8

    add-int/2addr v8, v2

    .line 10
    invoke-direct {p0, v7, p1}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    add-int/2addr v7, v2

    and-int/lit8 v9, v8, 0x1

    if-ne v9, v2, :cond_0

    add-int/lit8 v8, v8, 0x1

    :cond_0
    and-int/lit8 v9, v7, 0x1

    if-ne v9, v2, :cond_1

    add-int/lit8 v7, v7, 0x1

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    .line 12
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    add-float/2addr v11, v12

    div-float/2addr v11, v10

    .line 13
    invoke-static {v1, v9, v11}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;FF)Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 14
    invoke-static {v3, v9, v11}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;FF)Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 15
    invoke-static {v5, v9, v11}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;FF)Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 16
    invoke-static {p1, v9, v11}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;FF)Lcom/google/zxing/ResultPoint;

    move-result-object p1

    shl-int/2addr v7, v4

    .line 17
    invoke-static {v1, v3, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    shl-int/2addr v8, v4

    .line 18
    invoke-static {v9, p1, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 19
    invoke-static {v3, v1, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v10

    .line 20
    invoke-static {v10, v5, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v10

    .line 21
    invoke-static {v5, p1, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 22
    invoke-static {v11, v3, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 23
    invoke-static {p1, v5, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object p1

    .line 24
    invoke-static {p1, v1, v8}, Lcom/google/zxing/datamatrix/detector/Detector;->g(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object p1

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    aput-object v9, v1, v0

    aput-object v10, v1, v2

    aput-object v3, v1, v4

    aput-object p1, v1, v6

    return-object v1
.end method

.method private i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v5, v4, v2

    .line 5
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v6, v3, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    :cond_1
    sub-int v6, v3, v1

    .line 6
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v9, v4, v2

    .line 7
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    neg-int v10, v6

    .line 8
    div-int/lit8 v10, v10, 0x2

    const/4 v11, -0x1

    if-ge v2, v4, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, -0x1

    :goto_1
    if-ge v1, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, -0x1

    .line 9
    :goto_2
    iget-object v11, v0, Lcom/google/zxing/datamatrix/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    if-eqz v5, :cond_4

    move v13, v2

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    if-eqz v5, :cond_5

    move v14, v1

    goto :goto_4

    :cond_5
    move v14, v2

    :goto_4
    invoke-virtual {v11, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    :goto_5
    if-eq v1, v3, :cond_a

    .line 10
    iget-object v13, v0, Lcom/google/zxing/datamatrix/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    if-eqz v5, :cond_6

    move v14, v2

    goto :goto_6

    :cond_6
    move v14, v1

    :goto_6
    if-eqz v5, :cond_7

    move v15, v1

    goto :goto_7

    :cond_7
    move v15, v2

    :goto_7
    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eq v13, v11, :cond_8

    add-int/lit8 v7, v7, 0x1

    move v11, v13

    :cond_8
    add-int/2addr v10, v9

    if-lez v10, :cond_9

    if-eq v2, v4, :cond_a

    add-int/2addr v2, v12

    sub-int/2addr v10, v6

    :cond_9
    add-int/2addr v1, v8

    goto :goto_5

    :cond_a
    return v7
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->b:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-virtual {v0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->b([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->c([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->a([Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/ResultPoint;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    aget-object v1, v0, v2

    if-eqz v1, :cond_3

    .line 6
    invoke-direct {p0, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->h([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    aget-object v10, v0, v1

    const/4 v11, 0x1

    .line 8
    aget-object v12, v0, v11

    const/4 v13, 0x2

    .line 9
    aget-object v14, v0, v13

    .line 10
    aget-object v0, v0, v2

    .line 11
    invoke-direct {p0, v10, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v3

    add-int/2addr v3, v11

    .line 12
    invoke-direct {p0, v14, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->i(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v4

    add-int/2addr v4, v11

    and-int/lit8 v5, v3, 0x1

    if-ne v5, v11, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    and-int/lit8 v5, v4, 0x1

    if-ne v5, v11, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    mul-int/lit8 v5, v3, 0x4

    mul-int/lit8 v6, v4, 0x7

    if-ge v5, v6, :cond_2

    mul-int/lit8 v5, v4, 0x4

    mul-int/lit8 v6, v3, 0x7

    if-ge v5, v6, :cond_2

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v9, v8

    goto :goto_0

    :cond_2
    move v8, v3

    move v9, v4

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/google/zxing/datamatrix/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    move-object v4, v10

    move-object v5, v12

    move-object v6, v14

    move-object v7, v0

    invoke-static/range {v3 .. v9}, Lcom/google/zxing/datamatrix/detector/Detector;->f(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    .line 15
    new-instance v4, Lcom/google/zxing/common/DetectorResult;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    aput-object v10, v5, v1

    aput-object v12, v5, v11

    aput-object v14, v5, v13

    aput-object v0, v5, v2

    invoke-direct {v4, v3, v5}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v4

    .line 16
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
