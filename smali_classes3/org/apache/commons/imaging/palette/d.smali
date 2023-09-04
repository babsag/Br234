.class Lorg/apache/commons/imaging/palette/d;
.super Ljava/lang/Object;
.source "ColorGroup.java"


# instance fields
.field a:Lorg/apache/commons/imaging/palette/e;

.field b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/c;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field final m:I

.field final n:I

.field final o:I

.field final p:I

.field final q:I

.field final r:I

.field final s:I


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/c;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/palette/d;->b:I

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lorg/apache/commons/imaging/palette/d;->e:I

    const/high16 v1, -0x80000000

    .line 4
    iput v1, p0, Lorg/apache/commons/imaging/palette/d;->f:I

    .line 5
    iput v0, p0, Lorg/apache/commons/imaging/palette/d;->g:I

    .line 6
    iput v1, p0, Lorg/apache/commons/imaging/palette/d;->h:I

    .line 7
    iput v0, p0, Lorg/apache/commons/imaging/palette/d;->i:I

    .line 8
    iput v1, p0, Lorg/apache/commons/imaging/palette/d;->j:I

    .line 9
    iput v0, p0, Lorg/apache/commons/imaging/palette/d;->k:I

    .line 10
    iput v1, p0, Lorg/apache/commons/imaging/palette/d;->l:I

    .line 11
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/d;->c:Ljava/util/List;

    .line 12
    iput-boolean p2, p0, Lorg/apache/commons/imaging/palette/d;->d:Z

    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/palette/c;

    .line 15
    iget v3, v2, Lorg/apache/commons/imaging/palette/c;->b:I

    add-int/2addr v1, v3

    .line 16
    iget v3, p0, Lorg/apache/commons/imaging/palette/d;->k:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/c;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/d;->k:I

    .line 17
    iget v3, p0, Lorg/apache/commons/imaging/palette/d;->l:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/c;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/d;->l:I

    .line 18
    iget v3, p0, Lorg/apache/commons/imaging/palette/d;->e:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/c;->d:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/d;->e:I

    .line 19
    iget v3, p0, Lorg/apache/commons/imaging/palette/d;->f:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/c;->d:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/d;->f:I

    .line 20
    iget v3, p0, Lorg/apache/commons/imaging/palette/d;->g:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/c;->e:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/d;->g:I

    .line 21
    iget v3, p0, Lorg/apache/commons/imaging/palette/d;->h:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/c;->e:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/d;->h:I

    .line 22
    iget v3, p0, Lorg/apache/commons/imaging/palette/d;->i:I

    iget v4, v2, Lorg/apache/commons/imaging/palette/c;->f:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/palette/d;->i:I

    .line 23
    iget v3, p0, Lorg/apache/commons/imaging/palette/d;->j:I

    iget v2, v2, Lorg/apache/commons/imaging/palette/c;->f:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/imaging/palette/d;->j:I

    goto :goto_0

    .line 24
    :cond_0
    iput v1, p0, Lorg/apache/commons/imaging/palette/d;->s:I

    .line 25
    iget p1, p0, Lorg/apache/commons/imaging/palette/d;->l:I

    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->k:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/imaging/palette/d;->m:I

    .line 26
    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->f:I

    iget v2, p0, Lorg/apache/commons/imaging/palette/d;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/imaging/palette/d;->n:I

    .line 27
    iget v2, p0, Lorg/apache/commons/imaging/palette/d;->h:I

    iget v3, p0, Lorg/apache/commons/imaging/palette/d;->g:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/imaging/palette/d;->o:I

    .line 28
    iget v3, p0, Lorg/apache/commons/imaging/palette/d;->j:I

    iget v4, p0, Lorg/apache/commons/imaging/palette/d;->i:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/imaging/palette/d;->p:I

    if-eqz p2, :cond_1

    move v4, v1

    goto :goto_1

    .line 29
    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 30
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lorg/apache/commons/imaging/palette/d;->q:I

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v0, p1

    :goto_2
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 32
    iput v0, p0, Lorg/apache/commons/imaging/palette/d;->r:I

    return-void

    .line 33
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "empty color_group"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/d;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method b()I
    .locals 15

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/imaging/palette/c;

    .line 2
    iget v12, v11, Lorg/apache/commons/imaging/palette/c;->b:I

    int-to-long v13, v12

    add-long/2addr v1, v13

    .line 3
    iget v13, v11, Lorg/apache/commons/imaging/palette/c;->c:I

    mul-int v13, v13, v12

    int-to-long v13, v13

    add-long/2addr v3, v13

    .line 4
    iget v13, v11, Lorg/apache/commons/imaging/palette/c;->d:I

    mul-int v13, v13, v12

    int-to-long v13, v13

    add-long/2addr v5, v13

    .line 5
    iget v13, v11, Lorg/apache/commons/imaging/palette/c;->e:I

    mul-int v13, v13, v12

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 6
    iget v11, v11, Lorg/apache/commons/imaging/palette/c;->f:I

    mul-int v12, v12, v11

    int-to-long v11, v12

    add-long/2addr v9, v11

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/imaging/palette/d;->d:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    goto :goto_1

    :cond_1
    long-to-double v3, v3

    long-to-double v11, v1

    div-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v0, v3

    :goto_1
    long-to-double v3, v5

    long-to-double v1, v1

    div-double/2addr v3, v1

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    long-to-double v5, v7

    div-double/2addr v5, v1

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v3, v5

    long-to-double v5, v9

    div-double/2addr v5, v1

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v4, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ColorGroup. minRed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxRed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->f:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minGreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->g:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxGreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->h:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minBlue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->i:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxBlue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->j:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->k:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->l:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxDiff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->q:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", diffTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/palette/d;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
