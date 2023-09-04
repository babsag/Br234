.class Lorg/apache/commons/imaging/formats/pcx/b;
.super Ljava/lang/Object;
.source "RleReader.java"


# instance fields
.field private final a:Z

.field private b:I

.field private c:B


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pcx/b;->a:Z

    return-void
.end method


# virtual methods
.method a(Ljava/io/InputStream;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/pcx/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lorg/apache/commons/imaging/formats/pcx/b;->b:I

    array-length v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-byte v2, p0, Lorg/apache/commons/imaging/formats/pcx/b;->c:B

    invoke-static {p2, v1, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 4
    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/b;->b:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/imaging/formats/pcx/b;->b:I

    .line 5
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    const-string v1, "RleByte"

    const-string v2, "Error reading image data"

    .line 6
    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    and-int/lit16 v3, v1, 0xc0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_0

    and-int/lit8 v1, v1, 0x3f

    .line 7
    iput v1, p0, Lorg/apache/commons/imaging/formats/pcx/b;->b:I

    const-string v1, "RleValue"

    .line 8
    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Lorg/apache/commons/imaging/formats/pcx/b;->c:B

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 9
    iput v2, p0, Lorg/apache/commons/imaging/formats/pcx/b;->b:I

    .line 10
    iput-byte v1, p0, Lorg/apache/commons/imaging/formats/pcx/b;->c:B

    .line 11
    :goto_1
    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/b;->b:I

    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v2, v0, v1

    .line 12
    iget-byte v3, p0, Lorg/apache/commons/imaging/formats/pcx/b;->c:B

    invoke-static {p2, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 13
    iget v0, p0, Lorg/apache/commons/imaging/formats/pcx/b;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/b;->b:I

    move v0, v2

    goto :goto_0

    .line 14
    :cond_1
    :goto_2
    array-length v0, p2

    if-ge v1, v0, :cond_3

    .line 15
    array-length v0, p2

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/2addr v1, v0

    goto :goto_2

    .line 16
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Premature end of file reading image data"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method
