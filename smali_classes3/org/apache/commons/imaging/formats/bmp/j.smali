.class abstract Lorg/apache/commons/imaging/formats/bmp/j;
.super Lorg/apache/commons/imaging/formats/bmp/f;
.source "PixelParserSimple.java"


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/f;-><init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V

    return-void
.end method


# virtual methods
.method public b(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/a;->h:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/f;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/a;->g:I

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/bmp/j;->c()I

    move-result v2

    .line 4
    invoke-virtual {p1, v1, v0, v2}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/bmp/j;->d()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract c()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
