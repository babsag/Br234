.class public abstract Lsun/util/calendar/CalendarSystem;
.super Ljava/lang/Object;
.source "CalendarSystem.java"


# static fields
.field private static volatile a:Z = false

.field private static b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lsun/util/calendar/CalendarSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[Ljava/lang/String;

.field private static final e:Lsun/util/calendar/Gregorian;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "gregorian"

    const-string v1, "Gregorian"

    const-string v2, "japanese"

    const-string v3, "LocalGregorianCalendar"

    const-string v4, "julian"

    const-string v5, "JulianCalendar"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/util/calendar/CalendarSystem;->d:[Ljava/lang/String;

    .line 2
    new-instance v0, Lsun/util/calendar/Gregorian;

    invoke-direct {v0}, Lsun/util/calendar/Gregorian;-><init>()V

    sput-object v0, Lsun/util/calendar/CalendarSystem;->e:Lsun/util/calendar/Gregorian;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    sget-object v4, Lsun/util/calendar/CalendarSystem;->d:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v5, "sun.util.calendar."

    .line 5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    aget-object v4, v4, v3

    invoke-interface {v0, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 7
    :cond_0
    const-class v1, Lsun/util/calendar/CalendarSystem;

    monitor-enter v1

    .line 8
    :try_start_0
    sget-boolean v2, Lsun/util/calendar/CalendarSystem;->a:Z

    if-nez v2, :cond_1

    .line 9
    sput-object v0, Lsun/util/calendar/CalendarSystem;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lsun/util/calendar/CalendarSystem;->c:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lsun/util/calendar/CalendarSystem;->a:Z

    .line 12
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;
    .locals 3

    const-string v0, "gregorian"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lsun/util/calendar/CalendarSystem;->e:Lsun/util/calendar/Gregorian;

    return-object p0

    .line 3
    :cond_0
    sget-boolean v0, Lsun/util/calendar/CalendarSystem;->a:Z

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->a()V

    .line 5
    :cond_1
    sget-object v0, Lsun/util/calendar/CalendarSystem;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/CalendarSystem;

    if-eqz v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    sget-object v0, Lsun/util/calendar/CalendarSystem;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    const-string v2, "LocalGregorianCalendar"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    invoke-static {p0}, Lsun/util/calendar/LocalGregorianCalendar;->j(Ljava/lang/String;)Lsun/util/calendar/LocalGregorianCalendar;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_4
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/CalendarSystem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_5

    return-object v1

    .line 11
    :cond_5
    sget-object v1, Lsun/util/calendar/CalendarSystem;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/util/calendar/CalendarSystem;

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    move-object v0, p0

    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getGregorianCalendar()Lsun/util/calendar/Gregorian;
    .locals 1

    .line 1
    sget-object v0, Lsun/util/calendar/CalendarSystem;->e:Lsun/util/calendar/Gregorian;

    return-object v0
.end method


# virtual methods
.method public abstract getCalendarDate()Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getCalendarDate(J)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getEra(Ljava/lang/String;)Lsun/util/calendar/Era;
.end method

.method public abstract getEras()[Lsun/util/calendar/Era;
.end method

.method public abstract getMonthLength(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract getTime(Lsun/util/calendar/CalendarDate;)J
.end method

.method public abstract getWeekLength()I
.end method

.method public abstract getYearLength(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract getYearLengthInMonths(Lsun/util/calendar/CalendarDate;)I
.end method

.method public abstract newCalendarDate()Lsun/util/calendar/CalendarDate;
.end method

.method public abstract newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract normalize(Lsun/util/calendar/CalendarDate;)Z
.end method

.method public abstract setEra(Lsun/util/calendar/CalendarDate;Ljava/lang/String;)V
.end method

.method public abstract setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;
.end method

.method public abstract validate(Lsun/util/calendar/CalendarDate;)Z
.end method
