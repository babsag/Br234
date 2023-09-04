.class public final Landroidx/camera/view/LifecycleCameraController;
.super Landroidx/camera/view/CameraController;
.source "LifecycleCameraController.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private E:Landroidx/lifecycle/LifecycleOwner;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iput-object p1, p0, Landroidx/camera/view/LifecycleCameraController;->E:Landroidx/lifecycle/LifecycleOwner;

    .line 3
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->w()V

    return-void
.end method

.method public unbind()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/camera/view/LifecycleCameraController;->E:Landroidx/lifecycle/LifecycleOwner;

    .line 3
    iput-object v0, p0, Landroidx/camera/view/CameraController;->p:Landroidx/camera/core/Camera;

    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->q:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    :cond_0
    return-void
.end method

.method v()Landroidx/camera/core/Camera;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.CAMERA"
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/LifecycleCameraController;->E:Landroidx/lifecycle/LifecycleOwner;

    const-string v1, "CamLifecycleController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Lifecycle is not set."

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/CameraController;->q:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-nez v0, :cond_1

    const-string v0, "CameraProvider is not ready."

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->createUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    .line 6
    :cond_2
    iget-object v1, p0, Landroidx/camera/view/CameraController;->q:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v2, p0, Landroidx/camera/view/LifecycleCameraController;->E:Landroidx/lifecycle/LifecycleOwner;

    iget-object v3, p0, Landroidx/camera/view/CameraController;->a:Landroidx/camera/core/CameraSelector;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;

    move-result-object v0

    return-object v0
.end method
