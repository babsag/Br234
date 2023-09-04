.class public Lorg/apache/commons/imaging/palette/SimplePalette;
.super Ljava/lang/Object;
.source "SimplePalette.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/Palette;


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/SimplePalette;->a:[I

    return-void
.end method


# virtual methods
.method public getEntry(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/SimplePalette;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public getPaletteIndex(I)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/palette/SimplePalette;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/SimplePalette;->a:[I

    array-length v0, v0

    return v0
.end method
