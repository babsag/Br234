.class final Landroidx/camera/camera2/internal/o2$e;
.super Ljava/lang/Object;
.source "Camera2CameraImpl.java"

# interfaces
.implements Landroidx/camera/core/impl/CameraControlInternal$ControlUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/o2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/camera2/internal/o2;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/o2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/internal/o2$e;->a:Landroidx/camera/camera2/internal/o2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraControlCaptureRequests(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2$e;->a:Landroidx/camera/camera2/internal/o2;

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/o2;->f0(Ljava/util/List;)V

    return-void
.end method

.method public onCameraControlUpdateSessionConfig()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/o2$e;->a:Landroidx/camera/camera2/internal/o2;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/o2;->l0()V

    return-void
.end method
