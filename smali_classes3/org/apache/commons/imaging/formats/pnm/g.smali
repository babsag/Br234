.class Lorg/apache/commons/imaging/formats/pnm/g;
.super Ljava/lang/Object;
.source "PgmWriter.java"

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
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pnm/g;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)V
    .locals 9
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
    iget-boolean p3, p0, Lorg/apache/commons/imaging/formats/pnm/g;->a:Z

    if-eqz p3, :cond_0

    const/16 p3, 0x35

    goto :goto_0

    :cond_0
    const/16 p3, 0x32

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

    .line 9
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0xff

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    const/16 v3, 0xa

    .line 11
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_2

    .line 12
    invoke-virtual {p1, v5, v4}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    shr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v2

    shr-int/lit8 v8, v6, 0x8

    and-int/2addr v8, v2

    shr-int/2addr v6, v3

    and-int/2addr v6, v2

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    .line 13
    div-int/lit8 v7, v7, 0x3

    .line 14
    iget-boolean v6, p0, Lorg/apache/commons/imaging/formats/pnm/g;->a:Z

    if-eqz v6, :cond_1

    int-to-byte v6, v7

    .line 15
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 16
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 17
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
