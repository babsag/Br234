.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;
.super Ljava/lang/Object;
.source "PaletteEntryForRange.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:F


# direct methods
.method public constructor <init>(FFLjava/awt/Color;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->a:F

    .line 19
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->b:F

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-lez p1, :cond_1

    .line 20
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 21
    invoke-virtual {p3}, Ljava/awt/Color;->getRGB()I

    move-result p1

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 22
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->i:F

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 23
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->c:F

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 24
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->e:F

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    .line 25
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->g:F

    .line 26
    invoke-virtual {p3}, Ljava/awt/Color;->getRGB()I

    move-result p1

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 27
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->j:F

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 28
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->d:F

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 29
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->f:F

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    .line 30
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->h:F

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null colors not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified values must be v0<v1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(FFLjava/awt/Color;Ljava/awt/Color;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->a:F

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->b:F

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-lez p1, :cond_1

    .line 4
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 5
    invoke-virtual {p3}, Ljava/awt/Color;->getRGB()I

    move-result p1

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 6
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->i:F

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 7
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->c:F

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 8
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->e:F

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    .line 9
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->g:F

    .line 10
    invoke-virtual {p4}, Ljava/awt/Color;->getRGB()I

    move-result p1

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 11
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->j:F

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 12
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->d:F

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    .line 13
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->f:F

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    .line 14
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->h:F

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null colors not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified values must be v0<v1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public coversSingleEntry()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getARGB(F)I
    .locals 7

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->a:F

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_0

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->b:F

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 2
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->j:F

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->i:F

    sub-float/2addr v0, v1

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 3
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->d:F

    iget v4, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->c:F

    sub-float/2addr v1, v4

    mul-float v1, v1, p1

    add-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v4, v2

    double-to-int v1, v4

    .line 4
    iget v4, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->f:F

    iget v5, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->e:F

    sub-float/2addr v4, v5

    mul-float v4, v4, p1

    add-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int v4, v4

    .line 5
    iget v5, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->h:F

    iget v6, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->g:F

    sub-float/2addr v5, v6

    mul-float p1, p1, v5

    add-float/2addr p1, v6

    float-to-double v5, p1

    add-double/2addr v5, v2

    double-to-int p1, v5

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getColor(F)Ljava/awt/Color;
    .locals 7

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->a:F

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_0

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->b:F

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 2
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->j:F

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->i:F

    sub-float/2addr v0, v1

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 3
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->d:F

    iget v4, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->c:F

    sub-float/2addr v1, v4

    mul-float v1, v1, p1

    add-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v4, v2

    double-to-int v1, v4

    .line 4
    iget v4, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->f:F

    iget v5, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->e:F

    sub-float/2addr v4, v5

    mul-float v4, v4, p1

    add-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int v4, v4

    .line 5
    iget v5, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->h:F

    iget v6, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->g:F

    sub-float/2addr v5, v6

    mul-float p1, p1, v5

    add-float/2addr p1, v6

    float-to-double v5, p1

    add-double/2addr v5, v2

    double-to-int p1, v5

    .line 6
    new-instance v2, Ljava/awt/Color;

    invoke-direct {v2, v1, v4, p1, v0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLowerBound()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->a:F

    return v0
.end method

.method public getUpperBound()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->b:F

    return v0
.end method

.method public isCovered(F)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->a:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->b:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaletteEntry for range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
