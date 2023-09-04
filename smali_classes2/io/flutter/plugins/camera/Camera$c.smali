.class Lio/flutter/plugins/camera/Camera$c;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/camera/Camera;->takePicture(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic b:Lio/flutter/plugins/camera/Camera;


# direct methods
.method constructor <init>(Lio/flutter/plugins/camera/Camera;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$result"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/camera/Camera$c;->b:Lio/flutter/plugins/camera/Camera;

    iput-object p2, p0, Lio/flutter/plugins/camera/Camera$c;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureFailure;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "failure"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const-string p1, "Unknown reason"

    goto :goto_0

    :cond_0
    const-string p1, "The capture has failed due to an abortCaptures() call"

    goto :goto_0

    :cond_1
    const-string p1, "An error happened in the framework"

    .line 2
    :goto_0
    iget-object p2, p0, Lio/flutter/plugins/camera/Camera$c;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 p3, 0x0

    const-string v0, "captureFailure"

    invoke-interface {p2, v0, p1, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
