.class public final Lorg/apache/commons/imaging/color/ColorCmy;
.super Ljava/lang/Object;
.source "ColorCmy.java"


# static fields
.field public static final BLACK:Lorg/apache/commons/imaging/color/ColorCmy;

.field public static final BLUE:Lorg/apache/commons/imaging/color/ColorCmy;

.field public static final CYAN:Lorg/apache/commons/imaging/color/ColorCmy;

.field public static final GREEN:Lorg/apache/commons/imaging/color/ColorCmy;

.field public static final MAGENTA:Lorg/apache/commons/imaging/color/ColorCmy;

.field public static final RED:Lorg/apache/commons/imaging/color/ColorCmy;

.field public static final WHITE:Lorg/apache/commons/imaging/color/ColorCmy;

.field public static final YELLOW:Lorg/apache/commons/imaging/color/ColorCmy;


# instance fields
.field public final C:D

.field public final M:D

.field public final Y:D


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lorg/apache/commons/imaging/color/ColorCmy;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    sput-object v7, Lorg/apache/commons/imaging/color/ColorCmy;->CYAN:Lorg/apache/commons/imaging/color/ColorCmy;

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmy;

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    const-wide/16 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmy;->MAGENTA:Lorg/apache/commons/imaging/color/ColorCmy;

    .line 3
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmy;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmy;->YELLOW:Lorg/apache/commons/imaging/color/ColorCmy;

    .line 4
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmy;

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmy;->BLACK:Lorg/apache/commons/imaging/color/ColorCmy;

    .line 5
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmy;

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmy;->WHITE:Lorg/apache/commons/imaging/color/ColorCmy;

    .line 6
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmy;

    const-wide/16 v9, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmy;->RED:Lorg/apache/commons/imaging/color/ColorCmy;

    .line 7
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmy;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmy;->GREEN:Lorg/apache/commons/imaging/color/ColorCmy;

    .line 8
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmy;

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-wide/16 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmy;->BLUE:Lorg/apache/commons/imaging/color/ColorCmy;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/imaging/color/ColorCmy;->C:D

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/imaging/color/ColorCmy;->M:D

    .line 4
    iput-wide p5, p0, Lorg/apache/commons/imaging/color/ColorCmy;->Y:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    const-class v2, Lorg/apache/commons/imaging/color/ColorCmy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/commons/imaging/color/ColorCmy;

    .line 3
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorCmy;->C:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCmy;->C:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorCmy;->M:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCmy;->M:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorCmy;->Y:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCmy;->Y:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCmy;->C:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    .line 2
    iget-wide v3, p0, Lorg/apache/commons/imaging/color/ColorCmy;->M:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    .line 3
    iget-wide v3, p0, Lorg/apache/commons/imaging/color/ColorCmy;->Y:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{C: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorCmy;->C:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", M: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorCmy;->M:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorCmy;->Y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method