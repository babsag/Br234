.class Landroidx/camera/camera2/internal/z2$c;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/internal/z2;->l(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/camera2/internal/z2;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/z2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/internal/z2$c;->a:Landroidx/camera/camera2/internal/z2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/z2$c;->a:Landroidx/camera/camera2/internal/z2;

    iget-object p1, p1, Landroidx/camera/camera2/internal/z2;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object p2, p0, Landroidx/camera/camera2/internal/z2$c;->a:Landroidx/camera/camera2/internal/z2;

    iget-object p2, p2, Landroidx/camera/camera2/internal/z2;->g:Landroidx/camera/core/impl/SessionConfig;

    if-nez p2, :cond_0

    .line 3
    monitor-exit p1

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p2

    const-string p3, "CaptureSession"

    const-string v0, "Submit FLASH_MODE_OFF request"

    .line 5
    invoke-static {p3, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p3, p0, Landroidx/camera/camera2/internal/z2$c;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v0, p3, Landroidx/camera/camera2/internal/z2;->p:Landroidx/camera/camera2/internal/compat/workaround/TorchStateReset;

    .line 7
    invoke-virtual {v0, p2}, Landroidx/camera/camera2/internal/compat/workaround/TorchStateReset;->createTorchResetRequest(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p2

    .line 8
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/camera/camera2/internal/z2;->d(Ljava/util/List;)V

    .line 9
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
