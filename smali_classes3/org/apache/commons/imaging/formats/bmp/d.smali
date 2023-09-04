.class Lorg/apache/commons/imaging/formats/bmp/d;
.super Ljava/lang/Object;
.source "BmpWriterPalette.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/bmp/c;


# instance fields
.field private final a:Lorg/apache/commons/imaging/palette/SimplePalette;

.field private final b:I


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/palette/SimplePalette;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/bmp/d;->a:Lorg/apache/commons/imaging/palette/SimplePalette;

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/d;->b:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p1

    const/16 v0, 0x10

    if-gt p1, v0, :cond_1

    const/4 p1, 0x4

    .line 6
    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/d;->b:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 7
    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/d;->b:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/awt/image/BufferedImage;)[B
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ltz v1, :cond_5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_2

    .line 4
    invoke-virtual {p1, v7, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v8

    const v9, 0xffffff

    and-int/2addr v8, v9

    .line 5
    iget-object v9, p0, Lorg/apache/commons/imaging/formats/bmp/d;->a:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {v9, v8}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v8

    .line 6
    iget v9, p0, Lorg/apache/commons/imaging/formats/bmp/d;->b:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    and-int/lit16 v8, v8, 0xff

    .line 7
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    shl-int/2addr v4, v9

    or-int/2addr v4, v8

    add-int/2addr v5, v9

    if-lt v5, v10, :cond_1

    and-int/lit16 v4, v4, 0xff

    .line 8
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    rsub-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 9
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    :cond_3
    :goto_3
    rem-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_4

    .line 11
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/d;->b:I

    return v0
.end method

.method public c(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/d;->a:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/d;->a:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {v2, v1}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v2

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v2, v0

    and-int/lit16 v2, v2, 0xff

    .line 3
    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 4
    invoke-virtual {p1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 5
    invoke-virtual {p1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/d;->a:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v0

    return v0
.end method
