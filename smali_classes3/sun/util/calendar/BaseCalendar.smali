.class public abstract Lsun/util/calendar/BaseCalendar;
.super Lsun/util/calendar/AbstractCalendar;
.source "BaseCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/BaseCalendar$Date;
    }
.end annotation


# static fields
.field public static final APRIL:I = 0x4

.field public static final AUGUST:I = 0x8

.field public static final DECEMBER:I = 0xc

.field public static final FEBRUARY:I = 0x2

.field public static final FRIDAY:I = 0x6

.field public static final JANUARY:I = 0x1

.field public static final JULY:I = 0x7

.field public static final JUNE:I = 0x6

.field public static final MARCH:I = 0x3

.field public static final MAY:I = 0x5

.field public static final MONDAY:I = 0x2

.field public static final NOVEMBER:I = 0xb

.field public static final OCTOBER:I = 0xa

.field public static final SATURDAY:I = 0x7

.field public static final SEPTEMBER:I = 0x9

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final WEDNESDAY:I = 0x4

.field private static final g:[I

.field static final h:[I

.field static final i:[I

.field static final j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x46

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lsun/util/calendar/BaseCalendar;->g:[I

    const/16 v0, 0xd

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lsun/util/calendar/BaseCalendar;->h:[I

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lsun/util/calendar/BaseCalendar;->i:[I

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Lsun/util/calendar/BaseCalendar;->j:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xaf93b
        0xafaa8
        0xafc15
        0xafd83
        0xafef0
        0xb005d
        0xb01ca
        0xb0338
        0xb04a5
        0xb0612
        0xb077f
        0xb08ed
        0xb0a5a
        0xb0bc7
        0xb0d34
        0xb0ea2
        0xb100f
        0xb117c
        0xb12e9
        0xb1457
        0xb15c4
        0xb1731
        0xb189e
        0xb1a0c
        0xb1b79
        0xb1ce6
        0xb1e53
        0xb1fc1
        0xb212e
        0xb229b
        0xb2408
        0xb2576
        0xb26e3
        0xb2850
        0xb29bd
        0xb2b2b
        0xb2c98
        0xb2e05
        0xb2f72
        0xb30e0
        0xb324d
        0xb33ba
        0xb3527
        0xb3695
        0xb3802
        0xb396f
        0xb3adc
        0xb3c4a
        0xb3db7
        0xb3f24
        0xb4091
        0xb41ff
        0xb436c
        0xb44d9
        0xb4646
        0xb47b4
        0xb4921
        0xb4a8e
        0xb4bfb
        0xb4d69
        0xb4ed6
        0xb5043
        0xb51b0
        0xb531e    # 1.040007E-39f
        0xb548b
        0xb55f8
        0xb5765
        0xb58d3
        0xb5a40
        0xb5bad
    .end array-data

    :array_1
    .array-data 4
        0x1f
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_2
    .array-data 4
        -0x1e
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    :array_3
    .array-data 4
        -0x1e
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/AbstractCalendar;-><init>()V

    return-void
.end method

.method private final g(II)I
    .locals 2

    .line 1
    sget-object v0, Lsun/util/calendar/BaseCalendar;->h:[I

    aget v0, v0, p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public static final getDayOfWeekFromFixedDate(J)I
    .locals 5

    const-wide/16 v0, 0x7

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    .line 1
    rem-long/2addr p0, v0

    :goto_0
    long-to-int p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-static {p0, p1, v0, v1}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide p0

    goto :goto_0
.end method


# virtual methods
.method final e(III)J
    .locals 2

    int-to-long v0, p3

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lsun/util/calendar/BaseCalendar;->j:[I

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    sget-object p1, Lsun/util/calendar/BaseCalendar;->i:[I

    aget p1, p1, p2

    :goto_0
    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method final f(J)I
    .locals 10

    const-wide/16 v0, 0x1

    const/16 v2, 0x16d

    const/16 v3, 0x5b5

    const v4, 0x8eac

    const-wide/32 v5, 0x23ab1

    const-wide/16 v7, 0x0

    cmp-long v9, p1, v7

    if-lez v9, :cond_0

    sub-long/2addr p1, v0

    .line 1
    div-long v0, p1, v5

    long-to-int v1, v0

    .line 2
    rem-long/2addr p1, v5

    long-to-int p2, p1

    .line 3
    div-int p1, p2, v4

    .line 4
    rem-int/2addr p2, v4

    .line 5
    div-int/lit16 v0, p2, 0x5b5

    .line 6
    rem-int/2addr p2, v3

    .line 7
    div-int/lit16 v3, p2, 0x16d

    .line 8
    rem-int/2addr p2, v2

    goto :goto_0

    :cond_0
    sub-long/2addr p1, v0

    .line 9
    invoke-static {p1, p2, v5, v6}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 10
    invoke-static {p1, p2, v5, v6}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    .line 11
    invoke-static {p2, v4}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result p1

    .line 12
    invoke-static {p2, v4}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p2

    .line 13
    invoke-static {p2, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v0

    .line 14
    invoke-static {p2, v3}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p2

    .line 15
    invoke-static {p2, v2}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v3

    .line 16
    invoke-static {p2, v2}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    :goto_0
    mul-int/lit16 v1, v1, 0x190

    mul-int/lit8 p2, p1, 0x64

    add-int/2addr v1, p2

    const/4 p2, 0x4

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    add-int/2addr v1, v3

    if-eq p1, p2, :cond_1

    if-eq v3, p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method public getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .locals 11

    .line 1
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 2
    invoke-virtual {p1, p2, p3}, Lsun/util/calendar/BaseCalendar$Date;->hit(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getCachedYear()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v2

    .line 5
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v4

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0, p2, p3}, Lsun/util/calendar/BaseCalendar;->f(J)I

    move-result v0

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v1, v2}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v2

    .line 8
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x16e

    goto :goto_0

    :cond_1
    const/16 v5, 0x16d

    .line 9
    :goto_0
    invoke-virtual {p1, v0, v2, v3, v5}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    :goto_1
    sub-long v5, p2, v2

    long-to-int v6, v5

    const-wide/16 v7, 0x1f

    add-long/2addr v7, v2

    const-wide/16 v9, 0x1c

    add-long/2addr v7, v9

    const-wide/16 v9, 0x1

    if-eqz v4, :cond_2

    add-long/2addr v7, v9

    :cond_2
    cmp-long v5, p2, v7

    if-ltz v5, :cond_4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    :goto_2
    add-int/2addr v6, v5

    :cond_4
    mul-int/lit8 v6, v6, 0xc

    add-int/lit16 v6, v6, 0x175

    const/16 v5, 0x16f

    if-lez v6, :cond_5

    .line 10
    div-int/2addr v6, v5

    goto :goto_3

    .line 11
    :cond_5
    invoke-static {v6, v5}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v6

    .line 12
    :goto_3
    sget-object v5, Lsun/util/calendar/BaseCalendar;->i:[I

    aget v5, v5, v6

    int-to-long v7, v5

    add-long/2addr v2, v7

    if-eqz v4, :cond_6

    const/4 v5, 0x3

    if-lt v6, v5, :cond_6

    add-long/2addr v2, v9

    :cond_6
    sub-long v2, p2, v2

    long-to-int v3, v2

    add-int/2addr v3, v1

    .line 13
    invoke-static {p2, p3}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result p2

    .line 14
    invoke-virtual {p1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 15
    invoke-virtual {p1, v6}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 16
    invoke-virtual {p1, v3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 17
    invoke-virtual {p1, p2}, Lsun/util/calendar/CalendarDate;->setDayOfWeek(I)V

    .line 18
    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->a(Z)V

    .line 19
    invoke-virtual {p1, v1}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    return-void
.end method

.method public getDayOfWeek(Lsun/util/calendar/CalendarDate;)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result p1

    return p1
.end method

.method public getDayOfYear(Lsun/util/calendar/CalendarDate;)J
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result p1

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Lsun/util/calendar/BaseCalendar;->e(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J
    .locals 19

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x1

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v3, v0}, Lsun/util/calendar/BaseCalendar$Date;->hit(I)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual/range {p4 .. p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p3}, Lsun/util/calendar/BaseCalendar;->e(III)J

    move-result-wide v0

    add-long/2addr v3, v0

    sub-long/2addr v3, v5

    return-wide v3

    :cond_2
    add-int/lit16 v7, v0, -0x7b2

    if-ltz v7, :cond_6

    .line 10
    sget-object v10, Lsun/util/calendar/BaseCalendar;->g:[I

    array-length v11, v10

    if-ge v7, v11, :cond_6

    .line 11
    aget v7, v10, v7

    int-to-long v10, v7

    if-eqz v3, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v8, 0x16e

    goto :goto_1

    :cond_3
    const/16 v8, 0x16d

    :goto_1
    invoke-virtual {v3, v0, v10, v11, v8}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    :cond_4
    if-eqz v4, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual/range {p0 .. p3}, Lsun/util/calendar/BaseCalendar;->e(III)J

    move-result-wide v0

    add-long/2addr v10, v0

    sub-long/2addr v10, v5

    :goto_2
    return-wide v10

    :cond_6
    int-to-long v10, v0

    sub-long/2addr v10, v5

    int-to-long v12, v2

    const-wide/16 v14, 0x0

    const-wide/16 v5, 0x190

    const-wide/16 v8, 0x64

    const-wide/16 v2, 0x4

    const-wide/16 v16, 0x16d

    cmp-long v18, v10, v14

    if-ltz v18, :cond_7

    mul-long v16, v16, v10

    .line 14
    div-long v2, v10, v2

    add-long v16, v16, v2

    div-long v2, v10, v8

    sub-long v16, v16, v2

    div-long/2addr v10, v5

    add-long v16, v16, v10

    mul-int/lit16 v2, v1, 0x16f

    add-int/lit16 v2, v2, -0x16a

    const/16 v3, 0xc

    div-int/2addr v2, v3

    goto :goto_3

    :cond_7
    mul-long v16, v16, v10

    .line 15
    invoke-static {v10, v11, v2, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v2

    add-long v16, v16, v2

    .line 16
    invoke-static {v10, v11, v8, v9}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v2

    sub-long v16, v16, v2

    .line 17
    invoke-static {v10, v11, v5, v6}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v2

    add-long v16, v16, v2

    mul-int/lit16 v2, v1, 0x16f

    add-int/lit16 v2, v2, -0x16a

    const/16 v3, 0xc

    .line 18
    invoke-static {v2, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v2

    :goto_3
    int-to-long v2, v2

    add-long v16, v16, v2

    add-long v12, v12, v16

    const/4 v2, 0x2

    if-le v1, v2, :cond_9

    .line 19
    invoke-virtual/range {p0 .. p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-wide/16 v5, 0x1

    goto :goto_4

    :cond_8
    const-wide/16 v5, 0x2

    :goto_4
    sub-long/2addr v12, v5

    :cond_9
    move-object/from16 v1, p4

    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    .line 20
    invoke-virtual/range {p0 .. p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v8, 0x16e

    goto :goto_5

    :cond_a
    const/16 v8, 0x16d

    :goto_5
    invoke-virtual {v1, v0, v12, v13, v8}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    :cond_b
    return-wide v12
.end method

.method public getFixedDate(Lsun/util/calendar/CalendarDate;)J
    .locals 3

    .line 1
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->h(Lsun/util/calendar/CalendarDate;)V

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result p1

    .line 6
    invoke-virtual {p0, v1, v2, p1, v0}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonthLength(Lsun/util/calendar/CalendarDate;)I
    .locals 3

    .line 1
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 2
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lsun/util/calendar/BaseCalendar;->g(II)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal month value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getYearFromFixedDate(J)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/BaseCalendar;->f(J)I

    move-result p1

    return p1
.end method

.method public getYearLength(Lsun/util/calendar/CalendarDate;)I
    .locals 0

    .line 1
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result p1

    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16e

    goto :goto_0

    :cond_0
    const/16 p1, 0x16d

    :goto_0
    return p1
.end method

.method public getYearLengthInMonths(Lsun/util/calendar/CalendarDate;)I
    .locals 0

    const/16 p1, 0xc

    return p1
.end method

.method h(Lsun/util/calendar/CalendarDate;)V
    .locals 10

    .line 1
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 2
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0xc

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-gtz v9, :cond_0

    sub-long v1, v3, v1

    .line 4
    div-long v7, v1, v5

    add-long/2addr v7, v3

    long-to-int v3, v7

    sub-int/2addr v0, v3

    const-wide/16 v3, 0xd

    .line 5
    rem-long/2addr v1, v5

    sub-long/2addr v3, v1

    .line 6
    invoke-virtual {p1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    long-to-int v0, v3

    .line 7
    invoke-virtual {p1, v0}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_0

    :cond_0
    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    sub-long/2addr v1, v3

    .line 8
    div-long v7, v1, v5

    long-to-int v8, v7

    add-int/2addr v0, v8

    .line 9
    rem-long/2addr v1, v5

    add-long/2addr v1, v3

    .line 10
    invoke-virtual {p1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    long-to-int v0, v1

    .line 11
    invoke-virtual {p1, v0}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    :cond_1
    :goto_0
    return-void
.end method

.method isLeapYear(I)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result p1

    return p1
.end method

.method protected isLeapYear(Lsun/util/calendar/CalendarDate;)Z
    .locals 0

    .line 1
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result p1

    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result p1

    return p1
.end method

.method public normalize(Lsun/util/calendar/CalendarDate;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 3
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lsun/util/calendar/AbstractCalendar;->d(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    .line 6
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->h(Lsun/util/calendar/CalendarDate;)V

    .line 7
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v3

    int-to-long v3, v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    .line 8
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    .line 9
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v5

    .line 10
    invoke-direct {p0, v5, v2}, Lsun/util/calendar/BaseCalendar;->g(II)I

    move-result v6

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_3

    int-to-long v7, v6

    cmp-long v10, v3, v7

    if-lez v10, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    invoke-virtual {v0, v2}, Lsun/util/calendar/CalendarDate;->setDayOfWeek(I)V

    goto :goto_2

    :cond_3
    :goto_0
    const/16 v7, 0xc

    if-gtz v9, :cond_5

    const-wide/16 v8, -0x1c

    cmp-long v10, v3, v8

    if-lez v10, :cond_5

    add-int/lit8 v2, v2, -0x1

    .line 12
    invoke-direct {p0, v5, v2}, Lsun/util/calendar/BaseCalendar;->g(II)I

    move-result v6

    int-to-long v8, v6

    add-long/2addr v3, v8

    long-to-int v4, v3

    .line 13
    invoke-virtual {v0, v4}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    if-nez v2, :cond_4

    sub-int/2addr v5, v1

    .line 14
    invoke-virtual {v0, v5}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    goto :goto_1

    :cond_4
    move v7, v2

    .line 15
    :goto_1
    invoke-virtual {v0, v7}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_2

    :cond_5
    int-to-long v8, v6

    cmp-long v10, v3, v8

    if-lez v10, :cond_7

    add-int/lit8 v6, v6, 0x1c

    int-to-long v10, v6

    cmp-long v6, v3, v10

    if-gez v6, :cond_7

    sub-long/2addr v3, v8

    add-int/2addr v2, v1

    long-to-int v4, v3

    .line 16
    invoke-virtual {v0, v4}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    if-le v2, v7, :cond_6

    add-int/2addr v5, v1

    .line 17
    invoke-virtual {v0, v5}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    const/4 v2, 0x1

    .line 18
    :cond_6
    invoke-virtual {v0, v2}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {p0, v5, v2, v1, v0}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 20
    invoke-virtual {p0, v0, v3, v4}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 21
    :goto_2
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    invoke-virtual {p0, v2}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v2

    invoke-virtual {p1, v2}, Lsun/util/calendar/CalendarDate;->a(Z)V

    const/4 v2, 0x0

    .line 22
    invoke-virtual {p1, v2}, Lsun/util/calendar/CalendarDate;->setZoneOffset(I)V

    .line 23
    invoke-virtual {p1, v2}, Lsun/util/calendar/CalendarDate;->setDaylightSaving(I)V

    .line 24
    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    return v1
.end method

.method public validate(Lsun/util/calendar/CalendarDate;)Z
    .locals 6

    .line 1
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 2
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_5

    const/16 v4, 0xc

    if-le v1, v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    if-lez v4, :cond_5

    .line 5
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v5

    invoke-direct {p0, v5, v1}, Lsun/util/calendar/BaseCalendar;->g(II)I

    move-result v1

    if-le v4, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    move-result v1

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_3

    .line 7
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v4

    if-eq v1, v4, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->validateTime(Lsun/util/calendar/CalendarDate;)Z

    move-result p1

    if-nez p1, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {v0, v2}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    return v2

    :cond_5
    :goto_0
    return v3
.end method
