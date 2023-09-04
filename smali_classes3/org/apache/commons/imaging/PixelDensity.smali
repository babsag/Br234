.class public final Lorg/apache/commons/imaging/PixelDensity;
.super Ljava/lang/Object;
.source "PixelDensity.java"


# instance fields
.field private final a:D

.field private final b:D

.field private final c:I


# direct methods
.method private constructor <init>(DDI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/imaging/PixelDensity;->a:D

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/imaging/PixelDensity;->b:D

    .line 4
    iput p5, p0, Lorg/apache/commons/imaging/PixelDensity;->c:I

    return-void
.end method

.method public static createFromPixelsPerCentimetre(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 7

    .line 1
    new-instance v6, Lorg/apache/commons/imaging/PixelDensity;

    const/16 v5, 0x64

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v6
.end method

.method public static createFromPixelsPerInch(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 7

    .line 1
    new-instance v6, Lorg/apache/commons/imaging/PixelDensity;

    const/16 v5, 0xfe

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v6
.end method

.method public static createFromPixelsPerMetre(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 7

    .line 1
    new-instance v6, Lorg/apache/commons/imaging/PixelDensity;

    const/16 v5, 0x2710

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v6
.end method

.method public static createUnitless(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 7

    .line 1
    new-instance v6, Lorg/apache/commons/imaging/PixelDensity;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v6
.end method


# virtual methods
.method public getRawHorizontalDensity()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->a:D

    return-wide v0
.end method

.method public getRawVerticalDensity()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->b:D

    return-wide v0
.end method

.method public horizontalDensityCentimetres()D
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInCentimetres()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->a:D

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->a:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public horizontalDensityInches()D
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInInches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->a:D

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->a:D

    const-wide v2, 0x406fc00000000000L    # 254.0

    mul-double v0, v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public horizontalDensityMetres()D
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInMetres()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->a:D

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->a:D

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public isInCentimetres()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/PixelDensity;->c:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInInches()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/PixelDensity;->c:I

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInMetres()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/PixelDensity;->c:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnitless()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/PixelDensity;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public verticalDensityCentimetres()D
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInCentimetres()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->b:D

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->b:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public verticalDensityInches()D
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInInches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->b:D

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->b:D

    const-wide v2, 0x406fc00000000000L    # 254.0

    mul-double v0, v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public verticalDensityMetres()D
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInMetres()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->b:D

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->b:D

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method
