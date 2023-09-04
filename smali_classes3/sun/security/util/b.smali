.class Lsun/security/util/b;
.super Ljava/io/ByteArrayInputStream;
.source "DerInputBuffer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-void
.end method

.method private h(IZ)Ljava/util/Date;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0xa

    const-string v2, "UTC"

    if-eqz p2, :cond_0

    .line 1
    iget-object v2, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v3, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    .line 2
    iget-object v3, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v4, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    .line 3
    iget-object v3, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v4, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    .line 4
    iget-object v3, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v4, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v3, p1, -0x2

    const-string v4, "Generalized"

    move-object/from16 v16, v4

    move v4, v2

    move-object/from16 v2, v16

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v4, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    .line 6
    iget-object v4, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v5, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-static {v4, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x32

    if-ge v3, v4, :cond_1

    add-int/lit16 v3, v3, 0x7d0

    goto :goto_0

    :cond_1
    add-int/lit16 v3, v3, 0x76c

    :goto_0
    move v4, v3

    move/from16 v3, p1

    .line 7
    :goto_1
    iget-object v5, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v6, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v5, v5, v6

    int-to-char v5, v5

    invoke-static {v5, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    .line 8
    iget-object v6, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v7, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v6, v6, v7

    int-to-char v6, v6

    invoke-static {v6, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v5, v6

    .line 9
    iget-object v6, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v7, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v6, v6, v7

    int-to-char v6, v6

    invoke-static {v6, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    .line 10
    iget-object v7, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-static {v7, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v6, v7

    .line 11
    iget-object v7, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-static {v7, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    .line 12
    iget-object v8, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v9, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v8, v8, v9

    int-to-char v8, v8

    invoke-static {v8, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    add-int/2addr v7, v8

    .line 13
    iget-object v8, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v9, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v8, v8, v9

    int-to-char v8, v8

    invoke-static {v8, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    mul-int/lit8 v8, v8, 0xa

    .line 14
    iget-object v9, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v10, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-static {v9, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v3, v3, -0xa

    const/16 v11, 0x5a

    const/16 v12, 0xc

    const/4 v13, 0x2

    const-string v15, "Parse "

    const/4 v14, 0x1

    if-le v3, v13, :cond_8

    if-ge v3, v12, :cond_8

    .line 15
    iget-object v12, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v13, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v9, v13, 0x1

    iput v9, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v9, v12, v13

    int-to-char v9, v9

    invoke-static {v9, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    mul-int/lit8 v9, v9, 0xa

    .line 16
    iget-object v12, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v13, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v10, v13, 0x1

    iput v10, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v10, v12, v13

    int-to-char v10, v10

    invoke-static {v10, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v3, v3, -0x2

    .line 17
    iget-object v10, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v12, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v13, v10, v12

    const/16 v1, 0x2e

    if-eq v13, v1, :cond_3

    aget-byte v1, v10, v12

    const/16 v10, 0x2c

    if-ne v1, v10, :cond_2

    goto :goto_2

    :cond_2
    move v14, v9

    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    add-int/2addr v12, v14

    .line 18
    iput v12, v0, Ljava/io/ByteArrayInputStream;->pos:I

    const/4 v1, 0x0

    .line 19
    :goto_3
    iget-object v10, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v13, v10, v12

    if-eq v13, v11, :cond_4

    aget-byte v13, v10, v12

    const/16 v11, 0x2b

    if-eq v13, v11, :cond_4

    aget-byte v11, v10, v12

    const/16 v13, 0x2d

    if-eq v11, v13, :cond_4

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v1, v1, 0x1

    const/16 v11, 0x5a

    goto :goto_3

    :cond_4
    if-eq v1, v14, :cond_7

    const/4 v11, 0x2

    if-eq v1, v11, :cond_6

    const/4 v11, 0x3

    if-ne v1, v11, :cond_5

    .line 20
    iget v11, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v10, v10, v11

    int-to-char v10, v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    mul-int/lit8 v10, v10, 0x64

    const/4 v12, 0x0

    add-int/2addr v10, v12

    .line 21
    iget-object v12, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v13, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v12, v12, v13

    int-to-char v12, v12

    invoke-static {v12, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    mul-int/lit8 v12, v12, 0xa

    add-int/2addr v10, v12

    .line 22
    iget-object v12, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v13, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v12, v12, v13

    int-to-char v12, v12

    invoke-static {v12, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    add-int/2addr v10, v12

    move v14, v10

    goto :goto_4

    .line 23
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " time, unsupported precision for seconds value"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_6
    iget v11, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v10, v10, v11

    int-to-char v10, v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    mul-int/lit8 v10, v10, 0x64

    const/4 v12, 0x0

    add-int v14, v12, v10

    .line 25
    iget-object v10, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v12, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v10, v10, v12

    int-to-char v10, v10

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v14, v10

    goto :goto_4

    :cond_7
    const/16 v11, 0xa

    .line 26
    iget v12, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v10, v10, v12

    int-to-char v10, v10

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    mul-int/lit8 v10, v10, 0x64

    const/4 v11, 0x0

    add-int v14, v11, v10

    :goto_4
    sub-int/2addr v3, v1

    move v11, v14

    move v14, v9

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_5
    if-eqz v5, :cond_10

    if-eqz v6, :cond_10

    const/16 v1, 0xc

    if-gt v5, v1, :cond_10

    const/16 v1, 0x1f

    if-gt v6, v1, :cond_10

    const/16 v1, 0x18

    if-ge v7, v1, :cond_10

    const/16 v9, 0x3c

    if-ge v8, v9, :cond_10

    if-ge v14, v9, :cond_10

    .line 27
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v10

    const/4 v12, 0x0

    .line 28
    invoke-virtual {v10, v12}, Lsun/util/calendar/CalendarSystem;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v12

    .line 29
    invoke-virtual {v12, v4, v5, v6}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 30
    invoke-virtual {v12, v7, v8, v14, v11}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 31
    invoke-virtual {v10, v12}, Lsun/util/calendar/CalendarSystem;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    const/4 v6, 0x1

    if-eq v3, v6, :cond_a

    const/4 v6, 0x5

    if-ne v3, v6, :cond_9

    goto :goto_6

    .line 32
    :cond_9
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " time, invalid offset"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_a
    :goto_6
    iget-object v3, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v6, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v6, v3, v6

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_e

    const/16 v8, 0x2d

    if-eq v6, v8, :cond_c

    const/16 v8, 0x5a

    if-ne v6, v8, :cond_b

    goto/16 :goto_7

    .line 34
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " time, garbage offset"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    add-int/lit8 v6, v7, 0x1

    .line 35
    iput v6, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v3, v3, v7

    int-to-char v3, v3

    const/16 v6, 0xa

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    .line 36
    iget-object v7, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v3, v7

    .line 37
    iget-object v7, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    .line 38
    iget-object v8, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v10, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v8, v8, v10

    int-to-char v8, v8

    invoke-static {v8, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v7, v6

    if-ge v3, v1, :cond_d

    if-ge v7, v9, :cond_d

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v1, v3

    add-long/2addr v4, v1

    goto :goto_7

    .line 39
    :cond_d
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " time, -hhmm"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    add-int/lit8 v6, v7, 0x1

    .line 40
    iput v6, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v3, v3, v7

    int-to-char v3, v3

    const/16 v6, 0xa

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    .line 41
    iget-object v7, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v3, v7

    .line 42
    iget-object v7, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    .line 43
    iget-object v8, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v10, v0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v8, v8, v10

    int-to-char v8, v8

    invoke-static {v8, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v7, v6

    if-ge v3, v1, :cond_f

    if-ge v7, v9, :cond_f

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v7

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v1, v3

    sub-long/2addr v4, v1

    .line 44
    :goto_7
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    return-object v1

    .line 45
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " time, +hhmm"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " time, invalid format"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method a()Lsun/security/util/b;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/b;

    const v1, 0x7fffffff

    .line 2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method b(Lsun/security/util/b;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 3
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v5, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v5, v2

    aget-byte v4, v4, v5

    iget-object v5, p1, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v6, p1, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v6, v2

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method c(IZ)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-gt p1, v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    new-array v0, p1, [B

    .line 3
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v1, p1

    .line 4
    invoke-virtual {p0, v1, v2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    if-eqz p2, :cond_0

    .line 5
    new-instance p1, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid encoding: zero length Int value"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "short read of integer"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method d()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/security/util/b;->e(I)[B

    move-result-object v0

    return-object v0
.end method

.method public e(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-gt p1, v0, :cond_3

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v2, v0, v1

    if-ltz v2, :cond_1

    const/4 v3, 0x7

    if-gt v2, v3, :cond_1

    add-int/lit8 v3, p1, -0x1

    .line 3
    new-array v4, v3, [B

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    .line 4
    invoke-static {v0, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_0

    add-int/lit8 v0, p1, -0x2

    .line 5
    aget-byte v1, v4, v0

    const/16 v3, 0xff

    shl-int v2, v3, v2

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    :cond_0
    int-to-long v0, p1

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/io/ByteArrayInputStream;->skip(J)J

    return-object v4

    .line 7
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid number of padding bits"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid encoding: zero length bit string"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "short read of bit string"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lsun/security/util/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lsun/security/util/b;

    invoke-virtual {p0, p1}, Lsun/security/util/b;->b(Lsun/security/util/b;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(I)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-gt p1, v0, :cond_1

    const/16 v0, 0xd

    if-lt p1, v0, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lsun/security/util/b;->h(IZ)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "DER Generalized Time length error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "short read of DER Generalized Time"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lsun/security/util/b;->c(IZ)Ljava/math/BigInteger;

    move-result-object p1

    const-wide/32 v0, -0x80000000

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    .line 3
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Integer exceeds maximum valid value"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Integer below minimum valid value"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 2
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    add-int v5, v1, v2

    aget-byte v4, v4, v5

    mul-int v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public i(I)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-gt p1, v0, :cond_1

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    const/16 v0, 0x11

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lsun/security/util/b;->h(IZ)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "DER UTC Time length error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "short read of DER UTC Time"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method j()Lsun/security/util/BitArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 3
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x7

    if-gt v3, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 4
    new-array v4, v0, [B

    const/4 v5, 0x0

    if-nez v0, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    mul-int/lit8 v6, v0, 0x8

    sub-int/2addr v6, v3

    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 5
    invoke-static {v1, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, v6, v4}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 7
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for unused bits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method k()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v0, v1, v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "out of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method l()[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-array v1, v0, [B

    .line 3
    iget-object v2, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v3, p0, Ljava/io/ByteArrayInputStream;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method m(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 2
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "insufficient data"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
