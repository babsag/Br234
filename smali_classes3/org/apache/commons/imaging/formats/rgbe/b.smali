.class Lorg/apache/commons/imaging/formats/rgbe/b;
.super Ljava/lang/Object;
.source "RgbeInfo.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:[B

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:[B


# instance fields
.field private final d:Ljava/io/InputStream;

.field private e:Lorg/apache/commons/imaging/common/GenericImageMetadata;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/b;->a:[B

    const-string v0, "-Y (\\d+) \\+X (\\d+)"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/b;->b:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/b;->c:[B

    return-void

    :array_0
    .array-data 1
        0x23t
        0x3ft
        0x52t
        0x41t
        0x44t
        0x49t
        0x41t
        0x4et
        0x43t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x2t
    .end array-data
.end method

.method constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->f:I

    .line 3
    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->g:I

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->d:Ljava/io/InputStream;

    return-void
.end method

.method private static a(Ljava/io/InputStream;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_2

    const/16 v4, 0x80

    if-le v3, v4, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v6, v3, 0x7f

    if-ge v5, v6, :cond_0

    add-int/lit8 v6, v2, 0x1

    int-to-byte v7, v4

    .line 4
    aput-byte v7, p1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    add-int/lit8 v5, v2, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_1

    .line 6
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Error decompressing RGBE file"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/b;->b()Lorg/apache/commons/imaging/common/ImageMetadata;

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/rgbe/a;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->d:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/rgbe/a;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lorg/apache/commons/imaging/formats/rgbe/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->g:I

    const/4 v0, 0x2

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->f:I

    return-void

    .line 8
    :cond_0
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid HDR resolution string. Only \"-Y N +X M\" is supported. Found \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->d:Ljava/io/InputStream;

    sget-object v1, Lorg/apache/commons/imaging/formats/rgbe/b;->a:[B

    const-string v2, "Not a valid HDR: Incorrect Header"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/rgbe/a;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->d:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/rgbe/a;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    new-instance v1, Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-direct {v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->e:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x3d

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FORMAT"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "32-bit_rle_rgbe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only 32-bit_rle_rgbe images are supported, trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->e:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->e:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    const-string v3, "<command>"

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_2
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/rgbe/a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    return-void

    .line 15
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method b()Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->e:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/b;->e()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->e:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    return-object v0
.end method

.method public c()[[F
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/b;->getHeight()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/b;->getWidth()I

    move-result v2

    const v3, 0x8000

    if-ge v2, v3, :cond_4

    int-to-short v3, v2

    .line 3
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v4}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v3

    mul-int/lit8 v4, v2, 0x4

    .line 4
    new-array v4, v4, [B

    mul-int v5, v2, v1

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x1

    aput v5, v6, v7

    const/4 v5, 0x0

    const/4 v7, 0x3

    aput v7, v6, v5

    .line 5
    const-class v8, F

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[F

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_3

    .line 6
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/rgbe/b;->d:Ljava/io/InputStream;

    sget-object v10, Lorg/apache/commons/imaging/formats/rgbe/b;->c:[B

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scan line "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " expected to start with 0x2 0x2"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 7
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/rgbe/b;->d:Ljava/io/InputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " length expected"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v3, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 8
    iget-object v9, v0, Lorg/apache/commons/imaging/formats/rgbe/b;->d:Ljava/io/InputStream;

    invoke-static {v9, v4}, Lorg/apache/commons/imaging/formats/rgbe/b;->a(Ljava/io/InputStream;[B)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_2

    mul-int v10, v9, v2

    mul-int/lit8 v11, v2, 0x3

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v2, :cond_1

    add-int v13, v12, v11

    .line 9
    aget-byte v13, v4, v13

    and-int/lit16 v13, v13, 0xff

    mul-int v14, v8, v2

    add-int/2addr v14, v12

    if-nez v13, :cond_0

    .line 10
    aget-object v13, v6, v9

    const/4 v15, 0x0

    aput v15, v13, v14

    move-object/from16 v17, v6

    move/from16 v16, v8

    goto :goto_3

    :cond_0
    move/from16 v16, v8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    add-int/lit16 v13, v13, -0x88

    move-object/from16 v17, v6

    int-to-double v5, v13

    .line 11
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 12
    aget-object v6, v17, v9

    add-int v7, v12, v10

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    mul-float v7, v7, v5

    aput v7, v6, v14

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v16

    move-object/from16 v6, v17

    const/4 v5, 0x0

    const/4 v7, 0x3

    goto :goto_2

    :cond_1
    move-object/from16 v17, v6

    move/from16 v16, v8

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x3

    goto :goto_1

    :cond_2
    move-object/from16 v17, v6

    move/from16 v16, v8

    add-int/lit8 v8, v16, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x3

    goto/16 :goto_0

    :cond_3
    move-object/from16 v17, v6

    return-object v17

    .line 13
    :cond_4
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Scan lines must be less than 32768 bytes long"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method getHeight()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->g:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/b;->d()V

    .line 3
    :cond_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->g:I

    return v0
.end method

.method getWidth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->f:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/b;->d()V

    .line 3
    :cond_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/rgbe/b;->f:I

    return v0
.end method
