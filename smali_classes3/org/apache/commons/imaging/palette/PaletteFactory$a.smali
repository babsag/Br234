.class Lorg/apache/commons/imaging/palette/PaletteFactory$a;
.super Ljava/lang/Object;
.source "PaletteFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/palette/PaletteFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

.field private final b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;Lorg/apache/commons/imaging/palette/ColorSpaceSubset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/PaletteFactory$a;->a:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/imaging/palette/PaletteFactory$a;->b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/imaging/palette/PaletteFactory$a;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/PaletteFactory$a;->a:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    return-object p0
.end method

.method static synthetic b(Lorg/apache/commons/imaging/palette/PaletteFactory$a;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/PaletteFactory$a;->b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    return-object p0
.end method
