.class public Lorg/apache/commons/imaging/common/BinaryOutputStream;
.super Ljava/io/OutputStream;
.source "BinaryOutputStream.java"


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private b:Ljava/nio/ByteOrder;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 6
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->b:Ljava/nio/ByteOrder;

    .line 7
    iput-object p1, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->b:Ljava/nio/ByteOrder;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->b:Ljava/nio/ByteOrder;

    .line 4
    iput-object p1, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getByteCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->c:I

    return v0
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->b:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->b:Ljava/nio/ByteOrder;

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget p1, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->c:I

    return-void
.end method

.method public final write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->a:Ljava/io/OutputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->c:I

    return-void
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    iget p1, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->c:I

    return-void
.end method

.method public final write2Bytes(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->b:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, 0xff

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method public final write3Bytes(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->b:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, 0xff

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method public final write4Bytes(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->b:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 4
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, 0xff

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 7
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_0
    return-void
.end method
