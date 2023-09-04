.class public Lorg/tensorflow/lite/support/image/ops/Rot90Op;
.super Ljava/lang/Object;
.source "Rot90Op.java"

# interfaces
.implements Lorg/tensorflow/lite/support/image/ImageOperator;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    rem-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->a:I

    return-void
.end method

.method private static a(Landroid/graphics/PointF;III)Landroid/graphics/PointF;
    .locals 1

    if-nez p3, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1
    new-instance p1, Landroid/graphics/PointF;

    iget p3, p0, Landroid/graphics/PointF;->y:F

    int-to-float p2, p2

    iget p0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p0

    invoke-direct {p1, p3, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 2
    new-instance p3, Landroid/graphics/PointF;

    int-to-float p2, p2

    iget v0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p0

    invoke-direct {p3, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3

    .line 3
    :cond_2
    new-instance p2, Landroid/graphics/PointF;

    int-to-float p1, p1

    iget p3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p3

    iget p0, p0, Landroid/graphics/PointF;->x:F

    invoke-direct {p2, p1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
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

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/tensorflow/lite/support/image/TensorImage;)Lorg/tensorflow/lite/support/image/TensorImage;
    .locals 7
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
    iget v1, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->a:I

    if-nez v1, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 6
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v3

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    int-to-float v6, v4

    mul-float v6, v6, v2

    .line 7
    invoke-virtual {v5, v1, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 8
    iget v1, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->a:I

    mul-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 9
    iget v1, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->a:I

    rem-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v4

    .line 10
    :goto_0
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    int-to-float v6, v6

    mul-float v6, v6, v2

    int-to-float v1, v1

    mul-float v1, v1, v2

    .line 11
    invoke-virtual {v5, v6, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 12
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lorg/tensorflow/lite/support/image/TensorImage;->load(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public getOutputImageHeight(II)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method public getOutputImageWidth(II)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public inverseTransform(Landroid/graphics/PointF;II)Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget v0, p0, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->a:I

    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    .line 2
    invoke-virtual {p0, p2, p3}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->getOutputImageHeight(II)I

    move-result v1

    .line 3
    invoke-virtual {p0, p2, p3}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->getOutputImageWidth(II)I

    move-result p2

    .line 4
    invoke-static {p1, v1, p2, v0}, Lorg/tensorflow/lite/support/image/ops/Rot90Op;->a(Landroid/graphics/PointF;III)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
