.class public abstract Lsun/util/calendar/CalendarDate;
.super Ljava/lang/Object;
.source "CalendarDate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final FIELD_UNDEFINED:I = -0x80000000

.field public static final TIME_UNDEFINED:J = -0x8000000000000000L


# instance fields
.field private a:Lsun/util/calendar/Era;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:Z

.field private m:Ljava/util/TimeZone;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Ljava/util/Locale;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/util/calendar/CalendarDate;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Lsun/util/calendar/CalendarDate;->e:I

    .line 4
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->m:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->f:Z

    return-void
.end method

.method public addDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 2
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->addMonth(I)Lsun/util/calendar/CalendarDate;

    .line 3
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->addDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    return-object p0
.end method

.method public addDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->d:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method public addHours(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->g:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method public addMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->j:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method public addMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->h:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method public addMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->c:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method public addSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->i:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method public addTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    .line 2
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->addMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 3
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->addSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 4
    invoke-virtual {p0, p4}, Lsun/util/calendar/CalendarDate;->addMillis(I)Lsun/util/calendar/CalendarDate;

    return-object p0
.end method

.method public addYear(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->b:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lsun/util/calendar/CalendarDate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lsun/util/calendar/CalendarDate;

    .line 3
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->m:Ljava/util/TimeZone;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, p1, Lsun/util/calendar/CalendarDate;->m:Ljava/util/TimeZone;

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eq v3, v5, :cond_4

    return v1

    :cond_4
    if-eqz v3, :cond_5

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 7
    :cond_5
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v3

    if-ne v0, v3, :cond_6

    iget v0, p0, Lsun/util/calendar/CalendarDate;->b:I

    iget v3, p1, Lsun/util/calendar/CalendarDate;->b:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lsun/util/calendar/CalendarDate;->c:I

    iget v3, p1, Lsun/util/calendar/CalendarDate;->c:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lsun/util/calendar/CalendarDate;->d:I

    iget v3, p1, Lsun/util/calendar/CalendarDate;->d:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lsun/util/calendar/CalendarDate;->g:I

    iget v3, p1, Lsun/util/calendar/CalendarDate;->g:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lsun/util/calendar/CalendarDate;->h:I

    iget v3, p1, Lsun/util/calendar/CalendarDate;->h:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lsun/util/calendar/CalendarDate;->i:I

    iget v3, p1, Lsun/util/calendar/CalendarDate;->i:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lsun/util/calendar/CalendarDate;->j:I

    iget v3, p1, Lsun/util/calendar/CalendarDate;->j:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lsun/util/calendar/CalendarDate;->n:I

    iget p1, p1, Lsun/util/calendar/CalendarDate;->n:I

    if-ne v0, p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->d:I

    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lsun/util/calendar/CalendarDate;->e:I

    .line 3
    :cond_0
    iget v0, p0, Lsun/util/calendar/CalendarDate;->e:I

    return v0
.end method

.method public getDaylightSaving()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->o:I

    return v0
.end method

.method public getEra()Lsun/util/calendar/Era;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->a:Lsun/util/calendar/Era;

    return-object v0
.end method

.method public getHours()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->g:I

    return v0
.end method

.method public getMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->j:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->h:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->c:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->i:I

    return v0
.end method

.method public getTimeOfDay()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, p0, Lsun/util/calendar/CalendarDate;->k:J

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lsun/util/calendar/CalendarDate;->k:J

    return-wide v0
.end method

.method public getYear()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->b:I

    return v0
.end method

.method public getZone()Ljava/util/TimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->m:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getZoneOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->n:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0x7b2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Lsun/util/calendar/CalendarDate;->c:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    mul-long v0, v0, v2

    iget v2, p0, Lsun/util/calendar/CalendarDate;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x18

    mul-long v0, v0, v2

    .line 2
    iget v2, p0, Lsun/util/calendar/CalendarDate;->g:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    iget v4, p0, Lsun/util/calendar/CalendarDate;->h:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long v0, v0, v2

    iget v2, p0, Lsun/util/calendar/CalendarDate;->i:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget v2, p0, Lsun/util/calendar/CalendarDate;->j:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 3
    iget v2, p0, Lsun/util/calendar/CalendarDate;->n:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 4
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v2

    .line 5
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Lsun/util/calendar/Era;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    iget-object v5, p0, Lsun/util/calendar/CalendarDate;->m:Ljava/util/TimeZone;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :cond_1
    long-to-int v5, v0

    const/16 v6, 0x20

    shr-long/2addr v0, v6

    long-to-int v1, v0

    mul-int v5, v5, v1

    xor-int v0, v5, v3

    xor-int/2addr v0, v2

    xor-int/2addr v0, v4

    return v0
.end method

.method public isDaylightTime()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isStandardTime()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lsun/util/calendar/CalendarDate;->o:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isLeapYear()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->f:Z

    return v0
.end method

.method public isNormalized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->l:Z

    return v0
.end method

.method public isSameDate(Lsun/util/calendar/CalendarDate;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    move-result v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isStandardTime()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->p:Z

    return v0
.end method

.method public setDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 2
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 3
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    return-object p0
.end method

.method public setDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsun/util/calendar/CalendarDate;->d:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method protected setDayOfWeek(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsun/util/calendar/CalendarDate;->e:I

    return-void
.end method

.method protected setDaylightSaving(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsun/util/calendar/CalendarDate;->o:I

    return-void
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->a:Lsun/util/calendar/Era;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->a:Lsun/util/calendar/Era;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    return-object p0
.end method

.method public setHours(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsun/util/calendar/CalendarDate;->g:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method protected setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->q:Ljava/util/Locale;

    return-void
.end method

.method public setMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->j:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsun/util/calendar/CalendarDate;->j:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method public setMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->h:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsun/util/calendar/CalendarDate;->h:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method public setMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->c:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsun/util/calendar/CalendarDate;->c:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method protected setNormalized(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    return-void
.end method

.method public setSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->i:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsun/util/calendar/CalendarDate;->i:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method public setStandardTime(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->p:Z

    return-void
.end method

.method public setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 2
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 3
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 4
    invoke-virtual {p0, p4}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    return-object p0
.end method

.method protected setTimeOfDay(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lsun/util/calendar/CalendarDate;->k:J

    return-void
.end method

.method public setYear(I)Lsun/util/calendar/CalendarDate;
    .locals 1

    .line 1
    iget v0, p0, Lsun/util/calendar/CalendarDate;->b:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsun/util/calendar/CalendarDate;->b:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->l:Z

    :cond_0
    return-object p0
.end method

.method public setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 0

    .line 1
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->m:Ljava/util/TimeZone;

    return-object p0
.end method

.method protected setZoneOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsun/util/calendar/CalendarDate;->n:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget v1, p0, Lsun/util/calendar/CalendarDate;->b:I

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget v1, p0, Lsun/util/calendar/CalendarDate;->c:I

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lsun/util/calendar/CalendarDate;->d:I

    invoke-static {v0, v1, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x54

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget v1, p0, Lsun/util/calendar/CalendarDate;->g:I

    invoke-static {v0, v1, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lsun/util/calendar/CalendarDate;->h:I

    invoke-static {v0, v1, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget v1, p0, Lsun/util/calendar/CalendarDate;->i:I

    invoke-static {v0, v1, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Lsun/util/calendar/CalendarDate;->j:I

    const/4 v4, 0x3

    invoke-static {v0, v1, v4}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Lsun/util/calendar/CalendarDate;->n:I

    if-nez v1, :cond_0

    const/16 v1, 0x5a

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0x2b

    goto :goto_0

    :cond_1
    neg-int v1, v1

    :goto_0
    const v4, 0xea60

    .line 11
    div-int/2addr v1, v4

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    div-int/lit8 v2, v1, 0x3c

    invoke-static {v0, v2, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 14
    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v0, v1, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, " local time"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
