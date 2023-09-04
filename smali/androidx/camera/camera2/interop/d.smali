.class public final synthetic Landroidx/camera/camera2/interop/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/interop/Camera2CameraControl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/interop/Camera2CameraControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/interop/d;->a:Landroidx/camera/camera2/interop/Camera2CameraControl;

    return-void
.end method


# virtual methods
.method public final onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/interop/d;->a:Landroidx/camera/camera2/interop/Camera2CameraControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->l(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
