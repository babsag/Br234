.class Lorg/apache/commons/imaging/formats/bmp/h;
.super Lorg/apache/commons/imaging/formats/bmp/j;
.source "PixelParserRgb.java"


# instance fields
.field private e:I

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/j;-><init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->c:[B

    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    add-int/lit8 v1, v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/bmp/f;->a(I)I

    move-result v0

    .line 4
    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    return v0

    :cond_1
    const/high16 v2, -0x1000000

    const/16 v4, 0x10

    if-ne v0, v4, :cond_2

    .line 5
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const-string v5, "Pixel"

    const-string v6, "BMP Image Data"

    invoke-static {v5, v0, v6, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x3

    shr-int/lit8 v5, v0, 0x5

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x3

    shr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x3

    shl-int/2addr v0, v4

    or-int/2addr v0, v2

    shl-int/lit8 v1, v5, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x0

    or-int/2addr v0, v1

    .line 6
    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    return v0

    :cond_2
    const/16 v5, 0x18

    if-ne v0, v5, :cond_3

    .line 7
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->c:[B

    iget v3, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    add-int/lit8 v5, v3, 0x0

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x1

    .line 8
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, 0x2

    .line 9
    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v0, v2

    shl-int/lit8 v1, v6, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v5, 0x0

    or-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x3

    .line 10
    iput v3, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    return v0

    :cond_3
    const/16 v5, 0x20

    if-ne v0, v5, :cond_4

    .line 11
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->c:[B

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    add-int/lit8 v6, v5, 0x0

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    .line 12
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v5, 0x2

    .line 13
    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v0, v2

    shl-int/lit8 v1, v7, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v6, 0x0

    or-int/2addr v0, v1

    add-int/2addr v5, v3

    .line 14
    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    return v0

    .line 15
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown BitsPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/f;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_5
    :goto_0
    iget v3, p0, Lorg/apache/commons/imaging/formats/bmp/h;->f:I

    if-ge v3, v0, :cond_7

    if-nez v3, :cond_6

    add-int/2addr v3, v1

    .line 17
    iput v3, p0, Lorg/apache/commons/imaging/formats/bmp/h;->f:I

    .line 18
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/bmp/f;->c:[B

    iget v3, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/apache/commons/imaging/formats/bmp/h;->g:I

    add-int/2addr v3, v2

    .line 19
    iput v3, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    goto :goto_1

    .line 20
    :cond_6
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected leftover bits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/imaging/formats/bmp/h;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/f;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    shl-int v1, v2, v0

    sub-int/2addr v1, v2

    .line 21
    iget v2, p0, Lorg/apache/commons/imaging/formats/bmp/h;->g:I

    rsub-int/lit8 v3, v0, 0x8

    shr-int v3, v2, v3

    and-int/2addr v1, v3

    shl-int/2addr v2, v0

    and-int/lit16 v2, v2, 0xff

    .line 22
    iput v2, p0, Lorg/apache/commons/imaging/formats/bmp/h;->g:I

    .line 23
    iget v2, p0, Lorg/apache/commons/imaging/formats/bmp/h;->f:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/imaging/formats/bmp/h;->f:I

    .line 24
    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/bmp/f;->a(I)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/h;->f:I

    .line 2
    :goto_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    const-string v1, "Pixel"

    const-string v2, "BMP Image Data"

    invoke-static {v1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 4
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/h;->e:I

    goto :goto_0

    :cond_0
    return-void
.end method
