.class Lorg/apache/commons/imaging/formats/bmp/i;
.super Lorg/apache/commons/imaging/formats/bmp/f;
.source "PixelParserRle.java"


# static fields
.field private static final e:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/imaging/formats/bmp/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/bmp/i;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/f;-><init>(Lorg/apache/commons/imaging/formats/bmp/a;[B[B)V

    return-void
.end method

.method private c(I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    new-array v0, v2, [I

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/bmp/f;->a(I)I

    move-result p1

    aput p1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    .line 3
    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/formats/bmp/f;->a(I)I

    move-result v3

    aput v3, v0, v1

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/bmp/f;->a(I)I

    move-result p1

    aput p1, v0, v2

    :goto_0
    return-object v0

    .line 5
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BMP RLE: bad BitsPerPixel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/bmp/f;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    iget v1, v1, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/f;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    .line 2
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BMP RLE: bad BitsPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/f;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e([IIIIIILorg/apache/commons/imaging/common/ImageBuilder;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    if-ltz p3, :cond_0

    if-ge p3, p5, :cond_0

    if-ltz p4, :cond_0

    if-ge p4, p6, :cond_0

    .line 1
    array-length v2, p1

    rem-int v2, v0, v2

    aget v2, p1, v2

    .line 2
    invoke-virtual {p7, p3, p4, v2}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    goto :goto_1

    .line 3
    :cond_0
    sget-object v2, Lorg/apache/commons/imaging/formats/bmp/i;->e:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipping bad pixel ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public b(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1
    iget-object v0, v8, Lorg/apache/commons/imaging/formats/bmp/f;->a:Lorg/apache/commons/imaging/formats/bmp/a;

    iget v9, v0, Lorg/apache/commons/imaging/formats/bmp/a;->g:I

    .line 2
    iget v10, v0, Lorg/apache/commons/imaging/formats/bmp/a;->h:I

    add-int/lit8 v0, v10, -0x1

    const/4 v11, 0x0

    move v12, v0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    :goto_1
    if-nez v13, :cond_7

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RLE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v8, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    const-string v4, "BMP: Bad RLE"

    invoke-static {v0, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v3, v0, 0xff

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    invoke-static {v0, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v15, 0x1

    if-nez v3, :cond_6

    if-eqz v0, :cond_5

    if-eq v0, v15, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 5
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/i;->d()I

    move-result v7

    .line 6
    div-int v1, v0, v7

    .line 7
    rem-int v2, v0, v7

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 8
    :cond_0
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 9
    :cond_1
    iget-object v2, v8, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    const-string v3, "bytes"

    const-string v4, "RLE: Absolute Mode"

    invoke-static {v3, v2, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v16

    move/from16 v17, v14

    const/16 v18, 0x0

    move v14, v0

    :goto_2
    if-lez v14, :cond_2

    .line 10
    aget-byte v0, v16, v18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {v8, v0}, Lorg/apache/commons/imaging/formats/bmp/i;->c(I)[I

    move-result-object v1

    .line 11
    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v3, v17

    move v4, v12

    move v5, v9

    move v6, v10

    move/from16 v19, v7

    move-object/from16 v7, p1

    .line 12
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/bmp/i;->e([IIIIIILorg/apache/commons/imaging/common/ImageBuilder;)I

    move-result v0

    add-int v17, v17, v0

    sub-int/2addr v14, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v19

    goto :goto_2

    :cond_2
    move/from16 v14, v17

    goto/16 :goto_1

    .line 13
    :cond_3
    iget-object v0, v8, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    const-string v1, "RLE deltaX"

    invoke-static {v1, v0, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 14
    iget-object v1, v8, Lorg/apache/commons/imaging/formats/bmp/f;->d:Ljava/io/InputStream;

    const-string v2, "RLE deltaY"

    invoke-static {v2, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v14, v0

    sub-int/2addr v12, v1

    goto/16 :goto_1

    :cond_4
    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    .line 15
    :cond_6
    invoke-direct {v8, v0}, Lorg/apache/commons/imaging/formats/bmp/i;->c(I)[I

    move-result-object v1

    move-object/from16 v0, p0

    move v2, v3

    move v3, v14

    move v4, v12

    move v5, v9

    move v6, v10

    move-object/from16 v7, p1

    .line 16
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/bmp/i;->e([IIIIIILorg/apache/commons/imaging/common/ImageBuilder;)I

    move-result v0

    add-int/2addr v14, v0

    goto/16 :goto_1

    :cond_7
    return-void
.end method
