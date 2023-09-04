.class Lorg/apache/commons/imaging/formats/bmp/g;
.super Lorg/apache/commons/imaging/formats/bmp/j;
.source "PixelParserBitFields.java"


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:I


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/j;-><init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V

    .line 2
    iget p2, p1, Lorg/apache/commons/imaging/formats/bmp/a;->q:I

    iput p2, p0, Lorg/apache/commons/imaging/formats/bmp/g;->i:I

    .line 3
    iget p3, p1, Lorg/apache/commons/imaging/formats/bmp/a;->r:I

    iput p3, p0, Lorg/apache/commons/imaging/formats/bmp/g;->j:I

    .line 4
    iget v0, p1, Lorg/apache/commons/imaging/formats/bmp/a;->s:I

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/g;->k:I

    .line 5
    iget p1, p1, Lorg/apache/commons/imaging/formats/bmp/a;->t:I

    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/g;->l:I

    .line 6
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/bmp/g;->e(I)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/imaging/formats/bmp/g;->e:I

    .line 7
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/bmp/g;->e(I)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/imaging/formats/bmp/g;->f:I

    .line 8
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/bmp/g;->e(I)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/imaging/formats/bmp/g;->g:I

    if-eqz p1, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/bmp/g;->e(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/g;->h:I

    return-void
.end method

.method private e(I)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, p1, 0x1

    const v3, 0x7fffffff

    if-nez v2, :cond_1

    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v2, p1, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    rsub-int/lit8 p1, v0, 0x8

    sub-int/2addr v1, p1

    return v1
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

    const/16 v1, 0xff

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eq v0, v4, :cond_3

    const-string v5, "BMP Image Data"

    const-string v6, "Pixel"

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/16 v7, 0x20

    if-ne v0, v7, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v6, v0, v5, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 3
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/g;->m:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/g;->m:I

    goto :goto_0

    .line 4
    :cond_0
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

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v6, v0, v5, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read3Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 6
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/g;->m:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/g;->m:I

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v6, v0, v5, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 8
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/g;->m:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/g;->m:I

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->c:[B

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/g;->m:I

    add-int/lit8 v6, v5, 0x0

    aget-byte v0, v0, v6

    and-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    .line 10
    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/g;->m:I

    .line 11
    :goto_0
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/g;->i:I

    and-int/2addr v5, v0

    .line 12
    iget v6, p0, Lorg/apache/commons/imaging/formats/bmp/g;->j:I

    and-int/2addr v6, v0

    .line 13
    iget v7, p0, Lorg/apache/commons/imaging/formats/bmp/g;->k:I

    and-int/2addr v7, v0

    .line 14
    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/g;->l:I

    if-eqz v8, :cond_4

    and-int v1, v8, v0

    .line 15
    :cond_4
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/g;->e:I

    if-ltz v0, :cond_5

    shr-int v0, v5, v0

    goto :goto_1

    :cond_5
    neg-int v0, v0

    shl-int v0, v5, v0

    .line 16
    :goto_1
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/g;->f:I

    if-ltz v5, :cond_6

    shr-int v5, v6, v5

    goto :goto_2

    :cond_6
    neg-int v5, v5

    shl-int v5, v6, v5

    .line 17
    :goto_2
    iget v6, p0, Lorg/apache/commons/imaging/formats/bmp/g;->g:I

    if-ltz v6, :cond_7

    shr-int v6, v7, v6

    goto :goto_3

    :cond_7
    neg-int v6, v6

    shl-int v6, v7, v6

    .line 18
    :goto_3
    iget v7, p0, Lorg/apache/commons/imaging/formats/bmp/g;->h:I

    if-ltz v7, :cond_8

    shr-int/2addr v1, v7

    goto :goto_4

    :cond_8
    neg-int v7, v7

    shl-int/2addr v1, v7

    :goto_4
    shl-int/2addr v1, v2

    shl-int/2addr v0, v3

    or-int/2addr v0, v1

    shl-int/lit8 v1, v5, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v6, 0x0

    or-int/2addr v0, v1

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

    .line 1
    :goto_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/g;->m:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    const-string v1, "Pixel"

    const-string v2, "BMP Image Data"

    invoke-static {v1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 3
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/g;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/g;->m:I

    goto :goto_0

    :cond_0
    return-void
.end method
