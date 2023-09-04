.class public Lsun/util/calendar/LocalGregorianCalendar$Date;
.super Lsun/util/calendar/BaseCalendar$Date;
.source "LocalGregorianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/LocalGregorianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Date"
.end annotation


# instance fields
.field private u:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->u:I

    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lsun/util/calendar/BaseCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    const/high16 p1, -0x80000000

    .line 4
    iput p1, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->u:I

    return-void
.end method


# virtual methods
.method public bridge synthetic addYear(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 3
    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->u:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->u:I

    return-object p0
.end method

.method b(Lsun/util/calendar/Era;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lsun/util/calendar/CalendarDate;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    return-void
.end method

.method c(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    return-void
.end method

.method public getNormalizedYear()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->u:I

    return v0
.end method

.method public bridge synthetic setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3
    invoke-super {p0, p1}, Lsun/util/calendar/CalendarDate;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    const/high16 p1, -0x80000000

    .line 4
    iput p1, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->u:I

    :cond_0
    return-object p0
.end method

.method public setNormalizedYear(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->u:I

    return-void
.end method

.method public bridge synthetic setYear(I)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3
    invoke-super {p0, p1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    const/high16 p1, -0x80000000

    .line 4
    iput p1, p0, Lsun/util/calendar/LocalGregorianCalendar$Date;->u:I

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0}, Lsun/util/calendar/CalendarDate;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x54

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v2

    invoke-static {v1, v2, v4}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
