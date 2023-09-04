.class public final Lsun/util/calendar/Era;
.super Ljava/lang/Object;
.source "Era.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Lsun/util/calendar/CalendarDate;

.field private final e:Z

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsun/util/calendar/Era;->f:I

    .line 3
    iput-object p1, p0, Lsun/util/calendar/Era;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lsun/util/calendar/Era;->b:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lsun/util/calendar/Era;->c:J

    .line 6
    iput-boolean p5, p0, Lsun/util/calendar/Era;->e:Z

    .line 7
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$a;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p3, p4, p2}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$a;

    .line 10
    new-instance p1, Lsun/util/calendar/a;

    invoke-direct {p1, p2}, Lsun/util/calendar/a;-><init>(Lsun/util/calendar/BaseCalendar$Date;)V

    iput-object p1, p0, Lsun/util/calendar/Era;->d:Lsun/util/calendar/CalendarDate;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lsun/util/calendar/Era;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lsun/util/calendar/Era;

    .line 3
    iget-object v0, p0, Lsun/util/calendar/Era;->a:Ljava/lang/String;

    iget-object v2, p1, Lsun/util/calendar/Era;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/util/calendar/Era;->b:Ljava/lang/String;

    iget-object v2, p1, Lsun/util/calendar/Era;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lsun/util/calendar/Era;->c:J

    iget-wide v4, p1, Lsun/util/calendar/Era;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lsun/util/calendar/Era;->e:Z

    iget-boolean p1, p1, Lsun/util/calendar/Era;->e:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAbbreviation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/Era;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDiaplayAbbreviation(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lsun/util/calendar/Era;->b:Ljava/lang/String;

    return-object p1
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lsun/util/calendar/Era;->a:Ljava/lang/String;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/Era;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSince(Ljava/util/TimeZone;)J
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Lsun/util/calendar/Era;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lsun/util/calendar/Era;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    .line 3
    iget-wide v0, p0, Lsun/util/calendar/Era;->c:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0

    .line 4
    :cond_1
    :goto_0
    iget-wide v0, p0, Lsun/util/calendar/Era;->c:J

    return-wide v0
.end method

.method public getSinceDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/Era;->d:Lsun/util/calendar/CalendarDate;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lsun/util/calendar/Era;->f:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsun/util/calendar/Era;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/util/calendar/Era;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lsun/util/calendar/Era;->c:J

    long-to-int v3, v1

    xor-int/2addr v0, v3

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    iget-boolean v1, p0, Lsun/util/calendar/Era;->e:Z

    xor-int/2addr v0, v1

    iput v0, p0, Lsun/util/calendar/Era;->f:I

    .line 3
    :cond_0
    iget v0, p0, Lsun/util/calendar/Era;->f:I

    return v0
.end method

.method public isLocalTime()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsun/util/calendar/Era;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " since "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    iget-boolean v1, p0, Lsun/util/calendar/Era;->e:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, " local time"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x5d

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
