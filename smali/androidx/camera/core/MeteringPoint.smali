.class public Landroidx/camera/core/MeteringPoint;
.super Ljava/lang/Object;
.source "MeteringPoint.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Landroid/util/Rational;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(FFFLandroid/util/Rational;)V
    .locals 0
    .param p4    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/camera/core/MeteringPoint;->a:F

    .line 3
    iput p2, p0, Landroidx/camera/core/MeteringPoint;->b:F

    .line 4
    iput p3, p0, Landroidx/camera/core/MeteringPoint;->c:F

    .line 5
    iput-object p4, p0, Landroidx/camera/core/MeteringPoint;->d:Landroid/util/Rational;

    return-void
.end method


# virtual methods
.method public getSize()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/MeteringPoint;->c:F

    return v0
.end method

.method public getSurfaceAspectRatio()Landroid/util/Rational;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/MeteringPoint;->d:Landroid/util/Rational;

    return-object v0
.end method

.method public getX()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/camera/core/MeteringPoint;->a:F

    return v0
.end method

.method public getY()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/camera/core/MeteringPoint;->b:F

    return v0
.end method
