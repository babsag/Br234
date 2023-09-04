.class abstract Lorg/apache/commons/imaging/formats/pnm/a;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field final a:I

.field final b:I

.field final c:Z


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/a;->a:I

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/formats/pnm/a;->b:I

    .line 4
    iput-boolean p3, p0, Lorg/apache/commons/imaging/formats/pnm/a;->c:Z

    return-void
.end method

.method static l(Ljava/io/InputStream;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PNM: Unexpected EOF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1
.end method

.method static m(IFI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p0, :cond_1

    if-le p0, p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    int-to-float p0, p0

    mul-float p0, p0, p1

    int-to-float p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 1
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Negative pixel values are invalid in PNM files"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract b()Lorg/apache/commons/imaging/ImageInfo$ColorType;
.end method

.method abstract c()Lorg/apache/commons/imaging/ImageFormat;
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract e()Ljava/lang/String;
.end method

.method abstract f()I
.end method

.method abstract g(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract h(Lorg/apache/commons/imaging/formats/pnm/k;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract i()Z
.end method

.method j()V
    .locals 0

    return-void
.end method

.method k(Lorg/apache/commons/imaging/common/ImageBuilder;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/pnm/a;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/k;

    invoke-direct {v0, p2}, Lorg/apache/commons/imaging/formats/pnm/k;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/a;->b:I

    if-ge p2, v2, :cond_3

    const/4 v2, 0x0

    .line 4
    :goto_1
    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/a;->a:I

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/pnm/a;->h(Lorg/apache/commons/imaging/formats/pnm/k;)I

    move-result v3

    .line 6
    invoke-virtual {p1, v2, p2, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/a;->j()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_2
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/a;->b:I

    if-ge v0, v2, :cond_3

    const/4 v2, 0x0

    .line 9
    :goto_3
    iget v3, p0, Lorg/apache/commons/imaging/formats/pnm/a;->a:I

    if-ge v2, v3, :cond_2

    .line 10
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/pnm/a;->g(Ljava/io/InputStream;)I

    move-result v3

    .line 11
    invoke-virtual {p1, v2, v0, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 12
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/a;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
