.class public Lorg/apache/commons/imaging/palette/QuantizedPalette;
.super Ljava/lang/Object;
.source "QuantizedPalette.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/Palette;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->b:Ljava/util/List;

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->a:I

    mul-int/lit8 v0, p2, 0x3

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 4
    new-array v0, v0, [Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    iput-object v0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->c:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 7
    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d(I)V

    .line 8
    iget-object v4, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    aget v4, v4, v0

    :goto_2
    iget-object v5, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v5, v5, v0

    if-gt v4, v5, :cond_3

    .line 9
    iget-object v5, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    aget v5, v5, v1

    :goto_3
    iget-object v6, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v6, v6, v1

    if-gt v5, v6, :cond_2

    .line 10
    iget-object v6, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    :goto_4
    iget-object v8, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v8, v8, v7

    if-gt v6, v8, :cond_1

    mul-int/lit8 v8, p2, 0x2

    shl-int v8, v4, v8

    mul-int/lit8 v9, p2, 0x1

    shl-int v9, v5, v9

    or-int/2addr v8, v9

    mul-int/lit8 v9, p2, 0x0

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    .line 11
    iget-object v9, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->c:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    aput-object v3, v9, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public getEntry(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 2
    iget p1, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->h:I

    return p1
.end method

.method public getPaletteIndex(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->a:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    mul-int/lit8 v1, v0, 0x3

    rsub-int/lit8 v1, v1, 0x18

    shr-int v1, p1, v1

    shl-int/lit8 v3, v0, 0x1

    shl-int v3, v2, v3

    and-int/2addr v1, v3

    mul-int/lit8 v3, v0, 0x2

    rsub-int/lit8 v3, v3, 0x10

    shr-int v3, p1, v3

    shl-int v4, v2, v0

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    rsub-int/lit8 v0, v0, 0x8

    shr-int/2addr p1, v0

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->c:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->b()I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
