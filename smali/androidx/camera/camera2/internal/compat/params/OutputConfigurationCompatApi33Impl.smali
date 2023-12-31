.class public Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;
.super Landroidx/camera/camera2/internal/compat/params/c;
.source "OutputConfigurationCompatApi33Impl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x21
.end annotation


# direct methods
.method constructor <init>(ILandroid/view/Surface;)V
    .locals 1
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/compat/params/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static g(Landroid/hardware/camera2/params/OutputConfiguration;)Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;
    .locals 1
    .param p0    # Landroid/hardware/camera2/params/OutputConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x21
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/camera/camera2/internal/compat/params/b;->addSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public bridge synthetic enableSurfaceSharing()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/camera/camera2/internal/compat/params/b;->enableSurfaceSharing()V

    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/camera/camera2/internal/compat/params/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getMaxSharedSurfaceCount()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/camera/camera2/internal/compat/params/c;->getMaxSharedSurfaceCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOutputConfiguration()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/camera/camera2/internal/compat/params/c;->getOutputConfiguration()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhysicalCameraId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/camera/camera2/internal/compat/params/c;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamUseCase()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;->getOutputConfiguration()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/camera/camera2/internal/compat/params/a;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceGroupId()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/camera/camera2/internal/compat/params/a;->getSurfaceGroupId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaces()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/camera/camera2/internal/compat/params/b;->getSurfaces()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/camera/camera2/internal/compat/params/d;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic removeSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/camera/camera2/internal/compat/params/c;->removeSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public bridge synthetic setPhysicalCameraId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/camera/camera2/internal/compat/params/c;->setPhysicalCameraId(Ljava/lang/String;)V

    return-void
.end method

.method public setStreamUseCase(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;->getOutputConfiguration()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;->setStreamUseCase(J)V

    return-void
.end method
