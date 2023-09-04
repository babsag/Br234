.class public final Lorg/apache/commons/imaging/common/ByteConversions;
.super Ljava/lang/Object;
.source "ByteConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(DLjava/nio/ByteOrder;[BI)V
    .locals 15

    .line 1
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 2
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x38

    const/16 v4, 0x30

    const/16 v5, 0x28

    const/16 v6, 0x20

    const/16 v7, 0x18

    const/16 v8, 0x10

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-wide/16 v11, 0xff

    move-object/from16 v13, p2

    if-ne v13, v2, :cond_0

    add-int/lit8 v2, p4, 0x0

    shr-long v13, v0, v10

    and-long/2addr v13, v11

    long-to-int v10, v13

    int-to-byte v10, v10

    .line 3
    aput-byte v10, p3, v2

    add-int/lit8 v2, p4, 0x1

    shr-long v9, v0, v9

    and-long/2addr v9, v11

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 4
    aput-byte v9, p3, v2

    add-int/lit8 v2, p4, 0x2

    shr-long v8, v0, v8

    and-long/2addr v8, v11

    long-to-int v9, v8

    int-to-byte v8, v9

    .line 5
    aput-byte v8, p3, v2

    add-int/lit8 v2, p4, 0x3

    shr-long v7, v0, v7

    and-long/2addr v7, v11

    long-to-int v8, v7

    int-to-byte v7, v8

    .line 6
    aput-byte v7, p3, v2

    add-int/lit8 v2, p4, 0x4

    shr-long v6, v0, v6

    and-long/2addr v6, v11

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 7
    aput-byte v6, p3, v2

    add-int/lit8 v2, p4, 0x5

    shr-long v5, v0, v5

    and-long/2addr v5, v11

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 8
    aput-byte v5, p3, v2

    add-int/lit8 v2, p4, 0x6

    shr-long v4, v0, v4

    and-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 9
    aput-byte v4, p3, v2

    add-int/lit8 v2, p4, 0x7

    shr-long/2addr v0, v3

    and-long/2addr v0, v11

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 10
    aput-byte v0, p3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x7

    shr-long v13, v0, v10

    and-long/2addr v13, v11

    long-to-int v14, v13

    int-to-byte v13, v14

    .line 11
    aput-byte v13, p3, v2

    add-int/lit8 v2, p4, 0x6

    shr-long v13, v0, v9

    and-long/2addr v13, v11

    long-to-int v9, v13

    int-to-byte v9, v9

    .line 12
    aput-byte v9, p3, v2

    add-int/lit8 v2, p4, 0x5

    shr-long v8, v0, v8

    and-long/2addr v8, v11

    long-to-int v9, v8

    int-to-byte v8, v9

    .line 13
    aput-byte v8, p3, v2

    add-int/lit8 v2, p4, 0x4

    shr-long v7, v0, v7

    and-long/2addr v7, v11

    long-to-int v8, v7

    int-to-byte v7, v8

    .line 14
    aput-byte v7, p3, v2

    add-int/lit8 v2, p4, 0x3

    shr-long v6, v0, v6

    and-long/2addr v6, v11

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 15
    aput-byte v6, p3, v2

    add-int/lit8 v2, p4, 0x2

    shr-long v5, v0, v5

    and-long/2addr v5, v11

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 16
    aput-byte v5, p3, v2

    add-int/lit8 v2, p4, 0x1

    shr-long v4, v0, v4

    and-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 17
    aput-byte v4, p3, v2

    add-int/lit8 v2, p4, 0x0

    shr-long/2addr v0, v3

    and-long/2addr v0, v11

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 18
    aput-byte v0, p3, v2

    :goto_0
    return-void
.end method

