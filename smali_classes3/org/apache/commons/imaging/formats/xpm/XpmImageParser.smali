.class public Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "XpmImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$d;,
        Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;,
        Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/ImageParser<",
        "Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->XPM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getDefaultExtension()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lorg/apache/commons/imaging/ImageFormats;->getExtensions()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->e:[Ljava/lang/String;

    const/16 v0, 0x5c

    new-array v0, v0, [C

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->g:[C

    return-void

    :array_0
    .array-data 2
        0x20s
        0x2es
        0x58s
        0x6fs
        0x4fs
        0x2bs
        0x40s
        0x23s
        0x24s
        0x25s
        0x26s
        0x2as
        0x3ds
        0x2ds
        0x3bs
        0x3as
        0x3es
        0x2cs
        0x3cs
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x71s
        0x77s
        0x65s
        0x72s
        0x74s
        0x79s
        0x75s
        0x69s
        0x70s
        0x61s
        0x73s
        0x64s
        0x66s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6cs
        0x7as
        0x78s
        0x63s
        0x76s
        0x62s
        0x6es
        0x6ds
        0x4ds
        0x4es
        0x42s
        0x56s
        0x43s
        0x5as
        0x41s
        0x53s
        0x44s
        0x46s
        0x47s
        0x48s
        0x4as
        0x4bs
        0x4cs
        0x50s
        0x49s
        0x55s
        0x59s
        0x54s
        0x52s
        0x45s
        0x57s
        0x51s
        0x21s
        0x7es
        0x5es
        0x2fs
        0x28s
        0x29s
        0x5fs
        0x60s
        0x27s
        0x5ds
        0x5bs
        0x7bs
        0x7ds
        0x7cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    const-class v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->f:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    return-void

    :cond_0
    :try_start_1
    const-string v1, "rgb.txt"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 7
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v7, 0x21

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    .line 10
    :try_start_4
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x7

    .line 11
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xb

    const/16 v8, 0x8

    .line 12
    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 13
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 14
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/high16 v7, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v7

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    or-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 15
    :try_start_5
    new-instance v4, Lorg/apache/commons/imaging/ImageReadException;

    const-string v5, "Couldn\'t parse color in rgb.txt"

    invoke-direct {v4, v5, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 17
    sput-object v2, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->f:Ljava/util/Map;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 18
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    return-void

    :catchall_0
    move-exception v2

    .line 19
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    .line 20
    :cond_3
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Couldn\'t find rgb.txt in our resources"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catch_1
    move-exception v1

    .line 21
    :try_start_d
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Could not parse rgb.txt"

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_4
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v1
.end method

.method private b(Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/high16 v6, -0x1000000

    const/16 v7, 0x10

    if-ne v2, v5, :cond_0

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 6
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    shl-int/lit8 v0, v0, 0x14

    or-int/2addr v0, v6

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    shl-int/2addr p1, v4

    or-int/2addr p1, v0

    return p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x6

    if-ne v2, v8, :cond_1

    .line 8
    invoke-static {p1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    or-int/2addr p1, v6

    return p1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v9, 0x9

    const/16 v10, 0x8

    if-ne v2, v9, :cond_2

    .line 10
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 11
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x7

    .line 12
    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    shl-int/2addr v0, v7

    or-int/2addr v0, v6

    shl-int/2addr v1, v10

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1

    .line 13
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 14
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    .line 15
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 16
    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    shl-int/2addr v0, v7

    or-int/2addr v0, v6

    shl-int/2addr v1, v10

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1

    .line 17
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_4

    .line 18
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 19
    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x11

    .line 20
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    shl-int/2addr v0, v7

    or-int/2addr v0, v6

    shl-int/2addr v1, v10

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1

    :cond_4
    return v0

    .line 21
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_8

    const-string v1, "None"

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    .line 23
    :cond_6
    invoke-static {}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->a()V

    .line 24
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 25
    sget-object v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26
    sget-object v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_7
    return v0

    .line 27
    :cond_8
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "HSV colors are not implemented even in the XPM specification!"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Lorg/apache/commons/imaging/common/BasicCParser;Ljava/lang/StringBuilder;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_3

    .line 4
    invoke-static {p2, v1}, Lorg/apache/commons/imaging/common/BasicCParser;->unescapeString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 6
    invoke-static {p2, v1}, Lorg/apache/commons/imaging/common/BasicCParser;->unescapeString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, ","

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "}"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 9
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Parsing XPM file failed, no \',\' or \'}\' found where expected"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Parsing XPM file failed, no string found where expected"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;Lorg/apache/commons/imaging/common/BasicCParser;)V
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

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->c:I

    if-ge v2, v3, :cond_a

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->c(Lorg/apache/commons/imaging/common/BasicCParser;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5
    iget v3, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->d:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 6
    iget v4, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/imaging/common/BasicCParser;->tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v5, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;-><init>(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$a;)V

    .line 8
    iput v2, v5, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->a:I

    const/high16 v6, -0x80000000

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    .line 10
    :goto_1
    array-length v9, v4

    if-ge v8, v9, :cond_7

    .line 11
    aget-object v9, v4, v8

    add-int/lit8 v10, v8, -0x1

    if-ge v6, v10, :cond_0

    const-string v10, "m"

    .line 12
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    const-string v10, "g4"

    .line 13
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "g"

    .line 14
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "c"

    .line 15
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "s"

    .line 16
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_4

    if-ltz v6, :cond_3

    .line 17
    aget-object v6, v4, v6

    .line 18
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 20
    invoke-direct {p0, v5, v6, v9}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->i(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v6, v8

    goto :goto_4

    :cond_4
    if-gez v6, :cond_5

    goto :goto_5

    .line 21
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    const/16 v10, 0x20

    .line 22
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    :cond_6
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    :goto_5
    if-ltz v6, :cond_8

    .line 24
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 25
    aget-object v4, v4, v6

    .line 26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 28
    invoke-direct {p0, v5, v4, v6}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->i(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_8
    iget-object v4, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->h:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 30
    :cond_9
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Parsing XPM file failed, file ended while reading palette"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-void
.end method

.method private e(Lorg/apache/commons/imaging/common/BasicCParser;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "static"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "char"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, variable name doesn\'t start with letter or underscore"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, variable name contains non-letter non-digit non-underscore"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->c(Lorg/apache/commons/imaging/common/BasicCParser;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->g(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;

    move-result-object v0

    .line 25
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->d(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;Lorg/apache/commons/imaging/common/BasicCParser;)V

    return-object v0

    .line 26
    :cond_5
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, file too short"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_6
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, no \'{\' token"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_7
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, no \'=\' token"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_8
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, no \']\' token"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_9
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, no \'[\' token"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_a
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, no variable name"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_b
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, no \'*\' token"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_c
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, no \'char\' token"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_d
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, no \'static\' token"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$d;
    .locals 4
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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/common/BasicCParser;->preprocess(Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    const-string v3, "XPM"

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$d;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$d;-><init>(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$a;)V

    .line 6
    new-instance v1, Lorg/apache/commons/imaging/common/BasicCParser;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/apache/commons/imaging/common/BasicCParser;-><init>(Ljava/io/ByteArrayInputStream;)V

    iput-object v1, v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$d;->b:Lorg/apache/commons/imaging/common/BasicCParser;

    .line 8
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->e(Lorg/apache/commons/imaging/common/BasicCParser;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$d;->a:Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    .line 10
    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Parsing XPM file failed, signature isn\'t \'/* XPM */\'"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
.end method

.method private g(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    array-length v0, p1

    const/4 v2, 0x7

    if-gt v0, v2, :cond_4

    const/4 v0, 0x0

    .line 3
    :try_start_0
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v3, 0x1

    .line 4
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v4, 0x2

    .line 5
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v4, 0x3

    .line 6
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 7
    array-length v4, p1

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, -0x1

    if-lt v4, v9, :cond_0

    .line 8
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 9
    aget-object v4, p1, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v9, v1

    move v11, v4

    goto :goto_0

    :cond_0
    const/4 v9, -0x1

    .line 10
    :goto_0
    array-length v1, p1

    if-eq v1, v10, :cond_1

    array-length v1, p1

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v0, "XPMEXT"

    .line 11
    array-length v1, p1

    sub-int/2addr v1, v3

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 12
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;

    move-object v4, p1

    move v10, v11

    move v11, v0

    invoke-direct/range {v4 .. v11}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;-><init>(IIIIIIZ)V

    return-object p1

    .line 13
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, can\'t parse <Values> section XPMEXT"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Parsing XPM file failed, error parsing <Values> section"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :cond_4
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, <Values> section has incorrect tokens"

    invoke-direct {p1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(II)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v1, p2, :cond_0

    .line 2
    sget-object v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->g:[C

    array-length v3, v3

    mul-int v2, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 3
    div-int v3, p1, v2

    mul-int v4, v3, v2

    sub-int/2addr p1, v4

    .line 4
    sget-object v4, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->g:[C

    array-length v5, v4

    div-int/2addr v2, v5

    .line 5
    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const-string v0, "m"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->b(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->i:I

    .line 3
    iput-boolean v1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->h:Z

    goto :goto_0

    :cond_0
    const-string v0, "g4"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->b(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->g:I

    .line 6
    iput-boolean v1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->f:Z

    goto :goto_0

    :cond_1
    const-string v0, "g"

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->b(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->e:I

    .line 9
    iput-boolean v1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->d:Z

    goto :goto_0

    :cond_2
    const-string v0, "s"

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->b(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->c:I

    .line 12
    iput-boolean v1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->b:Z

    goto :goto_0

    :cond_3
    const-string v0, "c"

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->b(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->c:I

    .line 15
    iput-boolean v1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->b:Z

    :cond_4
    :goto_0
    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x38

    const/16 v5, 0x38

    :goto_0
    const-wide/16 v6, 0xff

    if-ltz v5, :cond_0

    shr-long v8, v2, v5

    and-long/2addr v6, v8

    long-to-int v7, v6

    .line 4
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x8

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    :goto_1
    if-ltz v4, :cond_1

    shr-long v8, v2, v4

    and-long/2addr v8, v6

    long-to-int v0, v8

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x8

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->f(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$d;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$d;->a:Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;

    return-object p1
.end method

.method private l(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;Lorg/apache/commons/imaging/common/BasicCParser;)Ljava/awt/image/BufferedImage;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x100

    if-gt v3, v8, :cond_1

    .line 2
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v11, v3, [I

    .line 3
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;

    .line 5
    iget v9, v8, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->a:I

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->a()I

    move-result v8

    aput v8, v11, v9

    goto :goto_0

    .line 6
    :cond_0
    new-instance v3, Ljava/awt/image/IndexColorModel;

    const/16 v9, 0x8

    iget-object v8, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->h:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    .line 7
    iget v8, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->a:I

    iget v9, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->b:I

    invoke-static {v6, v8, v9, v7, v5}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v5

    const/16 v8, 0x8

    goto/16 :goto_2

    .line 8
    :cond_1
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/high16 v8, 0x10000

    if-gt v3, v8, :cond_3

    .line 9
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v11, v3, [I

    .line 10
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;

    .line 12
    iget v9, v8, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->a:I

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->a()I

    move-result v8

    aput v8, v11, v9

    goto :goto_1

    .line 13
    :cond_2
    new-instance v3, Ljava/awt/image/IndexColorModel;

    const/16 v9, 0x10

    iget-object v8, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->h:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    .line 14
    iget v8, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->a:I

    iget v9, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->b:I

    invoke-static {v7, v8, v9, v7, v5}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v5

    const/16 v8, 0x10

    goto :goto_2

    .line 15
    :cond_3
    new-instance v3, Ljava/awt/image/DirectColorModel;

    const/16 v9, 0x20

    const/high16 v10, 0xff0000

    const v11, 0xff00

    const/16 v12, 0xff

    const/high16 v13, -0x1000000

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Ljava/awt/image/DirectColorModel;-><init>(IIIII)V

    const/4 v8, 0x3

    .line 16
    iget v9, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->a:I

    iget v10, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->b:I

    const/4 v11, 0x4

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    invoke-static {v8, v9, v10, v11, v5}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v5

    const/16 v8, 0x20

    .line 17
    :goto_2
    new-instance v9, Ljava/awt/image/BufferedImage;

    .line 18
    invoke-virtual {v3}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v10

    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    invoke-direct {v9, v3, v5, v10, v11}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    .line 19
    invoke-virtual {v5}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v3

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 21
    :goto_3
    iget v12, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->b:I

    if-ge v10, v12, :cond_9

    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 23
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->c(Lorg/apache/commons/imaging/common/BasicCParser;Ljava/lang/StringBuilder;)Z

    move-result v11

    .line 24
    iget v12, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->b:I

    sub-int/2addr v12, v7

    if-ge v10, v12, :cond_5

    if-eqz v11, :cond_4

    goto :goto_4

    .line 25
    :cond_4
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Parsing XPM file failed, insufficient image rows in file"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_5
    :goto_4
    iget v12, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->a:I

    mul-int v12, v12, v10

    const/4 v13, 0x0

    .line 27
    :goto_5
    iget v14, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->a:I

    if-ge v13, v14, :cond_8

    .line 28
    iget v14, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->d:I

    mul-int v15, v13, v14

    add-int/lit8 v16, v13, 0x1

    mul-int v14, v14, v16

    invoke-virtual {v5, v15, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 29
    iget-object v15, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->h:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;

    if-eqz v15, :cond_7

    if-gt v8, v4, :cond_6

    add-int/2addr v13, v12

    .line 30
    iget v14, v15, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->a:I

    invoke-virtual {v3, v13, v14}, Ljava/awt/image/DataBuffer;->setElem(II)V

    goto :goto_6

    :cond_6
    add-int/2addr v13, v12

    .line 31
    invoke-virtual {v15}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->a()I

    move-result v14

    .line 32
    invoke-virtual {v3, v13, v14}, Ljava/awt/image/DataBuffer;->setElem(II)V

    :goto_6
    move/from16 v13, v16

    goto :goto_5

    .line 33
    :cond_7
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No palette entry was defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    :goto_7
    if-eqz v11, :cond_a

    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 35
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->c(Lorg/apache/commons/imaging/common/BasicCParser;Ljava/lang/StringBuilder;)Z

    move-result v11

    goto :goto_7

    .line 36
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v9

    .line 38
    :cond_b
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Last token wasn\'t \';\'"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0xff0000
        0xff00
        0xff
        -0x1000000
    .end array-data
.end method

.method private m(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "#"

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v2, v0

    new-array v0, v2, [C

    const/16 v2, 0x30

    .line 4
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->k(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->a(Ljava/io/PrintWriter;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->e:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    .line 1
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->XPM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v2, 0x0

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
    check-cast p2, Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->f(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$d;

    move-result-object p1

    .line 3
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$d;->a:Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$d;->b:Lorg/apache/commons/imaging/common/BasicCParser;

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->l(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;Lorg/apache/commons/imaging/common/BasicCParser;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->d:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultParameters()Lorg/apache/commons/imaging/ImagingParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->getDefaultParameters()Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParameters()Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;-><init>()V

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
    check-cast p2, Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)[B

    move-result-object p1

    return-object p1
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)[B
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
    check-cast p2, Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->k(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 4
    iget-object v2, v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v19, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;

    .line 6
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->a()I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    const/16 v19, 0x1

    .line 7
    :cond_1
    iget-boolean v4, v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->b:Z

    if-eqz v4, :cond_2

    .line 8
    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v4, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    if-eq v1, v4, :cond_0

    iget-boolean v4, v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->d:Z

    if-nez v4, :cond_3

    iget-boolean v3, v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$b;->f:Z

    if-eqz v3, :cond_0

    .line 10
    :cond_3
    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_0

    .line 11
    :cond_4
    new-instance v2, Lorg/apache/commons/imaging/ImageInfo;

    move-object v4, v2

    iget v3, v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->d:I

    mul-int/lit8 v6, v3, 0x8

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lorg/apache/commons/imaging/ImageFormats;->XPM:Lorg/apache/commons/imaging/ImageFormats;

    iget v10, v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->b:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget v0, v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->a:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v20, 0x1

    sget-object v22, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v5, "XPM version 3"

    const-string v9, "X PixMap"

    const-string v11, "image/x-xpixmap"

    move-object/from16 v21, v1

    invoke-direct/range {v4 .. v22}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v2
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
    check-cast p2, Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)Ljava/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)Ljava/awt/Dimension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->k(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/awt/Dimension;

    iget v0, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->a:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$c;->b:I

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
    check-cast p2, Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)Lorg/apache/commons/imaging/common/ImageMetadata;
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

    const-string v0, "X PixMap"

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
    check-cast p3, Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)V

    return-void
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/xpm/XpmImagingParameters;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    new-instance v3, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v3}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/4 v4, 0x1

    .line 3
    invoke-virtual {v3, v1, v4}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;I)Z

    move-result v5

    .line 4
    sget-object v6, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->g:[C

    array-length v6, v6

    const/4 v7, 0x0

    :cond_0
    :goto_0
    if-nez v7, :cond_4

    if-eqz v5, :cond_1

    add-int/lit8 v7, v6, -0x1

    goto :goto_1

    :cond_1
    move v7, v6

    .line 5
    :goto_1
    invoke-virtual {v3, v1, v7}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v7

    .line 6
    sget-object v8, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->g:[C

    array-length v9, v8

    mul-int v9, v9, v6

    int-to-long v9, v9

    add-int/lit8 v11, v4, 0x1

    int-to-long v12, v11

    const-wide/32 v14, 0x7fffffff

    cmp-long v16, v9, v14

    if-gtz v16, :cond_3

    cmp-long v9, v12, v14

    if-gtz v9, :cond_2

    if-nez v7, :cond_0

    .line 7
    array-length v4, v8

    mul-int v6, v6, v4

    move v4, v11

    goto :goto_0

    .line 8
    :cond_2
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "Xpm: Can\'t write images with more than Integer.MAX_VALUE chars per pixel."

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "Xpm: Can\'t write images with more than Integer.MAX_VALUE colors."

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_4
    invoke-virtual {v7}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v3

    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 11
    :cond_5
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v6, "/* XPM */\n"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "static char *"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "[] = {\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\",\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v3, :cond_7

    .line 16
    invoke-virtual {v7}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 17
    invoke-virtual {v7, v9}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v10

    invoke-direct {v0, v10}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->m(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_6
    const-string v10, "None"

    .line 18
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v9, v4}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->h(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " c "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 19
    sget-object v11, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    const-string v3, ""

    const/4 v8, 0x0

    .line 20
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 21
    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 22
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    const/4 v3, 0x0

    .line 23
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    if-ge v3, v9, :cond_9

    .line 24
    invoke-virtual {v1, v3, v8}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v9

    const/high16 v10, -0x1000000

    and-int/2addr v10, v9

    if-nez v10, :cond_8

    .line 25
    invoke-virtual {v7}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v9

    invoke-direct {v0, v9, v4}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->h(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_8
    const v10, 0xffffff

    and-int/2addr v9, v10

    .line 26
    invoke-virtual {v7, v9}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v9

    .line 27
    invoke-direct {v0, v9, v4}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->h(II)Ljava/lang/String;

    move-result-object v9

    .line 28
    :goto_6
    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 29
    :cond_9
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v8, v8, 0x1

    const-string v3, ",\n"

    goto :goto_4

    .line 30
    :cond_a
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v3, "\n};\n"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
