.class Landroidx/camera/view/z$b;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "PreviewStreamStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/view/z;->g(Landroidx/camera/core/CameraInfo;Ljava/util/List;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field final synthetic b:Landroidx/camera/core/CameraInfo;

.field final synthetic c:Landroidx/camera/view/z;


# direct methods
.method constructor <init>(Landroidx/camera/view/z;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/CameraInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/view/z$b;->c:Landroidx/camera/view/z;

    iput-object p2, p0, Landroidx/camera/view/z$b;->a:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p3, p0, Landroidx/camera/view/z$b;->b:Landroidx/camera/core/CameraInfo;

    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/view/z$b;->a:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Landroidx/camera/view/z$b;->b:Landroidx/camera/core/CameraInfo;

    check-cast p1, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {p1, p0}, Landroidx/camera/core/impl/CameraInfoInternal;->removeSessionCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-void
.end method
