.class final Landroidx/camera/core/processing/y;
.super Ljava/lang/Object;
.source "SurfaceOutputImpl.java"

# interfaces
.implements Landroidx/camera/core/SurfaceOutput;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/view/Surface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:Landroid/util/Size;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

.field private final g:Landroid/util/Size;

.field private final h:Landroid/graphics/Rect;

.field private final i:I

.field private final j:Z

.field private final k:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private l:Landroidx/core/util/Consumer;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/SurfaceOutput$Event;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private o:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final p:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/Surface;IILandroid/util/Size;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/SurfaceOutput$GlTransformOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/processing/y;->a:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Landroidx/camera/core/processing/y;->k:[F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/camera/core/processing/y;->n:Z

    .line 5
    iput-boolean v0, p0, Landroidx/camera/core/processing/y;->o:Z

    .line 6
    iput-object p1, p0, Landroidx/camera/core/processing/y;->b:Landroid/view/Surface;

    .line 7
    iput p2, p0, Landroidx/camera/core/processing/y;->c:I

    .line 8
    iput p3, p0, Landroidx/camera/core/processing/y;->d:I

    .line 9
    iput-object p4, p0, Landroidx/camera/core/processing/y;->e:Landroid/util/Size;

    .line 10
    iput-object p5, p0, Landroidx/camera/core/processing/y;->f:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    .line 11
    iput-object p6, p0, Landroidx/camera/core/processing/y;->g:Landroid/util/Size;

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Landroidx/camera/core/processing/y;->h:Landroid/graphics/Rect;

    .line 13
    iput-boolean p9, p0, Landroidx/camera/core/processing/y;->j:Z

    .line 14
    sget-object p1, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;->APPLY_CROP_ROTATE_AND_MIRRORING:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    if-ne p5, p1, :cond_0

    .line 15
    iput p8, p0, Landroidx/camera/core/processing/y;->i:I

    .line 16
    invoke-direct {p0}, Landroidx/camera/core/processing/y;->a()V

    goto :goto_0

    .line 17
    :cond_0
    iput v0, p0, Landroidx/camera/core/processing/y;->i:I

    .line 18
    :goto_0
    new-instance p1, Landroidx/camera/core/processing/o;

    invoke-direct {p1, p0}, Landroidx/camera/core/processing/o;-><init>(Landroidx/camera/core/processing/y;)V

    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/processing/y;->p:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private a()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/y;->k:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/processing/y;->k:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3
    iget-object v0, p0, Landroidx/camera/core/processing/y;->k:[F

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, v1, v3, v4, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 4
    iget-object v0, p0, Landroidx/camera/core/processing/y;->k:[F

    iget v5, p0, Landroidx/camera/core/processing/y;->i:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v0, v5, v6, v6}, Landroidx/camera/core/impl/utils/MatrixExt;->preRotate([FFFF)V

    .line 5
    iget-boolean v0, p0, Landroidx/camera/core/processing/y;->j:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/camera/core/processing/y;->k:[F

    invoke-static {v0, v1, v3, v2, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 7
    iget-object v0, p0, Landroidx/camera/core/processing/y;->k:[F

    invoke-static {v0, v1, v4, v3, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/processing/y;->g:Landroid/util/Size;

    iget v4, p0, Landroidx/camera/core/processing/y;->i:I

    invoke-static {v0, v4}, Landroidx/camera/core/impl/utils/TransformUtils;->rotateSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    .line 9
    iget-object v4, p0, Landroidx/camera/core/processing/y;->g:Landroid/util/Size;

    invoke-static {v4}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v4

    .line 10
    invoke-static {v0}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v5

    iget v6, p0, Landroidx/camera/core/processing/y;->i:I

    iget-boolean v7, p0, Landroidx/camera/core/processing/y;->j:Z

    .line 11
    invoke-static {v4, v5, v6, v7}, Landroidx/camera/core/impl/utils/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;

    move-result-object v4

    .line 12
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Landroidx/camera/core/processing/y;->h:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 14
    iget v4, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 15
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    .line 16
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 17
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 18
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 19
    iget-object v0, p0, Landroidx/camera/core/processing/y;->k:[F

    invoke-static {v0, v1, v4, v6, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 20
    iget-object v0, p0, Landroidx/camera/core/processing/y;->k:[F

    invoke-static {v0, v1, v7, v5, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method private synthetic c(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/processing/y;->q:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string p1, "SurfaceOutputImpl close future complete"

    return-object p1
.end method

.method private synthetic e(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/util/Consumer;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Landroidx/camera/core/SurfaceOutput$Event;->of(ILandroidx/camera/core/SurfaceOutput;)Landroidx/camera/core/SurfaceOutput$Event;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/common/util/concurrent/ListenableFuture;
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
    iget-object v0, p0, Landroidx/camera/core/processing/y;->p:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/y;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/processing/y;->o:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroidx/camera/core/processing/y;->o:Z

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Landroidx/camera/core/processing/y;->q:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic d(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/processing/y;->c(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/processing/y;->e(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/camera/core/processing/y;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/processing/y;->m:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/camera/core/processing/y;->l:Landroidx/core/util/Consumer;

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v3, p0, Landroidx/camera/core/processing/y;->o:Z

    if-nez v3, :cond_2

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Landroidx/camera/core/processing/y;->m:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    .line 7
    iput-boolean v3, p0, Landroidx/camera/core/processing/y;->n:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Landroidx/camera/core/processing/y;->n:Z

    :cond_2
    const/4 v2, 0x0

    .line 9
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 10
    :try_start_1
    new-instance v1, Landroidx/camera/core/processing/n;

    invoke-direct {v1, p0, v0}, Landroidx/camera/core/processing/n;-><init>(Landroidx/camera/core/processing/y;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "SurfaceOutputImpl"

    const-string v2, "Processor executor closed. Close request not posted."

    .line 11
    invoke-static {v1, v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/y;->d:I

    return v0
.end method

.method public getRotationDegrees()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/y;->i:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/y;->e:Landroid/util/Size;

    return-object v0
.end method

.method public getSurface(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroid/view/Surface;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/SurfaceOutput$Event;",
            ">;)",
            "Landroid/view/Surface;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/y;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroidx/camera/core/processing/y;->m:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Landroidx/camera/core/processing/y;->l:Landroidx/core/util/Consumer;

    .line 4
    iget-boolean p1, p0, Landroidx/camera/core/processing/y;->n:Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/camera/core/processing/y;->g()V

    .line 7
    :cond_0
    iget-object p1, p0, Landroidx/camera/core/processing/y;->b:Landroid/view/Surface;

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getTargets()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/y;->c:I

    return v0
.end method

.method public updateTransformMatrix([F[F)V
    .locals 4
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/processing/y$a;->a:[I

    iget-object v1, p0, Landroidx/camera/core/processing/y;->f:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    .line 2
    iget-object p2, p0, Landroidx/camera/core/processing/y;->k:[F

    invoke-static {p2, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown GlTransformOptions: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/camera/core/processing/y;->f:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 4
    :cond_1
    invoke-static {p2, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method
