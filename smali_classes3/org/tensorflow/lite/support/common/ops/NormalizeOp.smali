.class public Lorg/tensorflow/lite/support/common/ops/NormalizeOp;
.super Ljava/lang/Object;
.source "NormalizeOp.java"

# interfaces
.implements Lorg/tensorflow/lite/support/common/TensorOperator;


# instance fields
.field private final a:[F

.field private final b:[F

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(FF)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_1

    cmpl-float v3, p2, v1

    if-eqz v3, :cond_0

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string v5, "Stddev cannot be zero."

    .line 3
    invoke-static {v1, v5}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez v2, :cond_3

    cmpl-float v0, p2, v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 4
    :goto_1
    iput-boolean v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->d:Z

    new-array v0, v4, [F

    aput p1, v0, v3

    .line 5
    iput-object v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->a:[F

    new-array p1, v4, [F

    aput p2, p1, v3

    .line 6
    iput-object p1, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->b:[F

    .line 7
    iput v4, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->c:I

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 5
    .param p1    # [F
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Mean cannot be null"

    .line 9
    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Stddev cannot be null"

    .line 10
    invoke-static {p2, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Per channel normalization requires same number of means and stddevs"

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 12
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Means and stddevs are empty."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->a:[F

    .line 14
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    iput-object p2, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->b:[F

    .line 15
    array-length p1, p1

    iput p1, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->c:I

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 16
    :goto_2
    iget v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->c:I

    if-ge p1, v0, :cond_5

    .line 17
    iget-object v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->b:[F

    aget v0, v0, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    const-string v4, "Stddev cannot be zero."

    invoke-static {v0, v4}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->b:[F

    aget v0, v0, p1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->a:[F

    aget v0, v0, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    :cond_3
    const/4 p2, 0x0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 19
    :cond_5
    iput-boolean p2, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->d:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 1
    check-cast p1, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->apply(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .locals 7
    .param p1    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 2
    iget-boolean v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->d:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v0

    .line 4
    iget v1, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    array-length v4, v0

    if-eqz v4, :cond_1

    array-length v4, v0

    sub-int/2addr v4, v3

    aget v4, v0, v4

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v4, "Number of means (stddevs) is not same with number of channels (size of last axis)."

    invoke-static {v1, v4}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getFloatArray()[F

    move-result-object v1

    const/4 v4, 0x0

    .line 6
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 7
    aget v5, v1, v2

    iget-object v6, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->a:[F

    aget v6, v6, v4

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->b:[F

    aget v6, v6, v4

    div-float/2addr v5, v6

    aput v5, v1, v2

    add-int/2addr v4, v3

    .line 8
    iget v5, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->c:I

    rem-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->isDynamic()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    sget-object p1, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    invoke-static {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createDynamic(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object p1

    goto :goto_3

    .line 11
    :cond_4
    sget-object p1, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    invoke-static {v0, p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createFixedSize([ILorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object p1

    .line 12
    :goto_3
    invoke-virtual {p1, v1, v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([F[I)V

    return-object p1
.end method
