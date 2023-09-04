.class public final Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;
.super Ljava/lang/Object;
.source "MyLzwDecompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;
    }
.end annotation


# instance fields
.field private final a:[[B

.field private b:I

.field private final c:I

.field private d:I

.field private final e:Ljava/nio/ByteOrder;

.field private final f:Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;

.field private final g:I

.field private final h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(ILjava/nio/ByteOrder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;-><init>(ILjava/nio/ByteOrder;Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;)V

    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteOrder;Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->d:I

    .line 4
    iput-object p3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->f:Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;

    .line 5
    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->e:Ljava/nio/ByteOrder;

    .line 6
    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->c:I

    const/16 p2, 0x1000

    new-array p2, p2, [[B

    .line 7
    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->a:[[B

    const/4 p2, 0x1

    shl-int p1, p2, p1

    .line 8
    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->g:I

    add-int/lit8 p2, p1, 0x1

    .line 9
    iput p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->h:I

    if-eqz p3, :cond_0

    .line 10
    invoke-interface {p3, p1, p2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;->init(II)V

    .line 11
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->h()V

    return-void
.end method

.method private a([B)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->d:I

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->b:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->a:[[B

    aput-object p1, v1, v0

    add-int/2addr v0, v2

    .line 3
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->d:I

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->c()V

    return-void
.end method

.method private b([BB)[B
    .locals 4

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    .line 2
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    .line 3
    aput-byte p2, v1, v0

    return-object v1
.end method

.method private c()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->b:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 2
    iget-boolean v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->j:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 3
    :cond_0
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->d:I

    if-ne v1, v0, :cond_1

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->g()V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->c:I

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->d:I

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->b:I

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->g()V

    return-void
.end method

.method private e([B)B
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-byte p1, p1, v0

    return p1
.end method

.method private f(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->b:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->readBits(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->f:Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor$Listener;->code(I)V

    :cond_0
    return p1
.end method

.method private g()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->b:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->b:I

    :cond_0
    return-void
.end method

.method private h()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->c:I

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->b:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int v0, v2, v0

    .line 2
    iget-object v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->a:[[B

    array-length v3, v3

    const/4 v4, 0x0

    if-gt v0, v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->a:[[B

    new-array v5, v2, [B

    int-to-byte v6, v1

    aput-byte v6, v5, v4

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->a:[[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Invalid Lzw table length [%d]; entries count is [%d]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private i(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->d:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private j(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->d:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->a:[[B

    aget-object p1, v0, p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " codes: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->d:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " code_size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", table: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->a:[[B

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k(Ljava/io/OutputStream;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->i:I

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->i:I

    return-void
.end method


# virtual methods
.method public decompress(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;

    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->e:Ljava/nio/ByteOrder;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 2
    iget-boolean p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->j:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->setTiffLZWMode()V

    .line 4
    :cond_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 5
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->d()V

    const/4 v1, -0x1

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->f(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->h:I

    if-eq v2, v3, :cond_6

    .line 7
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->g:I

    if-ne v2, v3, :cond_4

    .line 8
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->d()V

    .line 9
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->i:I

    if-lt v1, p2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->f(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;)I

    move-result v1

    .line 11
    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->h:I

    if-ne v1, v2, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->j(I)[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->k(Ljava/io/OutputStream;[B)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->i(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->j(I)[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->k(Ljava/io/OutputStream;[B)V

    .line 15
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->j(I)[B

    move-result-object v1

    .line 16
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->j(I)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->e([B)B

    move-result v3

    .line 17
    invoke-direct {p0, v1, v3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->b([BB)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->a([B)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->j(I)[B

    move-result-object v3

    .line 19
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->j(I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->e([B)B

    move-result v1

    .line 20
    invoke-direct {p0, v3, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->b([BB)[B

    move-result-object v1

    .line 21
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->k(Ljava/io/OutputStream;[B)V

    .line 22
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->a([B)V

    :goto_0
    move v1, v2

    .line 23
    :goto_1
    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->i:I

    if-lt v2, p2, :cond_1

    .line 24
    :cond_6
    :goto_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public setTiffLZWMode()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->j:Z

    return-void
.end method
