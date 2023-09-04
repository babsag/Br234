.class Lio/flutter/plugins/camera/Camera$d;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/camera/Camera;->m(ILjava/lang/Runnable;[Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lio/flutter/plugins/camera/Camera;


# direct methods
.method constructor <init>(Lio/flutter/plugins/camera/Camera;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$onSuccessCallback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/camera/Camera$d;->b:Lio/flutter/plugins/camera/Camera;

    iput-object p2, p0, Lio/flutter/plugins/camera/Camera$d;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraCaptureSession"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$d;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {p1}, Lio/flutter/plugins/camera/Camera;->f(Lio/flutter/plugins/camera/Camera;)Lio/flutter/plugins/camera/i;

    move-result-object p1

    sget-object v0, Lio/flutter/plugins/camera/i$b;->ERROR:Lio/flutter/plugins/camera/i$b;

    const-string v1, "Failed to configure camera session."

    invoke-virtual {p1, v0, v1}, Lio/flutter/plugins/camera/i;->b(Lio/flutter/plugins/camera/i$b;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$d;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {v0}, Lio/flutter/plugins/camera/Camera;->b(Lio/flutter/plugins/camera/Camera;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$d;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {p1}, Lio/flutter/plugins/camera/Camera;->f(Lio/flutter/plugins/camera/Camera;)Lio/flutter/plugins/camera/i;

    move-result-object p1

    sget-object v0, Lio/flutter/plugins/camera/i$b;->ERROR:Lio/flutter/plugins/camera/i$b;

    const-string v1, "The camera was closed during configuration."

    invoke-virtual {p1, v0, v1}, Lio/flutter/plugins/camera/i;->b(Lio/flutter/plugins/camera/i$b;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$d;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {v0, p1}, Lio/flutter/plugins/camera/Camera;->h(Lio/flutter/plugins/camera/Camera;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 4
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$d;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {p1}, Lio/flutter/plugins/camera/Camera;->i(Lio/flutter/plugins/camera/Camera;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$d;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {p1}, Lio/flutter/plugins/camera/Camera;->g(Lio/flutter/plugins/camera/Camera;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$d;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {v0}, Lio/flutter/plugins/camera/Camera;->i(Lio/flutter/plugins/camera/Camera;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 8
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$d;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 10
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$d;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {v0}, Lio/flutter/plugins/camera/Camera;->f(Lio/flutter/plugins/camera/Camera;)Lio/flutter/plugins/camera/i;

    move-result-object v0

    sget-object v1, Lio/flutter/plugins/camera/i$b;->ERROR:Lio/flutter/plugins/camera/i$b;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugins/camera/i;->b(Lio/flutter/plugins/camera/i$b;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
