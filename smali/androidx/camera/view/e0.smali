.class final Landroidx/camera/view/e0;
.super Landroidx/camera/view/b0;
.source "TextureViewImplementation.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field e:Landroid/view/TextureView;

.field f:Landroid/graphics/SurfaceTexture;

.field g:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/SurfaceRequest$Result;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroidx/camera/core/SurfaceRequest;

.field i:Z

.field j:Landroid/graphics/SurfaceTexture;

.field k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field l:Landroidx/camera/view/b0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field m:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field n:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;Landroidx/camera/view/a0;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/a0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/view/b0;-><init>(Landroid/widget/FrameLayout;Landroidx/camera/view/a0;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/camera/view/e0;->i:Z

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/e0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private synthetic l(Landroidx/camera/core/SurfaceRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/e0;->h:Landroidx/camera/core/SurfaceRequest;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/camera/view/e0;->h:Landroidx/camera/core/SurfaceRequest;

    .line 3
    iput-object p1, p0, Landroidx/camera/view/e0;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    :cond_0
    invoke-direct {p0}, Landroidx/camera/view/e0;->t()V

    return-void
.end method

.method private synthetic n(Landroid/view/Surface;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "TextureViewImpl"

    const-string v1, "Surface set on Preview."

    .line 1
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/camera/view/e0;->h:Landroidx/camera/core/SurfaceRequest;

    .line 3
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/camera/view/x;

    invoke-direct {v2, p2}, Landroidx/camera/view/x;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Landroidx/camera/core/SurfaceRequest;->provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "provideSurface[request="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/camera/view/e0;->h:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " surface="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic p(Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/SurfaceRequest;)V
    .locals 2

    const-string v0, "TextureViewImpl"

    const-string v1, "Safe to release surface."

    .line 1
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/camera/view/e0;->t()V

    .line 3
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 4
    iget-object p1, p0, Landroidx/camera/view/e0;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 5
    iput-object v0, p0, Landroidx/camera/view/e0;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/camera/view/e0;->h:Landroidx/camera/core/SurfaceRequest;

    if-ne p1, p3, :cond_1

    .line 7
    iput-object v0, p0, Landroidx/camera/view/e0;->h:Landroidx/camera/core/SurfaceRequest;

    :cond_1
    return-void
.end method

.method private synthetic r(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/e0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-string p1, "textureViewImpl_waitForNextFrame"

    return-object p1
.end method

.method private t()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/e0;->l:Landroidx/camera/view/b0$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroidx/camera/view/b0$a;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/camera/view/e0;->l:Landroidx/camera/view/b0$a;

    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/view/e0;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/view/e0;->j:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/view/e0;->e:Landroid/view/TextureView;

    .line 2
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/view/e0;->j:Landroid/graphics/SurfaceTexture;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/camera/view/e0;->e:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/camera/view/e0;->j:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/camera/view/e0;->i:Z

    :cond_0
    return-void
.end method


# virtual methods
.method b()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/e0;->e:Landroid/view/TextureView;

    return-object v0
.end method

.method c()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/e0;->e:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/e0;->e:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method d()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/view/e0;->u()V

    return-void
.end method

.method e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/camera/view/e0;->i:Z

    return-void
.end method

.method g(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/view/b0$a;)V
    .locals 1
    .param p1    # Landroidx/camera/core/SurfaceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/b0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/view/b0;->a:Landroid/util/Size;

    .line 2
    iput-object p2, p0, Landroidx/camera/view/e0;->l:Landroidx/camera/view/b0$a;

    .line 3
    invoke-virtual {p0}, Landroidx/camera/view/e0;->k()V

    .line 4
    iget-object p2, p0, Landroidx/camera/view/e0;->h:Landroidx/camera/core/SurfaceRequest;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    .line 6
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/e0;->h:Landroidx/camera/core/SurfaceRequest;

    .line 7
    iget-object p2, p0, Landroidx/camera/view/e0;->e:Landroid/view/TextureView;

    .line 8
    invoke-virtual {p2}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroidx/camera/view/t;

    invoke-direct {v0, p0, p1}, Landroidx/camera/view/t;-><init>(Landroidx/camera/view/e0;Landroidx/camera/core/SurfaceRequest;)V

    .line 9
    invoke-virtual {p1, p2, v0}, Landroidx/camera/core/SurfaceRequest;->addRequestCancellationListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {p0}, Landroidx/camera/view/e0;->v()V

    return-void
.end method

.method i(Ljava/util/concurrent/Executor;Landroidx/camera/view/PreviewView$OnFrameUpdateListener;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/PreviewView$OnFrameUpdateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p2, p0, Landroidx/camera/view/e0;->m:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;

    .line 2
    iput-object p1, p0, Landroidx/camera/view/e0;->n:Ljava/util/concurrent/Executor;

    return-void
.end method

.method j()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
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
    new-instance v0, Landroidx/camera/view/s;

    invoke-direct {v0, p0}, Landroidx/camera/view/s;-><init>(Landroidx/camera/view/e0;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/view/b0;->b:Landroid/widget/FrameLayout;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/camera/view/b0;->a:Landroid/util/Size;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Landroidx/camera/view/b0;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/camera/view/e0;->e:Landroid/view/TextureView;

    .line 4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Landroidx/camera/view/b0;->a:Landroid/util/Size;

    .line 5
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroidx/camera/view/b0;->a:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Landroidx/camera/view/e0;->e:Landroid/view/TextureView;

    new-instance v1, Landroidx/camera/view/e0$a;

    invoke-direct {v1, p0}, Landroidx/camera/view/e0$a;-><init>(Landroidx/camera/view/e0;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 8
    iget-object v0, p0, Landroidx/camera/view/b0;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 9
    iget-object v0, p0, Landroidx/camera/view/b0;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroidx/camera/view/e0;->e:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m(Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/view/e0;->l(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method

.method public synthetic o(Landroid/view/Surface;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/view/e0;->n(Landroid/view/Surface;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic q(Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/view/e0;->p(Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method

.method public synthetic s(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/view/e0;->r(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method v()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/view/b0;->a:Landroid/util/Size;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/camera/view/e0;->f:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/camera/view/e0;->h:Landroidx/camera/core/SurfaceRequest;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroidx/camera/view/b0;->a:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 3
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Landroidx/camera/view/e0;->f:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 4
    iget-object v1, p0, Landroidx/camera/view/e0;->h:Landroidx/camera/core/SurfaceRequest;

    .line 5
    new-instance v2, Landroidx/camera/view/v;

    invoke-direct {v2, p0, v0}, Landroidx/camera/view/v;-><init>(Landroidx/camera/view/e0;Landroid/view/Surface;)V

    invoke-static {v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 6
    iput-object v2, p0, Landroidx/camera/view/e0;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    new-instance v3, Landroidx/camera/view/u;

    invoke-direct {v3, p0, v0, v2, v1}, Landroidx/camera/view/u;-><init>(Landroidx/camera/view/e0;Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/SurfaceRequest;)V

    iget-object v0, p0, Landroidx/camera/view/e0;->e:Landroid/view/TextureView;

    .line 8
    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 9
    invoke-interface {v2, v3, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 10
    invoke-virtual {p0}, Landroidx/camera/view/b0;->f()V

    :cond_1
    :goto_0
    return-void
.end method
