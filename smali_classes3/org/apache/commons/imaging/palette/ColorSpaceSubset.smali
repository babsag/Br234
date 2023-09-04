.class Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
.super Ljava/lang/Object;
.source "ColorSpaceSubset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field public static final b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;


# instance fields
.field final c:[I

.field final d:[I

.field final e:I

.field final f:I

.field final g:I

.field h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;

    return-void
.end method

.method constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->g:I

    .line 3
    iput p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->e:I

    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->f:I

    const/4 p1, 0x3

    new-array p2, p1, [I

    .line 5
    iput-object p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    new-array p2, p1, [I

    .line 6
    iput-object p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 7
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->f:I

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->h:I

    return-void
.end method

.method constructor <init>(II[I[I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->g:I

    .line 11
    iput p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->e:I

    .line 12
    iput-object p3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    .line 13
    iput-object p4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    .line 14
    iput p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->f:I

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->h:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    aget v4, v3, v1

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 2
    aget v5, v0, v4

    aget v6, v3, v4

    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    const/4 v6, 0x2

    .line 3
    aget v0, v0, v6

    aget v3, v3, v6

    sub-int/2addr v0, v3

    add-int/2addr v0, v4

    mul-int v3, v2, v5

    mul-int v3, v3, v0

    .line 4
    sget-object v7, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->a:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": ["

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] total : "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->g:I

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\trgb: "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->h:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", red: "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    aget v8, v8, v1

    iget v9, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->e:I

    rsub-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    .line 6
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v9, v9, v1

    iget v10, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->e:I

    rsub-int/lit8 v10, v10, 0x8

    shl-int/2addr v9, v10

    .line 7
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", green: "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    aget v10, v10, v4

    iget v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->e:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int/2addr v10, v11

    .line 8
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v10, v10, v4

    iget v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->e:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int/2addr v10, v11

    .line 9
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", blue: "

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    aget v11, v11, v6

    iget v12, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->e:I

    rsub-int/lit8 v12, v12, 0x8

    shl-int/2addr v11, v12

    .line 10
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v11, v11, v6

    iget v12, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->e:I

    rsub-int/lit8 v12, v12, 0x8

    shl-int/2addr v11, v12

    .line 11
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v7, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\tred: "

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    aget v11, v11, v1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v1, v11, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    aget v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    aget v1, v1, v6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v1, v1, v6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\trdiff: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gdiff: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bdiff: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", colorArea: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->i:I

    return v0
.end method

.method public c([I)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v7, v5

    :goto_0
    iget-object v9, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v9, v9, v2

    if-gt v1, v9, :cond_2

    .line 2
    iget-object v9, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    const/4 v11, 0x1

    aget v9, v9, v11

    :goto_1
    iget-object v12, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v12, v12, v11

    if-gt v9, v12, :cond_1

    .line 3
    iget-object v12, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->c:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    :goto_2
    iget-object v14, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->d:[I

    aget v14, v14, v13

    if-gt v12, v14, :cond_0

    .line 4
    iget v14, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->e:I

    mul-int/lit8 v15, v14, 0x2

    shl-int v15, v12, v15

    mul-int/lit8 v16, v14, 0x1

    shl-int v16, v9, v16

    or-int v15, v15, v16

    mul-int/lit8 v16, v14, 0x0

    shl-int v16, v1, v16

    or-int v15, v15, v16

    .line 5
    aget v15, p1, v15

    rsub-int/lit8 v16, v14, 0x8

    shl-int v16, v1, v16

    mul-int v11, v15, v16

    int-to-long v10, v11

    add-long/2addr v3, v10

    rsub-int/lit8 v10, v14, 0x8

    shl-int v10, v9, v10

    mul-int v10, v10, v15

    int-to-long v10, v10

    add-long/2addr v5, v10

    const/16 v10, 0x8

    rsub-int/lit8 v11, v14, 0x8

    shl-int v10, v12, v11

    mul-int v15, v15, v10

    int-to-long v10, v15

    add-long/2addr v7, v10

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->g:I

    int-to-long v9, v1

    div-long/2addr v3, v9

    int-to-long v9, v1

    .line 7
    div-long/2addr v5, v9

    int-to-long v9, v1

    .line 8
    div-long/2addr v7, v9

    const-wide/16 v9, 0xff

    and-long/2addr v3, v9

    const/16 v1, 0x10

    shl-long/2addr v3, v1

    and-long/2addr v5, v9

    const/16 v1, 0x8

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    and-long v5, v7, v9

    shl-long v1, v5, v2

    or-long/2addr v1, v3

    long-to-int v2, v1

    .line 9
    iput v2, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->h:I

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->i:I

    return-void
.end method
