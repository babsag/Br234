.class Lorg/apache/commons/imaging/formats/pnm/f;
.super Lorg/apache/commons/imaging/formats/pnm/a;
.source "PgmFileInfo.java"


# instance fields
.field private final d:I

.field private final e:F

.field private final f:I


# direct methods
.method constructor <init>(IIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/pnm/a;-><init>(IIZ)V

    const-string p1, " is out of range [1;65535]"

    const-string p2, "PGM maxVal "

    if-lez p4, :cond_2

    const/16 p3, 0xff

    if-gt p4, p3, :cond_0

    const/high16 p1, 0x437f0000    # 255.0f

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/f;->e:F

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/f;->f:I

    goto :goto_0

    :cond_0
    const p3, 0xffff

    if-gt p4, p3, :cond_1

    const p1, 0x477fff00    # 65535.0f

    .line 4
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/f;->e:F

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/f;->f:I

    .line 6
    :goto_0
    iput p4, p0, Lorg/apache/commons/imaging/formats/pnm/f;->d:I

    return-void

    .line 7
    :cond_1
    new-instance p3, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 8
    :cond_2
    new-instance p3, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/f;->d:I

    return v0
.end method

.method public b()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public c()Lorg/apache/commons/imaging/ImageFormat;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "PGM: portable graymap file format"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "image/x-portable-graymap"

    return-object v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/f;->f:I

    invoke-static {p1, v0}, Lorg/apache/commons/imaging/formats/pnm/a;->l(Ljava/io/InputStream;I)I

    move-result p1

    .line 2
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/f;->e:F

    iget v1, p0, Lorg/apache/commons/imaging/formats/pnm/f;->d:I

    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/formats/pnm/a;->m(IFI)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v0, p1, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1
.end method

.method public h(Lorg/apache/commons/imaging/formats/pnm/k;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/k;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/f;->e:F

    iget v1, p0, Lorg/apache/commons/imaging/formats/pnm/f;->d:I

    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/formats/pnm/a;->m(IFI)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v0, p1, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
