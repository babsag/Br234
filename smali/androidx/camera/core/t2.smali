.class final Landroidx/camera/core/t2;
.super Landroidx/camera/core/r2;
.source "ImageAnalysisNonBlockingAnalyzer.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/t2$b;
    }
.end annotation


# instance fields
.field final t:Ljava/util/concurrent/Executor;

.field private final u:Ljava/lang/Object;

.field v:Landroidx/camera/core/ImageProxy;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private w:Landroidx/camera/core/t2$b;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/r2;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/t2;->u:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroidx/camera/core/t2;->t:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method a(Landroidx/camera/core/impl/ImageReaderProxy;)Landroidx/camera/core/ImageProxy;
    .locals 0
    .param p1    # Landroidx/camera/core/impl/ImageReaderProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    return-object p1
.end method

.method d()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/t2;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/t2;->v:Landroidx/camera/core/ImageProxy;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->close()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroidx/camera/core/t2;->v:Landroidx/camera/core/ImageProxy;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method n(Landroidx/camera/core/ImageProxy;)V
    .locals 6
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/t2;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/r2;->s:Z

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/t2;->w:Landroidx/camera/core/t2$b;

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/camera/core/t2;->w:Landroidx/camera/core/t2$b;

    .line 7
    invoke-virtual {v3}, Landroidx/camera/core/ForwardingImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 8
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Landroidx/camera/core/t2;->v:Landroidx/camera/core/ImageProxy;

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 11
    :cond_2
    iput-object p1, p0, Landroidx/camera/core/t2;->v:Landroidx/camera/core/ImageProxy;

    .line 12
    :goto_0
    monitor-exit v0

    return-void

    .line 13
    :cond_3
    new-instance v1, Landroidx/camera/core/t2$b;

    invoke-direct {v1, p1, p0}, Landroidx/camera/core/t2$b;-><init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/t2;)V

    .line 14
    iput-object v1, p0, Landroidx/camera/core/t2;->w:Landroidx/camera/core/t2$b;

    .line 15
    invoke-virtual {p0, v1}, Landroidx/camera/core/r2;->b(Landroidx/camera/core/ImageProxy;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v2, Landroidx/camera/core/t2$a;

    invoke-direct {v2, p0, v1}, Landroidx/camera/core/t2$a;-><init>(Landroidx/camera/core/t2;Landroidx/camera/core/t2$b;)V

    .line 16
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 17
    invoke-static {p1, v2, v1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method y()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/t2;->u:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Landroidx/camera/core/t2;->w:Landroidx/camera/core/t2$b;

    .line 3
    iget-object v2, p0, Landroidx/camera/core/t2;->v:Landroidx/camera/core/ImageProxy;

    if-eqz v2, :cond_0

    .line 4
    iput-object v1, p0, Landroidx/camera/core/t2;->v:Landroidx/camera/core/ImageProxy;

    .line 5
    invoke-virtual {p0, v2}, Landroidx/camera/core/t2;->n(Landroidx/camera/core/ImageProxy;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
