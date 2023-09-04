.class public Lbr/com/topaz/r0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbr/com/topaz/r0/b;->a:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;[B[B)[B
    .locals 2

    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "RAW"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method protected static c(Ljava/lang/String;)[B
    .locals 5

    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v4, p0, v3

    aput-byte v4, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;JIIZ)Ljava/lang/String;
    .locals 2

    if-eqz p5, :cond_3

    if-eqz p4, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    int-to-long v0, p5

    div-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    if-eqz p6, :cond_0

    invoke-virtual {p0, p1}, Lbr/com/topaz/r0/b;->a(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lbr/com/topaz/r0/b;->b(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const-string p5, "0"

    const/16 p6, 0x10

    if-ge p3, p6, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lbr/com/topaz/r0/b;->c(Ljava/lang/String;)[B

    move-result-object p2

    const-string p3, "HmacSHA1"

    invoke-static {p3, p1, p2}, Lbr/com/topaz/r0/b;->a(Ljava/lang/String;[B[B)[B

    move-result-object p1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-byte p2, p1, p2

    and-int/lit8 p2, p2, 0xf

    aget-byte p3, p1, p2

    and-int/lit8 p3, p3, 0x7f

    shl-int/lit8 p3, p3, 0x18

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 p6, v0, 0x10

    or-int/2addr p3, p6

    add-int/lit8 p6, p2, 0x2

    aget-byte p6, p1, p6

    and-int/lit16 p6, p6, 0xff

    shl-int/lit8 p6, p6, 0x8

    or-int/2addr p3, p6

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    sget-object p2, Lbr/com/topaz/r0/b;->a:[I

    aget p2, p2, p4

    rem-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p2, p4, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method protected a(Ljava/lang/String;)[B
    .locals 17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    mul-int/lit8 v0, v0, 0x5

    const/4 v2, 0x4

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    new-array v3, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    move-object/from16 v9, p1

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x61

    if-lt v10, v11, :cond_0

    const/16 v11, 0x7a

    if-gt v10, v11, :cond_0

    add-int/lit8 v10, v10, -0x61

    goto :goto_1

    :cond_0
    const/16 v11, 0x41

    if-lt v10, v11, :cond_1

    const/16 v11, 0x5a

    if-gt v10, v11, :cond_1

    add-int/lit8 v10, v10, -0x41

    goto :goto_1

    :cond_1
    const/16 v11, 0x32

    if-lt v10, v11, :cond_2

    const/16 v11, 0x37

    if-gt v10, v11, :cond_2

    add-int/lit8 v10, v10, -0x32

    add-int/lit8 v10, v10, 0x1a

    :goto_1
    const/4 v11, 0x6

    const/4 v12, 0x7

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x1

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    and-int/lit8 v7, v10, 0x1f

    or-int/2addr v7, v8

    add-int/lit8 v8, v6, 0x1

    int-to-byte v10, v7

    aput-byte v10, v3, v6

    move v6, v8

    move v8, v7

    const/4 v7, 0x0

    goto :goto_3

    :pswitch_1
    and-int/lit8 v7, v10, 0x18

    shr-int/2addr v7, v14

    or-int/2addr v7, v8

    add-int/lit8 v8, v6, 0x1

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    and-int/lit8 v6, v10, 0x7

    shl-int/2addr v6, v1

    const/4 v7, 0x7

    goto :goto_2

    :pswitch_2
    and-int/lit8 v7, v10, 0x1f

    shl-int/2addr v7, v13

    or-int/2addr v7, v8

    move v8, v7

    const/4 v7, 0x6

    goto :goto_3

    :pswitch_3
    and-int/lit8 v7, v10, 0x1e

    shr-int/2addr v7, v15

    or-int/2addr v7, v8

    add-int/lit8 v8, v6, 0x1

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    and-int/lit8 v6, v10, 0x1

    shl-int/2addr v6, v12

    const/4 v7, 0x5

    goto :goto_2

    :pswitch_4
    and-int/lit8 v7, v10, 0x10

    shr-int/2addr v7, v2

    or-int/2addr v7, v8

    add-int/lit8 v8, v6, 0x1

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    and-int/lit8 v6, v10, 0xf

    shl-int/2addr v6, v2

    const/4 v7, 0x4

    goto :goto_2

    :pswitch_5
    and-int/lit8 v7, v10, 0x1f

    shl-int/2addr v7, v15

    or-int/2addr v7, v8

    move v8, v7

    const/4 v7, 0x3

    goto :goto_3

    :pswitch_6
    and-int/lit8 v7, v10, 0x1c

    shr-int/2addr v7, v13

    or-int/2addr v7, v8

    add-int/lit8 v8, v6, 0x1

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    and-int/lit8 v6, v10, 0x3

    shl-int/2addr v6, v11

    const/4 v7, 0x2

    :goto_2
    move/from16 v16, v8

    move v8, v6

    move/from16 v6, v16

    goto :goto_3

    :pswitch_7
    and-int/lit8 v7, v10, 0x1f

    shl-int/2addr v7, v14

    move v8, v7

    const/4 v7, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x3d

    if-ne v10, v1, :cond_3

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid base-32 character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v4, v7

    :goto_4
    if-eqz v4, :cond_5

    add-int/lit8 v1, v6, 0x1

    int-to-byte v2, v8

    aput-byte v2, v3, v6

    move v6, v1

    :cond_5
    if-eq v6, v0, :cond_6

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    :cond_6
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
