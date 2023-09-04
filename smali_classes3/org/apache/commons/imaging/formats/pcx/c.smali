.class Lorg/apache/commons/imaging/formats/pcx/c;
.super Ljava/lang/Object;
.source "RleWriter.java"


# instance fields
.field private final a:Z

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/c;->b:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/apache/commons/imaging/formats/pcx/c;->c:I

    .line 4
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pcx/c;->a:Z

    return-void
.end method


# virtual methods
.method a(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/pcx/c;->c:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    const/16 v2, 0xc0

    if-ne v0, v1, :cond_0

    .line 2
    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/c;->b:I

    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    or-int/2addr v0, v2

    .line 4
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 5
    iget v0, p0, Lorg/apache/commons/imaging/formats/pcx/c;->b:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method b(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/pcx/c;->a:Z

    if-eqz v0, :cond_3

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    .line 3
    iget v3, p0, Lorg/apache/commons/imaging/formats/pcx/c;->b:I

    if-ne v2, v3, :cond_0

    iget v4, p0, Lorg/apache/commons/imaging/formats/pcx/c;->c:I

    const/16 v5, 0x3f

    if-ge v4, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, Lorg/apache/commons/imaging/formats/pcx/c;->c:I

    goto :goto_2

    .line 5
    :cond_0
    iget v4, p0, Lorg/apache/commons/imaging/formats/pcx/c;->c:I

    const/4 v5, 0x1

    if-lez v4, :cond_2

    if-ne v4, v5, :cond_1

    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0xc0

    if-eq v6, v7, :cond_1

    .line 6
    invoke-virtual {p1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    or-int/lit16 v3, v4, 0xc0

    .line 7
    invoke-virtual {p1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 8
    iget v3, p0, Lorg/apache/commons/imaging/formats/pcx/c;->b:I

    invoke-virtual {p1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 9
    :cond_2
    :goto_1
    iput v2, p0, Lorg/apache/commons/imaging/formats/pcx/c;->b:I

    .line 10
    iput v5, p0, Lorg/apache/commons/imaging/formats/pcx/c;->c:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    :cond_4
    return-void
.end method
