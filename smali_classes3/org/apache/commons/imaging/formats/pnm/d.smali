.class Lorg/apache/commons/imaging/formats/pnm/d;
.super Lorg/apache/commons/imaging/formats/pnm/a;
.source "PbmFileInfo.java"


# instance fields
.field private d:I

.field private e:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/pnm/a;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public c()Lorg/apache/commons/imaging/ImageFormat;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "PBM: portable bitmap fileformat"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "image/x-portable-bitmap"

    return-object v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/d;->e:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ltz p1, :cond_0

    and-int/lit16 p1, p1, 0xff

    .line 3
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/d;->d:I

    .line 4
    iget p1, p0, Lorg/apache/commons/imaging/formats/pnm/d;->e:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/d;->e:I

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PBM: Unexpected EOF"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget p1, p0, Lorg/apache/commons/imaging/formats/pnm/d;->d:I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v1

    shl-int/2addr p1, v1

    .line 7
    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/d;->d:I

    .line 8
    iget p1, p0, Lorg/apache/commons/imaging/formats/pnm/d;->e:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/imaging/formats/pnm/d;->e:I

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    if-ne v0, v1, :cond_3

    const/high16 p1, -0x1000000

    return p1

    .line 9
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PBM: bad bit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Lorg/apache/commons/imaging/formats/pnm/k;)I
    .locals 3
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

    if-nez p1, :cond_0

    const/high16 p1, -0x1000000

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PBM: bad bit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/d;->d:I

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/d;->e:I

    return-void
.end method
