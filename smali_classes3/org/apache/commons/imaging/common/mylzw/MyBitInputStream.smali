.class public Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;
.super Ljava/io/InputStream;
.source "MyBitInputStream.java"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/nio/ByteOrder;

.field private c:Z

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->b:Ljava/nio/ByteOrder;

    .line 3
    iput-object p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->e:I

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->f:I

    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->d:J

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->readBits(I)I

    move-result v0

    return v0
.end method

.method public readBits(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->e:I

    if-ge v0, p1, :cond_3

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    .line 3
    iget-boolean p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->c:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x101

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 4
    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->b:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_2

    .line 5
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->f:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->f:I

    goto :goto_1

    .line 6
    :cond_2
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->e:I

    shl-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->f:I

    .line 7
    :goto_1
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->d:J

    .line 8
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->e:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->e:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    shl-int v2, v1, p1

    sub-int/2addr v2, v1

    .line 9
    iget-object v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->b:Ljava/nio/ByteOrder;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_4

    .line 10
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->f:I

    sub-int v4, v0, p1

    shr-int/2addr v3, v4

    and-int/2addr v2, v3

    goto :goto_2

    .line 11
    :cond_4
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->f:I

    and-int/2addr v2, v3

    shr-int/2addr v3, p1

    .line 12
    iput v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->f:I

    :goto_2
    sub-int/2addr v0, p1

    .line 13
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->e:I

    shl-int p1, v1, v0

    sub-int/2addr p1, v1

    .line 14
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->f:I

    and-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->f:I

    return v2
.end method

.method public setTiffLZWMode()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->c:Z

    return-void
.end method
