.class public Lsun/util/calendar/ZoneInfoFile;
.super Ljava/lang/Object;
.source "ZoneInfoFile.java"


# static fields
.field public static final JAVAZI_LABEL:[B

.field public static final JAVAZI_VERSION:B = 0x1t

.field public static final JAVAZM_FILE_NAME:Ljava/lang/String; = "ZoneInfoMappings"

.field public static final JAVAZM_LABEL:[B

.field public static final JAVAZM_VERSION:B = 0x1t

.field public static final TAG_CRC32:B = 0x3t

.field public static final TAG_ExcludedZones:B = 0x45t

.field public static final TAG_GMTOffsetWillChange:B = 0x7t

.field public static final TAG_LastDSTSaving:B = 0x2t

.field public static final TAG_Offset:B = 0x5t

.field public static final TAG_RawOffset:B = 0x1t

.field public static final TAG_RawOffsetIndices:B = 0x42t

.field public static final TAG_RawOffsets:B = 0x41t

.field public static final TAG_SimpleTimeZone:B = 0x6t

.field public static final TAG_TZDataVersion:B = 0x44t

.field public static final TAG_Transition:B = 0x4t

.field public static final TAG_ZoneAliases:B = 0x43t

.field public static final TAG_ZoneIDs:B = 0x40t

.field private static final a:I

.field private static final b:I

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsun/util/calendar/ZoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile f:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile g:Z

.field private static volatile h:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static volatile i:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[I>;"
        }
    .end annotation
.end field

.field private static volatile j:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lsun/util/calendar/ZoneInfoFile;->JAVAZI_LABEL:[B

    .line 2
    array-length v1, v1

    sput v1, Lsun/util/calendar/ZoneInfoFile;->a:I

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lsun/util/calendar/ZoneInfoFile;->JAVAZM_LABEL:[B

    .line 4
    array-length v0, v0

    sput v0, Lsun/util/calendar/ZoneInfoFile;->b:I

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lsun/util/calendar/ZoneInfoFile;->c:Ljava/util/Map;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string v3, "java.home"

    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lib"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "zi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    sput-object v1, Lsun/util/calendar/ZoneInfoFile;->d:Ljava/lang/String;

    .line 9
    sput-object v0, Lsun/util/calendar/ZoneInfoFile;->e:Ljava/lang/ref/SoftReference;

    .line 10
    sput-object v0, Lsun/util/calendar/ZoneInfoFile;->f:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    .line 11
    sput-boolean v1, Lsun/util/calendar/ZoneInfoFile;->g:Z

    .line 12
    sput-object v0, Lsun/util/calendar/ZoneInfoFile;->h:Ljava/lang/ref/SoftReference;

    .line 13
    sput-object v0, Lsun/util/calendar/ZoneInfoFile;->i:Ljava/lang/ref/SoftReference;

    .line 14
    sput-object v0, Lsun/util/calendar/ZoneInfoFile;->j:Ljava/lang/ref/SoftReference;

    return-void

    :array_0
    .array-data 1
        0x6at
        0x61t
        0x76t
        0x61t
        0x7at
        0x69t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x6at
        0x61t
        0x76t
        0x61t
        0x7at
        0x6dt
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lsun/util/calendar/ZoneInfoFile;->d:Ljava/lang/String;

    return-object v0
.end method

.method static declared-synchronized b(Ljava/lang/String;Lsun/util/calendar/ZoneInfo;)Lsun/util/calendar/ZoneInfo;
    .locals 2

    const-class v0, Lsun/util/calendar/ZoneInfoFile;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lsun/util/calendar/ZoneInfoFile;->c:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/util/calendar/ZoneInfoFile;->c:Ljava/util/Map;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/ZoneInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_1
    :goto_0
    :try_start_1
    sget-object v1, Lsun/util/calendar/ZoneInfoFile;->c:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(Ljava/lang/String;)Lsun/util/calendar/ZoneInfo;
    .locals 20

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p0 .. p0}, Lsun/util/calendar/ZoneInfoFile;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/util/calendar/ZoneInfoFile;->k(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 2
    :cond_0
    array-length v3, v0

    const/4 v5, 0x0

    .line 3
    :goto_0
    :try_start_0
    sget-object v6, Lsun/util/calendar/ZoneInfoFile;->JAVAZI_LABEL:[B

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 4
    aget-byte v7, v0, v5

    aget-byte v6, v6, v5

    if-eq v7, v6, :cond_1

    .line 5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZoneInfo: wrong magic number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v5, 0x1

    .line 6
    aget-byte v5, v0, v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_3

    .line 7
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZoneInfo: incompatible version ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v6, v7

    aget-byte v0, v0, v6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    :cond_3
    move-object v9, v2

    move-object v11, v9

    move-object v12, v11

    move v10, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v10, v3, :cond_9

    add-int/lit8 v14, v10, 0x1

    .line 8
    aget-byte v10, v0, v10

    add-int/lit8 v15, v14, 0x1

    .line 9
    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v16, 0x8

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v17, v15, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    add-int v15, v17, v14

    if-ge v3, v15, :cond_4

    move/from16 v18, v3

    move/from16 v10, v17

    goto/16 :goto_9

    :cond_4
    packed-switch v10, :pswitch_data_0

    move/from16 v18, v3

    .line 10
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto/16 :goto_7

    :pswitch_0
    if-eq v14, v7, :cond_5

    .line 11
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "ZoneInfo: wrong byte length for TAG_GMTOffsetWillChange"

    invoke-virtual {v10, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v10, v17, 0x1

    .line 12
    aget-byte v13, v0, v17

    if-ne v13, v7, :cond_6

    const/4 v13, 0x1

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    :goto_2
    move/from16 v18, v3

    goto/16 :goto_8

    :pswitch_1
    const/16 v10, 0x20

    if-eq v14, v10, :cond_7

    const/16 v10, 0x28

    if-eq v14, v10, :cond_7

    .line 13
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "ZoneInfo: wrong SimpleTimeZone parameter size"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    .line 14
    :cond_7
    div-int/lit8 v14, v14, 0x4

    .line 15
    new-array v12, v14, [I

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v14, :cond_8

    add-int/lit8 v15, v17, 0x1

    .line 16
    aget-byte v4, v0, v17

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v17, v15, 0x1

    .line 17
    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v4, v15

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v15, v17, 0x1

    .line 18
    aget-byte v7, v0, v17

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v17, v15, 0x1

    .line 19
    aget-byte v7, v0, v15

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    .line 20
    aput v4, v12, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    goto :goto_3

    .line 21
    :pswitch_2
    div-int/lit8 v14, v14, 0x4

    .line 22
    new-array v11, v14, [I

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v14, :cond_8

    add-int/lit8 v7, v17, 0x1

    .line 23
    aget-byte v10, v0, v17

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v15, v7, 0x1

    .line 24
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v10, v7

    shl-int/lit8 v7, v10, 0x8

    add-int/lit8 v10, v15, 0x1

    .line 25
    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v7, v15

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v17, v10, 0x1

    .line 26
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v7, v10

    .line 27
    aput v7, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 28
    :pswitch_3
    div-int/lit8 v14, v14, 0x8

    .line 29
    new-array v9, v14, [J

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v14, :cond_8

    add-int/lit8 v7, v17, 0x1

    .line 30
    aget-byte v10, v0, v17

    and-int/lit16 v10, v10, 0xff

    move/from16 v18, v3

    int-to-long v2, v10

    shl-long v2, v2, v16

    add-int/lit8 v10, v7, 0x1

    .line 31
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    move/from16 v19, v14

    int-to-long v14, v7

    add-long/2addr v2, v14

    shl-long v2, v2, v16

    add-int/lit8 v7, v10, 0x1

    .line 32
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    int-to-long v14, v10

    add-long/2addr v2, v14

    shl-long v2, v2, v16

    add-int/lit8 v10, v7, 0x1

    .line 33
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v14, v7

    add-long/2addr v2, v14

    shl-long v2, v2, v16

    add-int/lit8 v7, v10, 0x1

    .line 34
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    int-to-long v14, v10

    add-long/2addr v2, v14

    shl-long v2, v2, v16

    add-int/lit8 v10, v7, 0x1

    .line 35
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v14, v7

    add-long/2addr v2, v14

    shl-long v2, v2, v16

    add-int/lit8 v7, v10, 0x1

    .line 36
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    int-to-long v14, v10

    add-long/2addr v2, v14

    shl-long v2, v2, v16

    add-int/lit8 v17, v7, 0x1

    .line 37
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v14, v7

    add-long/2addr v2, v14

    .line 38
    aput-wide v2, v9, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v18

    move/from16 v14, v19

    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    move/from16 v18, v3

    move/from16 v10, v17

    goto/16 :goto_8

    :pswitch_4
    move/from16 v18, v3

    add-int/lit8 v2, v17, 0x1

    .line 39
    aget-byte v3, v0, v17

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x1

    .line 40
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    shl-int/lit8 v2, v3, 0x8

    add-int/lit8 v3, v4, 0x1

    .line 41
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    .line 42
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int v8, v2, v3

    goto :goto_6

    :pswitch_5
    move/from16 v18, v3

    add-int/lit8 v2, v17, 0x1

    .line 43
    aget-byte v3, v0, v17

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x1

    .line 44
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    int-to-short v2, v3

    mul-int/lit16 v6, v2, 0x3e8

    :goto_6
    move v10, v4

    goto :goto_8

    :pswitch_6
    move/from16 v18, v3

    add-int/lit8 v2, v17, 0x1

    .line 45
    aget-byte v3, v0, v17

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x1

    .line 46
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    shl-int/lit8 v2, v3, 0x8

    add-int/lit8 v3, v4, 0x1

    .line 47
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    .line 48
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int v5, v2, v3

    goto :goto_6

    .line 49
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZoneInfo: unknown tag < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ">. ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v15

    :goto_8
    move/from16 v3, v18

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_9
    move/from16 v18, v3

    :goto_9
    move/from16 v0, v18

    if-eq v10, v0, :cond_a

    .line 50
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZoneInfo: wrong file size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_a
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_a
    new-instance v10, Lsun/util/calendar/ZoneInfo;

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v5

    move v3, v6

    move v4, v8

    move-object v5, v9

    move-object v6, v11

    move-object v7, v12

    move v8, v13

    invoke-direct/range {v0 .. v8}, Lsun/util/calendar/ZoneInfo;-><init>(Ljava/lang/String;III[J[I[IZ)V

    return-object v10

    .line 52
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZoneInfo: corrupted zoneinfo file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static d()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lsun/util/calendar/ZoneInfoFile;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lsun/util/calendar/ZoneInfoFile;->f:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    return-object v0

    :cond_1
    move-object v0, v1

    .line 4
    :cond_2
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->j()[B

    move-result-object v2

    .line 5
    sget v3, Lsun/util/calendar/ZoneInfoFile;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 6
    array-length v5, v2

    :goto_0
    if-ge v3, v5, :cond_4

    add-int/lit8 v6, v3, 0x1

    .line 7
    :try_start_0
    aget-byte v3, v2, v3

    add-int/lit8 v7, v6, 0x1

    .line 8
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    const/16 v7, 0x45

    if-eq v3, v7, :cond_3

    add-int v3, v8, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v8, 0x1

    .line 9
    aget-byte v3, v2, v8

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_4

    add-int/lit8 v7, v5, 0x1

    .line 11
    aget-byte v5, v2, v5

    .line 12
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v2, v7, v5, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v5, v7

    .line 13
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 14
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "ZoneInfo: corrupted ZoneInfoMappings"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1

    :cond_4
    if-eqz v0, :cond_5

    .line 15
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lsun/util/calendar/ZoneInfoFile;->f:Ljava/lang/ref/SoftReference;

    goto :goto_2

    .line 16
    :cond_5
    sput-boolean v4, Lsun/util/calendar/ZoneInfoFile;->g:Z

    :goto_2
    return-object v0
.end method

.method static declared-synchronized e(Ljava/lang/String;)Lsun/util/calendar/ZoneInfo;
    .locals 2

    const-class v0, Lsun/util/calendar/ZoneInfoFile;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lsun/util/calendar/ZoneInfoFile;->c:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 2
    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/util/calendar/ZoneInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static f()[B
    .locals 7

    .line 1
    sget-object v0, Lsun/util/calendar/ZoneInfoFile;->h:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :cond_1
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->j()[B

    move-result-object v1

    .line 4
    sget v2, Lsun/util/calendar/ZoneInfoFile;->b:I

    add-int/lit8 v2, v2, 0x1

    .line 5
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 6
    :try_start_0
    aget-byte v2, v1, v2

    add-int/lit8 v5, v4, 0x1

    .line 7
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    const/16 v5, 0x42

    if-eq v2, v5, :cond_2

    add-int v2, v6, v4

    goto :goto_0

    .line 8
    :cond_2
    new-array v0, v4, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    add-int/lit8 v3, v6, 0x1

    .line 9
    aget-byte v5, v1, v6

    aput-byte v5, v0, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    move v6, v3

    goto :goto_1

    .line 10
    :catch_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "ZoneInfo: corrupted ZoneInfoMappings"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    :cond_3
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lsun/util/calendar/ZoneInfoFile;->h:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static g()[I
    .locals 7

    .line 1
    sget-object v0, Lsun/util/calendar/ZoneInfoFile;->i:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :cond_1
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->j()[B

    move-result-object v1

    .line 4
    sget v2, Lsun/util/calendar/ZoneInfoFile;->b:I

    add-int/lit8 v2, v2, 0x1

    .line 5
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 6
    :try_start_0
    aget-byte v2, v1, v2

    add-int/lit8 v5, v4, 0x1

    .line 7
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    const/16 v5, 0x41

    if-eq v2, v5, :cond_2

    add-int v2, v6, v4

    goto :goto_0

    .line 8
    :cond_2
    div-int/lit8 v4, v4, 0x4

    .line 9
    new-array v0, v4, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    add-int/lit8 v3, v6, 0x1

    .line 10
    aget-byte v5, v1, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v3, 0x1

    .line 11
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v5, v3

    shl-int/lit8 v3, v5, 0x8

    add-int/lit8 v5, v6, 0x1

    .line 12
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v6, v5, 0x1

    .line 13
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 14
    aput v3, v0, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :catch_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "ZoneInfo: corrupted ZoneInfoMappings"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    :cond_3
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lsun/util/calendar/ZoneInfoFile;->i:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public static getCustomTimeZone(Ljava/lang/String;I)Lsun/util/calendar/ZoneInfo;
    .locals 2

    .line 1
    invoke-static {p1}, Lsun/util/calendar/ZoneInfoFile;->toCustomID(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lsun/util/calendar/ZoneInfoFile;->e(Ljava/lang/String;)Lsun/util/calendar/ZoneInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lsun/util/calendar/ZoneInfo;

    invoke-direct {v1, v0, p1}, Lsun/util/calendar/ZoneInfo;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-static {v0, v1}, Lsun/util/calendar/ZoneInfoFile;->b(Ljava/lang/String;Lsun/util/calendar/ZoneInfo;)Lsun/util/calendar/ZoneInfo;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-static {p0, v1}, Lsun/util/calendar/ZoneInfoFile;->b(Ljava/lang/String;Lsun/util/calendar/ZoneInfo;)Lsun/util/calendar/ZoneInfo;

    move-result-object v1

    .line 7
    :cond_0
    invoke-virtual {v1}, Lsun/util/calendar/ZoneInfo;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/util/calendar/ZoneInfo;

    return-object p0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getZoneInfo(Ljava/lang/String;)Lsun/util/calendar/ZoneInfo;
    .locals 1

    .line 1
    invoke-static {p0}, Lsun/util/calendar/ZoneInfoFile;->e(Ljava/lang/String;)Lsun/util/calendar/ZoneInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lsun/util/calendar/ZoneInfoFile;->c(Ljava/lang/String;)Lsun/util/calendar/ZoneInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, v0}, Lsun/util/calendar/ZoneInfoFile;->b(Ljava/lang/String;Lsun/util/calendar/ZoneInfo;)Lsun/util/calendar/ZoneInfo;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lsun/util/calendar/ZoneInfo;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/util/calendar/ZoneInfo;

    return-object p0
.end method

.method static h()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 1
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->j()[B

    move-result-object v1

    .line 2
    sget v2, Lsun/util/calendar/ZoneInfoFile;->b:I

    add-int/lit8 v2, v2, 0x1

    .line 3
    array-length v3, v1

    :goto_0
    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 4
    :try_start_0
    aget-byte v2, v1, v2

    add-int/lit8 v6, v5, 0x1

    .line 5
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    const/16 v6, 0x43

    if-eq v2, v6, :cond_0

    add-int v2, v7, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v7, 0x1

    .line 6
    aget-byte v3, v1, v7

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    .line 7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_1

    add-int/lit8 v7, v5, 0x1

    .line 8
    aget-byte v5, v1, v5

    .line 9
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v7, v5, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v7, v5

    add-int/lit8 v5, v7, 0x1

    .line 10
    aget-byte v7, v1, v7

    .line 11
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1, v5, v7, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v5, v7

    .line 12
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v2

    goto :goto_2

    .line 13
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ZoneInfo: corrupted ZoneInfoMappings"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v4
.end method

.method static i()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/util/calendar/ZoneInfoFile;->e:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :cond_1
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->j()[B

    move-result-object v1

    .line 4
    sget v2, Lsun/util/calendar/ZoneInfoFile;->b:I

    add-int/lit8 v2, v2, 0x1

    .line 5
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 6
    :try_start_0
    aget-byte v2, v1, v2

    add-int/lit8 v5, v4, 0x1

    .line 7
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    const/16 v5, 0x40

    if-eq v2, v5, :cond_2

    add-int v2, v6, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v6, 0x1

    .line 8
    aget-byte v3, v1, v6

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    add-int/lit8 v5, v4, 0x1

    .line 10
    :try_start_1
    aget-byte v4, v1, v4

    .line 11
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v5, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_3

    .line 12
    :catch_1
    :goto_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "ZoneInfo: corrupted ZoneInfoMappings"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    :cond_4
    :goto_3
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lsun/util/calendar/ZoneInfoFile;->e:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method private static j()[B
    .locals 8

    .line 1
    sget-object v0, Lsun/util/calendar/ZoneInfoFile;->j:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ZoneInfoMappings"

    .line 3
    invoke-static {v0}, Lsun/util/calendar/ZoneInfoFile;->k(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_0
    sget-object v4, Lsun/util/calendar/ZoneInfoFile;->JAVAZM_LABEL:[B

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 5
    aget-byte v5, v1, v3

    aget-byte v4, v4, v3

    if-eq v5, v4, :cond_2

    .line 6
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ZoneInfo: wrong magic number: ZoneInfoMappings"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v3, 0x1

    .line 7
    aget-byte v3, v1, v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_4

    .line 8
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZoneInfo: incompatible version ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v4, v5

    aget-byte v1, v1, v4

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    .line 9
    :cond_4
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lsun/util/calendar/ZoneInfoFile;->j:Ljava/lang/ref/SoftReference;

    return-object v1
.end method

.method private static k(Ljava/lang/String;)[B
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lsun/util/calendar/ZoneInfoFile$a;

    invoke-direct {v0, p0}, Lsun/util/calendar/ZoneInfoFile$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_0

    const-string v1, "ZoneInfoMappings"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static toCustomID(I)Ljava/lang/String;
    .locals 9

    const v0, 0xea60

    .line 1
    div-int/2addr p0, v0

    if-ltz p0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    neg-int p0, p0

    .line 2
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 3
    rem-int/lit8 p0, p0, 0x3c

    const/16 v2, 0x9

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v2, v3

    const/4 v3, 0x3

    aput-char v0, v2, v3

    const/4 v0, 0x4

    const/16 v3, 0x30

    aput-char v3, v2, v0

    const/4 v4, 0x5

    aput-char v3, v2, v4

    const/4 v5, 0x6

    const/16 v6, 0x3a

    aput-char v6, v2, v5

    const/4 v5, 0x7

    aput-char v3, v2, v5

    const/16 v6, 0x8

    aput-char v3, v2, v6

    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    .line 4
    aget-char v7, v2, v0

    div-int/lit8 v8, v1, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v2, v0

    .line 5
    :cond_1
    aget-char v0, v2, v4

    rem-int/2addr v1, v3

    add-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, v2, v4

    if-eqz p0, :cond_2

    .line 6
    aget-char v0, v2, v5

    div-int/lit8 v1, p0, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, v2, v5

    .line 7
    aget-char v0, v2, v6

    rem-int/2addr p0, v3

    add-int/2addr v0, p0

    int-to-char p0, v0

    aput-char p0, v2, v6

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
