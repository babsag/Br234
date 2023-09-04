.class public abstract Lsun/util/calendar/BaseCalendar$Date;
.super Lsun/util/calendar/CalendarDate;
.source "BaseCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/BaseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Date"
.end annotation


# instance fields
.field r:I

.field s:J

.field t:J


# direct methods
.method protected constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/CalendarDate;-><init>()V

    const/16 v0, 0x7d4

    .line 2
    iput v0, p0, Lsun/util/calendar/BaseCalendar$Date;->r:I

    const-wide/32 v0, 0xb29bd

    .line 3
    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->s:J

    const-wide/16 v2, 0x16e

    add-long/2addr v0, v2

    .line 4
    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->t:J

    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 4

    .line 5
    invoke-direct {p0, p1}, Lsun/util/calendar/CalendarDate;-><init>(Ljava/util/TimeZone;)V

    const/16 p1, 0x7d4

    .line 6
    iput p1, p0, Lsun/util/calendar/BaseCalendar$Date;->r:I

    const-wide/32 v0, 0xb29bd

    .line 7
    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->s:J

    const-wide/16 v2, 0x16e

    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->t:J

    return-void
.end method


# virtual methods
.method protected getCachedJan1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->s:J

    return-wide v0
.end method

.method protected getCachedYear()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/BaseCalendar$Date;->r:I

    return v0
.end method

.method public abstract getNormalizedYear()I
.end method

.method protected final hit(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/BaseCalendar$Date;->r:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final hit(J)Z
    .locals 3

    .line 2
    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->s:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lsun/util/calendar/BaseCalendar$Date;->t:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected setCache(IJI)V
    .locals 2

    .line 1
    iput p1, p0, Lsun/util/calendar/BaseCalendar$Date;->r:I

    .line 2
    iput-wide p2, p0, Lsun/util/calendar/BaseCalendar$Date;->s:J

    int-to-long v0, p4

    add-long/2addr p2, v0

    .line 3
    iput-wide p2, p0, Lsun/util/calendar/BaseCalendar$Date;->t:J

    return-void
.end method

.method public setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 2
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object p1

    invoke-virtual {p1, p3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    return-object p0
.end method

.method public abstract setNormalizedYear(I)V
.end method
