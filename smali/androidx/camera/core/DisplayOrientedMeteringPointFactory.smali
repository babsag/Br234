.class public final Landroidx/camera/core/DisplayOrientedMeteringPointFactory;
.super Landroidx/camera/core/MeteringPointFactory;
.source "DisplayOrientedMeteringPointFactory.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private final b:F

.field private final c:F

.field private final d:Landroid/view/Display;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Landroidx/camera/core/CameraInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroidx/camera/core/CameraInfo;FF)V
    .locals 0
    .param p1    # Landroid/view/Display;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/MeteringPointFactory;-><init>()V

    .line 2
    iput p3, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->b:F

    .line 3
    iput p4, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->c:F

    .line 4
    iput-object p1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->d:Landroid/view/Display;

    .line 5
    iput-object p2, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->e:Landroidx/camera/core/CameraInfo;

    return-void
.end method

.method private a()Ljava/lang/Integer;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->e:Landroidx/camera/core/CameraInfo;

    instance-of v1, v0, Landroidx/camera/core/impl/CameraInfoInternal;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getLensFacing()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private b(Z)I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->d:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->e:Landroidx/camera/core/CameraInfo;

    invoke-interface {v1, v0}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees(I)I

    move-result v0

    if-eqz p1, :cond_0

    rsub-int p1, v0, 0x168

    .line 3
    rem-int/lit16 v0, p1, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method protected convertPoint(FF)Landroid/graphics/PointF;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->b:F

    .line 2
    iget v1, p0, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->c:F

    .line 3
    invoke-direct {p0}, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->a()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-direct {p0, v2}, Landroidx/camera/core/DisplayOrientedMeteringPointFactory;->b(Z)I

    move-result v3

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v6, p2

    move p2, p1

    move p1, v6

    move v7, v1

    move v1, v0

    move v0, v7

    :cond_2
    :goto_1
    if-eq v3, v5, :cond_5

    const/16 v5, 0xb4

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    sub-float p2, v1, p2

    goto :goto_2

    :cond_4
    sub-float p2, v1, p2

    :cond_5
    sub-float p1, v0, p1

    :goto_2
    if-eqz v2, :cond_6

    sub-float p2, v1, p2

    :cond_6
    div-float/2addr p2, v1

    div-float/2addr p1, v0

    .line 6
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