.method private static b(FLjava/nio/ByteOrder;[BI)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p3, 0x0

    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 3
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 4
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 5
    aput-byte v0, p2, p1

    add-int/lit8 p3, p3, 0x3

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 6
    aput-byte p0, p2, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p3, 0x3

    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 7
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 8
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 9
    aput-byte v0, p2, p1

    add-int/lit8 p3, p3, 0x0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 10
    aput-byte p0, p2, p3

    :goto_0
    return-void
.end method

.method private static c(ILjava/nio/ByteOrder;[BI)V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p3, 0x0

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 2
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 3
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 4
    aput-byte v0, p2, p1

    add-int/lit8 p3, p3, 0x3

    shr-int/lit8 p0, p0, 0x0

    int-to-byte p0, p0

    .line 5
    aput-byte p0, p2, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p3, 0x3

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 6
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 7
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 8
    aput-byte v0, p2, p1

    add-int/lit8 p3, p3, 0x0

    shr-int/lit8 p0, p0, 0x0

    int-to-byte p0, p0

    .line 9
    aput-byte p0, p2, p3

    :goto_0
    return-void
.end method

.method private static d(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;[BI)V
    .locals 9

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p3, 0x0

    .line 2
    iget-wide v5, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    shr-long v7, v5, v3

    long-to-int v0, v7

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    shr-long v7, v5, v2

    long-to-int v0, v7

    int-to-byte v0, v0

    .line 3
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    shr-long v7, v5, v1

    long-to-int v0, v7

    int-to-byte v0, v0

    .line 4
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x3

    shr-long/2addr v5, v4

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 5
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x4

    .line 6
    iget-wide v5, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    shr-long v7, v5, v3

    long-to-int p0, v7

    int-to-byte p0, p0

    aput-byte p0, p2, p1

    add-int/lit8 p0, p3, 0x5

    shr-long v2, v5, v2

    long-to-int p1, v2

    int-to-byte p1, p1

    .line 7
    aput-byte p1, p2, p0

    add-int/lit8 p0, p3, 0x6

    shr-long v0, v5, v1

    long-to-int p1, v0

    int-to-byte p1, p1

    .line 8
    aput-byte p1, p2, p0

    add-int/lit8 p3, p3, 0x7

    shr-long p0, v5, v4

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 9
    aput-byte p0, p2, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p3, 0x3

    .line 10
    iget-wide v5, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    shr-long v7, v5, v3

    long-to-int v0, v7

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    shr-long v7, v5, v2

    long-to-int v0, v7

    int-to-byte v0, v0

    .line 11
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    shr-long v7, v5, v1

    long-to-int v0, v7

    int-to-byte v0, v0

    .line 12
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x0

    shr-long/2addr v5, v4

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 13
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x7

    .line 14
    iget-wide v5, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    shr-long v7, v5, v3

    long-to-int p0, v7

    int-to-byte p0, p0

    aput-byte p0, p2, p1

    add-int/lit8 p0, p3, 0x6

    shr-long v2, v5, v2

    long-to-int p1, v2

    int-to-byte p1, p1

    .line 15
    aput-byte p1, p2, p0

    add-int/lit8 p0, p3, 0x5

    shr-long v0, v5, v1

    long-to-int p1, v0

    int-to-byte p1, p1

    .line 16
    aput-byte p1, p2, p0

    add-int/lit8 p3, p3, 0x4

    shr-long p0, v5, v4

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 17
    aput-byte p0, p2, p3

    :goto_0
    return-void
.end method

.method private static e(SLjava/nio/ByteOrder;[BI)V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p3, 0x0

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 2
    aput-byte v0, p2, p1

    add-int/lit8 p3, p3, 0x1

    shr-int/lit8 p0, p0, 0x0

    int-to-byte p0, p0

    .line 3
    aput-byte p0, p2, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 4
    aput-byte v0, p2, p1

    add-int/lit8 p3, p3, 0x0

    shr-int/lit8 p0, p0, 0x0

    int-to-byte p0, p0

    .line 5
    aput-byte p0, p2, p3

    :goto_0
    return-void
.end method

.method private static f([DIILjava/nio/ByteOrder;)[B
    .locals 5

    mul-int/lit8 v0, p2, 0x8

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 2
    aget-wide v2, p0, v2

    mul-int/lit8 v4, v1, 0x8

    invoke-static {v2, v3, p3, v0, v4}, Lorg/apache/commons/imaging/common/ByteConversions;->a(DLjava/nio/ByteOrder;[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static g([FIILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x4

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 2
    aget v2, p0, v2

    mul-int/lit8 v3, v1, 0x4

    invoke-static {v2, p3, v0, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->b(FLjava/nio/ByteOrder;[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static h([IIILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x4

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 2
    aget v2, p0, v2

    mul-int/lit8 v3, v1, 0x4

    invoke-static {v2, p3, v0, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->c(ILjava/nio/ByteOrder;[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static i([Lorg/apache/commons/imaging/common/RationalNumber;IILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x8

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 2
    aget-object v2, p0, v2

    mul-int/lit8 v3, v1, 0x8

    invoke-static {v2, p3, v0, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->d(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static j([SIILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x2

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 2
    aget-short v2, p0, v2

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, p3, v0, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->e(SLjava/nio/ByteOrder;[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static k([BILjava/nio/ByteOrder;)D
    .locals 25

    add-int/lit8 v0, p1, 0x0

    .line 1
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    .line 2
    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x2

    .line 3
    aget-byte v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p1, 0x3

    .line 4
    aget-byte v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p1, 0x4

    .line 5
    aget-byte v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p1, 0x5

    .line 6
    aget-byte v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    add-int/lit8 v14, p1, 0x6

    .line 7
    aget-byte v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    add-int/lit8 v16, p1, 0x7

    move-wide/from16 v17, v14

    .line 8
    aget-byte v14, p0, v16

    int-to-long v14, v14

    and-long/2addr v2, v14

    .line 9
    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v16, 0x10

    const/16 v19, 0x18

    const/16 v20, 0x20

    const/16 v21, 0x28

    const/16 v22, 0x30

    const/16 v23, 0x38

    const/16 v24, 0x0

    move-object/from16 v15, p2

    if-ne v15, v14, :cond_0

    shl-long v0, v0, v23

    shl-long v4, v4, v22

    or-long/2addr v0, v4

    shl-long v4, v6, v21

    or-long/2addr v0, v4

    shl-long v4, v8, v20

    or-long/2addr v0, v4

    shl-long v4, v10, v19

    or-long/2addr v0, v4

    shl-long v4, v12, v16

    or-long/2addr v0, v4

    const/16 v4, 0x8

    shl-long v4, v17, v4

    or-long/2addr v0, v4

    shl-long v2, v2, v24

    or-long/2addr v0, v2

    goto :goto_0

    :cond_0
    shl-long v2, v2, v23

    shl-long v14, v17, v22

    or-long/2addr v2, v14

    shl-long v12, v12, v21

    or-long/2addr v2, v12

    shl-long v10, v10, v20

    or-long/2addr v2, v10

    shl-long v8, v8, v19

    or-long/2addr v2, v8

    shl-long v6, v6, v16

    or-long/2addr v2, v6

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    shl-long v0, v0, v24

    or-long/2addr v0, v2

    .line 10
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private static l([BIILjava/nio/ByteOrder;)[D
    .locals 4

    .line 1
    div-int/lit8 p2, p2, 0x8

    new-array v0, p2, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x8

    add-int/2addr v2, p1

    .line 2
    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->k([BILjava/nio/ByteOrder;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static m([BILjava/nio/ByteOrder;)F
    .locals 3

    add-int/lit8 v0, p1, 0x0

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 2
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 3
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    .line 4
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 5
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, p1, :cond_0

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, v2, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, v0, 0x0

    or-int/2addr p0, p1

    .line 6
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method private static n([BIILjava/nio/ByteOrder;)[F
    .locals 3

    .line 1
    div-int/lit8 p2, p2, 0x4

    new-array v0, p2, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    .line 2
    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->m([BILjava/nio/ByteOrder;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static o([BIILjava/nio/ByteOrder;)[I
    .locals 3

    .line 1
    div-int/lit8 p2, p2, 0x4

    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    .line 2
    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BILjava/nio/ByteOrder;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static p([BILjava/nio/ByteOrder;Z)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 7

    add-int/lit8 v0, p1, 0x0

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 2
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 3
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p1, 0x3

    .line 4
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p1, 0x4

    .line 5
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p1, 0x5

    .line 6
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p1, 0x6

    .line 7
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 p1, p1, 0x7

    .line 8
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 9
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, p1, :cond_0

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, v3

    shl-int/lit8 p2, v4, 0x18

    shl-int/lit8 v0, v5, 0x10

    or-int/2addr p2, v0

    shl-int/lit8 v0, v6, 0x8

    or-int/2addr p2, v0

    or-int/2addr p0, p2

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v3, 0x18

    shl-int/lit8 p2, v2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v1, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p2, v6, 0x10

    or-int/2addr p0, p2

    shl-int/lit8 p2, v5, 0x8

    or-int/2addr p0, p2

    or-int/2addr p0, v4

    .line 10
    :goto_0
    new-instance p2, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {p2, p1, p0, p3}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(IIZ)V

    return-object p2
.end method

.method private static q([BIILjava/nio/ByteOrder;Z)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 3

    .line 1
    div-int/lit8 p2, p2, 0x8

    new-array v0, p2, [Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x8

    add-int/2addr v2, p1

    .line 2
    invoke-static {p0, v2, p3, p4}, Lorg/apache/commons/imaging/common/ByteConversions;->p([BILjava/nio/ByteOrder;Z)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static r([BILjava/nio/ByteOrder;)S
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method private static s([BIILjava/nio/ByteOrder;)[S
    .locals 3

    .line 1
    div-int/lit8 p2, p2, 0x2

    new-array v0, p2, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    .line 2
    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->r([BILjava/nio/ByteOrder;)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static t([BIILjava/nio/ByteOrder;)[I
    .locals 3

    .line 1
    div-int/lit8 p2, p2, 0x2

    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    .line 2
    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toBytes(DLjava/nio/ByteOrder;)[B
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 7
    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->a(DLjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(FLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->b(FLjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(ILjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->c(ILjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 9
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->d(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(SLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->e(SLjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes([DLjava/nio/ByteOrder;)[B
    .locals 2

    .line 8
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->f([DIILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toBytes([FLjava/nio/ByteOrder;)[B
    .locals 2

    .line 6
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->g([FIILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toBytes([ILjava/nio/ByteOrder;)[B
    .locals 2

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->h([IIILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B
    .locals 2

    .line 10
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->i([Lorg/apache/commons/imaging/common/RationalNumber;IILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toBytes([SLjava/nio/ByteOrder;)[B
    .locals 2

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->j([SIILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toDouble([BLjava/nio/ByteOrder;)D
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->k([BILjava/nio/ByteOrder;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static toDoubles([BLjava/nio/ByteOrder;)[D
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->l([BIILjava/nio/ByteOrder;)[D

    move-result-object p0

    return-object p0
.end method

.method public static toFloat([BLjava/nio/ByteOrder;)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->m([BILjava/nio/ByteOrder;)F

    move-result p0

    return p0
.end method

.method public static toFloats([BLjava/nio/ByteOrder;)[F
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->n([BIILjava/nio/ByteOrder;)[F

    move-result-object p0

    return-object p0
.end method

.method public static toInt([BILjava/nio/ByteOrder;)I
    .locals 3

    add-int/lit8 v0, p1, 0x0

    .line 2
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 4
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    .line 5
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 6
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, p1, :cond_0

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, v2, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static toInt([BLjava/nio/ByteOrder;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BILjava/nio/ByteOrder;)I

    move-result p0

    return p0
.end method

.method public static toInts([BLjava/nio/ByteOrder;)[I
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->o([BIILjava/nio/ByteOrder;)[I

    move-result-object p0

    return-object p0
.end method

.method public static toRational([BLjava/nio/ByteOrder;Z)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->p([BILjava/nio/ByteOrder;Z)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    return-object p0
.end method

.method public static toRationals([BLjava/nio/ByteOrder;Z)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->q([BIILjava/nio/ByteOrder;Z)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    return-object p0
.end method

.method public static toShort([BLjava/nio/ByteOrder;)S
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->r([BILjava/nio/ByteOrder;)S

    move-result p0

    return p0
.end method

.method public static toShorts([BLjava/nio/ByteOrder;)[S
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->s([BIILjava/nio/ByteOrder;)[S

    move-result-object p0

    return-object p0
.end method

.method public static toUInt16([BILjava/nio/ByteOrder;)I
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 2
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 4
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, p1, :cond_0

    shl-int/lit8 p1, v0, 0x8

    or-int/2addr p0, p1

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static toUInt16([BLjava/nio/ByteOrder;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result p0

    return p0
.end method

.method public static toUInt16s([BLjava/nio/ByteOrder;)[I
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->t([BIILjava/nio/ByteOrder;)[I

    move-result-object p0

    return-object p0
.end method
