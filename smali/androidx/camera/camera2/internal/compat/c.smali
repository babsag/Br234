.class public final synthetic Landroidx/camera/camera2/internal/compat/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$b;

.field public final synthetic b:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$b;Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/c;->a:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$b;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/c;->b:Landroid/hardware/camera2/CameraCaptureSession;

    iput p3, p0, Landroidx/camera/camera2/internal/compat/c;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/c;->a:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$b;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/c;->b:Landroid/hardware/camera2/CameraCaptureSession;

    iget v2, p0, Landroidx/camera/camera2/internal/compat/c;->c:I

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$b;->j(Landroid/hardware/camera2/CameraCaptureSession;I)V

    return-void
.end method
