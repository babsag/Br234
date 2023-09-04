.class public Lsun/util/calendar/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final amod(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    return p1
.end method

.method public static final amod(JJ)J
    .locals 3

    .line 2
    invoke-static {p0, p1, p2, p3}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, p0

    :goto_0
    return-wide p2
.end method

.method public static final floorDivide(II)I
    .locals 0

    if-ltz p0, :cond_0

    .line 2
    div-int/2addr p0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    div-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method public static final floorDivide(II[I)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    .line 3
    rem-int v1, p0, p1

    aput v1, p2, v0

    .line 4
    div-int/2addr p0, p1

    return p0

    :cond_0
    add-int/lit8 v1, p0, 0x1

    .line 5
    div-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    mul-int p1, p1, v1

    sub-int/2addr p0, p1

    .line 6
    aput p0, p2, v0

    return v1
.end method

.method public static final floorDivide(JI[I)I
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    int-to-long v1, p2

    .line 7
    rem-long v3, p0, v1

    long-to-int p2, v3

    aput p2, p3, v0

    .line 8
    div-long/2addr p0, v1

    long-to-int p1, p0

    return p1

    :cond_0
    const-wide/16 v1, 0x1

    add-long v3, p0, v1

    int-to-long v5, p2

    .line 9
    div-long/2addr v3, v5

    sub-long/2addr v3, v1

    long-to-int v1, v3

    mul-int p2, p2, v1

    int-to-long v2, p2

    sub-long/2addr p0, v2

    long-to-int p1, p0

    .line 10
    aput p1, p3, v0

    return v1
.end method

.method public static final floorDivide(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    .line 1
    div-long/2addr p0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    div-long/2addr p0, p2

    sub-long/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method public static final isGregorianLeapYear(I)Z
    .locals 1

    .line 1
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isJulianLeapYear(I)Z
    .locals 0

    .line 1
    rem-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final mod(II)I
    .locals 1

    .line 2
    invoke-static {p0, p1}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v0

    mul-int p1, p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static final mod(JJ)J
    .locals 2

    .line 1
    invoke-static {p0, p1, p2, p3}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v0

    mul-long p2, p2, v0

    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static final sprintf0d(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .locals 6

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/16 p1, 0x2d

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-long v0, v0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    const/4 p1, 0x2

    const/16 v2, 0xa

    :goto_0
    if-ge p1, p2, :cond_1

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    if-ge p1, p2, :cond_2

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-gez v5, :cond_2

    const/16 v3, 0x30

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public static final sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .locals 6

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/16 p1, 0x2d

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-long v0, v0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    const/4 p1, 0x2

    const/16 v2, 0xa

    :goto_0
    if-ge p1, p2, :cond_1

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    if-ge p1, p2, :cond_2

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-gez v5, :cond_2

    const/16 v3, 0x30

    .line 2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0
.end method
