.class public final synthetic Landroidx/camera/camera2/internal/y1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/compat/workaround/WaitForRepeatingRequestStart$OpenCaptureSession;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/k3;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/y1;->a:Landroidx/camera/camera2/internal/k3;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/y1;->a:Landroidx/camera/camera2/internal/k3;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/camera/camera2/internal/k3;->D(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
