.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterFloat.java"


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;",
            ">;"
        }
    .end annotation
.end field

.field d:F

.field e:F

.field f:I

.field g:I

.field h:I

.field i:I

.field j:D

.field k:I


# direct methods
.method public constructor <init>(FF)V
    .locals 7

    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    const/16 v1, 0x20

    aput v1, v3, v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/16 v6, 0x20

    move-object v1, p0

    .line 1
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->c:Ljava/util/ArrayList;

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 4
    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->d:F

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 5
    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->e:F

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    .line 6
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;

    sget-object v1, Ljava/awt/Color;->black:Ljava/awt/Color;

    sget-object v2, Ljava/awt/Color;->white:Ljava/awt/Color;

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;-><init>(FFLjava/awt/Color;Ljava/awt/Color;)V

    .line 7
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;

    sget-object v1, Ljava/awt/Color;->white:Ljava/awt/Color;

    sget-object v2, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-direct {v0, p2, p1, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntryForRange;-><init>(FFLjava/awt/Color;Ljava/awt/Color;)V

    .line 9
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    const/16 v1, 0x20

    aput v1, v3, v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/16 v6, 0x20

    move-object v1, p0

    .line 10
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->b:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->c:Ljava/util/ArrayList;

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 13
    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->d:F

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 14
    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->e:F

    if-eqz p1, :cond_2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;

    .line 17
    invoke-interface {v0}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->coversSingleEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_1
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/a;->a:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/a;

    .line 21
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 22
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Palette entries list must be non-null and non-empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->getLowerBound()F

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->getLowerBound()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->getUpperBound()F

    move-result p0

    float-to-double v0, p0

    invoke-interface {p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->getUpperBound()F

    move-result p0

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->getLowerBound()F

    move-result p0

    float-to-double v0, p0

    invoke-interface {p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->getLowerBound()F

    move-result p0

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getMaxFound()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->e:F

    return v0
.end method

.method public getMaxXY()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->h:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->i:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getMeanFound()F
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->j:D

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-float v0, v1

    return v0
.end method

.method public getMinFound()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->d:F

    return v0
.end method

.method public getMinXY()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->f:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->g:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;

    .line 3
    invoke-interface {v1, p2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->isCovered(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1, p2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->getARGB(F)I

    move-result p2

    .line 5
    invoke-virtual {p1, p3, p4, p2}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void

    .line 6
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->d:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 8
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->d:F

    .line 9
    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->f:I

    .line 10
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->g:I

    .line 11
    :cond_3
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->e:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 12
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->e:F

    .line 13
    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->h:I

    .line 14
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->i:I

    .line 15
    :cond_4
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->k:I

    .line 16
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->j:D

    float-to-double v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->j:D

    .line 17
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;

    .line 18
    invoke-interface {v1, p2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->isCovered(F)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    invoke-interface {v1, p2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->getARGB(F)I

    move-result p2

    .line 20
    invoke-virtual {p1, p3, p4, p2}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void

    .line 21
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;

    .line 22
    invoke-interface {v1, p2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->isCovered(F)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 23
    invoke-interface {v1, p2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->getARGB(F)I

    move-result p2

    .line 24
    invoke-virtual {p1, p3, p4, p2}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    :cond_8
    return-void
.end method

.method public mapValueToARGB(F)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;

    .line 2
    invoke-interface {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->isCovered(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->getARGB(F)I

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PhotometricInterpreterFloat;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;

    .line 6
    invoke-interface {v2, p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->isCovered(F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-interface {v2, p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/floatingpoint/PaletteEntry;->getARGB(F)I

    move-result p1

    return p1

    :cond_4
    return v1
.end method
