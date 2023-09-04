.class public Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;
.super Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;
.source "TensorProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/common/TensorProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder<",
        "Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Lorg/tensorflow/lite/support/common/Operator;)Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;
    .locals 0
    .param p1    # Lorg/tensorflow/lite/support/common/Operator;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->add(Lorg/tensorflow/lite/support/common/Operator;)Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/tensorflow/lite/support/common/TensorOperator;)Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->add(Lorg/tensorflow/lite/support/common/Operator;)Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lorg/tensorflow/lite/support/common/SequentialProcessor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;->build()Lorg/tensorflow/lite/support/common/TensorProcessor;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/tensorflow/lite/support/common/TensorProcessor;
    .locals 2

    .line 2
    new-instance v0, Lorg/tensorflow/lite/support/common/TensorProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/tensorflow/lite/support/common/TensorProcessor;-><init>(Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;Lorg/tensorflow/lite/support/common/TensorProcessor$a;)V

    return-object v0
.end method
