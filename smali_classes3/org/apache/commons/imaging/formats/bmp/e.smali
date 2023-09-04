.class Lorg/apache/commons/imaging/formats/bmp/e;
.super Ljava/lang/Object;
.source "BmpWriterRgb.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/bmp/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/image/BufferedImage;)[B
    .locals 9

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

    :goto_0
    if-ltz v1, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_0

    .line 4
    invoke-virtual {p1, v5, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v6, v3

    and-int/lit16 v6, v6, 0xff

    .line 5
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 6
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 7
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 8
    :cond_0
    :goto_2
    rem-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public c(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
