.class public Lorg/apache/commons/imaging/palette/MedianCutQuantizer;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->a:Z

    return-void
.end method

.method private a(Ljava/awt/image/BufferedImage;II)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/palette/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    .line 3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v10

    .line 4
    new-array v11, v9, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v10, :cond_4

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    move v3, v13

    move v4, v9

    move-object v6, v11

    move v8, v9

    .line 5
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_3

    .line 6
    aget v2, v11, v1

    move-object v3, p0

    .line 7
    iget-boolean v4, v3, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->a:Z

    if-eqz v4, :cond_0

    const v4, 0xffffff

    and-int/2addr v2, v4

    :cond_0
    and-int v2, v2, p3

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/palette/c;

    if-nez v4, :cond_1

    .line 9
    new-instance v4, Lorg/apache/commons/imaging/palette/c;

    invoke-direct {v4, v2}, Lorg/apache/commons/imaging/palette/c;-><init>(I)V

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    move/from16 v5, p2

    if-le v2, v5, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_1
    move/from16 v5, p2

    .line 12
    :cond_2
    iget v2, v4, Lorg/apache/commons/imaging/palette/c;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v4, Lorg/apache/commons/imaging/palette/c;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v3, p0

    move/from16 v5, p2

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    move-object v3, p0

    return-object v0
.end method


# virtual methods
.method public groupColors(Ljava/awt/image/BufferedImage;I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/palette/c;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge p2, v0, :cond_1

    const/16 v0, 0xff

    shl-int v1, v0, p2

    and-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, v0

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 2
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->a(Ljava/awt/image/BufferedImage;II)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/Error;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public process(Ljava/awt/image/BufferedImage;ILorg/apache/commons/imaging/palette/MedianCut;)Lorg/apache/commons/imaging/palette/Palette;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->groupColors(Ljava/awt/image/BufferedImage;I)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p2, :cond_2

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lossless palette: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 4
    new-array p2, v0, [I

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 8
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/palette/c;

    .line 9
    iget p1, p1, Lorg/apache/commons/imaging/palette/c;->a:I

    aput p1, p2, v1

    .line 10
    iget-boolean p1, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->a:Z

    if-eqz p1, :cond_0

    .line 11
    aget p1, p2, v1

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    aput p1, p2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    return-object p1

    .line 13
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discrete colors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v3, Lorg/apache/commons/imaging/palette/d;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean p1, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->a:Z

    invoke-direct {v3, v4, p1}, Lorg/apache/commons/imaging/palette/d;-><init>(Ljava/util/List;Z)V

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, p2, :cond_4

    .line 18
    iget-boolean p1, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->a:Z

    invoke-interface {p3, v2, p1}, Lorg/apache/commons/imaging/palette/MedianCut;->performNextMedianCut(Ljava/util/List;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 19
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "palette size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/imaging/internal/Debug;->debug(Ljava/lang/String;)V

    .line 21
    new-array p2, p1, [I

    .line 22
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_6

    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/palette/d;

    .line 24
    invoke-virtual {p3}, Lorg/apache/commons/imaging/palette/d;->b()I

    move-result v4

    aput v4, p2, v1

    .line 25
    iput v1, p3, Lorg/apache/commons/imaging/palette/d;->b:I

    .line 26
    invoke-virtual {p3}, Lorg/apache/commons/imaging/palette/d;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27
    :cond_5
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "empty color_group: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-gt p1, v0, :cond_7

    .line 28
    new-instance p1, Lorg/apache/commons/imaging/palette/f;

    invoke-direct {p1, v3, p2}, Lorg/apache/commons/imaging/palette/f;-><init>(Lorg/apache/commons/imaging/palette/d;[I)V

    return-object p1

    .line 29
    :cond_7
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "palette_size > discrete_colors"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
