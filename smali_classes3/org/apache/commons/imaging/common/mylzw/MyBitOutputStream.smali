.class public Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;
.super Ljava/io/OutputStream;
.source "MyBitOutputStream.java"


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Ljava/nio/ByteOrder;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->b:Ljava/nio/ByteOrder;

    .line 3
    iput-object p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->a:Ljava/io/OutputStream;

    return-void
.end method

.method private a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->e:I

    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    .line 2
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    and-int/2addr v1, v2

    .line 3
    iget-object v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->b:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    rsub-int/lit8 v0, v0, 0x8

    shl-int v0, v1, v0

    .line 4
    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    .line 7
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    return-void
.end method

.method public getBytesWritten()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->e:I

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->writeBits(II)V

    return-void
.end method

.method public writeBits(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    .line 1
    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->b:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 2
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    shl-int/2addr v1, p2

    or-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    shl-int/2addr p1, v2

    or-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    .line 4
    :goto_0
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    .line 5
    :goto_1
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    const/16 p2, 0x8

    if-lt p1, p2, :cond_2

    .line 6
    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->b:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 7
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    add-int/lit8 p1, p1, -0x8

    shr-int p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    .line 8
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->a(I)V

    .line 9
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    goto :goto_2

    .line 10
    :cond_1
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    and-int/lit16 p1, p1, 0xff

    .line 11
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->a(I)V

    .line 12
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    shr-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    .line 13
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    .line 14
    :goto_2
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->c:I

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    .line 15
    iget p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    and-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->d:I

    goto :goto_1

    :cond_2
    return-void
.end method
