.class public Lorg/tensorflow/lite/support/image/ImageProcessor;
.super Lorg/tensorflow/lite/support/common/SequentialProcessor;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/tensorflow/lite/support/common/SequentialProcessor<",
        "Lorg/tensorflow/lite/support/image/TensorImage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/common/SequentialProcessor;-><init>(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;Lorg/tensorflow/lite/support/image/ImageProcessor$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/image/ImageProcessor;-><init>(Lorg/tensorflow/lite/support/image/ImageProcessor$Builder;)V

    return-void
.end method


# virtual methods
.method public inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor;->operatorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/tensorflow/lite/support/common/Operator;

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    check-cast v3, Lorg/tensorflow/lite/support/image/ImageOperator;

    .line 7
    invoke-interface {v3, p2, p3}, Lorg/tensorflow/lite/support/image/ImageOperator;->getOutputImageHeight(II)I

    move-result v4

    .line 8
    invoke-interface {v3, p2, p3}, Lorg/tensorflow/lite/support/image/ImageOperator;->getOutputImageWidth(II)I

    move-result p3

    move p2, v4

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor;->operatorList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {v0, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 12
    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/tensorflow/lite/support/image/ImageOperator;

    .line 14
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 15
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 16
    invoke-interface {v1, p1, v2, v3}, Lorg/tensorflow/lite/support/image/ImageOperator;->inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public inverseTransform(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .locals 4

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 18
    invoke-virtual {p0, v0, p2, p3}, Lorg/tensorflow/lite/support/image/ImageProcessor;->inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    .line 19
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 20
    invoke-virtual {p0, v1, p2, p3}, Lorg/tensorflow/lite/support/image/ImageProcessor;->inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object p1

    .line 21
    new-instance p2, Landroid/graphics/RectF;

    iget p3, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    .line 22
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {p2, p3, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2
.end method

.method public updateNumberOfRotations(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/tensorflow/lite/support/image/ImageProcessor;->updateNumberOfRotations(II)V

    return-void
.end method

.method public declared-synchronized updateNumberOfRotations(II)V
    .locals 3

    const-class v0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor;->operatorIndex:Ljava/util/Map;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "The Rot90Op has not been added to the ImageProcessor."

    .line 4
    invoke-static {v1, v2}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkState(ZLjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor;->operatorIndex:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "occurrence"

    invoke-static {p2, v1, v2}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkElementIndex(IILjava/lang/String;)I

    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 8
    new-instance v0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;

    invoke-direct {v0, p1}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;-><init>(I)V

    .line 9
    iget-object p1, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor;->operatorList:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
