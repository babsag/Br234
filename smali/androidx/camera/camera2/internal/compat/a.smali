.class public final synthetic Landroidx/camera/camera2/internal/compat/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$b;

.field public final synthetic b:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic c:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic d:Landroid/view/Surface;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$b;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/a;->a:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$b;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/a;->b:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Landroidx/camera/camera2/internal/compat/a;->c:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Landroidx/camera/camera2/internal/compat/a;->d:Landroid/view/Surface;

    iput-wide p5, p0, Landroidx/camera/camera2/internal/compat/a;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/a;->a:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$b;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/a;->b:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/a;->c:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Landroidx/camera/camera2/internal/compat/a;->d:Landroid/view/Surface;

    iget-wide v4, p0, Landroidx/camera/camera2/internal/compat/a;->e:J

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$b;->b(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method
