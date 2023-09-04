.class public Landroidx/camera/core/imagecapture/TakePictureManager;
.super Ljava/lang/Object;
.source "TakePictureManager.java"

# interfaces
.implements Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# instance fields
.field final a:Ljava/util/Deque;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/camera/core/imagecapture/TakePictureRequest;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroidx/camera/core/imagecapture/ImagePipeline;

.field final c:Landroidx/camera/core/imagecapture/ImageCaptureControl;

.field d:Landroidx/camera/core/imagecapture/f0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Z


# direct methods
.method public constructor <init>(Landroidx/camera/core/imagecapture/ImageCaptureControl;Landroidx/camera/core/imagecapture/ImagePipeline;)V
    .locals 1
    .param p1    # Landroidx/camera/core/imagecapture/ImageCaptureControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/imagecapture/ImagePipeline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->a:Ljava/util/Deque;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->e:Z

    .line 4
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 5
    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->c:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    .line 6
    iput-object p2, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->b:Landroidx/camera/core/imagecapture/ImagePipeline;

    .line 7
    invoke-virtual {p2, p0}, Landroidx/camera/core/imagecapture/ImagePipeline;->setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    return-void
.end method

.method private synthetic c(Landroidx/camera/core/imagecapture/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->b:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/ImagePipeline;->f(Landroidx/camera/core/imagecapture/e0;)V

    return-void
.end method

.method private synthetic e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->d:Landroidx/camera/core/imagecapture/f0;

    .line 2
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->b()V

    return-void
.end method

.method private g(Landroidx/camera/core/imagecapture/CameraRequest;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Landroidx/camera/core/imagecapture/CameraRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->c:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    invoke-interface {v0}, Landroidx/camera/core/imagecapture/ImageCaptureControl;->lockFlashMode()V

    .line 3
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->c:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    .line 4
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/CameraRequest;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/core/imagecapture/ImageCaptureControl;->submitStillCaptureRequests(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 5
    new-instance v1, Landroidx/camera/core/imagecapture/TakePictureManager$a;

    invoke-direct {v1, p0, p2, p1}, Landroidx/camera/core/imagecapture/TakePictureManager$a;-><init>(Landroidx/camera/core/imagecapture/TakePictureManager;Ljava/lang/Runnable;Landroidx/camera/core/imagecapture/CameraRequest;)V

    .line 6
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 7
    invoke-static {v0, v1, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private h(Landroidx/camera/core/imagecapture/f0;)V
    .locals 2
    .param p1    # Landroidx/camera/core/imagecapture/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 2
    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->d:Landroidx/camera/core/imagecapture/f0;

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/f0;->i()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Landroidx/camera/core/imagecapture/l;

    invoke-direct {v0, p0}, Landroidx/camera/core/imagecapture/l;-><init>(Landroidx/camera/core/imagecapture/TakePictureManager;)V

    .line 4
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->d:Landroidx/camera/core/imagecapture/f0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abortRequests()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    const/4 v1, 0x3

    const-string v2, "Camera is closed."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->a:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/imagecapture/TakePictureRequest;

    .line 4
    invoke-virtual {v2, v0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->q(Landroidx/camera/core/ImageCaptureException;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->a:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 6
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->d:Landroidx/camera/core/imagecapture/f0;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Landroidx/camera/core/imagecapture/f0;->g(Landroidx/camera/core/ImageCaptureException;)V

    :cond_1
    return-void
.end method

.method b()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const-string v0, "TakePictureManager"

    const-string v1, "Issue the next TakePictureRequest."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "There is already a request in-flight."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-boolean v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "The class is paused."

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->b:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/ImagePipeline;->getCapacity()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Too many acquire images. Close image to be able to process next."

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_2
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->a:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/imagecapture/TakePictureRequest;

    if-nez v1, :cond_3

    const-string v1, "No new request."

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_3
    new-instance v0, Landroidx/camera/core/imagecapture/f0;

    invoke-direct {v0, v1}, Landroidx/camera/core/imagecapture/f0;-><init>(Landroidx/camera/core/imagecapture/TakePictureRequest;)V

    .line 12
    invoke-direct {p0, v0}, Landroidx/camera/core/imagecapture/TakePictureManager;->h(Landroidx/camera/core/imagecapture/f0;)V

    .line 13
    iget-object v2, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->b:Landroidx/camera/core/imagecapture/ImagePipeline;

    .line 14
    invoke-virtual {v2, v1, v0}, Landroidx/camera/core/imagecapture/ImagePipeline;->d(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/h0;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 15
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/imagecapture/CameraRequest;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/imagecapture/CameraRequest;

    .line 16
    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/imagecapture/e0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/imagecapture/e0;

    .line 17
    new-instance v2, Landroidx/camera/core/imagecapture/k;

    invoke-direct {v2, p0, v0}, Landroidx/camera/core/imagecapture/k;-><init>(Landroidx/camera/core/imagecapture/TakePictureManager;Landroidx/camera/core/imagecapture/e0;)V

    invoke-direct {p0, v1, v2}, Landroidx/camera/core/imagecapture/TakePictureManager;->g(Landroidx/camera/core/imagecapture/CameraRequest;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic d(Landroidx/camera/core/imagecapture/e0;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureManager;->c(Landroidx/camera/core/imagecapture/e0;)V

    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->e()V

    return-void
.end method

.method public offerRequest(Landroidx/camera/core/imagecapture/TakePictureRequest;)V
    .locals 1
    .param p1    # Landroidx/camera/core/imagecapture/TakePictureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->a:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->b()V

    return-void
.end method

.method public onImageClose(Landroidx/camera/core/ImageProxy;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Landroidx/camera/core/imagecapture/a;

    invoke-direct {v0, p0}, Landroidx/camera/core/imagecapture/a;-><init>(Landroidx/camera/core/imagecapture/TakePictureManager;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->e:Z

    return-void
.end method

.method public resume()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->e:Z

    .line 3
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->b()V

    return-void
.end method
