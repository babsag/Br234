.class public Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;
.super Ljava/lang/Object;
.source "ResizeWithCropOrPadOp.java"

# interfaces
.implements Lorg/tensorflow/lite/support/image/ImageOperator;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->a:I

    .line 3
    iput p2, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->b:I

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static a(Landroid/graphics/PointF;IIII)Landroid/graphics/PointF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    int-to-float p2, p4

    add-float/2addr v1, p2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    int-to-float p1, p3

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
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

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;
    .locals 10
    .param p1    # Lorg/tensorflow/lite/support/image/TensorImage;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/image/TensorImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 5
    iget v3, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->b:I

    const/4 v4, 0x0

    if-le v3, v1, :cond_0

    sub-int/2addr v3, v1

    .line 6
    div-int/lit8 v3, v3, 0x2

    add-int v5, v3, v1

    move v6, v5

    move v5, v1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v3

    .line 7
    div-int/lit8 v1, v1, 0x2

    add-int v5, v1, v3

    move v6, v3

    const/4 v3, 0x0

    .line 8
    :goto_0
    iget v7, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->a:I

    if-le v7, v2, :cond_1

    sub-int/2addr v7, v2

    .line 9
    div-int/lit8 v7, v7, 0x2

    add-int v8, v7, v2

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v7

    .line 10
    div-int/lit8 v2, v2, 0x2

    add-int v8, v2, v7

    move v4, v2

    move v2, v8

    move v8, v7

    const/4 v7, 0x0

    .line 11
    :goto_1
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v1, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->c:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v9, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14
    iget-object v0, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public getOutputImageHeight(II)I
    .locals 0

    .line 1
    iget p1, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->a:I

    return p1
.end method

.method public getOutputImageWidth(II)I
    .locals 0

    .line 1
    iget p1, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->b:I

    return p1
.end method

.method public inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->a:I

    iget v1, p0, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->b:I

    invoke-static {p1, v0, v1, p2, p3}, Lorg/tensorflow/lite/support/image/ops/ResizeWithCropOrPadOp;->a(Landroid/graphics/PointF;IIII)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
