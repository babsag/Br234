.class public Lorg/apache/commons/imaging/palette/PaletteFactory;
.super Ljava/lang/Object;
.source "PaletteFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/palette/PaletteFactory$a;
    }
.end annotation


# static fields
.field public static final COMPONENTS:I = 0x3

.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/palette/PaletteFactory;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;I[II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;I[II)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 3
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget v5, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->g:I

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-le v5, v1, :cond_1

    :goto_1
    move-object v2, v4

    move v1, v5

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    return-void

    .line 5
    :cond_5
    sget-object v3, Lorg/apache/commons/imaging/palette/PaletteFactory;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tarea: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 7
    :cond_6
    invoke-direct {p0, p3, v2, p4}, Lorg/apache/commons/imaging/palette/PaletteFactory;->c([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;I)Lorg/apache/commons/imaging/palette/PaletteFactory$a;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory$a;->a(Lorg/apache/commons/imaging/palette/PaletteFactory$a;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory$a;->b(Lorg/apache/commons/imaging/palette/PaletteFactory$a;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-void
.end method

.method private b([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            "II)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/PaletteFactory$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/palette/PaletteFactory;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trying ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget v0, p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->g:I

    .line 4
    iget-object v1, p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    array-length v2, v1

    new-array v2, v2, [I

    .line 5
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v1, p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    array-length v3, v1

    new-array v3, v3, [I

    .line 7
    array-length v5, v1

    invoke-static {v1, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v1, p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    aget v1, v1, p3

    move v10, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v5, v5, p3

    add-int/lit8 v5, v5, 0x1

    if-eq v10, v5, :cond_2

    .line 9
    aput v10, v2, p3

    .line 10
    aput v10, v3, p3

    .line 11
    invoke-direct {p0, p1, v2, v3, p4}, Lorg/apache/commons/imaging/palette/PaletteFactory;->e([I[I[II)I

    move-result v1

    add-int/2addr v4, v1

    .line 12
    div-int/lit8 v5, v0, 0x2

    if-lt v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v9, v4

    sub-int p1, v9, v1

    add-int/lit8 v0, v10, -0x1

    move-object v5, p0

    move-object v6, p2

    move v7, p3

    move v8, p4

    .line 13
    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/imaging/palette/PaletteFactory;->d(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$a;

    move-result-object v1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p1

    move v7, v0

    .line 14
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/palette/PaletteFactory;->d(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$a;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    .line 16
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 17
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p2
.end method

.method private c([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;I)Lorg/apache/commons/imaging/palette/PaletteFactory$a;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->b([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->b([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->b([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/palette/PaletteFactory$a;

    .line 6
    invoke-static {p3}, Lorg/apache/commons/imaging/palette/PaletteFactory$a;->a(Lorg/apache/commons/imaging/palette/PaletteFactory$a;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v2

    .line 7
    invoke-static {p3}, Lorg/apache/commons/imaging/palette/PaletteFactory$a;->b(Lorg/apache/commons/imaging/palette/PaletteFactory$a;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v3

    .line 8
    iget v2, v2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->g:I

    .line 9
    iget v3, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->g:I

    sub-int v4, v2, v3

    .line 10
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v4, v2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    cmpg-double v2, v4, v0

    if-gez v2, :cond_0

    :goto_1
    move-object p2, p3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method private d(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$a;
    .locals 8

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/palette/PaletteFactory;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget v2, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->g:I

    .line 4
    iget-object v3, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    aget v4, v3, p2

    const/4 v5, 0x0

    if-lt p5, v4, :cond_4

    iget-object v4, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v4, v4, p2

    if-lt p5, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x1

    if-lt p4, v4, :cond_4

    if-lt p4, v2, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    array-length v4, v3

    new-array v4, v4, [I

    .line 6
    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v3, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    array-length v5, v3

    new-array v5, v5, [I

    .line 8
    array-length v7, v3

    invoke-static {v3, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    aput p5, v5, p2

    add-int/lit8 v3, p5, 0x1

    .line 10
    aput v3, v4, p2

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first total: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "second total: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v1, v2, p4

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slice: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 16
    :cond_3
    new-instance p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    iget-object p5, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    invoke-direct {p2, p4, p3, p5, v5}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II[I[I)V

    .line 17
    new-instance p5, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    sub-int/2addr v2, p4

    iget-object p1, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    invoke-direct {p5, v2, p3, v4, p1}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II[I[I)V

    .line 18
    new-instance p1, Lorg/apache/commons/imaging/palette/PaletteFactory$a;

    invoke-direct {p1, p2, p5}, Lorg/apache/commons/imaging/palette/PaletteFactory$a;-><init>(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;Lorg/apache/commons/imaging/palette/ColorSpaceSubset;)V

    return-object p1

    :cond_4
    :goto_0
    return-object v5
.end method

.method private e([I[I[II)I
    .locals 10

    const/4 v0, 0x2

    .line 1
    aget v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    aget v4, p3, v0

    if-gt v1, v4, :cond_2

    mul-int/lit8 v4, p4, 0x2

    shl-int v4, v1, v4

    const/4 v5, 0x1

    .line 2
    aget v6, p2, v5

    :goto_1
    aget v7, p3, v5

    if-gt v6, v7, :cond_1

    mul-int/lit8 v7, p4, 0x1

    shl-int v7, v6, v7

    .line 3
    aget v8, p2, v2

    :goto_2
    aget v9, p3, v2

    if-gt v8, v9, :cond_0

    or-int v9, v4, v7

    or-int/2addr v9, v8

    .line 4
    aget v9, p1, v9

    add-int/2addr v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private f(II)I
    .locals 5

    const/4 v0, 0x1

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 p1, p1, 0x8

    rsub-int/lit8 v4, p2, 0x8

    shr-int/2addr v3, v4

    shl-int/2addr v2, p2

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public countTransparentColors(Ljava/awt/image/BufferedImage;)I
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_3

    .line 5
    invoke-virtual {p1, v5, v4}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    shr-int/lit8 v7, v6, 0x18

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ge v7, v8, :cond_2

    if-gez v3, :cond_1

    move v3, v6

    goto :goto_2

    :cond_1
    if-eq v6, v3, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-gez v3, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public countTrasparentColors([I)I
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget v4, p1, v3

    shr-int/lit8 v5, v4, 0x18

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-ge v5, v6, :cond_1

    if-gez v2, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    if-eq v4, v2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-gez v2, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;)Z
    .locals 1

    const/16 v0, 0xff

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;I)Z

    move-result p1

    return p1
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;I)Z
    .locals 6

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    .line 5
    invoke-virtual {p1, v4, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    if-ge v5, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public isGrayscale(Ljava/awt/image/BufferedImage;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-ne v4, v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_3

    .line 4
    invoke-virtual {p1, v5, v4}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v6, v2

    and-int/lit16 v6, v6, 0xff

    if-ne v7, v8, :cond_2

    if-eq v7, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public makeExactRgbPaletteFancy(Ljava/awt/image/BufferedImage;)Lorg/apache/commons/imaging/palette/Palette;
    .locals 11

    const/high16 v0, 0x200000

    new-array v1, v0, [B

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_0

    .line 3
    invoke-virtual {p1, v7, v5}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v8

    const v9, 0x1fffff

    and-int/2addr v9, v8

    shr-int/lit8 v8, v8, 0x15

    and-int/lit8 v8, v8, 0x7

    shl-int v8, v6, v8

    .line 4
    aget-byte v10, v1, v9

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v1, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge p1, v0, :cond_2

    .line 5
    aget-byte v3, v1, p1

    and-int/lit16 v3, v3, 0xff

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 7
    :cond_2
    sget-object p1, Lorg/apache/commons/imaging/palette/PaletteFactory;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Used colors: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 9
    :cond_3
    new-array p1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 10
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    const/16 v7, 0x80

    const/4 v8, 0x0

    :goto_4
    const/16 v9, 0x8

    if-ge v8, v9, :cond_5

    and-int v9, v5, v7

    ushr-int/2addr v7, v6

    if-lez v9, :cond_4

    rsub-int/lit8 v9, v8, 0x7

    shl-int/lit8 v9, v9, 0x15

    or-int/2addr v9, v2

    add-int/lit8 v10, v3, 0x1

    .line 11
    aput v9, p1, v3

    move v3, v10

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 12
    :cond_6
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 13
    new-instance v0, Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    return-object v0
.end method

.method public makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 4
    invoke-virtual {p1, v5, v4}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    if-le v6, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v3, 0x1

    .line 8
    aput v0, p1, v3

    move v3, v1

    goto :goto_2

    .line 9
    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 10
    new-instance p2, Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-direct {p2, p1}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    return-object p2
.end method

.method public makeQuantizedRgbPalette(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/Palette;
    .locals 12

    const/high16 v0, 0x40000

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    mul-int v5, v1, v2

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II)V

    .line 5
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v7, Lorg/apache/commons/imaging/palette/PaletteFactory;->a:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 7
    iget-object v8, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    iget-object v9, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    invoke-direct {p0, v0, v8, v9, v6}, Lorg/apache/commons/imaging/palette/PaletteFactory;->e([I[I[II)I

    move-result v8

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pre total: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v1, :cond_1

    .line 9
    invoke-virtual {p1, v9, v8}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v10

    .line 10
    invoke-direct {p0, v10, v6}, Lorg/apache/commons/imaging/palette/PaletteFactory;->f(II)I

    move-result v10

    .line 11
    aget v11, v0, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v0, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 12
    :cond_2
    sget-object p1, Lorg/apache/commons/imaging/palette/PaletteFactory;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    iget-object v2, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    iget-object v4, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    invoke-direct {p0, v0, v2, v4, v6}, Lorg/apache/commons/imaging/palette/PaletteFactory;->e([I[I[II)I

    move-result v2

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "all total: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width * height: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-direct {p0, v3, p2, v0, v6}, Lorg/apache/commons/imaging/palette/PaletteFactory;->a(Ljava/util/List;I[II)V

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subsets: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width*height: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 20
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v7, p1, :cond_6

    .line 21
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 22
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c([I)V

    .line 23
    sget-object p2, Lorg/apache/commons/imaging/palette/PaletteFactory;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->a(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 25
    :cond_6
    sget-object p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;

    invoke-interface {v3, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 26
    new-instance p1, Lorg/apache/commons/imaging/palette/QuantizedPalette;

    invoke-direct {p1, v3, v6}, Lorg/apache/commons/imaging/palette/QuantizedPalette;-><init>(Ljava/util/List;I)V

    return-object p1
.end method

.method public makeQuantizedRgbaPalette(Ljava/awt/image/BufferedImage;ZI)Lorg/apache/commons/imaging/palette/Palette;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {v0, p2}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;-><init>(Z)V

    new-instance p2, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;

    invoke-direct {p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;-><init>()V

    invoke-virtual {v0, p1, p3, p2}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->process(Ljava/awt/image/BufferedImage;ILorg/apache/commons/imaging/palette/MedianCut;)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object p1

    return-object p1
.end method
