.class public Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "PnmImageParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/ImageParser<",
        "Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PNM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->d:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    .line 3
    invoke-virtual {v2}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    .line 4
    invoke-virtual {v2}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    .line 5
    invoke-virtual {v2}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/a;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "Identifier1"

    const-string v2, "Not a Valid PNM File"

    .line 1
    invoke-static {v1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    const-string v3, "Identifier2"

    .line 2
    invoke-static {v3, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    const/16 v3, 0x50

    if-ne v1, v3, :cond_1a

    .line 3
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/k;

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/formats/pnm/k;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x36

    const/16 v3, 0x33

    const/16 v4, 0x35

    const/16 v5, 0x32

    const/16 v6, 0x34

    const/16 v7, 0x31

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v2, v7, :cond_13

    if-eq v2, v6, :cond_13

    if-eq v2, v5, :cond_13

    if-eq v2, v4, :cond_13

    if-eq v2, v3, :cond_13

    if-ne v2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x37

    if-ne v2, v0, :cond_19

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/k;->c()Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    .line 6
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/k;->c()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 7
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v15, 0x23

    if-ne v10, v15, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v15, " "

    invoke-direct {v10, v7, v15, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v15, "WIDTH"

    .line 11
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 12
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v11, v2

    const/4 v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no WIDTH value"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v15, "HEIGHT"

    .line 15
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 16
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v12, v3

    const/4 v3, 0x1

    goto :goto_0

    .line 18
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no HEIGHT value"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v15, "DEPTH"

    .line 19
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 20
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v13, v4

    const/4 v4, 0x1

    goto :goto_0

    .line 22
    :cond_6
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no DEPTH value"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v15, "MAXVAL"

    .line 23
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 24
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 25
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v14, v5

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 26
    :cond_8
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no MAXVAL value"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v15, "TUPLTYPE"

    .line 27
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 28
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 29
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 30
    :cond_a
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no TUPLTYPE value"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v1, "ENDHDR"

    .line 31
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_1

    .line 32
    :cond_c
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PAM file header type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_1
    if-eqz v2, :cond_12

    if-eqz v3, :cond_11

    if-eqz v4, :cond_10

    if-eqz v5, :cond_f

    if-eqz v6, :cond_e

    .line 33
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/b;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lorg/apache/commons/imaging/formats/pnm/b;-><init>(IIIILjava/lang/String;)V

    return-object v1

    .line 34
    :cond_e
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no TUPLTYPE"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_f
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no MAXVAL"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_10
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no DEPTH"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_11
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no HEIGHT"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_12
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PAM header has no WIDTH"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_13
    :goto_2
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/k;->d()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/k;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, v7, :cond_14

    .line 41
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/d;

    invoke-direct {v0, v10, v11, v9}, Lorg/apache/commons/imaging/formats/pnm/d;-><init>(IIZ)V

    return-object v0

    :cond_14
    if-ne v2, v6, :cond_15

    .line 42
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/d;

    invoke-direct {v0, v10, v11, v8}, Lorg/apache/commons/imaging/formats/pnm/d;-><init>(IIZ)V

    return-object v0

    :cond_15
    if-ne v2, v5, :cond_16

    .line 43
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 44
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/f;

    invoke-direct {v1, v10, v11, v9, v0}, Lorg/apache/commons/imaging/formats/pnm/f;-><init>(IIZI)V

    return-object v1

    :cond_16
    if-ne v2, v4, :cond_17

    .line 45
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 46
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/f;

    invoke-direct {v1, v10, v11, v8, v0}, Lorg/apache/commons/imaging/formats/pnm/f;-><init>(IIZI)V

    return-object v1

    :cond_17
    if-ne v2, v3, :cond_18

    .line 47
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/i;

    invoke-direct {v1, v10, v11, v9, v0}, Lorg/apache/commons/imaging/formats/pnm/i;-><init>(IIZI)V

    return-object v1

    :cond_18
    if-ne v2, v0, :cond_19

    .line 49
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/pnm/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    new-instance v1, Lorg/apache/commons/imaging/formats/pnm/i;

    invoke-direct {v1, v10, v11, v8, v0}, Lorg/apache/commons/imaging/formats/pnm/i;-><init>(IIZI)V

    return-object v1

    .line 51
    :cond_19
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNM file has invalid prefix byte 2"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Invalid height specified."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 53
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Invalid width specified."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 54
    :cond_1a
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNM file has invalid prefix byte 1"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->a(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "pnm.dumpImageFile"

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/ImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, ""

    .line 3
    invoke-virtual {p2, p1, v0}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->e:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    .line 1
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PNM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public bridge synthetic getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->a(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/a;

    move-result-object p2

    .line 4
    iget v0, p2, Lorg/apache/commons/imaging/formats/pnm/a;->a:I

    .line 5
    iget v1, p2, Lorg/apache/commons/imaging/formats/pnm/a;->b:I

    .line 6
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/pnm/a;->i()Z

    move-result v2

    .line 7
    new-instance v3, Lorg/apache/commons/imaging/common/ImageBuilder;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    .line 8
    invoke-virtual {p2, v3, p1}, Lorg/apache/commons/imaging/formats/pnm/a;->k(Lorg/apache/commons/imaging/common/ImageBuilder;Ljava/io/InputStream;)V

    .line 9
    invoke-virtual {v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 11
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->d:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultParameters()Lorg/apache/commons/imaging/ImagingParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParameters()Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)[B

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->b(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/a;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/a;->a()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/a;->f()I

    move-result v2

    mul-int v3, v1, v2

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/a;->c()Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/a;->d()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/a;->e()Ljava/lang/String;

    move-result-object v8

    .line 8
    iget v1, v0, Lorg/apache/commons/imaging/formats/pnm/a;->a:I

    int-to-double v1, v1

    const-wide/high16 v9, 0x4052000000000000L    # 72.0

    div-double/2addr v1, v9

    double-to-float v13, v1

    .line 9
    iget v1, v0, Lorg/apache/commons/imaging/formats/pnm/a;->b:I

    int-to-double v1, v1

    div-double/2addr v1, v9

    double-to-float v11, v1

    .line 10
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/a;->d()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/a;->i()Z

    move-result v16

    .line 12
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/a;->b()Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-result-object v18

    .line 13
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 14
    new-instance v20, Lorg/apache/commons/imaging/ImageInfo;

    move-object/from16 v1, v20

    iget v7, v0, Lorg/apache/commons/imaging/formats/pnm/a;->b:I

    iget v14, v0, Lorg/apache/commons/imaging/formats/pnm/a;->a:I

    const/4 v9, 0x1

    const/16 v10, 0x48

    const/16 v12, 0x48

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v19}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v20
.end method

.method public bridge synthetic getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Ljava/awt/Dimension;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->b(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/a;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/commons/imaging/formats/pnm/a;->a:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/pnm/a;->b:I

    invoke-direct {p2, v0, p1}, Ljava/awt/Dimension;-><init>(II)V

    return-object p2
.end method

.method public bridge synthetic getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/ImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Pbm-Custom"

    return-object v0
.end method

.method public bridge synthetic writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/ImagingParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)V

    return-void
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 2
    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;->isRawBits()Z

    move-result v1

    .line 3
    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;->getSubtype()Lorg/apache/commons/imaging/ImageFormats;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4
    sget-object v3, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/e;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/pnm/e;-><init>(Z)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v3, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/g;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/pnm/g;-><init>(Z)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v3, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/j;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/pnm/j;-><init>(Z)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object v3, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/c;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/pnm/c;-><init>()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    if-nez v0, :cond_6

    .line 12
    new-instance v0, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/c;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/pnm/c;-><init>()V

    goto :goto_1

    .line 14
    :cond_5
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/j;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/pnm/j;-><init>(Z)V

    .line 15
    :cond_6
    :goto_1
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/pnm/h;->a(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/pnm/PnmImagingParameters;)V

    return-void
.end method
