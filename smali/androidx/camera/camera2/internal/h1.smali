.class public final synthetic Landroidx/camera/camera2/internal/h1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/e3;

.field public final synthetic b:Z

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/e3;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/h1;->a:Landroidx/camera/camera2/internal/e3;

    iput-boolean p2, p0, Landroidx/camera/camera2/internal/h1;->b:Z

    iput-wide p3, p0, Landroidx/camera/camera2/internal/h1;->c:J

    return-void
.end method


# virtual methods
.method public final onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/h1;->a:Landroidx/camera/camera2/internal/e3;

    iget-boolean v1, p0, Landroidx/camera/camera2/internal/h1;->b:Z

    iget-wide v2, p0, Landroidx/camera/camera2/internal/h1;->c:J

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/camera/camera2/internal/e3;->B(ZJLandroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
