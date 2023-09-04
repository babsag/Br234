.class Landroidx/camera/core/imagecapture/f0;
.super Ljava/lang/Object;
.source "RequestWithCallback.java"

# interfaces
.implements Landroidx/camera/core/imagecapture/h0;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# instance fields
.field private final a:Landroidx/camera/core/imagecapture/TakePictureRequest;

.field private final b:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Landroidx/camera/core/imagecapture/TakePictureRequest;)V
    .locals 1
    .param p1    # Landroidx/camera/core/imagecapture/TakePictureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/f0;->d:Z

    .line 3
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/f0;->e:Z

    .line 4
    iput-object p1, p0, Landroidx/camera/core/imagecapture/f0;->a:Landroidx/camera/core/imagecapture/TakePictureRequest;

    .line 5
    new-instance p1, Landroidx/camera/core/imagecapture/h;

    invoke-direct {p1, p0}, Landroidx/camera/core/imagecapture/h;-><init>(Landroidx/camera/core/imagecapture/f0;)V

    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/imagecapture/f0;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/f0;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "onImageCaptured() must be called before onFinalResult()"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic j(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/imagecapture/f0;->c:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string p1, "CaptureCompleteFuture"

    return-object p1
.end method

.method private l()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/f0;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "The callback can only complete once."

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2
    iput-boolean v1, p0, Landroidx/camera/core/imagecapture/f0;->d:Z

    return-void
.end method

.method private m(Landroidx/camera/core/ImageCaptureException;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/f0;->a:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->q(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/f0;->e:Z

    return v0
.end method

.method public b(Landroidx/camera/core/ImageCaptureException;)V
    .locals 2
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/f0;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/f0;->l()V

    .line 4
    iget-object v0, p0, Landroidx/camera/core/imagecapture/f0;->c:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 5
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/f0;->m(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method public c()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/f0;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/f0;->c:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ImageCapture$OutputFileResults;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/f0;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/f0;->h()V

    .line 4
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/f0;->l()V

    .line 5
    iget-object v0, p0, Landroidx/camera/core/imagecapture/f0;->a:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->r(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method

.method public e(Landroidx/camera/core/ImageCaptureException;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/f0;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/f0;->h()V

    .line 4
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/f0;->l()V

    .line 5
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/f0;->m(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method public f(Landroidx/camera/core/ImageProxy;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/f0;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/f0;->h()V

    .line 4
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/f0;->l()V

    .line 5
    iget-object v0, p0, Landroidx/camera/core/imagecapture/f0;->a:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->s(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method g(Landroidx/camera/core/ImageCaptureException;)V
    .locals 2
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/f0;->e:Z

    .line 3
    iget-object v0, p0, Landroidx/camera/core/imagecapture/f0;->c:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/f0;->m(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method i()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/f0;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public synthetic k(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/f0;->j(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
