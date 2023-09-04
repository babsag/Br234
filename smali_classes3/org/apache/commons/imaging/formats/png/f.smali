.class Lorg/apache/commons/imaging/formats/png/f;
.super Lorg/apache/commons/imaging/formats/png/e;
.source "ScanExpediterInterlaced.java"


# static fields
.field private static final l:[I

.field private static final m:[I

.field private static final n:[I

.field private static final o:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/imaging/formats/png/f;->l:[I

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/imaging/formats/png/f;->m:[I

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/imaging/formats/png/f;->n:[I

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/imaging/formats/png/f;->o:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
    .end array-data
.end method

.method constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/imaging/formats/png/e;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    return-void
.end method

.method private i(IILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p4, p5}, Lorg/apache/commons/imaging/formats/png/e;->f(Lorg/apache/commons/imaging/formats/png/a;I)I

    move-result p4

    .line 2
    invoke-virtual {p3, p1, p2, p4}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x7

    if-gt v1, v2, :cond_2

    const/4 v2, 0x0

    .line 1
    sget-object v3, Lorg/apache/commons/imaging/formats/png/f;->l:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    .line 2
    :goto_1
    iget v5, p0, Lorg/apache/commons/imaging/formats/png/e;->b:I

    if-ge v3, v5, :cond_1

    .line 3
    sget-object v5, Lorg/apache/commons/imaging/formats/png/f;->m:[I

    aget v6, v5, v4

    const/4 v7, 0x0

    .line 4
    iget v8, p0, Lorg/apache/commons/imaging/formats/png/e;->a:I

    if-ge v6, v8, :cond_0

    .line 5
    aget v5, v5, v4

    sub-int/2addr v8, v5

    sub-int/2addr v8, v0

    sget-object v5, Lorg/apache/commons/imaging/formats/png/f;->o:[I

    aget v5, v5, v4

    div-int/2addr v8, v5

    add-int/2addr v8, v0

    .line 6
    iget v5, p0, Lorg/apache/commons/imaging/formats/png/e;->h:I

    mul-int v5, v5, v8

    .line 7
    invoke-virtual {p0, v5}, Lorg/apache/commons/imaging/formats/png/e;->b(I)I

    move-result v5

    .line 8
    iget-object v8, p0, Lorg/apache/commons/imaging/formats/png/e;->c:Ljava/io/InputStream;

    iget v9, p0, Lorg/apache/commons/imaging/formats/png/e;->g:I

    invoke-virtual {p0, v8, v5, v2, v9}, Lorg/apache/commons/imaging/formats/png/e;->c(Ljava/io/InputStream;I[BI)[B

    move-result-object v2

    .line 9
    new-instance v11, Lorg/apache/commons/imaging/formats/png/a;

    iget v5, p0, Lorg/apache/commons/imaging/formats/png/e;->h:I

    iget v8, p0, Lorg/apache/commons/imaging/formats/png/e;->f:I

    invoke-direct {v11, v2, v5, v8}, Lorg/apache/commons/imaging/formats/png/a;-><init>([BII)V

    move v12, v6

    const/4 v13, 0x0

    .line 10
    :goto_2
    iget v5, p0, Lorg/apache/commons/imaging/formats/png/e;->a:I

    if-ge v12, v5, :cond_0

    .line 11
    iget-object v8, p0, Lorg/apache/commons/imaging/formats/png/e;->d:Ljava/awt/image/BufferedImage;

    move-object v5, p0

    move v6, v12

    move v7, v3

    move-object v9, v11

    move v10, v13

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/imaging/formats/png/f;->i(IILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/a;I)V

    .line 12
    sget-object v5, Lorg/apache/commons/imaging/formats/png/f;->o:[I

    aget v5, v5, v4

    add-int/2addr v12, v5

    add-int/2addr v13, v0

    goto :goto_2

    .line 13
    :cond_0
    sget-object v5, Lorg/apache/commons/imaging/formats/png/f;->n:[I

    aget v5, v5, v4

    add-int/2addr v3, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
