.class public final Lorg/apache/commons/imaging/color/ColorConversions;
.super Ljava/lang/Object;
.source "ColorConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(DDD)D
    .locals 9

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double v4, p4, v2

    if-gez v4, :cond_0

    add-double/2addr p4, v0

    :cond_0
    cmpl-double v2, p4, v0

    if-lez v2, :cond_1

    sub-double/2addr p4, v0

    :cond_1
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double v4, p4, v2

    cmpg-double v6, v4, v0

    if-gez v6, :cond_2

    sub-double/2addr p2, p0

    mul-double p2, p2, v2

    mul-double p2, p2, p4

    :goto_0
    add-double/2addr p0, p2

    return-wide p0

    :cond_2
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p4, v4

    cmpg-double v8, v6, v0

    if-gez v8, :cond_3

    return-wide p2

    :cond_3
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double v0, v0, p4

    cmpg-double v6, v0, v4

    if-gez v6, :cond_4

    sub-double/2addr p2, p0

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double/2addr v0, p4

    mul-double p2, p2, v0

    mul-double p2, p2, v2

    goto :goto_0

    :cond_4
    return-wide p0
.end method

.method private static b(DDD)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p0, p2

    .line 3
    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p3, p2

    const/4 p2, 0x0

    .line 4
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 p4, 0xff

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p4, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    shl-int/lit8 p1, p1, 0x10

    const/high16 p4, -0x1000000

    or-int/2addr p1, p4

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0x0

    or-int/2addr p0, p1

    return p0
.end method

.method private static c(III)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v1, 0xff

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-int/lit8 p0, p0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr p0, v1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x0

    or-int/2addr p0, p1

    return p0
.end method

