.class Lsun/util/calendar/Gregorian$a;
.super Lsun/util/calendar/BaseCalendar$Date;
.source "Gregorian.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/Gregorian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public getNormalizedYear()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    return v0
.end method

.method public setNormalizedYear(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    return-void
.end method
