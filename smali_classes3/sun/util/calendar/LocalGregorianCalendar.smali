.class public Lsun/util/calendar/LocalGregorianCalendar;
.super Lsun/util/calendar/BaseCalendar;
.source "LocalGregorianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/LocalGregorianCalendar$Date;
    }
.end annotation


# instance fields
.field private k:Ljava/lang/String;

.field private l:[Lsun/util/calendar/Era;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/util/calendar/LocalGregorianCalendar;->k:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lsun/util/calendar/LocalGregorianCalendar;->l:[Lsun/util/calendar/Era;

    .line 4
    invoke-virtual {p0, p2}, Lsun/util/calendar/AbstractCalendar;->setEras([Lsun/util/calendar/Era;)V

    return-void
.end method

.method private i(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 8

    .line 1
    iget-object v0, p0, Lsun/util/calendar/LocalGregorianCalendar;->l:[Lsun/util/calendar/Era;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 2
    iget-object v3, p0, Lsun/util/calendar/LocalGregorianCalendar;->l:[Lsun/util/calendar/Era;

    aget-object v3, v3, v0

    .line 3
    invoke-virtual {v3, v2}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v4

    .line 4
    invoke-virtual {v3}, Lsun/util/calendar/Era;->isLocalTime()Z

    move-result v6

    if-eqz v6, :cond_0

    int-to-long v6, p4

    sub-long/2addr v4, v6

    :cond_0
    cmp-long v6, p2, v4

    if-ltz v6, :cond_1

    .line 5
    invoke-virtual {p1, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->b(Lsun/util/calendar/Era;)V

    .line 6
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result p2

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object p3

    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, v1

    .line 7
    invoke-virtual {p1, p2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->c(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    .line 8
    invoke-virtual {p1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->b(Lsun/util/calendar/Era;)V

    .line 9
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result p2

    invoke-virtual {p1, p2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->c(I)V

    .line 10
    :cond_3
    invoke-virtual {p1, v1}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    return-object p1
.end method

.method static j(Ljava/lang/String;)Lsun/util/calendar/LocalGregorianCalendar;
    .locals 14

    .line 1
    :try_start_0
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "java.home"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "calendars.properties"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lsun/util/calendar/LocalGregorianCalendar$a;

    invoke-direct {v1, v0}, Lsun/util/calendar/LocalGregorianCalendar$a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".eras"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    move-object v8, v1

    move-object v9, v8

    move-wide v10, v5

    const/4 v12, 0x1

    .line 10
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 11
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3d

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    return-object v1

    :cond_1
    const/4 v7, 0x0

    .line 13
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v6, v6, 0x1

    .line 14
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    .line 15
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v8, v5

    goto :goto_1

    :cond_2
    const-string v6, "since"

    .line 16
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "u"

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 18
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v10, v5

    const/4 v12, 0x0

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_1

    :cond_4
    const-string v6, "abbr"

    .line 20
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v9, v5

    goto :goto_1

    .line 21
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key word: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_6
    new-instance v0, Lsun/util/calendar/Era;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 23
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lsun/util/calendar/Era;

    .line 25
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    new-instance v1, Lsun/util/calendar/LocalGregorianCalendar;

    invoke-direct {v1, p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;-><init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V

    return-object v1

    :catch_0
    move-exception p0

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private l(Lsun/util/calendar/Era;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lsun/util/calendar/LocalGregorianCalendar;->l:[Lsun/util/calendar/Era;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public bridge synthetic getCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 3

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 0

    .line 7
    invoke-virtual {p0, p3}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    .line 8
    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object p3

    check-cast p3, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 9
    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v0

    invoke-direct {p0, p3, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->i(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .locals 2

    .line 1
    check-cast p1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2
    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    const-wide/32 v0, 0xaf93b

    sub-long/2addr p2, v0

    const-wide/32 v0, 0x5265c00

    mul-long p2, p2, v0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lsun/util/calendar/LocalGregorianCalendar;->i(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/LocalGregorianCalendar;->k:Ljava/lang/String;

    return-object v0
.end method

.method h(Lsun/util/calendar/CalendarDate;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->k(Lsun/util/calendar/CalendarDate;)V

    .line 2
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar;->h(Lsun/util/calendar/CalendarDate;)V

    return-void
.end method

.method public isLeapYear(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result p1

    return p1
.end method

.method public isLeapYear(Lsun/util/calendar/Era;I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object p1

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result p1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    move-result p1

    return p1
.end method

.method k(Lsun/util/calendar/CalendarDate;)V
    .locals 2

    .line 1
    check-cast p1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->l(Lsun/util/calendar/Era;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic newCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    .line 3
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>()V

    return-object v0
.end method

.method public newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    .line 4
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    return-object v0
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
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->k(Lsun/util/calendar/CalendarDate;)V

    .line 3
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 4
    invoke-super {p0, v0}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 5
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v5

    .line 6
    iget-object v6, p0, Lsun/util/calendar/LocalGregorianCalendar;->l:[Lsun/util/calendar/Era;

    array-length v6, v6

    sub-int/2addr v6, v1

    const/4 v7, 0x0

    move-object v8, v7

    :goto_0
    if-ltz v6, :cond_8

    .line 7
    iget-object v8, p0, Lsun/util/calendar/LocalGregorianCalendar;->l:[Lsun/util/calendar/Era;

    aget-object v8, v8, v6

    .line 8
    invoke-virtual {v8}, Lsun/util/calendar/Era;->isLocalTime()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 9
    invoke-virtual {v8}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v9

    .line 10
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v10

    if-le v5, v10, :cond_1

    goto :goto_1

    :cond_1
    if-ne v5, v10, :cond_7

    .line 11
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v10

    .line 12
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v11

    if-le v10, v11, :cond_2

    goto :goto_1

    :cond_2
    if-ne v10, v11, :cond_7

    .line 13
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    .line 14
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v11

    if-le v10, v11, :cond_3

    goto :goto_1

    :cond_3
    if-ne v10, v11, :cond_7

    .line 15
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v2

    .line 16
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v9

    cmp-long p1, v2, v9

    if-ltz p1, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    .line 17
    invoke-super {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v3

    const/4 v2, 0x1

    .line 18
    :cond_6
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v9

    cmp-long v11, v3, v9

    if-ltz v11, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_8
    :goto_1
    if-ltz v6, :cond_9

    .line 19
    invoke-virtual {v0, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->b(Lsun/util/calendar/Era;)V

    .line 20
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result p1

    invoke-virtual {v8}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    .line 21
    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->c(I)V

    goto :goto_2

    .line 22
    :cond_9
    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 23
    invoke-virtual {v0, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->c(I)V

    .line 24
    invoke-virtual {v0, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 25
    :goto_2
    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    return v1
.end method

.method public validate(Lsun/util/calendar/CalendarDate;)Z
    .locals 2

    .line 1
    check-cast p1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->l(Lsun/util/calendar/Era;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 6
    :goto_0
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar;->validate(Lsun/util/calendar/CalendarDate;)Z

    move-result p1

    return p1
.end method
