.class Lorg/apache/commons/imaging/palette/f;
.super Lorg/apache/commons/imaging/palette/SimplePalette;
.source "MedianCutPalette.java"


# instance fields
.field private final b:Lorg/apache/commons/imaging/palette/d;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/palette/d;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/f;->b:Lorg/apache/commons/imaging/palette/d;

    return-void
.end method


# virtual methods
.method public getPaletteIndex(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/f;->b:Lorg/apache/commons/imaging/palette/d;

    .line 2
    :goto_0
    iget-object v1, v0, Lorg/apache/commons/imaging/palette/d;->a:Lorg/apache/commons/imaging/palette/e;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/palette/e;->a(I)Lorg/apache/commons/imaging/palette/d;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget p1, v0, Lorg/apache/commons/imaging/palette/d;->b:I

    return p1
.end method
