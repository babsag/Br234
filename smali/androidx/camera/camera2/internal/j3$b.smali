.class Landroidx/camera/camera2/internal/j3$b;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SynchronizedCaptureSessionBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/internal/j3;->b(ILjava/util/List;Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;)Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/camera2/internal/j3;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/j3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/j3;->j(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2
    iget-object p1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/j3;->d(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method

.method public onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/j3;->j(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2
    iget-object p1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/j3;->e(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/j3;->j(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2
    iget-object p1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/j3;->onClosed(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/j3;->j(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2
    iget-object p1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/j3;->onConfigureFailed(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    iget-object p1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object p1, p1, Landroidx/camera/camera2/internal/j3;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v1, v1, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string v2, "OpenCaptureSession completer should not null"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v2, v1, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 6
    iput-object v0, v1, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onConfigureFailed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 10
    iget-object v1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v1, v1, Landroidx/camera/camera2/internal/j3;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_3
    iget-object v2, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v2, v2, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string v3, "OpenCaptureSession completer should not null"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v3, v2, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 13
    iput-object v0, v2, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 14
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onConfigureFailed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 16
    throw p1

    :catchall_2
    move-exception p1

    .line 17
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/j3;->j(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2
    iget-object p1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/j3;->f(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    iget-object p1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object p1, p1, Landroidx/camera/camera2/internal/j3;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v1, v1, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string v2, "OpenCaptureSession completer should not null"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v2, v1, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 6
    iput-object v0, v1, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 7
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 10
    iget-object v1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v1, v1, Landroidx/camera/camera2/internal/j3;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_3
    iget-object v2, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v2, v2, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string v3, "OpenCaptureSession completer should not null"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    iget-object v3, v2, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 13
    iput-object v0, v2, Landroidx/camera/camera2/internal/j3;->i:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 14
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 15
    invoke-virtual {v3, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 16
    throw p1

    :catchall_2
    move-exception p1

    .line 17
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/j3;->j(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2
    iget-object p1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/j3;->g(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/j3;->j(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2
    iget-object p1, p0, Landroidx/camera/camera2/internal/j3$b;->a:Landroidx/camera/camera2/internal/j3;

    invoke-virtual {p1, p1, p2}, Landroidx/camera/camera2/internal/j3;->i(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;Landroid/view/Surface;)V

    return-void
.end method
