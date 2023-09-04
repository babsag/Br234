.class public Lorg/apache/commons/imaging/common/BasicCParser;
.super Ljava/lang/Object;
.source "BasicCParser.java"


# instance fields
.field private final a:Ljava/io/PushbackInputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/imaging/common/BasicCParser;->a:Ljava/io/PushbackInputStream;

    return-void
.end method

.method public static preprocess(Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/io/ByteArrayOutputStream;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/ByteArrayOutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 2
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    const/4 v15, -0x1

    const/16 v3, 0x2a

    const/16 v4, 0x2f

    if-eq v7, v15, :cond_28

    if-eqz v9, :cond_8

    if-ne v7, v3, :cond_3

    if-eqz v10, :cond_1

    if-nez v5, :cond_1

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v10, 0x1

    :cond_2
    :goto_2
    const/16 v16, 0x1

    :goto_3
    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_3
    if-ne v7, v4, :cond_5

    if-eqz v10, :cond_4

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    if-nez v5, :cond_2

    int-to-char v3, v7

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_6

    if-nez v5, :cond_6

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    if-nez v5, :cond_7

    int-to-char v3, v7

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/16 v15, 0x5c

    if-eqz v11, :cond_f

    if-eq v7, v3, :cond_e

    if-eq v7, v4, :cond_e

    const/16 v3, 0x27

    if-eq v7, v3, :cond_c

    if-eq v7, v15, :cond_a

    if-eqz v14, :cond_9

    .line 8
    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v14, 0x0

    .line 9
    :cond_9
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_a
    if-eqz v14, :cond_b

    .line 10
    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 11
    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_5
    const/4 v14, 0x0

    goto :goto_2

    :cond_b
    const/4 v14, 0x1

    goto :goto_2

    :cond_c
    if-eqz v14, :cond_d

    .line 12
    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v3, 0x27

    const/4 v14, 0x0

    goto :goto_6

    :cond_d
    const/16 v3, 0x27

    const/4 v11, 0x0

    .line 13
    :goto_6
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 14
    :cond_e
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated single quote in file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/16 v15, 0x22

    if-eqz v12, :cond_15

    if-eq v7, v3, :cond_14

    if-eq v7, v4, :cond_14

    if-eq v7, v15, :cond_12

    const/16 v3, 0x5c

    if-eq v7, v3, :cond_11

    if-eqz v14, :cond_10

    .line 15
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v14, 0x0

    .line 16
    :cond_10
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_11
    if-eqz v14, :cond_b

    .line 17
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 18
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    :cond_12
    const/16 v3, 0x5c

    if-eqz v14, :cond_13

    .line 19
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v14, 0x0

    goto :goto_7

    :cond_13
    const/4 v12, 0x0

    .line 20
    :goto_7
    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 21
    :cond_14
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated string in file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    if-eqz v13, :cond_1b

    if-eq v7, v4, :cond_17

    if-ne v7, v3, :cond_16

    goto :goto_8

    :cond_16
    int-to-char v3, v7

    .line 22
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 23
    :cond_17
    :goto_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/imaging/common/BasicCParser;->tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 24
    array-length v4, v3

    const/4 v7, 0x2

    if-lt v4, v7, :cond_1a

    array-length v4, v3

    const/4 v13, 0x3

    if-gt v4, v13, :cond_1a

    const/4 v4, 0x0

    .line 25
    aget-object v15, v3, v4

    const-string v4, "define"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/16 v16, 0x1

    .line 26
    aget-object v4, v3, v16

    array-length v15, v3

    if-ne v15, v13, :cond_18

    aget-object v3, v3, v7

    goto :goto_9

    :cond_18
    const/4 v3, 0x0

    :goto_9
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 27
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_19
    const/4 v4, 0x0

    .line 28
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid/unsupported preprocessor directive \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1a
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Bad preprocessor directive"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eq v7, v15, :cond_26

    const/16 v15, 0x23

    if-eq v7, v15, :cond_24

    const/16 v15, 0x27

    if-eq v7, v15, :cond_22

    const/16 v15, 0x2a

    if-eq v7, v15, :cond_20

    const/16 v15, 0x2f

    if-eq v7, v15, :cond_1e

    if-eqz v8, :cond_1c

    .line 30
    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 31
    :cond_1c
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v8, 0x20

    if-eq v7, v8, :cond_1d

    const/16 v8, 0x9

    if-eq v7, v8, :cond_1d

    if-eq v7, v4, :cond_1d

    if-eq v7, v3, :cond_1d

    const/4 v5, 0x1

    :cond_1d
    const/4 v8, 0x0

    goto :goto_a

    :cond_1e
    if-eqz v8, :cond_1f

    const/16 v3, 0x2f

    .line 32
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1f
    const/4 v8, 0x1

    goto :goto_a

    :cond_20
    if-eqz v8, :cond_21

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_a

    .line 33
    :cond_21
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a

    :cond_22
    const/16 v3, 0x2f

    if-eqz v8, :cond_23

    .line 34
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    :cond_23
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x0

    const/4 v11, 0x1

    goto :goto_a

    :cond_24
    if-eqz v1, :cond_25

    const/4 v13, 0x1

    goto :goto_a

    .line 36
    :cond_25
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unexpected preprocessor directive"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    if-eqz v8, :cond_27

    const/16 v3, 0x2f

    .line 37
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 38
    :cond_27
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 39
    :goto_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    goto/16 :goto_1

    :cond_28
    const/16 v3, 0x2f

    if-eqz v8, :cond_29

    .line 40
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_29
    if-eqz v10, :cond_2a

    const/16 v0, 0x2a

    .line 41
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2a
    if-nez v12, :cond_2c

    if-nez v9, :cond_2b

    return-object v2

    .line 42
    :cond_2b
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated comment at the end of file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2c
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated string at the end of file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const-string v0, "[ \t]"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    .line 5
    array-length v2, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, p0, v1

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 7
    aput-object v4, v0, v3

    move v3, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static unescapeString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_15

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_14

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_14

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v2, v6, :cond_12

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-eqz v5, :cond_f

    if-ne v6, v7, :cond_0

    .line 6
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    if-ne v6, v3, :cond_1

    .line 7
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_1
    const/16 v5, 0x27

    if-ne v6, v5, :cond_2

    .line 8
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_2
    const/16 v5, 0x78

    if-ne v6, v5, :cond_4

    add-int/lit8 v5, v2, 0x2

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 11
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 12
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x10

    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v2, v2

    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    goto/16 :goto_3

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, hex constant invalid"

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 15
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, hex constant in string too short"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/16 v5, 0x61

    if-eq v6, v5, :cond_e

    const/16 v5, 0x62

    if-eq v6, v5, :cond_d

    const/16 v5, 0x66

    if-eq v6, v5, :cond_c

    const/16 v5, 0x6e

    if-eq v6, v5, :cond_b

    const/16 v5, 0x72

    if-eq v6, v5, :cond_a

    const/16 v5, 0x74

    if-eq v6, v5, :cond_9

    const/16 v5, 0x76

    if-eq v6, v5, :cond_8

    packed-switch v6, :pswitch_data_0

    .line 16
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, invalid escape sequence"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 v5, v2, 0x1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x37

    const/16 v8, 0x30

    if-ge v5, v6, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v8, v6, :cond_5

    .line 18
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v7, :cond_5

    const/4 v5, 0x2

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v6, v2, 0x2

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_6

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v8, v9, :cond_6

    .line 20
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v5, :cond_7

    mul-int/lit8 v7, v7, 0x8

    add-int v9, v2, v6

    .line 21
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v8

    add-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, -0x1

    add-int/2addr v2, v5

    int-to-char v5, v7

    .line 22
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const/16 v5, 0xb

    .line 23
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    const/16 v5, 0x9

    .line 24
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    const/16 v5, 0xd

    .line 25
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    const/16 v5, 0xa

    .line 26
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    const/16 v5, 0xc

    .line 27
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    const/16 v5, 0x8

    .line 28
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    const/4 v5, 0x7

    .line 29
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_f
    if-ne v6, v7, :cond_10

    const/4 v5, 0x1

    goto :goto_4

    :cond_10
    if-eq v6, v3, :cond_11

    .line 30
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/2addr v2, v4

    goto/16 :goto_0

    .line 31
    :cond_11
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, extra \'\"\' found in string"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    if-nez v5, :cond_13

    return-void

    .line 32
    :cond_13
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, unterminated escape sequence found in string"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_14
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, string not surrounded by \'\"\'"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_15
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, string is too short"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/apache/commons/imaging/common/BasicCParser;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    if-eq v1, v6, :cond_e

    const/16 v6, 0xd

    const/16 v7, 0xa

    const/4 v8, 0x1

    const/16 v9, 0x22

    if-eqz v4, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v9, :cond_2

    const/16 v6, 0x5c

    if-eq v1, v6, :cond_1

    int-to-char v1, v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    xor-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 5
    :cond_2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v5, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_3
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated string in XPM file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v10, 0x5f

    if-eqz v3, :cond_6

    .line 8
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v6

    if-nez v6, :cond_5

    if-eq v1, v10, :cond_5

    .line 9
    iget-object v2, p0, Lorg/apache/commons/imaging/common/BasicCParser;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    int-to-char v1, v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_6
    if-ne v1, v9, :cond_7

    .line 12
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_3

    .line 13
    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v9

    if-nez v9, :cond_c

    if-ne v1, v10, :cond_8

    goto :goto_2

    :cond_8
    const/16 v8, 0x7b

    if-eq v1, v8, :cond_b

    const/16 v8, 0x7d

    if-eq v1, v8, :cond_b

    const/16 v8, 0x5b

    if-eq v1, v8, :cond_b

    const/16 v8, 0x5d

    if-eq v1, v8, :cond_b

    const/16 v8, 0x2a

    if-eq v1, v8, :cond_b

    const/16 v8, 0x3b

    if-eq v1, v8, :cond_b

    const/16 v8, 0x3d

    if-eq v1, v8, :cond_b

    const/16 v8, 0x2c

    if-ne v1, v8, :cond_9

    goto :goto_1

    :cond_9
    const/16 v8, 0x20

    if-eq v1, v8, :cond_d

    const/16 v8, 0x9

    if-eq v1, v8, :cond_d

    if-eq v1, v6, :cond_d

    if-ne v1, v7, :cond_a

    goto :goto_3

    .line 14
    :cond_a
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled/invalid character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' found in XPM file"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_1
    int-to-char v1, v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_2
    int-to-char v1, v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 18
    :cond_d
    :goto_3
    iget-object v1, p0, Lorg/apache/commons/imaging/common/BasicCParser;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    goto/16 :goto_0

    :cond_e
    if-eqz v3, :cond_f

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    if-nez v4, :cond_10

    const/4 v0, 0x0

    return-object v0

    .line 20
    :cond_10
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated string ends XMP file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
