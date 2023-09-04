.class Lorg/apache/commons/imaging/formats/pnm/e;
.super Ljava/lang/Object;
.source "PbmWriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/pnm/h;


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pnm/e;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p3, 0x50

    .line 1
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-boolean p3, p0, Lorg/apache/commons/imaging/formats/pnm/e;->a:Z

    if-eqz p3, :cond_0

    const/16 p3, 0x34

    goto :goto_0

    :cond_0
    const/16 p3, 0x31

    :goto_0
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    const/16 p3, 0x20

    .line 3
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 4
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 7
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    const/16 v2, 0xa

    .line 9
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_4

    .line 10
    invoke-virtual {p1, v6, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v7

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v7, 0x8

    and-int/lit16 v9, v9, 0xff

    shr-int/2addr v7, v2

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 11
    div-int/lit8 v8, v8, 0x3

    const/16 v7, 0x7f

    if-le v8, v7, :cond_1

    const/4 v7, 0x0

    goto :goto_3

    :cond_1
    const/4 v7, 0x1

    .line 12
    :goto_3
    iget-boolean v8, p0, Lorg/apache/commons/imaging/formats/pnm/e;->a:Z

    if-eqz v8, :cond_2

    shl-int/lit8 v4, v4, 0x1

    and-int/lit8 v7, v7, 0x1

    or-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x8

    if-lt v5, v7, :cond_3

    int-to-byte v4, v4

    .line 13
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_4

    .line 14
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 15
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 16
    :cond_4
    iget-boolean v6, p0, Lorg/apache/commons/imaging/formats/pnm/e;->a:Z

    if-eqz v6, :cond_5

    if-lez v5, :cond_5

    rsub-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    int-to-byte v4, v4

    .line 17
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method
