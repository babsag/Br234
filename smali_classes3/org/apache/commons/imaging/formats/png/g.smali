.class Lorg/apache/commons/imaging/formats/png/g;
.super Lorg/apache/commons/imaging/formats/png/e;
.source "ScanExpediterSimple.java"


# direct methods
.method constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/imaging/formats/png/e;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/png/e;->h:I

    iget v1, p0, Lorg/apache/commons/imaging/formats/png/e;->a:I

    mul-int v0, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/png/e;->b(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Lorg/apache/commons/imaging/formats/png/e;->b:I

    if-ge v3, v4, :cond_1

    .line 4
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/png/e;->c:Ljava/io/InputStream;

    iget v5, p0, Lorg/apache/commons/imaging/formats/png/e;->g:I

    invoke-virtual {p0, v4, v0, v2, v5}, Lorg/apache/commons/imaging/formats/png/e;->c(Ljava/io/InputStream;I[BI)[B

    move-result-object v2

    .line 5
    new-instance v4, Lorg/apache/commons/imaging/formats/png/a;

    iget v5, p0, Lorg/apache/commons/imaging/formats/png/e;->h:I

    iget v6, p0, Lorg/apache/commons/imaging/formats/png/e;->f:I

    invoke-direct {v4, v2, v5, v6}, Lorg/apache/commons/imaging/formats/png/a;-><init>([BII)V

    const/4 v5, 0x0

    .line 6
    :goto_1
    iget v6, p0, Lorg/apache/commons/imaging/formats/png/e;->a:I

    if-ge v5, v6, :cond_0

    .line 7
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/imaging/formats/png/e;->f(Lorg/apache/commons/imaging/formats/png/a;I)I

    move-result v6

    .line 8
    iget-object v7, p0, Lorg/apache/commons/imaging/formats/png/e;->d:Ljava/awt/image/BufferedImage;

    invoke-virtual {v7, v5, v3, v6}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
