.class Lorg/apache/commons/imaging/common/itu_t4/a;
.super Ljava/io/OutputStream;
.source "BitArrayOutputStream.java"


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x80

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->d:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->a:[B

    return-void
.end method

.method private d(I)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->b:I

    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->a:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 2
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v2, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->a:[B

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->a:[B

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->b:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->d:I

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public b()[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->flush()V

    .line 2
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->b:I

    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->a:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 4
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public c(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->c:I

    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->d:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->c:I

    .line 2
    :cond_0
    iget p1, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->d:I

    ushr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->d:I

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->flush()V

    :cond_1
    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->flush()V

    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->d:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->c:I

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/itu_t4/a;->d(I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->c:I

    .line 4
    iput v1, p0, Lorg/apache/commons/imaging/common/itu_t4/a;->d:I

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->flush()V

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/itu_t4/a;->d(I)V

    return-void
.end method
