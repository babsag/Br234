.class public Lorg/tensorflow/lite/support/common/ops/DequantizeOp;
.super Lorg/tensorflow/lite/support/common/ops/NormalizeOp;
.source "DequantizeOp.java"

# interfaces
.implements Lorg/tensorflow/lite/support/common/TensorOperator;


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;-><init>(FF)V

    return-void
.end method
