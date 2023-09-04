.class Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;
.super Ljava/io/InputStream;
.source "ByteSourceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

.field private b:Z

.field private c:I

.field final synthetic d:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;


# direct methods
.method private constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->d:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->b:Z

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->d:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-static {v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->b(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->b:Z

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    if-eqz v0, :cond_2

    iget v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    iget-object v3, v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a:[B

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    if-nez v0, :cond_3

    return v1

    .line 9
    :cond_3
    iget v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    iget-object v0, v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a:[B

    array-length v3, v0

    if-lt v2, v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 10
    iput v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "array"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_6

    .line 12
    array-length v0, p1

    if-gt p2, v0, :cond_6

    if-ltz p3, :cond_6

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_6

    if-ltz v0, :cond_6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 13
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 14
    iget-boolean v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->b:Z

    if-eqz v1, :cond_1

    return v2

    .line 15
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->d:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-static {v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->b(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->b:Z

    .line 17
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    if-eqz v1, :cond_3

    iget v3, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    iget-object v4, v1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a:[B

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 18
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    .line 19
    iput v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    .line 20
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    if-nez v0, :cond_4

    return v2

    .line 21
    :cond_4
    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    iget-object v0, v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a:[B

    array-length v3, v0

    if-lt v1, v3, :cond_5

    return v2

    .line 22
    :cond_5
    array-length v0, v0

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 23
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    iget-object v0, v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a:[B

    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    return p3

    .line 25
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    move-wide v2, p1

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_6

    .line 1
    iget-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    if-nez v4, :cond_2

    .line 2
    iget-boolean v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->b:Z

    if-eqz v4, :cond_1

    const-wide/16 p1, -0x1

    return-wide p1

    .line 3
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->d:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-static {v4}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->b(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    const/4 v4, 0x1

    .line 4
    iput-boolean v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->b:Z

    .line 5
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    if-eqz v4, :cond_3

    iget v5, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    iget-object v6, v4, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a:[B

    array-length v6, v6

    if-lt v5, v6, :cond_3

    .line 6
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    const/4 v4, 0x0

    .line 7
    iput v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    .line 8
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    if-nez v4, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    iget v5, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    iget-object v4, v4, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a:[B

    array-length v4, v4

    if-lt v5, v4, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v4, 0x400

    .line 10
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    iget-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->a:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a:[B

    array-length v4, v4

    iget v6, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 11
    iget v5, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;->c:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_6
    :goto_1
    sub-long/2addr p1, v2

    return-wide p1
.end method
