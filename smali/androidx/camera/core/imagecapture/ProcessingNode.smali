.class public Landroidx/camera/core/imagecapture/ProcessingNode;
.super Ljava/lang/Object;
.source "ProcessingNode.java"

# interfaces
.implements Landroidx/camera/core/processing/Node;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/imagecapture/ProcessingNode$a;,
        Landroidx/camera/core/imagecapture/ProcessingNode$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Node<",
        "Landroidx/camera/core/imagecapture/ProcessingNode$a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/imagecapture/ProcessingNode$b;",
            "Landroidx/camera/core/processing/Packet<",
            "Landroidx/camera/core/ImageProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/imagecapture/a0$a;",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private d:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/imagecapture/y$a;",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private e:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/imagecapture/c0$a;",
            "Landroidx/camera/core/ImageCapture$OutputFileResults;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;",
            "Landroidx/camera/core/processing/Packet<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/processing/Packet<",
            "Landroidx/camera/core/ImageProxy;",
            ">;",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;",
            "Landroidx/camera/core/processing/Packet<",
            "Landroidx/camera/core/ImageProxy;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/e0;->k(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method static synthetic b(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/e0;->j(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method

.method static synthetic c(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageCaptureException;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/e0;->m(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method private synthetic d(Landroidx/camera/core/imagecapture/ProcessingNode$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->i(Landroidx/camera/core/imagecapture/ProcessingNode$b;)V

    return-void
.end method

.method private synthetic f(Landroidx/camera/core/imagecapture/ProcessingNode$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$b;->b()Landroidx/camera/core/imagecapture/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/e0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/imagecapture/c;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/imagecapture/c;-><init>(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static k(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageCaptureException;)V
    .locals 2
    .param p0    # Landroidx/camera/core/imagecapture/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/imagecapture/g;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/imagecapture/g;-><init>(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageCaptureException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic e(Landroidx/camera/core/imagecapture/ProcessingNode$b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->d(Landroidx/camera/core/imagecapture/ProcessingNode$b;)V

    return-void
.end method

.method public synthetic g(Landroidx/camera/core/imagecapture/ProcessingNode$b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->f(Landroidx/camera/core/imagecapture/ProcessingNode$b;)V

    return-void
.end method

.method h(Landroidx/camera/core/imagecapture/ProcessingNode$b;)Landroidx/camera/core/ImageProxy;
    .locals 3
    .param p1    # Landroidx/camera/core/imagecapture/ProcessingNode$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/ImageCaptureException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$b;->b()Landroidx/camera/core/imagecapture/e0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->b:Landroidx/camera/core/processing/Operation;

    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->c:Landroidx/camera/core/processing/Operation;

    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/e0;->b()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/camera/core/imagecapture/a0$a;->c(Landroidx/camera/core/processing/Packet;I)Landroidx/camera/core/imagecapture/a0$a;

    move-result-object p1

    .line 6
    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 7
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->h:Landroidx/camera/core/processing/Operation;

    invoke-interface {v0, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->g:Landroidx/camera/core/processing/Operation;

    invoke-interface {v0, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/ImageProxy;

    return-object p1
.end method

.method i(Landroidx/camera/core/imagecapture/ProcessingNode$b;)V
    .locals 4
    .param p1    # Landroidx/camera/core/imagecapture/ProcessingNode$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$b;->b()Landroidx/camera/core/imagecapture/e0;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$b;->b()Landroidx/camera/core/imagecapture/e0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/e0;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->h(Landroidx/camera/core/imagecapture/ProcessingNode$b;)Landroidx/camera/core/ImageProxy;

    move-result-object p1

    .line 4
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Landroidx/camera/core/imagecapture/f;

    invoke-direct {v2, v0, p1}, Landroidx/camera/core/imagecapture/f;-><init>(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageProxy;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->j(Landroidx/camera/core/imagecapture/ProcessingNode$b;)Landroidx/camera/core/ImageCapture$OutputFileResults;

    move-result-object p1

    .line 6
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Landroidx/camera/core/imagecapture/e;

    invoke-direct {v2, v0, p1}, Landroidx/camera/core/imagecapture/e;-><init>(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroidx/camera/core/ImageCaptureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    const/4 v2, 0x0

    const-string v3, "Processing failed."

    invoke-direct {v1, v2, v3, p1}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->k(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageCaptureException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-static {v0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->k(Landroidx/camera/core/imagecapture/e0;Landroidx/camera/core/ImageCaptureException;)V

    :goto_0
    return-void
.end method

.method j(Landroidx/camera/core/imagecapture/ProcessingNode$b;)Landroidx/camera/core/ImageCapture$OutputFileResults;
    .locals 3
    .param p1    # Landroidx/camera/core/imagecapture/ProcessingNode$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/ImageCaptureException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$b;->b()Landroidx/camera/core/imagecapture/e0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->b:Landroidx/camera/core/processing/Operation;

    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 3
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->c:Landroidx/camera/core/processing/Operation;

    .line 4
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/e0;->b()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/camera/core/imagecapture/a0$a;->c(Landroidx/camera/core/processing/Packet;I)Landroidx/camera/core/imagecapture/a0$a;

    move-result-object p1

    .line 5
    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 6
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->hasCropping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->f:Landroidx/camera/core/processing/Operation;

    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 8
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->d:Landroidx/camera/core/processing/Operation;

    .line 9
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/e0;->b()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/camera/core/imagecapture/y$a;->c(Landroidx/camera/core/processing/Packet;I)Landroidx/camera/core/imagecapture/y$a;

    move-result-object p1

    .line 10
    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->e:Landroidx/camera/core/processing/Operation;

    .line 12
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/e0;->c()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-static {p1, v0}, Landroidx/camera/core/imagecapture/c0$a;->c(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;)Landroidx/camera/core/imagecapture/c0$a;

    move-result-object p1

    .line 13
    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/ImageCapture$OutputFileResults;

    return-object p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Landroidx/camera/core/imagecapture/ProcessingNode$a;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->transform(Landroidx/camera/core/imagecapture/ProcessingNode$a;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public transform(Landroidx/camera/core/imagecapture/ProcessingNode$a;)Ljava/lang/Void;
    .locals 2
    .param p1    # Landroidx/camera/core/imagecapture/ProcessingNode$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$a;->a()Landroidx/camera/core/processing/Edge;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/imagecapture/d;

    invoke-direct {v1, p0}, Landroidx/camera/core/imagecapture/d;-><init>(Landroidx/camera/core/imagecapture/ProcessingNode;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/Edge;->setListener(Landroidx/core/util/Consumer;)V

    .line 3
    new-instance v0, Landroidx/camera/core/imagecapture/d0;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/d0;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->b:Landroidx/camera/core/processing/Operation;

    .line 4
    new-instance v0, Landroidx/camera/core/imagecapture/a0;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/a0;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->c:Landroidx/camera/core/processing/Operation;

    .line 5
    new-instance v0, Landroidx/camera/core/imagecapture/b0;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/b0;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->f:Landroidx/camera/core/processing/Operation;

    .line 6
    new-instance v0, Landroidx/camera/core/imagecapture/y;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/y;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->d:Landroidx/camera/core/processing/Operation;

    .line 7
    new-instance v0, Landroidx/camera/core/imagecapture/c0;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/c0;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->e:Landroidx/camera/core/processing/Operation;

    .line 8
    new-instance v0, Landroidx/camera/core/imagecapture/JpegImage2Result;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/JpegImage2Result;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->g:Landroidx/camera/core/processing/Operation;

    .line 9
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$a;->b()I

    move-result p1

    const/16 v0, 0x23

    if-ne p1, v0, :cond_0

    .line 10
    new-instance p1, Landroidx/camera/core/imagecapture/JpegBytes2Image;

    invoke-direct {p1}, Landroidx/camera/core/imagecapture/JpegBytes2Image;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->h:Landroidx/camera/core/processing/Operation;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
