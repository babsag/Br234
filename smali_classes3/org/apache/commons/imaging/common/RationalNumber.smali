.class public Lorg/apache/commons/imaging/common/RationalNumber;
.super Ljava/lang/Number;
.source "RationalNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/common/RationalNumber$a;
    }
.end annotation


# instance fields
.field public final divisor:J

.field public final numerator:J

.field public final unsignedType:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    int-to-long p1, p2

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->unsignedType:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 6
    iput-boolean p3, p0, Lorg/apache/commons/imaging/common/RationalNumber;->unsignedType:Z

    if-eqz p3, :cond_0

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    int-to-long p1, p2

    and-long/2addr p1, v2

    .line 8
    iput-wide p1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 9
    iput-wide v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    int-to-long p1, p2

    .line 10
    iput-wide p1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    :goto_0
    return-void
.end method

.method private constructor <init>(JJZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 12
    iput-wide p1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    .line 13
    iput-wide p3, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    .line 14
    iput-boolean p5, p0, Lorg/apache/commons/imaging/common/RationalNumber;->unsignedType:Z

    return-void
.end method

.method static a(JJ)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 9

    const-wide/32 v0, -0x80000000

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, p0, v2

    if-gtz v4, :cond_0

    cmp-long v4, p0, v0

    if-ltz v4, :cond_0

    cmp-long v4, p2, v2

    if-gtz v4, :cond_0

    cmp-long v4, p2, v0

    if-gez v4, :cond_3

    :cond_0
    :goto_0
    cmp-long v4, p0, v2

    if-gtz v4, :cond_1

    cmp-long v4, p0, v0

    if-ltz v4, :cond_1

    cmp-long v4, p2, v2

    if-gtz v4, :cond_1

    cmp-long v4, p2, v0

    if-gez v4, :cond_2

    .line 1
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    const/4 v4, 0x1

    shr-long/2addr p0, v4

    shr-long/2addr p2, v4

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_4

    .line 2
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/imaging/common/RationalNumber;->b(JJ)J

    move-result-wide v0

    .line 3
    div-long/2addr p2, v0

    .line 4
    div-long/2addr p0, v0

    .line 5
    new-instance v0, Lorg/apache/commons/imaging/common/RationalNumber;

    long-to-int p1, p0

    long-to-int p0, p2

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object v0

    .line 6
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value, numerator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", divisor: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide p0

    .line 1
    :cond_0
    rem-long/2addr p0, p2

    invoke-static {p2, p3, p0, p1}, Lorg/apache/commons/imaging/common/RationalNumber;->b(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 13

    const/4 v0, 0x1

    const-wide v1, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v3, p0, v1

    if-ltz v3, :cond_0

    .line 1
    new-instance p0, Lorg/apache/commons/imaging/common/RationalNumber;

    const p1, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object p0

    :cond_0
    const-wide v1, -0x3e20000000400000L    # -2.147483647E9

    cmpg-double v3, p0, v1

    if-gtz v3, :cond_1

    .line 2
    new-instance p0, Lorg/apache/commons/imaging/common/RationalNumber;

    const p1, -0x7fffffff

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object p0

    :cond_1
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmpg-double v4, p0, v1

    if-gez v4, :cond_2

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    cmpl-double v5, p0, v1

    if-nez v5, :cond_3

    .line 4
    new-instance p0, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {p0, v3, v0}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object p0

    :cond_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, p0, v1

    if-ltz v5, :cond_5

    double-to-int v1, p0

    int-to-double v5, v1

    cmpg-double v2, v5, p0

    if-gez v2, :cond_4

    .line 5
    new-instance v2, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    .line 6
    new-instance v5, Lorg/apache/commons/imaging/common/RationalNumber;

    add-int/2addr v1, v0

    invoke-direct {v5, v1, v0}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    goto :goto_2

    .line 7
    :cond_4
    new-instance v2, Lorg/apache/commons/imaging/common/RationalNumber;

    add-int/lit8 v5, v1, -0x1

    invoke-direct {v2, v5, v0}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    .line 8
    new-instance v5, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {v5, v1, v0}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    goto :goto_2

    :cond_5
    div-double v5, v1, p0

    double-to-int v5, v5

    int-to-double v6, v5

    div-double/2addr v1, v6

    cmpg-double v6, v1, p0

    if-gez v6, :cond_6

    .line 9
    new-instance v2, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {v2, v0, v5}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    .line 10
    new-instance v1, Lorg/apache/commons/imaging/common/RationalNumber;

    sub-int/2addr v5, v0

    invoke-direct {v1, v0, v5}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    goto :goto_1

    .line 11
    :cond_6
    new-instance v2, Lorg/apache/commons/imaging/common/RationalNumber;

    add-int/lit8 v1, v5, 0x1

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    .line 12
    new-instance v1, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {v1, v0, v5}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    :goto_1
    move-object v5, v1

    .line 13
    :goto_2
    invoke-static {v2, p0, p1}, Lorg/apache/commons/imaging/common/RationalNumber$a;->a(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$a;

    move-result-object v0

    .line 14
    invoke-static {v5, p0, p1}, Lorg/apache/commons/imaging/common/RationalNumber$a;->a(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$a;

    move-result-object v1

    .line 15
    iget-wide v5, v0, Lorg/apache/commons/imaging/common/RationalNumber$a;->b:D

    iget-wide v7, v1, Lorg/apache/commons/imaging/common/RationalNumber$a;->b:D

    cmpg-double v2, v5, v7

    if-gez v2, :cond_7

    move-object v2, v0

    goto :goto_3

    :cond_7
    move-object v2, v1

    .line 16
    :goto_3
    iget-wide v5, v2, Lorg/apache/commons/imaging/common/RationalNumber$a;->b:D

    const-wide v7, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v9, v5, v7

    if-lez v9, :cond_c

    const/16 v5, 0x64

    if-ge v3, v5, :cond_c

    .line 17
    iget-object v5, v0, Lorg/apache/commons/imaging/common/RationalNumber$a;->a:Lorg/apache/commons/imaging/common/RationalNumber;

    iget-wide v6, v5, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    iget-object v8, v1, Lorg/apache/commons/imaging/common/RationalNumber$a;->a:Lorg/apache/commons/imaging/common/RationalNumber;

    iget-wide v9, v8, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    add-long/2addr v6, v9

    iget-wide v9, v5, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    iget-wide v11, v8, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    add-long/2addr v9, v11

    invoke-static {v6, v7, v9, v10}, Lorg/apache/commons/imaging/common/RationalNumber;->a(JJ)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v5

    .line 18
    invoke-static {v5, p0, p1}, Lorg/apache/commons/imaging/common/RationalNumber$a;->a(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$a;

    move-result-object v6

    .line 19
    invoke-virtual {v5}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v7

    cmpg-double v5, p0, v7

    if-gez v5, :cond_9

    .line 20
    iget-wide v7, v1, Lorg/apache/commons/imaging/common/RationalNumber$a;->b:D

    iget-wide v9, v6, Lorg/apache/commons/imaging/common/RationalNumber$a;->b:D

    cmpg-double v1, v7, v9

    if-gtz v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v1, v6

    goto :goto_4

    .line 21
    :cond_9
    iget-wide v7, v0, Lorg/apache/commons/imaging/common/RationalNumber$a;->b:D

    iget-wide v9, v6, Lorg/apache/commons/imaging/common/RationalNumber$a;->b:D

    cmpg-double v0, v7, v9

    if-gtz v0, :cond_a

    goto :goto_5

    :cond_a
    move-object v0, v6

    .line 22
    :goto_4
    iget-wide v7, v6, Lorg/apache/commons/imaging/common/RationalNumber$a;->b:D

    iget-wide v9, v2, Lorg/apache/commons/imaging/common/RationalNumber$a;->b:D

    cmpg-double v5, v7, v9

    if-gez v5, :cond_b

    move-object v2, v6

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    :goto_5
    if-eqz v4, :cond_d

    .line 23
    iget-object p0, v2, Lorg/apache/commons/imaging/common/RationalNumber$a;->a:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/RationalNumber;->negate()Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    goto :goto_6

    .line 24
    :cond_d
    iget-object p0, v2, Lorg/apache/commons/imaging/common/RationalNumber$a;->a:Lorg/apache/commons/imaging/common/RationalNumber;

    :goto_6
    return-object p0
.end method


# virtual methods
.method public doubleValue()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public intValue()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    iget-wide v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    iget-wide v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public negate()Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 12

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    .line 2
    iget-wide v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    .line 3
    iget-boolean v4, p0, Lorg/apache/commons/imaging/common/RationalNumber;->unsignedType:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x1f

    shr-long v5, v0, v4

    const-wide/16 v7, 0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 4
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/RationalNumber;->b(JJ)J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-eqz v11, :cond_0

    .line 5
    div-long/2addr v0, v5

    .line 6
    div-long/2addr v2, v5

    :cond_0
    shr-long v4, v0, v4

    cmp-long v6, v4, v7

    if-eqz v6, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsigned numerator is too large to negate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    move-wide v5, v2

    .line 8
    new-instance v8, Lorg/apache/commons/imaging/common/RationalNumber;

    neg-long v3, v0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(JJZ)V

    return-object v8
.end method

.method public toDisplayString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    iget-wide v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 2
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 5
    iget-wide v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    long-to-double v1, v1

    iget-wide v3, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    const-string v2, ")"

    const-string v3, "/"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid rational ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 4
    iget-wide v6, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    iget-wide v8, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    rem-long v10, v6, v8

    cmp-long v1, v10, v4

    if-nez v1, :cond_1

    .line 5
    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:J

    long-to-double v3, v3

    iget-wide v5, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
