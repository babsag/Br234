.class public final synthetic Landroidx/camera/camera2/internal/compat/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$b;

.field public final synthetic b:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$b;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/p;->a:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$b;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/p;->b:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/p;->a:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$b;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/p;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$b;->h(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method
