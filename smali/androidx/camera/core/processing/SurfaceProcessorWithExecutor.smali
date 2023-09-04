.class public Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;
.super Ljava/lang/Object;
.source "SurfaceProcessorWithExecutor.java"

# interfaces
.implements Landroidx/camera/core/processing/SurfaceProcessorInternal;


# instance fields
.field private final a:Landroidx/camera/core/SurfaceProcessor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/SurfaceProcessor;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1    # Landroidx/camera/core/SurfaceProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Landroidx/camera/core/processing/SurfaceProcessorInternal;

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "SurfaceProcessorInternal should always be thread safe. Do not wrap."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->a:Landroidx/camera/core/SurfaceProcessor;

    .line 4
    iput-object p2, p0, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic a(Landroidx/camera/core/SurfaceRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->a:Landroidx/camera/core/SurfaceProcessor;

    invoke-interface {v0, p1}, Landroidx/camera/core/SurfaceProcessor;->onInputSurface(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method

.method private synthetic c(Landroidx/camera/core/SurfaceOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->a:Landroidx/camera/core/SurfaceProcessor;

    invoke-interface {v0, p1}, Landroidx/camera/core/SurfaceProcessor;->onOutputSurface(Landroidx/camera/core/SurfaceOutput;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->a(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method

.method public synthetic d(Landroidx/camera/core/SurfaceOutput;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->c(Landroidx/camera/core/SurfaceOutput;)V

    return-void
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getProcessor()Landroidx/camera/core/SurfaceProcessor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->a:Landroidx/camera/core/SurfaceProcessor;

    return-object v0
.end method

.method public onInputSurface(Landroidx/camera/core/SurfaceRequest;)V
    .locals 2
    .param p1    # Landroidx/camera/core/SurfaceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/processing/r;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/processing/r;-><init>(Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;Landroidx/camera/core/SurfaceRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOutputSurface(Landroidx/camera/core/SurfaceOutput;)V
    .locals 2
    .param p1    # Landroidx/camera/core/SurfaceOutput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/processing/s;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/processing/s;-><init>(Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;Landroidx/camera/core/SurfaceOutput;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
