.class public Lsun/util/calendar/ZoneInfo;
.super Ljava/util/TimeZone;
.source "ZoneInfo.java"


# static fields
.field static final a:Z

.field static final b:[Ljava/lang/String;

.field private static final c:Lsun/util/calendar/CalendarSystem;

.field private static d:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:[J

.field private j:[I

.field private k:[I

.field private l:Z

.field private transient m:Z

.field private transient n:Ljava/util/SimpleTimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "sun.timezone.ids.oldmapping"

    const-string v2, "false"

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lsun/util/calendar/ZoneInfo;->a:Z

    const-string v0, "EST"

    const-string v1, "MST"

    const-string v2, "HST"

    .line 4
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/util/calendar/ZoneInfo;->b:[Ljava/lang/String;

    .line 5
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Lsun/util/calendar/ZoneInfo;->c:Lsun/util/calendar/CalendarSystem;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsun/util/calendar/ZoneInfo;->f:I

    .line 3
    iput-boolean v0, p0, Lsun/util/calendar/ZoneInfo;->l:Z

    .line 4
    iput-boolean v0, p0, Lsun/util/calendar/ZoneInfo;->m:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 5
    invoke-direct/range {v0 .. v8}, Lsun/util/calendar/ZoneInfo;-><init>(Ljava/lang/String;III[J[I[IZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;III[J[I[IZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lsun/util/calendar/ZoneInfo;->f:I

    .line 8
    iput-boolean v0, p0, Lsun/util/calendar/ZoneInfo;->l:Z

    .line 9
    iput-boolean v0, p0, Lsun/util/calendar/ZoneInfo;->m:Z

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 11
    iput p2, p0, Lsun/util/calendar/ZoneInfo;->e:I

    .line 12
    iput p3, p0, Lsun/util/calendar/ZoneInfo;->h:I

    .line 13
    iput p4, p0, Lsun/util/calendar/ZoneInfo;->g:I

    .line 14
    iput-object p5, p0, Lsun/util/calendar/ZoneInfo;->i:[J

    .line 15
    iput-object p6, p0, Lsun/util/calendar/ZoneInfo;->j:[I

    .line 16
    iput-object p7, p0, Lsun/util/calendar/ZoneInfo;->k:[I

    .line 17
    iput-boolean p8, p0, Lsun/util/calendar/ZoneInfo;->l:Z

    return-void
.end method

.method static a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/util/calendar/ZoneInfo;->d:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private b()I
    .locals 2

    .line 1
    iget v0, p0, Lsun/util/calendar/ZoneInfo;->e:I

    iget v1, p0, Lsun/util/calendar/ZoneInfo;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method private declared-synchronized c()Ljava/util/SimpleTimeZone;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lsun/util/calendar/ZoneInfo;->n:Ljava/util/SimpleTimeZone;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lsun/util/calendar/ZoneInfo;->getLastRuleInstance()Ljava/util/SimpleTimeZone;

    move-result-object v0

    iput-object v0, p0, Lsun/util/calendar/ZoneInfo;->n:Ljava/util/SimpleTimeZone;

    .line 3
    :cond_0
    iget-object v0, p0, Lsun/util/calendar/ZoneInfo;->n:Ljava/util/SimpleTimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(J[II)I
    .locals 7

    .line 1
    iget-object v0, p0, Lsun/util/calendar/ZoneInfo;->i:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result p1

    if-eqz p3, :cond_0

    .line 3
    aput p1, p3, v2

    .line 4
    aput v2, p3, v1

    :cond_0
    return p1

    .line 5
    :cond_1
    iget v0, p0, Lsun/util/calendar/ZoneInfo;->f:I

    int-to-long v3, v0

    sub-long/2addr p1, v3

    .line 6
    invoke-direct {p0, p1, p2, p4}, Lsun/util/calendar/ZoneInfo;->e(JI)I

    move-result v0

    if-gez v0, :cond_3

    .line 7
    invoke-direct {p0}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result p1

    if-eqz p3, :cond_2

    .line 8
    aput p1, p3, v2

    .line 9
    aput v2, p3, v1

    :cond_2
    return p1

    .line 10
    :cond_3
    iget-object v3, p0, Lsun/util/calendar/ZoneInfo;->i:[J

    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 11
    aget-wide p1, v3, v0

    .line 12
    iget-object p4, p0, Lsun/util/calendar/ZoneInfo;->j:[I

    const-wide/16 v3, 0xf

    and-long v5, p1, v3

    long-to-int v0, v5

    aget v0, p4, v0

    iget v5, p0, Lsun/util/calendar/ZoneInfo;->f:I

    add-int/2addr v0, v5

    if-eqz p3, :cond_5

    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    and-long/2addr p1, v3

    long-to-int p2, p1

    if-nez p2, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    .line 13
    :cond_4
    aget p1, p4, p2

    :goto_0
    sub-int p2, v0, p1

    .line 14
    aput p2, p3, v2

    .line 15
    aput p1, p3, v1

    :cond_5
    return v0

    .line 16
    :cond_6
    invoke-direct {p0}, Lsun/util/calendar/ZoneInfo;->c()Ljava/util/SimpleTimeZone;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {v0}, Ljava/util/SimpleTimeZone;->getRawOffset()I

    move-result v3

    if-eqz p4, :cond_7

    .line 18
    iget p4, p0, Lsun/util/calendar/ZoneInfo;->e:I

    int-to-long v4, p4

    sub-long/2addr p1, v4

    .line 19
    :cond_7
    invoke-virtual {v0, p1, p2}, Ljava/util/SimpleTimeZone;->getOffset(J)I

    move-result p4

    iget v4, p0, Lsun/util/calendar/ZoneInfo;->e:I

    sub-int/2addr p4, v4

    if-lez p4, :cond_8

    int-to-long v4, p4

    sub-long/2addr p1, v4

    .line 20
    invoke-virtual {v0, p1, p2}, Ljava/util/SimpleTimeZone;->getOffset(J)I

    move-result p1

    if-ne p1, v3, :cond_8

    const/4 p4, 0x0

    :cond_8
    if-eqz p3, :cond_9

    .line 21
    aput v3, p3, v2

    .line 22
    aput p4, p3, v1

    :cond_9
    add-int/2addr v3, p4

    return v3

    .line 23
    :cond_a
    invoke-direct {p0}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result p1

    if-eqz p3, :cond_b

    .line 24
    aput p1, p3, v2

    .line 25
    aput v2, p3, v1

    :cond_b
    return p1
.end method

.method private final e(JI)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    .line 1
    iget-object v2, v0, Lsun/util/calendar/ZoneInfo;->i:[J

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v2, :cond_4

    add-int v5, v4, v2

    .line 2
    div-int/lit8 v5, v5, 0x2

    .line 3
    iget-object v6, v0, Lsun/util/calendar/ZoneInfo;->i:[J

    aget-wide v7, v6, v5

    const/16 v6, 0xc

    shr-long v9, v7, v6

    const-wide/16 v11, 0xf

    if-eqz v1, :cond_0

    .line 4
    iget-object v6, v0, Lsun/util/calendar/ZoneInfo;->j:[I

    and-long v13, v7, v11

    long-to-int v14, v13

    aget v6, v6, v14

    int-to-long v13, v6

    add-long/2addr v9, v13

    :cond_0
    if-ne v1, v3, :cond_1

    const/4 v6, 0x4

    ushr-long v6, v7, v6

    and-long/2addr v6, v11

    long-to-int v7, v6

    if-eqz v7, :cond_1

    .line 5
    iget-object v6, v0, Lsun/util/calendar/ZoneInfo;->j:[I

    aget v6, v6, v7

    int-to-long v6, v6

    sub-long/2addr v9, v6

    :cond_1
    cmp-long v6, v9, p1

    if-gez v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    goto :goto_0

    :cond_2
    if-lez v6, :cond_3

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    goto :goto_0

    :cond_3
    return v5

    .line 6
    :cond_4
    iget-object v1, v0, Lsun/util/calendar/ZoneInfo;->i:[J

    array-length v1, v1

    if-lt v4, v1, :cond_5

    return v4

    :cond_5
    sub-int/2addr v4, v3

    return v4
.end method

.method public static declared-synchronized getAliasTable()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lsun/util/calendar/ZoneInfo;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lsun/util/calendar/ZoneInfo;->a()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->h()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    sget-boolean v2, Lsun/util/calendar/ZoneInfo;->a:Z

    if-nez v2, :cond_0

    .line 4
    sget-object v2, Lsun/util/calendar/ZoneInfo;->b:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 5
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lsun/util/calendar/ZoneInfo;->d:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAvailableIDs()[Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->i()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v2

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getAvailableIDs(I)[Ljava/lang/String;
    .locals 8

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->i()Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->g()[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 11
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 12
    aget v5, v2, v4

    if-ne v5, p0, :cond_1

    .line 13
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->f()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 14
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 15
    aget-byte v7, v5, v6

    if-ne v7, v4, :cond_0

    add-int/lit8 v2, v6, 0x1

    .line 16
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :goto_2
    array-length v3, v5

    if-ge v2, v3, :cond_2

    aget-byte v3, v5, v2

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Lsun/util/calendar/ZoneInfoFile;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    invoke-static {v2}, Lsun/util/calendar/ZoneInfo;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 22
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-ne v3, p0, :cond_3

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 25
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 5

    .line 1
    sget-boolean v0, Lsun/util/calendar/ZoneInfo;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lsun/util/calendar/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p0}, Lsun/util/calendar/ZoneInfoFile;->getZoneInfo(Ljava/lang/String;)Lsun/util/calendar/ZoneInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4
    :try_start_0
    invoke-static {}, Lsun/util/calendar/ZoneInfo;->getAliasTable()Ljava/util/Map;

    move-result-object v2

    move-object v3, p0

    .line 5
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 6
    invoke-static {v3}, Lsun/util/calendar/ZoneInfoFile;->getZoneInfo(Ljava/lang/String;)Lsun/util/calendar/ZoneInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, p0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 8
    invoke-static {p0, v1}, Lsun/util/calendar/ZoneInfoFile;->b(Ljava/lang/String;Lsun/util/calendar/ZoneInfo;)Lsun/util/calendar/ZoneInfo;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lsun/util/calendar/ZoneInfo;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/util/calendar/ZoneInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/ZoneInfo;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lsun/util/calendar/ZoneInfo;->n:Ljava/util/SimpleTimeZone;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lsun/util/calendar/ZoneInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lsun/util/calendar/ZoneInfo;

    .line 3
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-direct {p0}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result v1

    invoke-direct {p1}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lsun/util/calendar/ZoneInfo;->g:I

    iget p1, p1, Lsun/util/calendar/ZoneInfo;->g:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDSTSavings()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/ZoneInfo;->h:I

    return v0
.end method

.method public getLastRuleInstance()Ljava/util/SimpleTimeZone;
    .locals 36

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lsun/util/calendar/ZoneInfo;->k:[I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2
    :cond_0
    array-length v1, v1

    const/16 v2, 0xa

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v1, v2, :cond_1

    .line 3
    new-instance v1, Ljava/util/SimpleTimeZone;

    invoke-direct/range {p0 .. p0}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lsun/util/calendar/ZoneInfo;->k:[I

    aget v14, v2, v10

    aget v15, v2, v9

    aget v16, v2, v8

    aget v17, v2, v7

    aget v18, v2, v6

    aget v19, v2, v5

    aget v20, v2, v4

    aget v21, v2, v3

    const/16 v3, 0x8

    aget v22, v2, v3

    const/16 v3, 0x9

    aget v23, v2, v3

    iget v2, v0, Lsun/util/calendar/ZoneInfo;->h:I

    move-object v11, v1

    move/from16 v24, v2

    invoke-direct/range {v11 .. v24}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    return-object v1

    .line 4
    :cond_1
    new-instance v1, Ljava/util/SimpleTimeZone;

    invoke-direct/range {p0 .. p0}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    iget-object v2, v0, Lsun/util/calendar/ZoneInfo;->k:[I

    aget v27, v2, v10

    aget v28, v2, v9

    aget v29, v2, v8

    aget v30, v2, v7

    aget v31, v2, v6

    aget v32, v2, v5

    aget v33, v2, v4

    aget v34, v2, v3

    iget v2, v0, Lsun/util/calendar/ZoneInfo;->h:I

    move-object/from16 v24, v1

    move/from16 v35, v2

    invoke-direct/range {v24 .. v35}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    return-object v1
.end method

.method public getOffset(IIIIII)I
    .locals 3

    if-ltz p6, :cond_5

    const v0, 0x5265c00

    if-ge p6, v0, :cond_5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    rsub-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_4

    .line 2
    :goto_0
    sget-object p1, Lsun/util/calendar/ZoneInfo;->c:Lsun/util/calendar/CalendarSystem;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lsun/util/calendar/CalendarSystem;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    add-int/2addr p3, v0

    .line 3
    invoke-virtual {v2, p2, p3, p4}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 4
    invoke-virtual {p1, v2}, Lsun/util/calendar/CalendarSystem;->validate(Lsun/util/calendar/CalendarDate;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-lt p5, v0, :cond_2

    const/4 p2, 0x7

    if-gt p5, p2, :cond_2

    .line 5
    iget-object p2, p0, Lsun/util/calendar/ZoneInfo;->i:[J

    if-nez p2, :cond_1

    .line 6
    invoke-direct {p0}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result p1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p1, v2}, Lsun/util/calendar/CalendarSystem;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide p1

    int-to-long p3, p6

    add-long/2addr p1, p3

    .line 8
    iget p3, p0, Lsun/util/calendar/ZoneInfo;->e:I

    int-to-long p3, p3

    sub-long/2addr p1, p3

    const/4 p3, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v1, p3}, Lsun/util/calendar/ZoneInfo;->d(J[II)I

    move-result p1

    return p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getOffset(J)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lsun/util/calendar/ZoneInfo;->d(J[II)I

    move-result p1

    return p1
.end method

.method public getOffsets(J[I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lsun/util/calendar/ZoneInfo;->d(J[II)I

    move-result p1

    return p1
.end method

.method public getOffsetsByStandard(J[I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lsun/util/calendar/ZoneInfo;->d(J[II)I

    move-result p1

    return p1
.end method

.method public getOffsetsByWall(J[I)I
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lsun/util/calendar/ZoneInfo;->d(J[II)I

    move-result p1

    return p1
.end method

.method public getRawOffset()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lsun/util/calendar/ZoneInfo;->l:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lsun/util/calendar/ZoneInfo;->e:I

    iget v1, p0, Lsun/util/calendar/ZoneInfo;->f:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lsun/util/calendar/ZoneInfo;->d(J[II)I

    .line 4
    aget v0, v0, v3

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lsun/util/calendar/ZoneInfo;

    if-nez v2, :cond_4

    .line 2
    invoke-virtual {p0}, Lsun/util/calendar/ZoneInfo;->getRawOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 3
    :cond_2
    iget-object v2, p0, Lsun/util/calendar/ZoneInfo;->i:[J

    if-nez v2, :cond_3

    .line 4
    invoke-virtual {p0}, Lsun/util/calendar/ZoneInfo;->useDaylightTime()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v1

    .line 6
    :cond_4
    invoke-direct {p0}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result v2

    check-cast p1, Lsun/util/calendar/ZoneInfo;

    invoke-direct {p1}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result v3

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget v2, p0, Lsun/util/calendar/ZoneInfo;->g:I

    iget p1, p1, Lsun/util/calendar/ZoneInfo;->g:I

    if-ne v2, p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result v0

    iget v1, p0, Lsun/util/calendar/ZoneInfo;->g:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lsun/util/calendar/ZoneInfo;->i:[J

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget v0, p0, Lsun/util/calendar/ZoneInfo;->f:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 4
    invoke-direct {p0, v2, v3, v1}, Lsun/util/calendar/ZoneInfo;->e(JI)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v2, p0, Lsun/util/calendar/ZoneInfo;->i:[J

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 6
    aget-wide v3, v2, v0

    const-wide/16 v5, 0xf0

    and-long v2, v3, v5

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 7
    :cond_3
    invoke-direct {p0}, Lsun/util/calendar/ZoneInfo;->c()Ljava/util/SimpleTimeZone;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/SimpleTimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public isDirty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsun/util/calendar/ZoneInfo;->m:Z

    return v0
.end method

.method public observesDaylightTime()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lsun/util/calendar/ZoneInfo;->k:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lsun/util/calendar/ZoneInfo;->i:[J

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v0, p0, Lsun/util/calendar/ZoneInfo;->f:I

    int-to-long v5, v0

    sub-long/2addr v3, v5

    .line 4
    invoke-direct {p0, v3, v4, v2}, Lsun/util/calendar/ZoneInfo;->e(JI)I

    move-result v0

    if-gez v0, :cond_2

    return v2

    .line 5
    :cond_2
    :goto_0
    iget-object v3, p0, Lsun/util/calendar/ZoneInfo;->i:[J

    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 6
    aget-wide v4, v3, v0

    const-wide/16 v6, 0xf0

    and-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public declared-synchronized setRawOffset(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lsun/util/calendar/ZoneInfo;->e:I

    iget v1, p0, Lsun/util/calendar/ZoneInfo;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    sub-int v0, p1, v0

    .line 3
    :try_start_1
    iput v0, p0, Lsun/util/calendar/ZoneInfo;->f:I

    .line 4
    iget-object v0, p0, Lsun/util/calendar/ZoneInfo;->n:Ljava/util/SimpleTimeZone;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/SimpleTimeZone;->setRawOffset(I)V

    :cond_1
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lsun/util/calendar/ZoneInfo;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0}, Lsun/util/calendar/ZoneInfo;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",dstSavings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun/util/calendar/ZoneInfo;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",useDaylight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lsun/util/calendar/ZoneInfo;->useDaylightTime()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",transitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/util/calendar/ZoneInfo;->i:[J

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",lastRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/util/calendar/ZoneInfo;->n:Ljava/util/SimpleTimeZone;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lsun/util/calendar/ZoneInfo;->getLastRuleInstance()Ljava/util/SimpleTimeZone;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/ZoneInfo;->k:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
