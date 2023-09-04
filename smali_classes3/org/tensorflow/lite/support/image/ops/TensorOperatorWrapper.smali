.class public Lorg/tensorflow/lite/support/image/ops/TensorOperatorWrapper;
.super Ljava/lang/Object;
.source "TensorOperatorWrapper.java"

# interfaces
.implements Lorg/tensorflow/lite/support/image/ImageOperator;


# instance fields
.field private final a:Lorg/tensorflow/lite/support/common/TensorOperator;


# direct methods
.method public constructor <init>(Lorg/tensorflow/lite/support/common/TensorOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/tensorflow/lite/support/image/ops/TensorOperatorWrapper;->a:Lorg/tensorflow/lite/support/common/TensorOperator;

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
    check-cast p1, Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ops/TensorOperatorWrapper;->apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;
    .locals 2
    .param p1    # Lorg/tensorflow/lite/support/image/TensorImage;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    const-string v0, "Op cannot apply on null image."

    .line 2
    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/ops/TensorOperatorWrapper;->a:Lorg/tensorflow/lite/support/common/TensorOperator;

    invoke-virtual {p1}, Lorg/tensorflow/lite/support/image/TensorImage;->getTensorBuffer()Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/tensorflow/lite/support/common/TensorOperator;->apply(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object p1

    .line 4
    new-instance v0, Lorg/tensorflow/lite/support/image/TensorImage;

    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tensorflow/lite/support/image/TensorImage;-><init>(Lorg/tensorflow/lite/DataType;)V

    .line 5
    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V

    return-object v0
.end method

.method public getOutputImageHeight(II)I
    .locals 0

    return p1
.end method

.method public getOutputImageWidth(II)I
    .locals 0

    return p2
.end method

.method public inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;
    .locals 0

    return-object p1
.end method
