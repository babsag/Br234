.class abstract Lorg/apache/commons/imaging/formats/png/e;
.super Ljava/lang/Object;
.source "ScanExpediter.java"


# instance fields
.field final a:I

.field final b:I

.field final c:Ljava/io/InputStream;

.field final d:Ljava/awt/image/BufferedImage;

.field final e:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field final f:I

.field final g:I

.field final h:I

.field final i:Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

.field final j:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

.field final k:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;


# direct methods
.method constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/formats/png/e;->a:I

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/formats/png/e;->b:I

    .line 4
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/png/e;->c:Ljava/io/InputStream;

    .line 5
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/png/e;->d:Ljava/awt/image/BufferedImage;

    .line 6
    iput-object p5, p0, Lorg/apache/commons/imaging/formats/png/e;->e:Lorg/apache/commons/imaging/formats/png/PngColorType;

    .line 7
    iput p6, p0, Lorg/apache/commons/imaging/formats/png/e;->f:I

    .line 8
    invoke-virtual {p0, p7}, Lorg/apache/commons/imaging/formats/png/e;->b(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/e;->g:I

    .line 9
    iput p7, p0, Lorg/apache/commons/imaging/formats/png/e;->h:I

    .line 10
    iput-object p8, p0, Lorg/apache/commons/imaging/formats/png/e;->i:Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    .line 11
    iput-object p9, p0, Lorg/apache/commons/imaging/formats/png/e;->j:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    .line 12
    iput-object p10, p0, Lorg/apache/commons/imaging/formats/png/e;->k:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final b(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x7

    .line 1
    div-int/lit8 p1, p1, 0x8

    return p1
.end method

.method c(Ljava/io/InputStream;I[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 2
    invoke-static {}, Lorg/apache/commons/imaging/formats/png/b;->values()[Lorg/apache/commons/imaging/formats/png/b;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v1, "scanline"

    const-string v2, "PNG: missing image data"

    .line 3
    invoke-static {v1, p1, p2, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    .line 4
    invoke-static {}, Lorg/apache/commons/imaging/formats/png/b;->values()[Lorg/apache/commons/imaging/formats/png/b;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p0, p2, p1, p3, p4}, Lorg/apache/commons/imaging/formats/png/e;->h(Lorg/apache/commons/imaging/formats/png/b;[B[BI)[B

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PNG: unknown filterType: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "PNG: missing filter type"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final d(IIII)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    and-int/lit16 p2, p4, 0xff

    shl-int/lit8 p2, p2, 0x0

    or-int/2addr p1, p2

    return p1
.end method

.method final e(III)I
    .locals 1

    const/16 v0, 0xff

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/png/e;->d(IIII)I

    move-result p1

    return p1
.end method

.method f(Lorg/apache/commons/imaging/formats/png/a;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/png/e$a;->a:[I

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/e;->e:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    .line 2
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/a;->b(II)I

    move-result v0

    .line 3
    invoke-virtual {p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/a;->b(II)I

    move-result v1

    .line 4
    invoke-virtual {p1, p2, v3}, Lorg/apache/commons/imaging/formats/png/a;->b(II)I

    move-result v2

    .line 5
    invoke-virtual {p1, p2, v4}, Lorg/apache/commons/imaging/formats/png/a;->b(II)I

    move-result p1

    .line 6
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/e;->j:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 8
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/e;->j:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 9
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/e;->j:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v2

    .line 10
    :cond_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/e;->d(IIII)I

    move-result p1

    return p1

    .line 11
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PNG: unknown color type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/e;->e:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/a;->b(II)I

    move-result v0

    .line 13
    invoke-virtual {p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/a;->b(II)I

    move-result p1

    .line 14
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/e;->j:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz p2, :cond_3

    .line 15
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 16
    :cond_3
    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/apache/commons/imaging/formats/png/e;->d(IIII)I

    move-result p1

    return p1

    .line 17
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/e;->i:Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/a;->a(II)I

    move-result p1

    .line 19
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/e;->i:Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->getRGB(I)I

    move-result p2

    .line 20
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/e;->k:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    :cond_5
    return p2

    .line 22
    :cond_6
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "A PLTE chunk is required for an indexed color type."

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_7
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/a;->b(II)I

    move-result v0

    .line 24
    invoke-virtual {p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/a;->b(II)I

    move-result v1

    .line 25
    invoke-virtual {p1, p2, v3}, Lorg/apache/commons/imaging/formats/png/a;->b(II)I

    move-result p1

    .line 26
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/imaging/formats/png/e;->e(III)I

    move-result p2

    .line 27
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/e;->k:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    if-eqz v2, :cond_8

    const/4 v3, -0x1

    .line 28
    invoke-virtual {v2, p2, v3}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    .line 29
    :cond_8
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/e;->j:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz v2, :cond_9

    const/high16 v3, -0x1000000

    and-int/2addr p2, v3

    shr-int/lit8 p2, p2, 0x18

    .line 30
    invoke-virtual {v2, v0}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 31
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/e;->j:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {v2, v1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 32
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/e;->j:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result p1

    .line 33
    invoke-virtual {p0, p2, v0, v1, p1}, Lorg/apache/commons/imaging/formats/png/e;->d(IIII)I

    move-result p2

    :cond_9
    return p2

    .line 34
    :cond_a
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/a;->b(II)I

    move-result p1

    .line 35
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/e;->j:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz p2, :cond_b

    .line 36
    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result p1

    .line 37
    :cond_b
    invoke-virtual {p0, p1, p1, p1}, Lorg/apache/commons/imaging/formats/png/e;->e(III)I

    move-result p2

    .line 38
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/e;->k:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    if-eqz v0, :cond_c

    .line 39
    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    :cond_c
    return p2
.end method

.method g(Lorg/apache/commons/imaging/formats/png/b;I)Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/png/e$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;-><init>(I)V

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;-><init>(I)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterUp;

    invoke-direct {p1}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterUp;-><init>()V

    return-object p1

    .line 5
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterSub;

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterSub;-><init>(I)V

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterNone;

    invoke-direct {p1}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterNone;-><init>()V

    return-object p1
.end method

.method h(Lorg/apache/commons/imaging/formats/png/b;[B[BI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p4}, Lorg/apache/commons/imaging/formats/png/e;->g(Lorg/apache/commons/imaging/formats/png/b;I)Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;

    move-result-object p1

    .line 2
    array-length p4, p2

    new-array p4, p4, [B

    .line 3
    invoke-interface {p1, p2, p4, p3}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;->unfilter([B[B[B)V

    return-object p4
.end method
