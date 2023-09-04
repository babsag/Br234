.class public Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;
.super Landroidx/camera/core/MeteringPointFactory;
.source "SurfaceOrientedMeteringPointFactory.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/MeteringPointFactory;-><init>()V

    .line 2
    iput p1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->b:F

    .line 3
    iput p2, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->c:F

    return-void
.end method

.method public constructor <init>(FFLandroidx/camera/core/UseCase;)V
    .locals 0
    .param p3    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-static {p3}, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->a(Landroidx/camera/core/UseCase;)Landroid/util/Rational;

    move-result-object p3

    invoke-direct {p0, p3}, Landroidx/camera/core/MeteringPointFactory;-><init>(Landroid/util/Rational;)V

    .line 5
    iput p1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->b:F

    .line 6
    iput p2, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->c:F

    return-void
.end method

.method private static a(Landroidx/camera/core/UseCase;)Landroid/util/Rational;
    .locals 3
    .param p0    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance p0, Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/util/Rational;-><init>(II)V

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UseCase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not bound."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected convertPoint(FF)Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->b:F

    div-float/2addr p1, v1

    iget v1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->c:F

    div-float/2addr p2, v1

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
