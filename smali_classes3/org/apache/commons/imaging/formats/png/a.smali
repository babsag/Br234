.class Lorg/apache/commons/imaging/formats/png/a;
.super Ljava/lang/Object;
.source "BitParser.java"


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/a;->a:[B

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/formats/png/a;->b:I

    .line 4
    iput p3, p0, Lorg/apache/commons/imaging/formats/png/a;->c:I

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/png/a;->b:I

    mul-int v0, v0, p1

    .line 2
    iget p1, p0, Lorg/apache/commons/imaging/formats/png/a;->c:I

    mul-int p2, p2, p1

    add-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x3

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/png/a;->a:[B

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    .line 4
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/png/a;->a:[B

    aget-byte p2, v3, p2

    and-int/lit16 p2, p2, 0xff

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, p1

    sub-int/2addr v1, v0

    shr-int/2addr p2, v1

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    and-int/2addr p1, p2

    return p1

    :cond_1
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/png/a;->a:[B

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1

    .line 6
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PNG: bad BitDepth: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/commons/imaging/formats/png/a;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/png/a;->a(II)I

    move-result p1

    .line 2
    iget p2, p0, Lorg/apache/commons/imaging/formats/png/a;->c:I

    rsub-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_0

    mul-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    shl-int p2, v0, p2

    sub-int/2addr p2, v0

    .line 3
    div-int/2addr p1, p2

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    neg-int p2, v0

    shr-int/2addr p1, p2

    :cond_1
    :goto_0
    and-int/lit16 p1, p1, 0xff

    return p1
.end method
