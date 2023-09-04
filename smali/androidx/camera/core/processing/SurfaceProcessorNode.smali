.class public Landroidx/camera/core/processing/SurfaceProcessorNode;
.super Ljava/lang/Object;
.source "SurfaceProcessorNode.java"

# interfaces
.implements Landroidx/camera/core/processing/Node;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Node<",
        "Landroidx/camera/core/processing/SurfaceEdge;",
        "Landroidx/camera/core/processing/SurfaceEdge;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

.field final b:Landroidx/camera/core/processing/SurfaceProcessorInternal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final c:Landroidx/camera/core/impl/CameraInternal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Landroidx/camera/core/processing/SurfaceEdge;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroidx/camera/core/processing/SurfaceEdge;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/SurfaceOutput$GlTransformOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/processing/SurfaceProcessorInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->c:Landroidx/camera/core/impl/CameraInternal;

    .line 3
    iput-object p2, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->a:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    .line 4
    iput-object p3, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->b:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    return-void
.end method

.method private a(Landroidx/camera/core/processing/SettableSurface;)Landroidx/camera/core/processing/SettableSurface;
    .locals 14
    .param p1    # Landroidx/camera/core/processing/SettableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/processing/SurfaceProcessorNode$b;->a:[I

    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->a:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroidx/camera/core/processing/SettableSurface;

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getTargets()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getSize()Landroid/util/Size;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getFormat()I

    move-result v5

    .line 6
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v6

    const/4 v7, 0x0

    .line 7
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getCropRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 8
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getRotationDegrees()I

    move-result v9

    .line 9
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getMirroring()Z

    move-result v10

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroidx/camera/core/processing/SettableSurface;-><init>(ILandroid/util/Size;ILandroid/graphics/Matrix;ZLandroid/graphics/Rect;IZ)V

    goto :goto_1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown GlTransformOptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->a:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getRotationDegrees()I

    move-result v2

    .line 14
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getMirroring()Z

    move-result v3

    .line 15
    invoke-static {v2}, Landroidx/camera/core/impl/utils/TransformUtils;->is90or270(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    new-instance v4, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v1}, Landroidx/camera/core/impl/utils/TransformUtils;->rectToSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v4

    :goto_0
    move-object v7, v4

    .line 18
    new-instance v9, Landroid/graphics/Matrix;

    .line 19
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-direct {v9, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 20
    invoke-static {v0}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v0

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v4, v2, v3}, Landroidx/camera/core/impl/utils/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;

    move-result-object v0

    .line 21
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 22
    new-instance v0, Landroidx/camera/core/processing/SettableSurface;

    .line 23
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getTargets()I

    move-result v6

    .line 24
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getFormat()I

    move-result v8

    const/4 v10, 0x0

    .line 25
    invoke-static {v7}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRect(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Landroidx/camera/core/processing/SettableSurface;-><init>(ILandroid/util/Size;ILandroid/graphics/Matrix;ZLandroid/graphics/Rect;IZ)V

    :goto_1
    return-object v0
.end method

.method private synthetic b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->d:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/processing/SettableSurface;

    .line 3
    invoke-virtual {v1}, Landroidx/camera/core/processing/SettableSurface;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Landroidx/camera/core/SurfaceOutput;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->getRotationDegrees()I

    move-result p3

    invoke-interface {p0}, Landroidx/camera/core/SurfaceOutput;->getRotationDegrees()I

    move-result p0

    sub-int/2addr p3, p0

    .line 2
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getMirroring()Z

    move-result p0

    if-eqz p0, :cond_0

    neg-int p3, p3

    .line 3
    :cond_0
    invoke-static {p3}, Landroidx/camera/core/impl/utils/TransformUtils;->within360(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/camera/core/processing/SettableSurface;->setRotationDegrees(I)V

    return-void
.end method

.method private e(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V
    .locals 7
    .param p1    # Landroidx/camera/core/processing/SettableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/processing/SettableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->c:Landroidx/camera/core/impl/CameraInternal;

    invoke-virtual {p1, v0}, Landroidx/camera/core/processing/SettableSurface;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/SurfaceRequest;

    move-result-object v0

    .line 2
    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->a:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getRotationDegrees()I

    move-result v5

    .line 4
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getMirroring()Z

    move-result v6

    move-object v1, p2

    .line 5
    invoke-virtual/range {v1 .. v6}, Landroidx/camera/core/processing/SettableSurface;->createSurfaceOutputFuture(Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/camera/core/processing/SurfaceProcessorNode$a;

    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/camera/core/processing/SurfaceProcessorNode$a;-><init>(Landroidx/camera/core/processing/SurfaceProcessorNode;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V

    .line 6
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 7
    invoke-static {v1, v2, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->b()V

    return-void
.end method

.method f(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceOutput;)V
    .locals 2
    .param p1    # Landroidx/camera/core/processing/SettableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/SurfaceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/processing/SettableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/SurfaceOutput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/processing/p;

    invoke-direct {v1, p4, p1, p3}, Landroidx/camera/core/processing/p;-><init>(Landroidx/camera/core/SurfaceOutput;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V

    invoke-virtual {p2, v0, v1}, Landroidx/camera/core/SurfaceRequest;->setTransformationInfoListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->b:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    invoke-interface {v0}, Landroidx/camera/core/processing/SurfaceProcessorInternal;->release()V

    .line 2
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/processing/q;

    invoke-direct {v1, p0}, Landroidx/camera/core/processing/q;-><init>(Landroidx/camera/core/processing/SurfaceProcessorNode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public transform(Landroidx/camera/core/processing/SurfaceEdge;)Landroidx/camera/core/processing/SurfaceEdge;
    .locals 3
    .param p1    # Landroidx/camera/core/processing/SurfaceEdge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v0, "Multiple input stream not supported yet."

    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->e:Landroidx/camera/core/processing/SurfaceEdge;

    .line 5
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getSurfaces()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/SettableSurface;

    .line 6
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/SurfaceProcessorNode;->a(Landroidx/camera/core/processing/SettableSurface;)Landroidx/camera/core/processing/SettableSurface;

    move-result-object v0

    .line 7
    invoke-direct {p0, p1, v0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->e(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/processing/SurfaceEdge;->create(Ljava/util/List;)Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->d:Landroidx/camera/core/processing/SurfaceEdge;

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {p0, p1}, Landroidx/camera/core/processing/SurfaceProcessorNode;->transform(Landroidx/camera/core/processing/SurfaceEdge;)Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object p1

    return-object p1
.end method
