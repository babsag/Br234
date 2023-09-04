.class final Lorg/apache/commons/imaging/formats/jpeg/decoder/b;
.super Ljava/lang/Object;
.source "Dct.java"


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static final c:F

.field private static final d:F

.field private static final e:F

.field private static final f:F

.field private static final g:F

.field private static final h:F

.field private static final i:F

.field private static final j:F

.field private static final k:F

.field private static final l:F


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const/16 v0, 0x8

    new-array v1, v0, [F

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    div-double/2addr v6, v4

    double-to-float v4, v6

    const/4 v5, 0x0

    aput v4, v1, v5

    const-wide v6, 0x3fc921fb54442d18L    # 0.19634954084936207

    .line 2
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    div-double v8, v10, v8

    double-to-float v4, v8

    const/4 v8, 0x1

    aput v4, v1, v8

    const-wide v12, 0x3fd921fb54442d18L    # 0.39269908169872414

    .line 3
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    div-double v14, v10, v14

    double-to-float v4, v14

    const/4 v9, 0x2

    aput v4, v1, v9

    const-wide v14, 0x3fe2d97c7f3321d2L    # 0.5890486225480862

    .line 4
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    div-double v14, v10, v16

    double-to-float v4, v14

    const/4 v14, 0x3

    aput v4, v1, v14

    const-wide v15, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 5
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    div-double v14, v10, v18

    double-to-float v14, v14

    const/4 v15, 0x4

    aput v14, v1, v15

    const-wide v16, 0x3fef6a7a2955385eL    # 0.9817477042468103

    .line 6
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    div-double v12, v10, v18

    double-to-float v12, v12

    const/4 v13, 0x5

    aput v12, v1, v13

    const-wide v18, 0x3ff2d97c7f3321d2L    # 1.1780972450961724

    .line 7
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    div-double v13, v10, v20

    double-to-float v13, v13

    const/4 v14, 0x6

    aput v13, v1, v14

    const-wide v20, 0x3ff5fdbbe9bba775L    # 1.3744467859455345

    .line 8
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    div-double v10, v10, v22

    double-to-float v10, v10

    const/4 v11, 0x7

    aput v10, v1, v11

    sput-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->a:[F

    new-array v0, v0, [F

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x4020000000000000L    # 8.0

    div-double v24, v24, v22

    const-wide/high16 v22, 0x3fb0000000000000L    # 0.0625

    mul-double v12, v24, v22

    double-to-float v10, v12

    aput v10, v0, v5

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    mul-double v5, v5, v12

    const-wide/high16 v22, 0x3fc0000000000000L    # 0.125

    mul-double v5, v5, v22

    double-to-float v5, v5

    aput v5, v0, v8

    const-wide v5, 0x3fd921fb54442d18L    # 0.39269908169872414

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v12

    mul-double v7, v7, v22

    double-to-float v5, v7

    aput v5, v0, v9

    const-wide v5, 0x3fe2d97c7f3321d2L    # 0.5890486225480862

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v12

    mul-double v5, v5, v22

    double-to-float v5, v5

    const/4 v4, 0x3

    aput v5, v0, v4

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v12

    mul-double v6, v6, v22

    double-to-float v4, v6

    aput v4, v0, v15

    .line 14
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v12

    mul-double v4, v4, v22

    double-to-float v4, v4

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 15
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v12

    mul-double v4, v4, v22

    double-to-float v1, v4

    aput v1, v0, v14

    .line 16
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v12

    mul-double v4, v4, v22

    double-to-float v1, v4

    aput v1, v0, v11

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->b:[F

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->c:F

    const-wide v4, 0x3fd921fb54442d18L    # 0.39269908169872414

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-float v1, v6

    sput v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->d:F

    .line 19
    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->e:F

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    add-double/2addr v0, v6

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->f:F

    .line 21
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->g:F

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->h:F

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    double-to-float v1, v4

    sput v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->i:F

    .line 24
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    double-to-float v1, v4

    sput v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->j:F

    sub-float v2, v0, v1

    .line 25
    sput v2, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->k:F

    add-float/2addr v0, v1

    .line 26
    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->l:F

    return-void
.end method

.method public static a([F)V
    .locals 20

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v3, v2, 0x2

    .line 1
    aget v4, p0, v3

    add-int/lit8 v5, v2, 0x6

    aget v6, p0, v5

    sub-float/2addr v4, v6

    .line 2
    aget v6, p0, v3

    aget v7, p0, v5

    add-float/2addr v6, v7

    add-int/lit8 v7, v2, 0x5

    .line 3
    aget v8, p0, v7

    add-int/lit8 v9, v2, 0x3

    aget v10, p0, v9

    sub-float/2addr v8, v10

    add-int/lit8 v10, v2, 0x1

    .line 4
    aget v11, p0, v10

    add-int/lit8 v12, v2, 0x7

    aget v13, p0, v12

    add-float/2addr v11, v13

    .line 5
    aget v13, p0, v9

    aget v14, p0, v7

    add-float/2addr v13, v14

    sub-float v14, v11, v13

    .line 6
    aget v15, p0, v10

    aget v16, p0, v12

    sub-float v15, v15, v16

    add-float/2addr v11, v13

    .line 7
    sget v13, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->j:F

    add-float v16, v8, v15

    mul-float v13, v13, v16

    .line 8
    sget v16, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->k:F

    mul-float v16, v16, v8

    add-float v16, v16, v13

    .line 9
    sget v8, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->l:F

    mul-float v8, v8, v15

    sub-float/2addr v8, v13

    .line 10
    sget v13, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->i:F

    mul-float v4, v4, v13

    mul-float v14, v14, v13

    sub-float/2addr v8, v11

    sub-float v13, v8, v14

    .line 11
    aget v14, p0, v2

    add-int/lit8 v15, v2, 0x4

    aget v17, p0, v15

    sub-float v14, v14, v17

    sub-float/2addr v4, v6

    .line 12
    aget v17, p0, v2

    aget v18, p0, v15

    add-float v17, v17, v18

    add-float v18, v14, v4

    add-float v19, v17, v6

    sub-float/2addr v14, v4

    sub-float v17, v17, v6

    add-float v16, v16, v13

    add-float v4, v19, v11

    .line 13
    aput v4, p0, v2

    add-float v2, v18, v8

    .line 14
    aput v2, p0, v10

    sub-float v2, v14, v13

    .line 15
    aput v2, p0, v3

    add-float v2, v17, v16

    .line 16
    aput v2, p0, v9

    sub-float v17, v17, v16

    .line 17
    aput v17, p0, v15

    add-float/2addr v14, v13

    .line 18
    aput v14, p0, v7

    sub-float v18, v18, v8

    .line 19
    aput v18, p0, v5

    sub-float v19, v19, v11

    .line 20
    aput v19, p0, v12

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    add-int/lit8 v1, v0, 0x10

    .line 21
    aget v3, p0, v1

    add-int/lit8 v4, v0, 0x30

    aget v5, p0, v4

    sub-float/2addr v3, v5

    .line 22
    aget v5, p0, v1

    aget v6, p0, v4

    add-float/2addr v5, v6

    add-int/lit8 v6, v0, 0x28

    .line 23
    aget v7, p0, v6

    add-int/lit8 v8, v0, 0x18

    aget v9, p0, v8

    sub-float/2addr v7, v9

    add-int/lit8 v9, v0, 0x8

    .line 24
    aget v10, p0, v9

    add-int/lit8 v11, v0, 0x38

    aget v12, p0, v11

    add-float/2addr v10, v12

    .line 25
    aget v12, p0, v8

    aget v13, p0, v6

    add-float/2addr v12, v13

    sub-float v13, v10, v12

    .line 26
    aget v14, p0, v9

    aget v15, p0, v11

    sub-float/2addr v14, v15

    add-float/2addr v10, v12

    .line 27
    sget v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->j:F

    add-float v15, v7, v14

    mul-float v12, v12, v15

    .line 28
    sget v15, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->k:F

    mul-float v15, v15, v7

    add-float/2addr v15, v12

    .line 29
    sget v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->l:F

    mul-float v7, v7, v14

    sub-float/2addr v7, v12

    .line 30
    sget v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->i:F

    mul-float v3, v3, v12

    mul-float v13, v13, v12

    sub-float/2addr v7, v10

    sub-float v12, v7, v13

    .line 31
    aget v13, p0, v0

    add-int/lit8 v14, v0, 0x20

    aget v16, p0, v14

    sub-float v13, v13, v16

    sub-float/2addr v3, v5

    .line 32
    aget v16, p0, v0

    aget v17, p0, v14

    add-float v16, v16, v17

    add-float v17, v13, v3

    add-float v18, v16, v5

    sub-float/2addr v13, v3

    sub-float v16, v16, v5

    add-float/2addr v15, v12

    add-float v3, v18, v10

    .line 33
    aput v3, p0, v0

    add-float v3, v17, v7

    .line 34
    aput v3, p0, v9

    sub-float v3, v13, v12

    .line 35
    aput v3, p0, v1

    add-float v1, v16, v15

    .line 36
    aput v1, p0, v8

    sub-float v16, v16, v15

    .line 37
    aput v16, p0, v14

    add-float/2addr v13, v12

    .line 38
    aput v13, p0, v6

    sub-float v17, v17, v7

    .line 39
    aput v17, p0, v4

    sub-float v18, v18, v10

    .line 40
    aput v18, p0, v11

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method public static b([F)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v3

    .line 1
    aget v5, p0, v4

    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/b;->b:[F

    aget v7, v6, v1

    aget v6, v6, v3

    mul-float v7, v7, v6

    mul-float v5, v5, v7

    aput v5, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
