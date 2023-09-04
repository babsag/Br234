.class public Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut;
.super Ljava/lang/Object;
.source "MostPopulatedBoxesMedianCut.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/MedianCut;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performNextMedianCut(Ljava/util/List;Z)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/d;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/imaging/palette/d;

    .line 2
    iget v8, v7, Lorg/apache/commons/imaging/palette/d;->q:I

    if-lez v8, :cond_0

    .line 3
    iget v8, v7, Lorg/apache/commons/imaging/palette/d;->s:I

    if-le v8, v6, :cond_0

    move-object v5, v7

    move v6, v8

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    return v4

    .line 4
    :cond_2
    invoke-virtual {v5}, Lorg/apache/commons/imaging/palette/d;->a()Ljava/util/List;

    move-result-object v2

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 5
    invoke-static {}, Lorg/apache/commons/imaging/palette/b;->values()[Lorg/apache/commons/imaging/palette/b;

    move-result-object v8

    array-length v9, v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x1

    if-ge v11, v9, :cond_b

    aget-object v13, v8, v11

    if-eqz v1, :cond_4

    .line 6
    sget-object v14, Lorg/apache/commons/imaging/palette/b;->ALPHA:Lorg/apache/commons/imaging/palette/b;

    if-ne v13, v14, :cond_4

    move-object/from16 v16, v8

    :cond_3
    :goto_2
    move v15, v9

    goto/16 :goto_7

    .line 7
    :cond_4
    new-instance v14, Lorg/apache/commons/imaging/palette/ColorCountComparator;

    invoke-direct {v14, v13}, Lorg/apache/commons/imaging/palette/ColorCountComparator;-><init>(Lorg/apache/commons/imaging/palette/b;)V

    invoke-interface {v2, v14}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 8
    iget v14, v5, Lorg/apache/commons/imaging/palette/d;->s:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v15, v14

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 9
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_6

    .line 10
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/palette/c;

    .line 11
    iget v4, v4, Lorg/apache/commons/imaging/palette/c;->b:I

    add-int v4, v16, v4

    if-lt v4, v15, :cond_5

    move/from16 v16, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v4

    move/from16 v17, v16

    goto :goto_3

    .line 12
    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    if-ne v14, v4, :cond_7

    :goto_5
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    :cond_7
    if-lez v14, :cond_8

    sub-int v16, v16, v15

    .line 13
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v15, v15, v17

    .line 14
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ge v12, v4, :cond_8

    goto :goto_5

    .line 15
    :cond_8
    :goto_6
    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v12, v14, 0x1

    move-object/from16 v16, v8

    const/4 v15, 0x0

    .line 16
    invoke-interface {v2, v15, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    .line 19
    invoke-interface {v2, v12, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_2

    .line 21
    :cond_9
    new-instance v12, Lorg/apache/commons/imaging/palette/d;

    invoke-direct {v12, v4, v1}, Lorg/apache/commons/imaging/palette/d;-><init>(Ljava/util/List;Z)V

    .line 22
    new-instance v4, Lorg/apache/commons/imaging/palette/d;

    invoke-direct {v4, v8, v1}, Lorg/apache/commons/imaging/palette/d;-><init>(Ljava/util/List;Z)V

    .line 23
    iget v8, v12, Lorg/apache/commons/imaging/palette/d;->s:I

    iget v15, v4, Lorg/apache/commons/imaging/palette/d;->s:I

    sub-int/2addr v8, v15

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v15, v9

    int-to-double v8, v8

    .line 24
    iget v12, v12, Lorg/apache/commons/imaging/palette/d;->s:I

    iget v4, v4, Lorg/apache/commons/imaging/palette/d;->s:I

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v17, v13

    int-to-double v12, v4

    div-double/2addr v8, v12

    cmpg-double v4, v8, v6

    if-gez v4, :cond_a

    move-wide v6, v8

    move v10, v14

    move-object/from16 v3, v17

    :cond_a
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move v9, v15

    move-object/from16 v8, v16

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_b
    if-nez v3, :cond_c

    const/4 v4, 0x0

    return v4

    :cond_c
    const/4 v4, 0x0

    .line 25
    new-instance v6, Lorg/apache/commons/imaging/palette/ColorCountComparator;

    invoke-direct {v6, v3}, Lorg/apache/commons/imaging/palette/ColorCountComparator;-><init>(Lorg/apache/commons/imaging/palette/b;)V

    invoke-interface {v2, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    add-int/lit8 v7, v10, 0x1

    .line 27
    invoke-interface {v2, v4, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    .line 30
    invoke-interface {v2, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    new-instance v7, Lorg/apache/commons/imaging/palette/d;

    invoke-direct {v7, v6, v1}, Lorg/apache/commons/imaging/palette/d;-><init>(Ljava/util/List;Z)V

    .line 32
    new-instance v6, Lorg/apache/commons/imaging/palette/d;

    invoke-direct {v6, v4, v1}, Lorg/apache/commons/imaging/palette/d;-><init>(Ljava/util/List;Z)V

    .line 33
    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/palette/c;

    .line 37
    sget-object v1, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v12, :cond_10

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    .line 38
    iget v0, v0, Lorg/apache/commons/imaging/palette/c;->f:I

    goto :goto_8

    .line 39
    :cond_d
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Bad mode."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_e
    iget v0, v0, Lorg/apache/commons/imaging/palette/c;->e:I

    goto :goto_8

    .line 41
    :cond_f
    iget v0, v0, Lorg/apache/commons/imaging/palette/c;->d:I

    goto :goto_8

    .line 42
    :cond_10
    iget v0, v0, Lorg/apache/commons/imaging/palette/c;->c:I

    .line 43
    :goto_8
    new-instance v1, Lorg/apache/commons/imaging/palette/e;

    invoke-direct {v1, v7, v6, v3, v0}, Lorg/apache/commons/imaging/palette/e;-><init>(Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/b;I)V

    iput-object v1, v5, Lorg/apache/commons/imaging/palette/d;->a:Lorg/apache/commons/imaging/palette/e;

    return v12
.end method
