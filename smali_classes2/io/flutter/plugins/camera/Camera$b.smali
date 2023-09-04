.class Lio/flutter/plugins/camera/Camera$b;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/camera/Camera;->open(Lio/flutter/plugin/common/MethodChannel$Result;)V
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
    iput-object p1, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    iput-object p2, p0, Lio/flutter/plugins/camera/Camera$b;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {v0}, Lio/flutter/plugins/camera/Camera;->f(Lio/flutter/plugins/camera/Camera;)Lio/flutter/plugins/camera/i;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugins/camera/i;->c()V

    .line 2
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraDevice"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    invoke-virtual {p1}, Lio/flutter/plugins/camera/Camera;->close()V

    .line 2
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {p1}, Lio/flutter/plugins/camera/Camera;->f(Lio/flutter/plugins/camera/Camera;)Lio/flutter/plugins/camera/i;

    move-result-object p1

    sget-object v0, Lio/flutter/plugins/camera/i$b;->ERROR:Lio/flutter/plugins/camera/i$b;

    const-string v1, "The camera was disconnected."

    invoke-virtual {p1, v0, v1}, Lio/flutter/plugins/camera/i;->b(Lio/flutter/plugins/camera/i$b;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraDevice",
            "errorCode"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    invoke-virtual {p1}, Lio/flutter/plugins/camera/Camera;->close()V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    const-string p1, "Unknown camera error"

    goto :goto_0

    :cond_0
    const-string p1, "The camera service has encountered a fatal error."

    goto :goto_0

    :cond_1
    const-string p1, "The camera device has encountered a fatal error"

    goto :goto_0

    :cond_2
    const-string p1, "The camera device could not be opened due to a device policy."

    goto :goto_0

    :cond_3
    const-string p1, "Max cameras in use"

    goto :goto_0

    :cond_4
    const-string p1, "The camera device is in use already."

    .line 2
    :goto_0
    iget-object p2, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {p2}, Lio/flutter/plugins/camera/Camera;->f(Lio/flutter/plugins/camera/Camera;)Lio/flutter/plugins/camera/i;

    move-result-object p2

    sget-object v0, Lio/flutter/plugins/camera/i$b;->ERROR:Lio/flutter/plugins/camera/i$b;

    invoke-virtual {p2, v0, p1}, Lio/flutter/plugins/camera/i;->b(Lio/flutter/plugins/camera/i$b;Ljava/lang/String;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {v0, p1}, Lio/flutter/plugins/camera/Camera;->c(Lio/flutter/plugins/camera/Camera;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 2
    :try_start_0
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    invoke-virtual {p1}, Lio/flutter/plugins/camera/Camera;->startPreview()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {v0}, Lio/flutter/plugins/camera/Camera;->d(Lio/flutter/plugins/camera/Camera;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "textureId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {v0}, Lio/flutter/plugins/camera/Camera;->e(Lio/flutter/plugins/camera/Camera;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "previewWidth"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    invoke-static {v0}, Lio/flutter/plugins/camera/Camera;->e(Lio/flutter/plugins/camera/Camera;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "previewHeight"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$b;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lio/flutter/plugins/camera/Camera$b;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "CameraAccess"

    invoke-interface {v0, v2, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lio/flutter/plugins/camera/Camera$b;->b:Lio/flutter/plugins/camera/Camera;

    invoke-virtual {p1}, Lio/flutter/plugins/camera/Camera;->close()V

    return-void
.end method
