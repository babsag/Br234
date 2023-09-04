.class Lorg/apache/commons/imaging/common/itu_t4/b;
.super Ljava/io/InputStream;
.source "BitInputStreamFlexible.java"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private b:I

.field private c:I

.field private d:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->c:I

    return-void
.end method

.method public final b(I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p1, v0, :cond_6

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    if-lt p1, v0, :cond_0

    shl-int v3, v2, v0

    sub-int/2addr v3, v2

    .line 2
    iget v4, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->b:I

    and-int/2addr v3, v4

    sub-int/2addr p1, v0

    .line 3
    iput v1, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->c:I

    move v1, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    .line 4
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->c:I

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    .line 5
    iget v3, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->b:I

    shr-int v0, v3, v0

    and-int/2addr p1, v0

    move v1, p1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    const-string v0, "couldn\'t read bits"

    const-wide/16 v3, 0x1

    const/16 v5, 0x8

    if-lt p1, v5, :cond_3

    .line 6
    iget-object v5, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->a:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->b:I

    if-ltz v5, :cond_2

    .line 7
    iget-wide v6, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->d:J

    add-long/2addr v6, v3

    iput-wide v6, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->d:J

    shl-int/lit8 v0, v1, 0x8

    and-int/lit16 v1, v5, 0xff

    or-int/2addr v1, v0

    add-int/lit8 p1, p1, -0x8

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-lez p1, :cond_5

    .line 9
    iget-object v5, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->a:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->b:I

    if-ltz v5, :cond_4

    .line 10
    iget-wide v6, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->d:J

    add-long/2addr v6, v3

    iput-wide v6, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->d:J

    rsub-int/lit8 v0, p1, 0x8

    .line 11
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->c:I

    shl-int/2addr v1, p1

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    shr-int v0, v5, v0

    and-int/2addr p1, v0

    or-int/2addr v1, p1

    goto :goto_1

    .line 12
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return v1

    .line 13
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "BitInputStream: unknown error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->c:I

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/b;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BitInputStream: incomplete bit read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
