.class public Lorg/tensorflow/lite/Tensor$QuantizationParams;
.super Ljava/lang/Object;
.source "Tensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/Tensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuantizationParams"
.end annotation


# instance fields
.field private final a:F

.field private final b:I


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->a:F

    .line 3
    iput p2, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->b:I

    return-void
.end method


# virtual methods
.method public getScale()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->a:F

    return v0
.end method

.method public getZeroPoint()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/tensorflow/lite/Tensor$QuantizationParams;->b:I

    return v0
.end method
