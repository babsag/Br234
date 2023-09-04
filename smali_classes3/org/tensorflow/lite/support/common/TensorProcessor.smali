.class public Lorg/tensorflow/lite/support/common/TensorProcessor;
.super Lorg/tensorflow/lite/support/common/SequentialProcessor;
.source "TensorProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/tensorflow/lite/support/common/SequentialProcessor<",
        "Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/common/SequentialProcessor;-><init>(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;Lorg/tensorflow/lite/support/common/TensorProcessor$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/common/TensorProcessor;-><init>(Lorg/tensorflow/lite/support/common/TensorProcessor$Builder;)V

    return-void
.end method