.method public static convertCIELCHtoCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 9

    .line 2
    invoke-static {p4, p5}, Lorg/apache/commons/imaging/color/ColorConversions;->degree_2_radian(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v5, v0, p2

    .line 3
    invoke-static {p4, p5}, Lorg/apache/commons/imaging/color/ColorConversions;->degree_2_radian(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double v7, p4, p2

    .line 4
    new-instance p2, Lorg/apache/commons/imaging/color/ColorCieLab;

    move-object v2, p2

    move-wide v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/color/ColorCieLab;-><init>(DDD)V

    return-object p2
.end method

.method public static convertCIELCHtoCIELab(Lorg/apache/commons/imaging/color/ColorCieLch;)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->C:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->h:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELCHtoCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;

    move-result-object p0

    return-object p0
.end method

.method public static convertCIELabToDIN99bLab(DDD)Lorg/apache/commons/imaging/color/ColorDin99Lab;
    .locals 15

    const-wide v0, 0x4004a3d70a3d70a4L    # 2.58

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    const-wide v6, 0x3f902de00d1b7176L    # 0.0158

    mul-double v6, v6, p0

    add-double/2addr v6, v4

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double v9, v2, v6

    const-wide/16 v2, 0x0

    cmpl-double v6, p2, v2

    if-nez v6, :cond_0

    cmpl-double v6, p4, v2

    if-eqz v6, :cond_1

    .line 5
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v11, v11, p4

    add-double/2addr v6, v11

    const-wide v11, 0x3fe6666666666666L    # 0.7

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v13, v13, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, p2

    sub-double/2addr v13, v0

    mul-double v13, v13, v11

    mul-double v0, v6, v6

    mul-double v11, v13, v13

    add-double/2addr v0, v11

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    cmpl-double v8, v0, v2

    if-eqz v8, :cond_1

    const-wide v2, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double v0, v0, v2

    add-double/2addr v4, v0

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    mul-double v6, v6, v2

    mul-double v2, v2, v13

    move-wide v13, v2

    move-wide v11, v6

    goto :goto_0

    :cond_1
    move-wide v11, v2

    move-wide v13, v11

    .line 9
    :goto_0
    new-instance v0, Lorg/apache/commons/imaging/color/ColorDin99Lab;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorDin99Lab;-><init>(DDD)V

    return-object v0
.end method

.method public static convertCIELabToDIN99bLab(Lorg/apache/commons/imaging/color/ColorCieLab;)Lorg/apache/commons/imaging/color/ColorDin99Lab;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->a:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELabToDIN99bLab(DDD)Lorg/apache/commons/imaging/color/ColorDin99Lab;

    move-result-object p0

    return-object p0
.end method

.method public static convertCIELabToDIN99oLab(DDD)Lorg/apache/commons/imaging/color/ColorDin99Lab;
    .locals 15

    const-wide v0, 0x3ff63d70a3d70a3dL    # 1.39

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x403a000000000000L    # 26.0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v4

    const-wide v6, 0x3f6ff2e48e8a71deL    # 0.0039

    mul-double v6, v6, p0

    add-double/2addr v6, v4

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double v9, v2, v6

    const-wide/16 v2, 0x0

    cmpl-double v6, p2, v2

    if-nez v6, :cond_1

    cmpl-double v6, p4, v2

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v11, v2

    move-wide v13, v11

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, p4

    add-double/2addr v2, v6

    const-wide v6, 0x3fea8f5c28f5c28fL    # 0.83

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v13, v13, p2

    sub-double/2addr v11, v13

    mul-double v11, v11, v6

    mul-double v6, v2, v2

    mul-double v13, v11, v11

    add-double/2addr v6, v13

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v13, 0x3fb3333333333333L    # 0.075

    mul-double v6, v6, v13

    add-double/2addr v6, v4

    .line 8
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide v6, 0x3fa645a1cac08312L    # 0.0435

    div-double/2addr v4, v6

    .line 9
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    add-double/2addr v2, v0

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v4, v4, v2

    move-wide v11, v0

    move-wide v13, v4

    .line 12
    :goto_1
    new-instance v0, Lorg/apache/commons/imaging/color/ColorDin99Lab;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorDin99Lab;-><init>(DDD)V

    return-object v0
.end method

.method public static convertCIELabToDIN99oLab(Lorg/apache/commons/imaging/color/ColorCieLab;)Lorg/apache/commons/imaging/color/ColorDin99Lab;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->a:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELabToDIN99oLab(DDD)Lorg/apache/commons/imaging/color/ColorDin99Lab;

    move-result-object p0

    return-object p0
.end method

.method public static convertCIELabtoARGBTest(III)I
    .locals 12

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v4

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v6

    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v6

    int-to-double p0, p1

    const-wide v6, 0x407f400000000000L    # 500.0

    div-double/2addr p0, v6

    add-double/2addr p0, v0

    int-to-double v6, p2

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    div-double/2addr v6, v8

    sub-double v6, v0, v6

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/imaging/color/ColorConversions;->h(D)D

    move-result-wide p0

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/imaging/color/ColorConversions;->h(D)D

    move-result-wide v0

    .line 3
    invoke-static {v6, v7}, Lorg/apache/commons/imaging/color/ColorConversions;->h(D)D

    move-result-wide v6

    const-wide v8, 0x4057c3020c49ba5eL    # 95.047

    mul-double p0, p0, v8

    mul-double v0, v0, v2

    const-wide v8, 0x405b3883126e978dL    # 108.883

    mul-double v6, v6, v8

    div-double/2addr p0, v2

    div-double/2addr v0, v2

    div-double/2addr v6, v2

    const-wide v2, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v2, v2, p0

    const-wide v8, -0x400767a0f9096bbaL    # -1.5372

    mul-double v8, v8, v0

    add-double/2addr v2, v8

    const-wide v8, -0x402016f0068db8bbL    # -0.4986

    mul-double v8, v8, v6

    add-double/2addr v2, v8

    const-wide v8, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v8, v8, p0

    const-wide v10, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v10, v10, v0

    add-double/2addr v8, v10

    const-wide v10, 0x3fa53f7ced916873L    # 0.0415

    mul-double v10, v10, v6

    add-double/2addr v8, v10

    const-wide v10, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double p0, p0, v10

    const-wide v10, -0x4035e353f7ced917L    # -0.204

    mul-double v0, v0, v10

    add-double/2addr p0, v0

    const-wide v0, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v6, v6, v0

    add-double/2addr p0, v6

    .line 4
    invoke-static {v2, v3}, Lorg/apache/commons/imaging/color/ColorConversions;->d(D)D

    move-result-wide v0

    .line 5
    invoke-static {v8, v9}, Lorg/apache/commons/imaging/color/ColorConversions;->d(D)D

    move-result-wide v2

    .line 6
    invoke-static {p0, p1}, Lorg/apache/commons/imaging/color/ColorConversions;->d(D)D

    move-result-wide p0

    mul-double v6, v0, v4

    mul-double v8, v2, v4

    mul-double v10, p0, v4

    .line 7
    invoke-static/range {v6 .. v11}, Lorg/apache/commons/imaging/color/ColorConversions;->b(DDD)I

    move-result p0

    return p0
.end method

.method public static convertCIELabtoCIELCH(DDD)Lorg/apache/commons/imaging/color/ColorCieLch;
    .locals 9

    .line 2
    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    :goto_0
    move-wide v7, v0

    .line 5
    invoke-static {p2, p3}, Lorg/apache/commons/imaging/color/ColorConversions;->f(D)D

    move-result-wide p2

    invoke-static {p4, p5}, Lorg/apache/commons/imaging/color/ColorConversions;->f(D)D

    move-result-wide p4

    add-double/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 6
    new-instance p2, Lorg/apache/commons/imaging/color/ColorCieLch;

    move-object v2, p2

    move-wide v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/color/ColorCieLch;-><init>(DDD)V

    return-object p2
.end method

.method public static convertCIELabtoCIELCH(Lorg/apache/commons/imaging/color/ColorCieLab;)Lorg/apache/commons/imaging/color/ColorCieLch;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->a:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELabtoCIELCH(DDD)Lorg/apache/commons/imaging/color/ColorCieLch;

    move-result-object p0

    return-object p0
.end method

.method public static convertCIELabtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 9

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v0

    const-wide v0, 0x407f400000000000L    # 500.0

    div-double/2addr p2, v0

    add-double/2addr p2, p0

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    div-double/2addr p4, v0

    sub-double p4, p0, p4

    .line 2
    invoke-static {p0, p1}, Lorg/apache/commons/imaging/color/ColorConversions;->h(D)D

    move-result-wide p0

    .line 3
    invoke-static {p2, p3}, Lorg/apache/commons/imaging/color/ColorConversions;->h(D)D

    move-result-wide p2

    .line 4
    invoke-static {p4, p5}, Lorg/apache/commons/imaging/color/ColorConversions;->h(D)D

    move-result-wide p4

    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    mul-double v3, p2, v0

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double v5, p0, p2

    const-wide p0, 0x405b3883126e978dL    # 108.883

    mul-double v7, p4, p0

    .line 5
    new-instance p0, Lorg/apache/commons/imaging/color/ColorXyz;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    return-object p0
.end method

.method public static convertCIELabtoXYZ(Lorg/apache/commons/imaging/color/ColorCieLab;)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->a:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELabtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;

    move-result-object p0

    return-object p0
.end method

.method public static convertCIELuvtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 9

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr v0, p0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/imaging/color/ColorConversions;->h(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    mul-double p0, p0, v2

    div-double/2addr p2, p0

    const-wide v2, 0x3fc952d0bcba2702L    # 0.19783982482140777

    add-double/2addr p2, v2

    div-double/2addr p4, p0

    const-wide p0, 0x3fddf938d427f3b1L    # 0.46833630293240974

    add-double/2addr p4, p0

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double v5, v0, p0

    const-wide/high16 p0, 0x4022000000000000L    # 9.0

    mul-double p0, p0, v5

    mul-double v0, p0, p2

    neg-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    sub-double v2, p2, v2

    mul-double v2, v2, p4

    mul-double p2, p2, p4

    sub-double/2addr v2, p2

    div-double v3, v0, v2

    const-wide/high16 p2, 0x402e000000000000L    # 15.0

    mul-double p2, p2, p4

    mul-double p2, p2, v5

    sub-double/2addr p0, p2

    mul-double p2, p4, v3

    sub-double/2addr p0, p2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    mul-double p4, p4, p2

    div-double v7, p0, p4

    .line 3
    new-instance p0, Lorg/apache/commons/imaging/color/ColorXyz;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    return-object p0
.end method

.method public static convertCIELuvtoXYZ(Lorg/apache/commons/imaging/color/ColorCieLuv;)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->u:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->v:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELuvtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;

    move-result-object p0

    return-object p0
.end method

.method public static convertCMYKtoCMY(DDDD)Lorg/apache/commons/imaging/color/ColorCmy;
    .locals 7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p6

    mul-double v2, p0, v0

    add-double/2addr v2, p6

    mul-double v4, p2, v0

    add-double/2addr v4, p6

    mul-double v0, v0, p4

    add-double/2addr v0, p6

    .line 2
    new-instance v6, Lorg/apache/commons/imaging/color/ColorCmy;

    move-object p0, v6

    move-wide p1, v2

    move-wide p3, v4

    move-wide p5, v0

    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    return-object v6
.end method

.method public static convertCMYKtoCMY(Lorg/apache/commons/imaging/color/ColorCmyk;)Lorg/apache/commons/imaging/color/ColorCmy;
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->C:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->M:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->Y:D

    iget-wide v6, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->K:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYKtoCMY(DDDD)Lorg/apache/commons/imaging/color/ColorCmy;

    move-result-object p0

    return-object p0
.end method

.method public static convertCMYKtoRGB(IIII)I
    .locals 12

    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double v4, v0, v2

    int-to-double p0, p1

    div-double v6, p0, v2

    int-to-double p0, p2

    div-double v8, p0, v2

    int-to-double p0, p3

    div-double v10, p0, v2

    .line 1
    invoke-static/range {v4 .. v11}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYKtoCMY(DDDD)Lorg/apache/commons/imaging/color/ColorCmy;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYtoRGB(Lorg/apache/commons/imaging/color/ColorCmy;)I

    move-result p0

    return p0
.end method

.method public static convertCMYKtoRGB_Adobe(IIII)I
    .locals 0

    add-int/2addr p0, p3

    rsub-int p0, p0, 0xff

    add-int/2addr p1, p3

    rsub-int p1, p1, 0xff

    add-int/2addr p2, p3

    rsub-int p2, p2, 0xff

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/imaging/color/ColorConversions;->c(III)I

    move-result p0

    return p0
.end method

.method public static convertCMYtoCMYK(Lorg/apache/commons/imaging/color/ColorCmy;)Lorg/apache/commons/imaging/color/ColorCmyk;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lorg/apache/commons/imaging/color/ColorCmy;->C:D

    .line 2
    iget-wide v3, v0, Lorg/apache/commons/imaging/color/ColorCmy;->M:D

    .line 3
    iget-wide v5, v0, Lorg/apache/commons/imaging/color/ColorCmy;->Y:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v1, v7

    if-gez v0, :cond_0

    move-wide v9, v1

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    cmpg-double v0, v3, v9

    if-gez v0, :cond_1

    move-wide v9, v3

    :cond_1
    cmpg-double v0, v5, v9

    if-gez v0, :cond_2

    move-wide/from16 v18, v5

    goto :goto_1

    :cond_2
    move-wide/from16 v18, v9

    :goto_1
    const-wide/16 v9, 0x0

    cmpl-double v0, v18, v7

    if-nez v0, :cond_3

    move-wide v12, v9

    move-wide v14, v12

    move-wide/from16 v16, v14

    goto :goto_2

    :cond_3
    sub-double v1, v1, v18

    sub-double v7, v7, v18

    div-double/2addr v1, v7

    sub-double v3, v3, v18

    div-double/2addr v3, v7

    sub-double v5, v5, v18

    div-double/2addr v5, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    .line 4
    :goto_2
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmyk;

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lorg/apache/commons/imaging/color/ColorCmyk;-><init>(DDDD)V

    return-object v0
.end method

.method public static convertCMYtoRGB(Lorg/apache/commons/imaging/color/ColorCmy;)I
    .locals 12

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCmy;->C:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double v6, v0, v4

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCmy;->M:D

    sub-double v0, v2, v0

    mul-double v8, v0, v4

    .line 3
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCmy;->Y:D

    sub-double/2addr v2, v0

    mul-double v10, v2, v4

    .line 4
    invoke-static/range {v6 .. v11}, Lorg/apache/commons/imaging/color/ColorConversions;->b(DDD)I

    move-result p0

    return p0
.end method

.method public static convertDIN99bLabToCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 17

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    const-wide v4, 0x4004a3d70a3d70a4L    # 2.58

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v4

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 4
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double v0, v0, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v10

    mul-double v0, v0, v10

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sub-double/2addr v0, v10

    div-double/2addr v0, v2

    .line 7
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    .line 8
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v0, v0, v8

    const-wide v8, 0x3fe6666666666666L    # 0.7

    div-double/2addr v0, v8

    mul-double v8, p0, v10

    div-double/2addr v8, v6

    .line 9
    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    sub-double/2addr v6, v10

    const-wide v8, 0x3f902de00d1b7176L    # 0.0158

    div-double v11, v6, v8

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v0

    sub-double v13, v6, v8

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    add-double v15, v2, v0

    .line 12
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCieLab;

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/apache/commons/imaging/color/ColorCieLab;-><init>(DDD)V

    return-object v0
.end method

.method public static convertDIN99bLabToCIELab(Lorg/apache/commons/imaging/color/ColorDin99Lab;)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorDin99Lab;->L99:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorDin99Lab;->a99:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorDin99Lab;->b99:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertDIN99bLabToCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;

    move-result-object p0

    return-object p0
.end method

.method public static convertDIN99oLabToCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 19

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    const-wide v4, 0x3ff63d70a3d70a3dL    # 1.39

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v4

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v10, p0, v8

    div-double/2addr v10, v6

    .line 4
    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    sub-double/2addr v6, v8

    const-wide v10, 0x3f6ff2e48e8a71deL    # 0.0039

    div-double v13, v6, v10

    .line 5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double/2addr v6, v4

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fa645a1cac08312L    # 0.0435

    mul-double v0, v0, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sub-double/2addr v0, v8

    const-wide v2, 0x3fb3333333333333L    # 0.075

    div-double/2addr v0, v2

    .line 8
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    .line 9
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v0, v0, v6

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    const-wide v8, 0x3fea8f5c28f5c28fL    # 0.83

    div-double/2addr v0, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v0

    sub-double v15, v6, v8

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    add-double v17, v2, v0

    .line 12
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCieLab;

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/apache/commons/imaging/color/ColorCieLab;-><init>(DDD)V

    return-object v0
.end method

.method public static convertDIN99oLabToCIELab(Lorg/apache/commons/imaging/color/ColorDin99Lab;)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorDin99Lab;->L99:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorDin99Lab;->a99:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorDin99Lab;->b99:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertDIN99oLabToCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;

    move-result-object p0

    return-object p0
.end method

.method public static convertHSLtoRGB(DDD)I
    .locals 20

    const-wide v6, 0x406fe00000000000L    # 255.0

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    mul-double v0, p4, v6

    move-wide v2, v0

    move-wide v4, v2

    goto :goto_1

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p4, v0

    if-gez v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v0, p2, v0

    mul-double v0, v0, p4

    goto :goto_0

    :cond_1
    add-double v0, p4, p2

    mul-double v2, p2, p4

    sub-double/2addr v0, v2

    :goto_0
    move-wide v14, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, p4

    sub-double v16, v0, v14

    const-wide v18, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v12, p0, v18

    move-wide/from16 v8, v16

    move-wide v10, v14

    .line 2
    invoke-static/range {v8 .. v13}, Lorg/apache/commons/imaging/color/ColorConversions;->a(DDD)D

    move-result-wide v0

    mul-double v8, v0, v6

    move-wide/from16 v0, v16

    move-wide v2, v14

    move-wide/from16 v4, p0

    .line 3
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->a(DDD)D

    move-result-wide v0

    mul-double v0, v0, v6

    sub-double v2, p0, v18

    move-wide/from16 p0, v16

    move-wide/from16 p2, v14

    move-wide/from16 p4, v2

    .line 4
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/imaging/color/ColorConversions;->a(DDD)D

    move-result-wide v2

    mul-double v2, v2, v6

    move-wide v4, v2

    move-wide v2, v0

    move-wide v0, v8

    :goto_1
    move-wide/from16 p0, v0

    move-wide/from16 p2, v2

    move-wide/from16 p4, v4

    .line 5
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/imaging/color/ColorConversions;->b(DDD)I

    move-result v0

    return v0
.end method

.method public static convertHSLtoRGB(Lorg/apache/commons/imaging/color/ColorHsl;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorHsl;->H:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorHsl;->S:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorHsl;->L:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertHSLtoRGB(DDD)I

    move-result p0

    return p0
.end method

.method public static convertHSVtoRGB(DDD)I
    .locals 15

    const-wide/16 v0, 0x0

    const-wide v2, 0x406fe00000000000L    # 255.0

    cmpl-double v4, p2, v0

    if-nez v4, :cond_0

    mul-double v0, p4, v2

    move-wide v2, v0

    move-wide v4, v2

    goto/16 :goto_4

    :cond_0
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double v6, p0, v4

    cmpl-double v8, v6, v4

    if-nez v8, :cond_1

    move-wide v6, v0

    .line 2
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v10, v8, p2

    mul-double v10, v10, p4

    sub-double/2addr v6, v4

    mul-double v12, p2, v6

    sub-double v12, v8, v12

    mul-double v12, v12, p4

    sub-double v6, v8, v6

    mul-double v6, v6, p2

    sub-double v6, v8, v6

    mul-double v6, v6, p4

    cmpl-double v14, v4, v0

    if-nez v14, :cond_2

    move-wide v12, v6

    move-wide v6, v10

    :goto_0
    move-wide/from16 v10, p4

    goto :goto_3

    :cond_2
    cmpl-double v0, v4, v8

    if-nez v0, :cond_3

    move-wide v6, v10

    move-wide v10, v12

    :goto_1
    move-wide/from16 v12, p4

    goto :goto_3

    :cond_3
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v8, v4, v0

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpl-double v8, v4, v0

    if-nez v8, :cond_5

    :goto_2
    move-wide/from16 v6, p4

    goto :goto_3

    :cond_5
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    cmpl-double v8, v4, v0

    if-nez v8, :cond_6

    move-wide v12, v10

    move-wide v10, v6

    goto :goto_2

    :cond_6
    move-wide v6, v12

    move-wide v12, v10

    goto :goto_0

    :goto_3
    mul-double v0, v10, v2

    mul-double v4, v12, v2

    mul-double v2, v2, v6

    :goto_4
    move-wide p0, v0

    move-wide/from16 p2, v4

    move-wide/from16 p4, v2

    .line 3
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/imaging/color/ColorConversions;->b(DDD)I

    move-result v0

    return v0
.end method

.method public static convertHSVtoRGB(Lorg/apache/commons/imaging/color/ColorHsv;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorHsv;->H:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorHsv;->S:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorHsv;->V:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertHSVtoRGB(DDD)I

    move-result p0

    return p0
.end method

.method public static convertHunterLabtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 15

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double v2, p0, v0

    const-wide v4, 0x4031800000000000L    # 17.5

    div-double v4, p2, v4

    mul-double v4, v4, p0

    div-double/2addr v4, v0

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    div-double v6, p4, v6

    mul-double v6, v6, p0

    div-double/2addr v6, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v4, v11

    const-wide v0, 0x3ff051eb851eb852L    # 1.02

    div-double v9, v4, v0

    sub-double/2addr v6, v11

    neg-double v0, v6

    const-wide v2, 0x3feb1a9fbe76c8b4L    # 0.847

    div-double v13, v0, v2

    .line 3
    new-instance v0, Lorg/apache/commons/imaging/color/ColorXyz;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    return-object v0
.end method

.method public static convertHunterLabtoXYZ(Lorg/apache/commons/imaging/color/ColorHunterLab;)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertHunterLabtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;

    move-result-object p0

    return-object p0
.end method

.method public static convertRGBtoCMY(I)Lorg/apache/commons/imaging/color/ColorCmy;
    .locals 15

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 p0, p0, 0x0

    and-int/lit16 p0, p0, 0xff

    int-to-double v2, v0

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v9, v6, v2

    int-to-double v0, v1

    div-double/2addr v0, v4

    sub-double v11, v6, v0

    int-to-double v0, p0

    div-double/2addr v0, v4

    sub-double v13, v6, v0

    .line 1
    new-instance p0, Lorg/apache/commons/imaging/color/ColorCmy;

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    return-object p0
.end method

.method public static convertRGBtoHSL(I)Lorg/apache/commons/imaging/color/ColorHsl;
    .locals 25

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-double v4, v0

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    int-to-double v0, v1

    div-double/2addr v0, v6

    int-to-double v8, v3

    div-double/2addr v8, v6

    .line 1
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const/4 v3, 0x1

    cmpl-double v10, v4, v0

    if-ltz v10, :cond_0

    cmpl-double v10, v4, v8

    if-ltz v10, :cond_0

    move-wide v10, v4

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    cmpl-double v10, v0, v8

    if-lez v10, :cond_1

    move-wide v10, v0

    goto :goto_1

    :cond_1
    move-wide v10, v8

    :goto_0
    const/4 v3, 0x0

    :goto_1
    sub-double v12, v10, v6

    add-double v14, v10, v6

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v23, v14, v16

    const-wide/16 v18, 0x0

    cmpl-double v20, v12, v18

    if-nez v20, :cond_2

    move-wide/from16 v21, v18

    move-wide/from16 v19, v21

    goto :goto_4

    :cond_2
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    cmpg-double v22, v23, v20

    if-gez v22, :cond_3

    goto :goto_2

    :cond_3
    sub-double v14, v16, v10

    sub-double/2addr v14, v6

    :goto_2
    div-double v6, v12, v14

    sub-double v4, v10, v4

    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    div-double/2addr v4, v14

    div-double v16, v12, v16

    add-double v4, v4, v16

    div-double/2addr v4, v12

    sub-double v0, v10, v0

    div-double/2addr v0, v14

    add-double v0, v0, v16

    div-double/2addr v0, v12

    sub-double/2addr v10, v8

    div-double/2addr v10, v14

    add-double v10, v10, v16

    div-double/2addr v10, v12

    if-eqz v2, :cond_4

    sub-double/2addr v10, v0

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    add-double/2addr v4, v0

    sub-double v10, v4, v10

    goto :goto_3

    :cond_5
    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    add-double/2addr v0, v2

    sub-double v10, v0, v4

    :goto_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v10, v18

    if-gez v2, :cond_6

    add-double/2addr v10, v0

    :cond_6
    cmpl-double v2, v10, v0

    if-lez v2, :cond_7

    sub-double/2addr v10, v0

    :cond_7
    move-wide/from16 v21, v6

    move-wide/from16 v19, v10

    .line 2
    :goto_4
    new-instance v0, Lorg/apache/commons/imaging/color/ColorHsl;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v24}, Lorg/apache/commons/imaging/color/ColorHsl;-><init>(DDD)V

    return-object v0
.end method

.method public static convertRGBtoHSV(I)Lorg/apache/commons/imaging/color/ColorHsv;
    .locals 21

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-double v4, v0

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    int-to-double v0, v1

    div-double/2addr v0, v6

    int-to-double v8, v3

    div-double/2addr v8, v6

    .line 1
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const/4 v3, 0x1

    cmpl-double v10, v4, v0

    if-ltz v10, :cond_0

    cmpl-double v10, v4, v8

    if-ltz v10, :cond_0

    move-wide v15, v4

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    cmpl-double v10, v0, v8

    if-lez v10, :cond_1

    move-wide v15, v0

    goto :goto_1

    :cond_1
    move-wide v15, v8

    :goto_0
    const/4 v3, 0x0

    :goto_1
    sub-double v6, v15, v6

    const-wide/16 v10, 0x0

    cmpl-double v12, v6, v10

    if-nez v12, :cond_2

    move-wide v13, v10

    move-wide v11, v13

    goto :goto_3

    :cond_2
    div-double v12, v6, v15

    sub-double v4, v15, v4

    const-wide/high16 v17, 0x4018000000000000L    # 6.0

    div-double v4, v4, v17

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v19, v6, v19

    add-double v4, v4, v19

    div-double/2addr v4, v6

    sub-double v0, v15, v0

    div-double v0, v0, v17

    add-double v0, v0, v19

    div-double/2addr v0, v6

    sub-double v8, v15, v8

    div-double v8, v8, v17

    add-double v8, v8, v19

    div-double/2addr v8, v6

    if-eqz v2, :cond_3

    sub-double/2addr v8, v0

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    add-double/2addr v4, v0

    sub-double v8, v4, v8

    goto :goto_2

    :cond_4
    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    add-double/2addr v0, v2

    sub-double v8, v0, v4

    :goto_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v8, v10

    if-gez v2, :cond_5

    add-double/2addr v8, v0

    :cond_5
    cmpl-double v2, v8, v0

    if-lez v2, :cond_6

    sub-double/2addr v8, v0

    :cond_6
    move-wide v13, v12

    move-wide v11, v8

    .line 2
    :goto_3
    new-instance v0, Lorg/apache/commons/imaging/color/ColorHsv;

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/apache/commons/imaging/color/ColorHsv;-><init>(DDD)V

    return-object v0
.end method

.method public static convertRGBtoXYZ(I)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 17

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-double v3, v0

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    int-to-double v0, v1

    div-double/2addr v0, v5

    int-to-double v7, v2

    div-double/2addr v7, v5

    .line 1
    invoke-static {v3, v4}, Lorg/apache/commons/imaging/color/ColorConversions;->g(D)D

    move-result-wide v2

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/imaging/color/ColorConversions;->g(D)D

    move-result-wide v0

    .line 3
    invoke-static {v7, v8}, Lorg/apache/commons/imaging/color/ColorConversions;->g(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v6

    mul-double v0, v0, v6

    mul-double v4, v4, v6

    const-wide v6, 0x3fda65af8741a841L    # 0.4124564

    mul-double v6, v6, v2

    const-wide v8, 0x3fd6e286ddd532cdL    # 0.3575761

    mul-double v8, v8, v0

    add-double/2addr v6, v8

    const-wide v8, 0x3fc7189374bc6a7fL    # 0.1804375

    mul-double v8, v8, v4

    add-double v11, v6, v8

    const-wide v6, 0x3fcb38dd971f6bd6L    # 0.2126729

    mul-double v6, v6, v2

    const-wide v8, 0x3fe6e286ddd532cdL    # 0.7151522

    mul-double v8, v8, v0

    add-double/2addr v6, v8

    const-wide v8, 0x3fb27a0f9096bb99L    # 0.072175

    mul-double v8, v8, v4

    add-double v13, v6, v8

    const-wide v6, 0x3f93cc4410d1089cL    # 0.0193339

    mul-double v2, v2, v6

    const-wide v6, 0x3fbe835dedf1e083L    # 0.119192

    mul-double v0, v0, v6

    add-double/2addr v2, v0

    const-wide v0, 0x3fee68e424d8269dL    # 0.9503041

    mul-double v4, v4, v0

    add-double v15, v2, v4

    .line 4
    new-instance v0, Lorg/apache/commons/imaging/color/ColorXyz;

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    return-object v0
.end method

.method public static convertXYZtoCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 17

    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double v0, p0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double v2, p2, v2

    const-wide v4, 0x405b3883126e978dL    # 108.883

    div-double v4, p4, v4

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/imaging/color/ColorConversions;->e(D)D

    move-result-wide v0

    .line 3
    invoke-static {v2, v3}, Lorg/apache/commons/imaging/color/ColorConversions;->e(D)D

    move-result-wide v2

    .line 4
    invoke-static {v4, v5}, Lorg/apache/commons/imaging/color/ColorConversions;->e(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    mul-double v6, v6, v2

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    sub-double/2addr v6, v8

    const-wide/16 v8, 0x0

    .line 5
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    sub-double/2addr v0, v2

    const-wide v6, 0x407f400000000000L    # 500.0

    mul-double v13, v0, v6

    sub-double/2addr v2, v4

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    mul-double v15, v2, v0

    .line 6
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCieLab;

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/apache/commons/imaging/color/ColorCieLab;-><init>(DDD)V

    return-object v0
.end method

.method public static convertXYZtoCIELab(Lorg/apache/commons/imaging/color/ColorXyz;)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertXYZtoCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;

    move-result-object p0

    return-object p0
.end method

.method public static convertXYZtoCIELuv(DDD)Lorg/apache/commons/imaging/color/ColorCieLuv;
    .locals 9

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    mul-double v2, v2, p2

    add-double/2addr p0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double p4, p4, v2

    add-double/2addr p0, p4

    div-double/2addr v0, p0

    const-wide/high16 p4, 0x4022000000000000L    # 9.0

    mul-double p4, p4, p2

    div-double/2addr p4, p0

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    div-double/2addr p2, p0

    .line 2
    invoke-static {p2, p3}, Lorg/apache/commons/imaging/color/ColorConversions;->e(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x405d000000000000L    # 116.0

    mul-double p0, p0, p2

    const-wide/high16 p2, 0x4030000000000000L    # 16.0

    sub-double v3, p0, p2

    const-wide/high16 p0, 0x402a000000000000L    # 13.0

    mul-double p0, p0, v3

    const-wide p2, 0x3fc952d0bcba2702L    # 0.19783982482140777

    sub-double/2addr v0, p2

    mul-double v5, p0, v0

    const-wide p2, 0x3fddf938d427f3b1L    # 0.46833630293240974

    sub-double/2addr p4, p2

    mul-double v7, p0, p4

    .line 3
    new-instance p0, Lorg/apache/commons/imaging/color/ColorCieLuv;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/color/ColorCieLuv;-><init>(DDD)V

    return-object p0
.end method

.method public static convertXYZtoCIELuv(Lorg/apache/commons/imaging/color/ColorXyz;)Lorg/apache/commons/imaging/color/ColorCieLuv;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertXYZtoCIELuv(DDD)Lorg/apache/commons/imaging/color/ColorCieLuv;

    move-result-object p0

    return-object p0
.end method

.method public static convertXYZtoHunterLab(DDD)Lorg/apache/commons/imaging/color/ColorHunterLab;
    .locals 11

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v5, v0, v2

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    move-wide v7, v0

    goto :goto_0

    :cond_0
    const-wide v3, 0x4031800000000000L    # 17.5

    const-wide v7, 0x3ff051eb851eb852L    # 1.02

    mul-double v7, v7, p0

    sub-double/2addr v7, p2

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    mul-double v7, v7, v3

    :goto_0
    if-nez v2, :cond_1

    move-wide v9, v0

    goto :goto_1

    :cond_1
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    const-wide v2, 0x3feb1a9fbe76c8b4L    # 0.847

    mul-double v2, v2, p4

    sub-double v2, p2, v2

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v2, v9

    mul-double v2, v2, v0

    move-wide v9, v2

    .line 5
    :goto_1
    new-instance v0, Lorg/apache/commons/imaging/color/ColorHunterLab;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    return-object v0
.end method

.method public static convertXYZtoHunterLab(Lorg/apache/commons/imaging/color/ColorXyz;)Lorg/apache/commons/imaging/color/ColorHunterLab;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertXYZtoHunterLab(DDD)Lorg/apache/commons/imaging/color/ColorHunterLab;

    move-result-object p0

    return-object p0
.end method

.method public static convertXYZtoRGB(DDD)I
    .locals 8

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    div-double/2addr p2, v0

    div-double/2addr p4, v0

    const-wide v0, 0x4009ec7340697c9bL    # 3.2404542

    mul-double v0, v0, p0

    const-wide v2, -0x400767e175d13d75L    # -1.5371385

    mul-double v2, v2, p2

    add-double/2addr v0, v2

    const-wide v2, -0x4020180fc13e2351L    # -0.4985314

    mul-double v2, v2, p4

    add-double/2addr v0, v2

    const-wide v2, -0x4010fbc5de9c022aL    # -0.969266

    mul-double v2, v2, p0

    const-wide v4, 0x3ffe0423e68f15b2L    # 1.8760108

    mul-double v4, v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fa546d3f9e7b80bL    # 0.041556

    mul-double v4, v4, p4

    add-double/2addr v2, v4

    const-wide v4, 0x3fac7d4aae79fb6fL    # 0.0556434

    mul-double p0, p0, v4

    const-wide v4, -0x4035e27ab3fb44afL    # -0.2040259

    mul-double p2, p2, v4

    add-double/2addr p0, p2

    const-wide p2, 0x3ff0ea64f8a81ceaL    # 1.0572252

    mul-double p4, p4, p2

    add-double/2addr p0, p4

    .line 2
    invoke-static {v0, v1}, Lorg/apache/commons/imaging/color/ColorConversions;->d(D)D

    move-result-wide p2

    .line 3
    invoke-static {v2, v3}, Lorg/apache/commons/imaging/color/ColorConversions;->d(D)D

    move-result-wide p4

    .line 4
    invoke-static {p0, p1}, Lorg/apache/commons/imaging/color/ColorConversions;->d(D)D

    move-result-wide p0

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double v2, p2, v0

    mul-double v4, p4, v0

    mul-double v6, p0, v0

    .line 5
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/imaging/color/ColorConversions;->b(DDD)I

    move-result p0

    return p0
.end method

.method public static convertXYZtoRGB(Lorg/apache/commons/imaging/color/ColorXyz;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertXYZtoRGB(DDD)I

    move-result p0

    return p0
.end method

.method private static d(D)D
    .locals 4

    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    .line 1
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double p0, p0, v0

    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    mul-double p0, p0, v0

    :goto_0
    return-wide p0
.end method

.method public static degree_2_radian(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static e(D)D
    .locals 3

    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    .line 1
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x401f25ed06fef7c2L    # 7.787037

    mul-double p0, p0, v0

    const-wide v0, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    add-double/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method private static f(D)D
    .locals 0

    mul-double p0, p0, p0

    return-wide p0
.end method

.method private static g(D)D
    .locals 3

    const-wide v0, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr p0, v0

    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr p0, v0

    const-wide v0, 0x4003333333333333L    # 2.4

    .line 1
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method private static h(D)D
    .locals 5

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 1
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    sub-double/2addr p0, v0

    const-wide v0, 0x401f25ed06fef7c2L    # 7.787037

    div-double v0, p0, v0

    :goto_0
    return-wide v0
.end method

.method public static radian_2_degree(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p0, p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method
