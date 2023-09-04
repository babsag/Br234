.class public abstract Lsun/util/calendar/AbstractCalendar;
.super Lsun/util/calendar/CalendarSystem;
.source "AbstractCalendar.java"


# instance fields
.field private f:[Lsun/util/calendar/Era;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/CalendarSystem;-><init>()V

    return-void
.end method

.method static b(JI)J
    .locals 2

    const-wide/16 v0, 0x7

    add-long/2addr p0, v0

    .line 1
    invoke-static {p0, p1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method static c(JI)J
    .locals 2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 1
    invoke-static {p0, p1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getDayOfWeekDateOnOrBefore(JI)J
    .locals 6

    add-int/lit8 p2, p2, -0x1

    int-to-long v0, p2

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-ltz p2, :cond_0

    .line 1
    rem-long/2addr v0, v2

    :goto_0
    sub-long/2addr p0, v0

    return-wide p0

    .line 2
    :cond_0
    invoke-static {v0, v1, v2, v3}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method d(Lsun/util/calendar/CalendarDate;)I
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDay(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x5265c00

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    .line 2
    div-long v6, v0, v4

    .line 3
    rem-long/2addr v0, v4

    goto :goto_0

    :cond_0
    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    .line 4
    invoke-static {v0, v1, v4, v5}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-eqz v8, :cond_2

    mul-long v4, v4, v6

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :cond_2
    :goto_0
    cmp-long v4, v6, v2

    if-eqz v4, :cond_3

    .line 5
    invoke-virtual {p1, v0, v1}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    :cond_3
    const-wide/16 v2, 0x3e8

    .line 6
    rem-long v4, v0, v2

    long-to-int v5, v4

    invoke-virtual {p1, v5}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    .line 7
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    .line 8
    rem-long v4, v0, v2

    long-to-int v5, v4

    invoke-virtual {p1, v5}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 9
    div-long/2addr v0, v2

    .line 10
    rem-long v4, v0, v2

    long-to-int v5, v4

    invoke-virtual {p1, v5}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 11
    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    long-to-int p1, v6

    return p1
.end method

.method public getCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/CalendarSystem;->newCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lsun/util/calendar/CalendarSystem;->newCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object p1

    return-object p1
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 3
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarSystem;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object p3

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object p1

    return-object p1
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 9

    .line 5
    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x5265c00

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 6
    instance-of v5, v0, Lsun/util/calendar/ZoneInfo;

    if-eqz v5, :cond_0

    .line 7
    check-cast v0, Lsun/util/calendar/ZoneInfo;

    invoke-virtual {v0, p1, p2, v4}, Lsun/util/calendar/ZoneInfo;->getOffsets(J[I)I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 9
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    aput v0, v4, v3

    .line 10
    aget v0, v4, v3

    sub-int v0, v5, v0

    aput v0, v4, v1

    move v3, v5

    .line 11
    :goto_0
    div-int v0, v3, v2

    int-to-long v5, v0

    .line 12
    rem-int v0, v3, v2

    .line 13
    aget v4, v4, v1

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 14
    :goto_1
    invoke-virtual {p3, v3}, Lsun/util/calendar/CalendarDate;->setZoneOffset(I)V

    .line 15
    invoke-virtual {p3, v4}, Lsun/util/calendar/CalendarDate;->setDaylightSaving(I)V

    const-wide/32 v3, 0x5265c00

    .line 16
    div-long v7, p1, v3

    add-long/2addr v5, v7

    .line 17
    rem-long/2addr p1, v3

    long-to-int p2, p1

    add-int/2addr v0, p2

    const-wide/16 p1, 0x1

    if-lt v0, v2, :cond_2

    sub-int/2addr v0, v2

    add-long/2addr v5, p1

    goto :goto_3

    :cond_2
    :goto_2
    if-gez v0, :cond_3

    add-int/2addr v0, v2

    sub-long/2addr v5, p1

    goto :goto_2

    :cond_3
    :goto_3
    const-wide/32 p1, 0xaf93b

    add-long/2addr v5, p1

    .line 18
    invoke-virtual {p0, p3, v5, v6}, Lsun/util/calendar/AbstractCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 19
    invoke-virtual {p0, p3, v0}, Lsun/util/calendar/AbstractCalendar;->setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;

    .line 20
    invoke-virtual {p0, p3}, Lsun/util/calendar/AbstractCalendar;->isLeapYear(Lsun/util/calendar/CalendarDate;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lsun/util/calendar/CalendarDate;->a(Z)V

    .line 21
    invoke-virtual {p3, v1}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    return-object p3
.end method

.method protected abstract getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
.end method

.method public getEra(Ljava/lang/String;)Lsun/util/calendar/Era;
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/util/calendar/AbstractCalendar;->f:[Lsun/util/calendar/Era;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->f:[Lsun/util/calendar/Era;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lsun/util/calendar/Era;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lsun/util/calendar/AbstractCalendar;->f:[Lsun/util/calendar/Era;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEras()[Lsun/util/calendar/Era;
    .locals 4

    .line 1
    iget-object v0, p0, Lsun/util/calendar/AbstractCalendar;->f:[Lsun/util/calendar/Era;

    if-eqz v0, :cond_0

    .line 2
    array-length v1, v0

    new-array v1, v1, [Lsun/util/calendar/Era;

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected abstract getFixedDate(Lsun/util/calendar/CalendarDate;)J
.end method

.method public getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 4

    .line 1
    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsun/util/calendar/CalendarDate;

    .line 2
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarSystem;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 3
    invoke-virtual {p0, p3}, Lsun/util/calendar/AbstractCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    if-lez p1, :cond_0

    mul-int/lit8 p1, p1, 0x7

    int-to-long v2, p1

    .line 4
    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->c(JI)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x7

    int-to-long v2, p1

    .line 5
    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->b(JI)J

    move-result-wide p1

    :goto_0
    add-long/2addr v2, p1

    .line 6
    invoke-virtual {p0, p3, v2, v3}, Lsun/util/calendar/AbstractCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    return-object p3
.end method

.method public getTime(Lsun/util/calendar/CalendarDate;)J
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    const-wide/32 v2, 0xaf93b

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    mul-long v0, v0, v2

    .line 2
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDay(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 3
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 6
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isStandardTime()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    instance-of v5, v2, Lsun/util/calendar/ZoneInfo;

    if-eqz v5, :cond_1

    .line 8
    check-cast v2, Lsun/util/calendar/ZoneInfo;

    invoke-virtual {v2, v0, v1, v4}, Lsun/util/calendar/ZoneInfo;->getOffsetsByStandard(J[I)I

    .line 9
    aget v3, v4, v3

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v3, v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    goto :goto_0

    .line 11
    :cond_2
    instance-of v3, v2, Lsun/util/calendar/ZoneInfo;

    if-eqz v3, :cond_3

    .line 12
    check-cast v2, Lsun/util/calendar/ZoneInfo;

    invoke-virtual {v2, v0, v1, v4}, Lsun/util/calendar/ZoneInfo;->getOffsetsByWall(J[I)I

    move-result v3

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v3, v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    :cond_4
    :goto_0
    int-to-long v2, v3

    sub-long/2addr v0, v2

    .line 14
    invoke-virtual {p0, v0, v1, p1}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    return-wide v0
.end method

.method protected getTimeOfDay(Lsun/util/calendar/CalendarDate;)J
    .locals 5

    .line 1
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDayValue(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 3
    invoke-virtual {p1, v0, v1}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    return-wide v0
.end method

.method public getTimeOfDayValue(Lsun/util/calendar/CalendarDate;)J
    .locals 6

    .line 1
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    .line 2
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long v0, v0, v2

    .line 3
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 4
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getWeekLength()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method protected abstract isLeapYear(Lsun/util/calendar/CalendarDate;)Z
.end method

.method public setEra(Lsun/util/calendar/CalendarDate;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/util/calendar/AbstractCalendar;->f:[Lsun/util/calendar/Era;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->f:[Lsun/util/calendar/Era;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 3
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Lsun/util/calendar/CalendarDate;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown era name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setEras([Lsun/util/calendar/Era;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsun/util/calendar/AbstractCalendar;->f:[Lsun/util/calendar/Era;

    return-void
.end method

.method public setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;
    .locals 5

    if-ltz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    const v1, 0x36ee80

    .line 2
    div-int v2, p2, v1

    .line 3
    rem-int v1, p2, v1

    const v3, 0xea60

    .line 4
    div-int v4, v1, v3

    .line 5
    rem-int/2addr v1, v3

    .line 6
    div-int/lit16 v3, v1, 0x3e8

    .line 7
    rem-int/lit16 v1, v1, 0x3e8

    .line 8
    invoke-virtual {p1, v2}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 9
    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 10
    invoke-virtual {p1, v3}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 11
    invoke-virtual {p1, v1}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    int-to-long v3, p2

    .line 12
    invoke-virtual {p1, v3, v4}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    const/16 p2, 0x18

    if-ge v2, p2, :cond_0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1, v0}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    :cond_0
    return-object p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public validateTime(Lsun/util/calendar/CalendarDate;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v0

    if-ltz v0, :cond_4

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v0

    if-ltz v0, :cond_4

    if-lt v0, v2, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result p1

    if-ltz p1, :cond_4

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method
