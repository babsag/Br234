.class public Lorg/apache/commons/imaging/common/PackBits;
.super Ljava/lang/Object;
.source "PackBits.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([BI)I
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, -0x1

    if-lt p2, v0, :cond_0

    return v1

    .line 2
    :cond_0
    aget-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 3
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    .line 4
    aget-byte v2, p1, p2

    if-ne v2, v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private b([BI)I
    .locals 3

    .line 1
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    if-ne v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p2

    return v1
.end method


# virtual methods
.method public compress([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/common/a;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/a;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 3
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/imaging/common/PackBits;->a([BI)I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v2, :cond_1

    .line 4
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/imaging/common/PackBits;->b([BI)I

    move-result v3

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    neg-int v4, v4

    .line 6
    invoke-virtual {v0, v4}, Lorg/apache/commons/imaging/common/a;->write(I)V

    .line 7
    aget-byte v4, p1, v2

    invoke-virtual {v0, v4}, Lorg/apache/commons/imaging/common/a;->write(I)V

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    sub-int v5, v3, v2

    if-lez v3, :cond_2

    .line 8
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/imaging/common/PackBits;->b([BI)I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_2

    add-int v7, v2, v5

    add-int/2addr v7, v6

    .line 9
    invoke-direct {p0, p1, v7}, Lorg/apache/commons/imaging/common/PackBits;->a([BI)I

    move-result v6

    if-eq v6, v7, :cond_2

    sub-int v5, v6, v2

    move v3, v6

    :cond_2
    if-gez v3, :cond_3

    .line 10
    array-length v3, p1

    sub-int v5, v3, v2

    .line 11
    :cond_3
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 12
    invoke-virtual {v0, v4}, Lorg/apache/commons/imaging/common/a;->write(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 13
    aget-byte v5, p1, v2

    invoke-virtual {v0, v5}, Lorg/apache/commons/imaging/common/a;->write(I)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/a;->a()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method public decompress([BI)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_6

    .line 2
    array-length v4, p1

    if-ge v3, v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget-byte v3, p1, v3

    if-ltz v3, :cond_0

    const/16 v5, 0x7f

    if-gt v3, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 4
    aget-byte v4, p1, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    :cond_0
    const/16 v5, -0x7f

    if-lt v3, v5, :cond_2

    const/4 v5, -0x1

    if-gt v3, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 5
    aget-byte v4, p1, v4

    neg-int v3, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_1

    .line 6
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    const/16 v5, -0x80

    if-eq v3, v5, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    .line 7
    :cond_4
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Packbits: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_5
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tiff: Unpack bits source exhausted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", done + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expected + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
