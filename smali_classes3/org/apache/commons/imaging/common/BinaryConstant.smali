.class public Lorg/apache/commons/imaging/common/BinaryConstant;
.super Ljava/lang/Object;
.source "BinaryConstant.java"


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->a:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/imaging/common/BinaryConstant;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/commons/imaging/common/BinaryConstant;

    .line 3
    iget-object p1, p1, Lorg/apache/commons/imaging/common/BinaryConstant;->a:[B

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->equals([B)Z

    move-result p1

    return p1
.end method

.method public equals([B)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->a:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public equals([BII)Z
    .locals 4

    .line 5
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->a:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 6
    iget-object v2, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->a:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->a:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->a:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->a:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->a:[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, v0, v2

    .line 2
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
