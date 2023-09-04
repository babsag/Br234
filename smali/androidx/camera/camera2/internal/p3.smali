.class Landroidx/camera/camera2/internal/p3;
.super Ljava/lang/Object;
.source "ZoomStateImpl.java"

# interfaces
.implements Landroidx/camera/core/ZoomState;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private a:F

.field private final b:F

.field private final c:F

.field private d:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/camera/camera2/internal/p3;->b:F

    .line 3
    iput p2, p0, Landroidx/camera/camera2/internal/p3;->c:F

    return-void
.end method

.method private a(F)F
    .locals 5

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/p3;->b:F

    iget v1, p0, Landroidx/camera/camera2/internal/p3;->c:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-nez v3, :cond_0

    return v2

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v0

    if-nez v4, :cond_1

    return v3

    :cond_1
    cmpl-float v4, p1, v1

    if-nez v4, :cond_2

    return v2

    :cond_2
    div-float p1, v3, p1

    div-float v0, v3, v0

    div-float/2addr v3, v1

    sub-float/2addr p1, v3

    sub-float/2addr v0, v3

    div-float/2addr p1, v0

    return p1
.end method

.method private b(F)F
    .locals 13

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1
    iget p1, p0, Landroidx/camera/camera2/internal/p3;->b:F

    return p1

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 2
    iget p1, p0, Landroidx/camera/camera2/internal/p3;->c:F

    return p1

    .line 3
    :cond_1
    iget v1, p0, Landroidx/camera/camera2/internal/p3;->b:F

    div-float v2, v0, v1

    float-to-double v2, v2

    .line 4
    iget v4, p0, Landroidx/camera/camera2/internal/p3;->c:F

    div-float/2addr v0, v4

    float-to-double v5, v0

    sub-double/2addr v2, v5

    float-to-double v7, p1

    mul-double v2, v2, v7

    add-double/2addr v5, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v7, v2, v5

    float-to-double v9, v4

    float-to-double v11, v1

    .line 5
    invoke-static/range {v7 .. v12}, Landroidx/core/math/MathUtils;->clamp(DDD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method c(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1
    iput p1, p0, Landroidx/camera/camera2/internal/p3;->d:F

    .line 2
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/p3;->b(F)F

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/internal/p3;->a:F

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested linearZoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is not within valid range [0..1]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/p3;->b:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Landroidx/camera/camera2/internal/p3;->c:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iput p1, p0, Landroidx/camera/camera2/internal/p3;->a:F

    .line 3
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/p3;->a(F)F

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/internal/p3;->d:F

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested zoomRatio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is not within valid range ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/camera/camera2/internal/p3;->c:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/camera/camera2/internal/p3;->b:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLinearZoom()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/p3;->d:F

    return v0
.end method

.method public getMaxZoomRatio()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/p3;->b:F

    return v0
.end method

.method public getMinZoomRatio()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/p3;->c:F

    return v0
.end method

.method public getZoomRatio()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/p3;->a:F

    return v0
.end method
