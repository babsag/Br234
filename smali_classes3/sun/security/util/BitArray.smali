.class public Lsun/security/util/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# static fields
.field private static final a:[[B


# instance fields
.field private b:[B

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 1
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v2, v1, [B

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_f

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/util/BitArray;->a:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_6
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_7
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x31t
    .end array-data

    :array_8
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x30t
    .end array-data

    :array_9
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_a
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_b
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_c
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_d
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_e
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_f
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x31t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 2
    iput p1, p0, Lsun/security/util/BitArray;->c:I

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, -0x1

    .line 3
    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lsun/security/util/BitArray;->b:[B

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative length for BitArray"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    .line 6
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    if-lt v0, p1, :cond_1

    .line 7
    iput p1, p0, Lsun/security/util/BitArray;->c:I

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    .line 8
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v1, v0, 0x8

    sub-int/2addr v1, p1

    const/16 p1, 0xff

    shl-int/2addr p1, v1

    int-to-byte p1, p1

    .line 9
    new-array v1, v0, [B

    iput-object v1, p0, Lsun/security/util/BitArray;->b:[B

    const/4 v2, 0x0

    .line 10
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v0, :cond_0

    .line 11
    iget-object p2, p0, Lsun/security/util/BitArray;->b:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p2, v0

    and-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Byte array too short to represent bit array of given length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative length for BitArray"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lsun/security/util/BitArray;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget v0, p1, Lsun/security/util/BitArray;->c:I

    iput v0, p0, Lsun/security/util/BitArray;->c:I

    .line 21
    iget-object p1, p1, Lsun/security/util/BitArray;->b:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lsun/security/util/BitArray;->b:[B

    return-void
.end method

.method public constructor <init>([Z)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    array-length v0, p1

    iput v0, p0, Lsun/security/util/BitArray;->c:I

    add-int/lit8 v0, v0, 0x7

    .line 16
    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/util/BitArray;->b:[B

    const/4 v0, 0x0

    .line 17
    :goto_0
    iget v1, p0, Lsun/security/util/BitArray;->c:I

    if-ge v0, v1, :cond_0

    .line 18
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lsun/security/util/BitArray;->set(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(I)I
    .locals 1

    .line 1
    rem-int/lit8 p0, p0, 0x8

    rsub-int/lit8 p0, p0, 0x7

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private static b(I)I
    .locals 0

    .line 1
    div-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, p0}, Lsun/security/util/BitArray;-><init>(Lsun/security/util/BitArray;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    instance-of v2, p1, Lsun/security/util/BitArray;

    if-nez v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lsun/security/util/BitArray;

    .line 3
    iget v2, p1, Lsun/security/util/BitArray;->c:I

    iget v3, p0, Lsun/security/util/BitArray;->c:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lsun/security/util/BitArray;->b:[B

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 5
    aget-byte v3, v3, v2

    iget-object v4, p1, Lsun/security/util/BitArray;->b:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public get(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lsun/security/util/BitArray;->c:I

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lsun/security/util/BitArray;->b:[B

    invoke-static {p1}, Lsun/security/util/BitArray;->b(I)I

    move-result v1

    aget-byte v0, v0, v1

    invoke-static {p1}, Lsun/security/util/BitArray;->a(I)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lsun/security/util/BitArray;->b:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lsun/security/util/BitArray;->c:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/security/util/BitArray;->c:I

    return v0
.end method

.method public set(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lsun/security/util/BitArray;->c:I

    if-ge p1, v0, :cond_1

    .line 2
    invoke-static {p1}, Lsun/security/util/BitArray;->b(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Lsun/security/util/BitArray;->a(I)I

    move-result p1

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lsun/security/util/BitArray;->b:[B

    aget-byte v1, p2, v0

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lsun/security/util/BitArray;->b:[B

    aget-byte v1, p2, v0

    not-int p1, p1

    and-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toBooleanArray()[Z
    .locals 3

    .line 1
    iget v0, p0, Lsun/security/util/BitArray;->c:I

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lsun/security/util/BitArray;->c:I

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/util/BitArray;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lsun/security/util/BitArray;->b:[B

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 3
    sget-object v4, Lsun/security/util/BitArray;->a:[[B

    aget-byte v3, v3, v2

    const/4 v5, 0x4

    shr-int/2addr v3, v5

    and-int/lit8 v3, v3, 0xf

    aget-object v3, v4, v3

    invoke-virtual {v0, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 4
    iget-object v3, p0, Lsun/security/util/BitArray;->b:[B

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0xf

    aget-object v3, v4, v3

    invoke-virtual {v0, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 5
    rem-int/lit8 v3, v2, 0x8

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const/16 v3, 0xa

    .line 6
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x20

    .line 7
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x8

    :goto_2
    iget v2, p0, Lsun/security/util/BitArray;->c:I

    if-ge v1, v2, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x31

    goto :goto_3

    :cond_2
    const/16 v2, 0x30

    :goto_3
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public truncate()Lsun/security/util/BitArray;
    .locals 4

    .line 1
    iget v0, p0, Lsun/security/util/BitArray;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v1, Lsun/security/util/BitArray;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lsun/security/util/BitArray;->b:[B

    add-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x8

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lsun/security/util/BitArray;-><init>(I[B)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, v1}, Lsun/security/util/BitArray;-><init>(I)V

    return-object v0
.end method
