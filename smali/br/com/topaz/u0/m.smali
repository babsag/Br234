.class public Lbr/com/topaz/u0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IIILandroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v1, p0, p1, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget p0, v0, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iget p1, v0, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iget p2, v0, Landroid/graphics/RectF;->right:F

    float-to-int p2, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p3, p0, p1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
