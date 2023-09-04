.class final Landroidx/camera/camera2/internal/z2$f;
.super Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;
.source "CaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/z2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroidx/camera/camera2/internal/z2;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/z2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    invoke-direct {p0}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 3
    .param p1    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v0, v0, Landroidx/camera/camera2/internal/z2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroidx/camera/camera2/internal/z2$d;->a:[I

    iget-object v2, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v2, v2, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-interface {p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSession;->close()V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iput-object p1, v1, Landroidx/camera/camera2/internal/z2;->f:Landroidx/camera/camera2/internal/SynchronizedCaptureSession;

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object v1, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    sget-object v2, Landroidx/camera/camera2/internal/z2$e;->OPENED:Landroidx/camera/camera2/internal/z2$e;

    iput-object v2, v1, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    .line 6
    iput-object p1, v1, Landroidx/camera/camera2/internal/z2;->f:Landroidx/camera/camera2/internal/SynchronizedCaptureSession;

    .line 7
    iget-object p1, v1, Landroidx/camera/camera2/internal/z2;->g:Landroidx/camera/core/impl/SessionConfig;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, v1, Landroidx/camera/camera2/internal/z2;->i:Landroidx/camera/camera2/impl/CameraEventCallbacks;

    .line 9
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/CameraEventCallbacks;->createComboCallback()Landroidx/camera/camera2/impl/CameraEventCallbacks$ComboCameraEventCallback;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/CameraEventCallbacks$ComboCameraEventCallback;->onEnableSession()Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    iget-object v1, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/z2;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/z2;->l(Ljava/util/List;)I

    :cond_0
    const-string p1, "CaptureSession"

    const-string v1, "Attempting to send capture request onConfigured"

    .line 12
    invoke-static {p1, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v1, p1, Landroidx/camera/camera2/internal/z2;->g:Landroidx/camera/core/impl/SessionConfig;

    invoke-virtual {p1, v1}, Landroidx/camera/camera2/internal/z2;->n(Landroidx/camera/core/impl/SessionConfig;)I

    .line 14
    iget-object p1, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/z2;->m()V

    goto :goto_0

    .line 15
    :pswitch_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v2, v2, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    const-string p1, "CaptureSession"

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraCaptureSession.onConfigured() mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v2, v2, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public g(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 3
    .param p1    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object p1, p1, Landroidx/camera/camera2/internal/z2;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    sget-object v0, Landroidx/camera/camera2/internal/z2$d;->a:[I

    iget-object v1, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v1, v1, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "CaptureSession"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraCaptureSession.onReady() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v2, v2, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    monitor-exit p1

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReady() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v2, v2, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 3
    .param p1    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object p1, p1, Landroidx/camera/camera2/internal/z2;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v0, v0, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    sget-object v1, Landroidx/camera/camera2/internal/z2$e;->UNINITIALIZED:Landroidx/camera/camera2/internal/z2$e;

    if-eq v0, v1, :cond_0

    const-string v0, "CaptureSession"

    const-string v1, "onSessionFinished()"

    .line 3
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/z2;->i()V

    .line 5
    monitor-exit p1

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionFinished() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v2, v2, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigureFailed(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 3
    .param p1    # Landroidx/camera/camera2/internal/SynchronizedCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object p1, p1, Landroidx/camera/camera2/internal/z2;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    sget-object v0, Landroidx/camera/camera2/internal/z2$d;->a:[I

    iget-object v1, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v1, v1, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "CaptureSession"

    const-string v1, "ConfigureFailed callback after change to RELEASED state"

    .line 3
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/z2;->i()V

    goto :goto_0

    .line 5
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigureFailed() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v2, v2, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    const-string v0, "CaptureSession"

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraCaptureSession.onConfigureFailed() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/internal/z2$f;->a:Landroidx/camera/camera2/internal/z2;

    iget-object v2, v2, Landroidx/camera/camera2/internal/z2;->l:Landroidx/camera/camera2/internal/z2$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
