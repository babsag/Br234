.class public final Lorg/apache/commons/imaging/color/ColorCmyk;
.super Ljava/lang/Object;
.source "ColorCmyk.java"


# static fields
.field public static final BLACK:Lorg/apache/commons/imaging/color/ColorCmyk;

.field public static final BLUE:Lorg/apache/commons/imaging/color/ColorCmyk;

.field public static final CYAN:Lorg/apache/commons/imaging/color/ColorCmyk;

.field public static final GREEN:Lorg/apache/commons/imaging/color/ColorCmyk;

.field public static final MAGENTA:Lorg/apache/commons/imaging/color/ColorCmyk;

.field public static final RED:Lorg/apache/commons/imaging/color/ColorCmyk;

.field public static final WHITE:Lorg/apache/commons/imaging/color/ColorCmyk;

.field public static final YELLOW:Lorg/apache/commons/imaging/color/ColorCmyk;


# instance fields
.field public final C:D

.field public final K:D

.field public final M:D

.field public final Y:D


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v9, Lorg/apache/commons/imaging/color/ColorCmyk;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/imaging/color/ColorCmyk;-><init>(DDDD)V

    sput-object v9, Lorg/apache/commons/imaging/color/ColorCmyk;->CYAN:Lorg/apache/commons/imaging/color/ColorCmyk;

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmyk;

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/commons/imaging/color/ColorCmyk;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmyk;->MAGENTA:Lorg/apache/commons/imaging/color/ColorCmyk;

    .line 3
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmyk;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/imaging/color/ColorCmyk;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmyk;->YELLOW:Lorg/apache/commons/imaging/color/ColorCmyk;

    .line 4
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmyk;

    const-wide/16 v13, 0x0

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/commons/imaging/color/ColorCmyk;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmyk;->BLACK:Lorg/apache/commons/imaging/color/ColorCmyk;

    .line 5
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmyk;

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/imaging/color/ColorCmyk;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmyk;->WHITE:Lorg/apache/commons/imaging/color/ColorCmyk;

    .line 6
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmyk;

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    const-wide/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/commons/imaging/color/ColorCmyk;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmyk;->RED:Lorg/apache/commons/imaging/color/ColorCmyk;

    .line 7
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmyk;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/imaging/color/ColorCmyk;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmyk;->GREEN:Lorg/apache/commons/imaging/color/ColorCmyk;

    .line 8
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmyk;

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    const-wide/16 v15, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/commons/imaging/color/ColorCmyk;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCmyk;->BLUE:Lorg/apache/commons/imaging/color/ColorCmyk;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->C:D

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->M:D

    .line 4
    iput-wide p5, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->Y:D

    .line 5
    iput-wide p7, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->K:D

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

    if-eqz p1, :cond_6

    .line 1
    const-class v2, Lorg/apache/commons/imaging/color/ColorCmyk;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/commons/imaging/color/ColorCmyk;

    .line 3
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorCmyk;->C:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->C:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorCmyk;->K:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->K:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorCmyk;->M:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->M:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorCmyk;->Y:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->Y:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->C:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    .line 2
    iget-wide v3, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->M:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    .line 3
    iget-wide v3, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->Y:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    .line 4
    iget-wide v3, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->K:D

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

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->C:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", M: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->M:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->Y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", K: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->K:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
