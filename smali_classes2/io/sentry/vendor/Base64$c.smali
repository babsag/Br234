.class Lio/sentry/vendor/Base64$c;
.super Lio/sentry/vendor/Base64$a;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/vendor/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final c:[B

.field private static final d:[B


# instance fields
.field private final e:[B

.field f:I

.field private g:I

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field private final k:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lio/sentry/vendor/Base64$c;->c:[B

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lio/sentry/vendor/Base64$c;->d:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/sentry/vendor/Base64$a;-><init>()V

    .line 2
    iput-object p2, p0, Lio/sentry/vendor/Base64$a;->a:[B

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    iput-boolean p2, p0, Lio/sentry/vendor/Base64$c;->h:Z

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 4
    :goto_1
    iput-boolean p2, p0, Lio/sentry/vendor/Base64$c;->i:Z

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_2
    iput-boolean v1, p0, Lio/sentry/vendor/Base64$c;->j:Z

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    .line 6
    sget-object p1, Lio/sentry/vendor/Base64$c;->c:[B

    goto :goto_3

    :cond_3
    sget-object p1, Lio/sentry/vendor/Base64$c;->d:[B

    :goto_3
    iput-object p1, p0, Lio/sentry/vendor/Base64$c;->k:[B

    const/4 p1, 0x2

    new-array p1, p1, [B

    .line 7
    iput-object p1, p0, Lio/sentry/vendor/Base64$c;->e:[B

    .line 8
    iput v0, p0, Lio/sentry/vendor/Base64$c;->f:I

    if-eqz p2, :cond_4

    const/16 p1, 0x13

    goto :goto_4

    :cond_4
    const/4 p1, -0x1

    .line 9
    :goto_4
    iput p1, p0, Lio/sentry/vendor/Base64$c;->g:I

    return-void
.end method


# virtual methods
.method public a([BIIZ)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/sentry/vendor/Base64$c;->k:[B

    .line 2
    iget-object v2, v0, Lio/sentry/vendor/Base64$a;->a:[B

    .line 3
    iget v3, v0, Lio/sentry/vendor/Base64$c;->g:I

    add-int v4, p3, p2

    .line 4
    iget v5, v0, Lio/sentry/vendor/Base64$c;->f:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v5, v9, :cond_1

    if-eq v5, v8, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v5, p2, 0x1

    if-gt v5, v4, :cond_2

    .line 5
    iget-object v10, v0, Lio/sentry/vendor/Base64$c;->e:[B

    aget-byte v11, v10, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    aget-byte v10, v10, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v11

    aget-byte v11, p1, p2

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    .line 6
    iput v7, v0, Lio/sentry/vendor/Base64$c;->f:I

    move v11, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, p2, 0x2

    if-gt v5, v4, :cond_2

    .line 7
    iget-object v5, v0, Lio/sentry/vendor/Base64$c;->e:[B

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, p2, 0x1

    aget-byte v11, p1, p2

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v5, v11

    add-int/lit8 v11, v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v5

    .line 8
    iput v7, v0, Lio/sentry/vendor/Base64$c;->f:I

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v11, p2

    const/4 v10, -0x1

    :goto_1
    const/4 v12, 0x4

    const/16 v13, 0xd

    const/16 v14, 0xa

    if-eq v10, v6, :cond_5

    shr-int/lit8 v6, v10, 0x12

    and-int/lit8 v6, v6, 0x3f

    .line 9
    aget-byte v6, v1, v6

    aput-byte v6, v2, v7

    shr-int/lit8 v6, v10, 0xc

    and-int/lit8 v6, v6, 0x3f

    .line 10
    aget-byte v6, v1, v6

    aput-byte v6, v2, v9

    shr-int/lit8 v6, v10, 0x6

    and-int/lit8 v6, v6, 0x3f

    .line 11
    aget-byte v6, v1, v6

    aput-byte v6, v2, v8

    and-int/lit8 v6, v10, 0x3f

    .line 12
    aget-byte v6, v1, v6

    const/4 v10, 0x3

    aput-byte v6, v2, v10

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_4

    .line 13
    iget-boolean v3, v0, Lio/sentry/vendor/Base64$c;->j:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    aput-byte v13, v2, v12

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    :goto_2
    add-int/lit8 v6, v3, 0x1

    .line 14
    aput-byte v14, v2, v3

    :goto_3
    const/16 v3, 0x13

    goto :goto_4

    :cond_4
    const/4 v6, 0x4

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    add-int/lit8 v10, v11, 0x3

    if-gt v10, v4, :cond_8

    .line 15
    aget-byte v15, p1, v11

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v11, 0x1

    aget-byte v5, p1, v16

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v15

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v5, v11

    shr-int/lit8 v11, v5, 0x12

    and-int/lit8 v11, v11, 0x3f

    .line 16
    aget-byte v11, v1, v11

    aput-byte v11, v2, v6

    add-int/lit8 v11, v6, 0x1

    shr-int/lit8 v15, v5, 0xc

    and-int/lit8 v15, v15, 0x3f

    .line 17
    aget-byte v15, v1, v15

    aput-byte v15, v2, v11

    add-int/lit8 v11, v6, 0x2

    shr-int/lit8 v15, v5, 0x6

    and-int/lit8 v15, v15, 0x3f

    .line 18
    aget-byte v15, v1, v15

    aput-byte v15, v2, v11

    add-int/lit8 v11, v6, 0x3

    and-int/lit8 v5, v5, 0x3f

    .line 19
    aget-byte v5, v1, v5

    aput-byte v5, v2, v11

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_7

    .line 20
    iget-boolean v3, v0, Lio/sentry/vendor/Base64$c;->j:Z

    if-eqz v3, :cond_6

    add-int/lit8 v3, v6, 0x1

    aput-byte v13, v2, v6

    move v6, v3

    :cond_6
    add-int/lit8 v3, v6, 0x1

    .line 21
    aput-byte v14, v2, v6

    move v6, v3

    move v11, v10

    goto :goto_3

    :cond_7
    move v11, v10

    goto :goto_4

    :cond_8
    if-eqz p4, :cond_14

    .line 22
    iget v5, v0, Lio/sentry/vendor/Base64$c;->f:I

    sub-int v10, v11, v5

    add-int/lit8 v15, v4, -0x1

    const/16 v16, 0x3d

    if-ne v10, v15, :cond_c

    if-lez v5, :cond_9

    .line 23
    iget-object v4, v0, Lio/sentry/vendor/Base64$c;->e:[B

    aget-byte v4, v4, v7

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    aget-byte v4, p1, v11

    :goto_5
    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v12

    sub-int/2addr v5, v7

    .line 24
    iput v5, v0, Lio/sentry/vendor/Base64$c;->f:I

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    .line 25
    aget-byte v7, v1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v4, v4, 0x3f

    .line 26
    aget-byte v1, v1, v4

    aput-byte v1, v2, v5

    .line 27
    iget-boolean v1, v0, Lio/sentry/vendor/Base64$c;->h:Z

    if-eqz v1, :cond_a

    add-int/lit8 v1, v6, 0x1

    .line 28
    aput-byte v16, v2, v6

    add-int/lit8 v6, v1, 0x1

    .line 29
    aput-byte v16, v2, v1

    .line 30
    :cond_a
    iget-boolean v1, v0, Lio/sentry/vendor/Base64$c;->i:Z

    if-eqz v1, :cond_16

    .line 31
    iget-boolean v1, v0, Lio/sentry/vendor/Base64$c;->j:Z

    if-eqz v1, :cond_b

    add-int/lit8 v1, v6, 0x1

    aput-byte v13, v2, v6

    move v6, v1

    :cond_b
    add-int/lit8 v1, v6, 0x1

    .line 32
    aput-byte v14, v2, v6

    :goto_6
    move v6, v1

    goto/16 :goto_9

    :cond_c
    sub-int v10, v11, v5

    sub-int/2addr v4, v8

    if-ne v10, v4, :cond_12

    if-le v5, v9, :cond_d

    .line 33
    iget-object v4, v0, Lio/sentry/vendor/Base64$c;->e:[B

    aget-byte v4, v4, v7

    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v4, v11, 0x1

    aget-byte v10, p1, v11

    move v11, v4

    move v4, v10

    :goto_7
    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v14

    if-lez v5, :cond_e

    .line 34
    iget-object v10, v0, Lio/sentry/vendor/Base64$c;->e:[B

    add-int/lit8 v11, v7, 0x1

    aget-byte v7, v10, v7

    goto :goto_8

    :cond_e
    aget-byte v10, p1, v11

    move v11, v7

    move v7, v10

    :goto_8
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    sub-int/2addr v5, v11

    .line 35
    iput v5, v0, Lio/sentry/vendor/Base64$c;->f:I

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0x3f

    .line 36
    aget-byte v7, v1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    .line 37
    aget-byte v7, v1, v7

    aput-byte v7, v2, v5

    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v4, v4, 0x3f

    .line 38
    aget-byte v1, v1, v4

    aput-byte v1, v2, v6

    .line 39
    iget-boolean v1, v0, Lio/sentry/vendor/Base64$c;->h:Z

    if-eqz v1, :cond_f

    add-int/lit8 v1, v5, 0x1

    .line 40
    aput-byte v16, v2, v5

    move v5, v1

    .line 41
    :cond_f
    iget-boolean v1, v0, Lio/sentry/vendor/Base64$c;->i:Z

    if-eqz v1, :cond_11

    .line 42
    iget-boolean v1, v0, Lio/sentry/vendor/Base64$c;->j:Z

    if-eqz v1, :cond_10

    add-int/lit8 v1, v5, 0x1

    aput-byte v13, v2, v5

    move v5, v1

    :cond_10
    add-int/lit8 v1, v5, 0x1

    .line 43
    aput-byte v14, v2, v5

    move v5, v1

    :cond_11
    move v6, v5

    goto :goto_9

    .line 44
    :cond_12
    iget-boolean v1, v0, Lio/sentry/vendor/Base64$c;->i:Z

    if-eqz v1, :cond_16

    if-lez v6, :cond_16

    const/16 v1, 0x13

    if-eq v3, v1, :cond_16

    .line 45
    iget-boolean v1, v0, Lio/sentry/vendor/Base64$c;->j:Z

    if-eqz v1, :cond_13

    add-int/lit8 v1, v6, 0x1

    aput-byte v13, v2, v6

    move v6, v1

    :cond_13
    add-int/lit8 v1, v6, 0x1

    .line 46
    aput-byte v14, v2, v6

    goto :goto_6

    :cond_14
    add-int/lit8 v1, v4, -0x1

    if-ne v11, v1, :cond_15

    .line 47
    iget-object v1, v0, Lio/sentry/vendor/Base64$c;->e:[B

    iget v2, v0, Lio/sentry/vendor/Base64$c;->f:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lio/sentry/vendor/Base64$c;->f:I

    aget-byte v4, p1, v11

    aput-byte v4, v1, v2

    goto :goto_9

    :cond_15
    sub-int/2addr v4, v8

    if-ne v11, v4, :cond_16

    .line 48
    iget-object v1, v0, Lio/sentry/vendor/Base64$c;->e:[B

    iget v2, v0, Lio/sentry/vendor/Base64$c;->f:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lio/sentry/vendor/Base64$c;->f:I

    aget-byte v5, p1, v11

    aput-byte v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    .line 49
    iput v2, v0, Lio/sentry/vendor/Base64$c;->f:I

    add-int/2addr v11, v9

    aget-byte v2, p1, v11

    aput-byte v2, v1, v4

    .line 50
    :cond_16
    :goto_9
    iput v6, v0, Lio/sentry/vendor/Base64$a;->b:I

    .line 51
    iput v3, v0, Lio/sentry/vendor/Base64$c;->g:I

    return v9
.end method
