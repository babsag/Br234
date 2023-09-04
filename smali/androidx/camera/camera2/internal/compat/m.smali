.class public final synthetic Landroidx/camera/camera2/internal/compat/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$c;

.field public final synthetic b:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$c;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/m;->a:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$c;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/m;->b:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/m;->a:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$c;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/m;->b:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$c;->h(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
