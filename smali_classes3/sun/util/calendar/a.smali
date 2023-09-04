.class Lsun/util/calendar/a;
.super Lsun/util/calendar/BaseCalendar$Date;
.source "ImmutableGregorianDate.java"


# instance fields
.field private final u:Lsun/util/calendar/BaseCalendar$Date;


# direct methods
.method constructor <init>(Lsun/util/calendar/BaseCalendar$Date;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-void
.end method

.method public addDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public addDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public addHours(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public addMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public addMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public addMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public addSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public addTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public addYear(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lsun/util/calendar/CalendarDate;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lsun/util/calendar/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    check-cast p1, Lsun/util/calendar/a;

    iget-object p1, p1, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/CalendarDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getDaylightSaving()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDaylightSaving()I

    move-result v0

    return v0
.end method

.method public getEra()Lsun/util/calendar/Era;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    return-object v0
.end method

.method public getHours()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v0

    return v0
.end method

.method public getMillis()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v0

    return v0
.end method

.method public getNormalizedYear()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v0

    return v0
.end method

.method public getTimeOfDay()J
    .locals 2

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getYear()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    return v0
.end method

.method public getZone()Ljava/util/TimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getZoneOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDaylightTime()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->isDaylightTime()Z

    move-result v0

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->isLeapYear()Z

    move-result v0

    return v0
.end method

.method public isNormalized()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    return v0
.end method

.method public isSameDate(Lsun/util/calendar/CalendarDate;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p1}, Lsun/util/calendar/CalendarDate;->isSameDate(Lsun/util/calendar/CalendarDate;)Z

    move-result p1

    return p1
.end method

.method public isStandardTime()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->isStandardTime()Z

    move-result v0

    return v0
.end method

.method public setDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public setDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method protected setDayOfWeek(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-void
.end method

.method protected setDaylightSaving(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-void
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public setHours(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method protected setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-void
.end method

.method public setMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public setMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public setMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method protected setNormalized(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-void
.end method

.method public setNormalizedYear(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-void
.end method

.method public setSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public setStandardTime(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-void
.end method

.method public setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method protected setTimeOfDay(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-void
.end method

.method public setYear(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method public setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-object p0
.end method

.method protected setZoneOffset(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/a;->b()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/a;->u:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
