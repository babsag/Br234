.class public final synthetic Landroidx/camera/camera2/internal/a2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/compat/workaround/WaitForRepeatingRequestStart$SingleRepeatingRequest;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/k3;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/a2;->a:Landroidx/camera/camera2/internal/k3;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/a2;->a:Landroidx/camera/camera2/internal/k3;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/camera2/internal/k3;->F(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p1

    return p1
.end method
