.class public Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;
.super Lorg/apache/commons/imaging/common/bytesource/ByteSource;
.source "ByteSourceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;,
        Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;
    }
.end annotation


# instance fields
.field private final b:Ljava/io/InputStream;

.field private c:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

.field private d:[B

.field private e:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->e:J

    .line 3
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->b:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->d()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->c()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object p0

    return-object p0
.end method

.method private c()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->c:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->d()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->c:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->c:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    return-object v0
.end method

.method private d()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->d:[B

    const/16 v1, 0x400

    if-nez v0, :cond_0

    new-array v0, v1, [B

    .line 2
    iput-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->d:[B

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->d:[B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return-object v3

    :cond_1
    if-ge v0, v1, :cond_2

    .line 4
    new-array v1, v0, [B

    .line 5
    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->d:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;[B)V

    return-object v0

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->d:[B

    .line 8
    iput-object v3, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->d:[B

    .line 9
    new-instance v1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;[B)V

    return-object v1
.end method


# virtual methods
.method public getAll()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->c()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 4
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;->a()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$b;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getBlock(JI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    if-ltz p3, :cond_2

    int-to-long v2, p3

    add-long/2addr v2, p1

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->getLength()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_2

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 3
    invoke-static {v0, p1, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 4
    new-array p1, p3, [B

    const/4 p2, 0x0

    :cond_0
    sub-int v1, p3, p2

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    add-int/2addr p2, v1

    if-lt p2, p3, :cond_0

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not read block."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read block (block start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", block length: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data length: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->e:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inputstream: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$c;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$a;)V

    return-object v0
.end method

.method public getLength()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-wide v4, v2

    :goto_0
    const-wide/16 v6, 0x400

    .line 3
    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-lez v1, :cond_1

    add-long/2addr v4, v6

    goto :goto_0

    .line 4
    :cond_1
    iput-wide v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->e:J

    return-wide v4
.end method
