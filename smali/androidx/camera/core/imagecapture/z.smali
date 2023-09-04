.class Landroidx/camera/core/imagecapture/z;
.super Ljava/lang/Object;
.source "CaptureNode.java"

# interfaces
.implements Landroidx/camera/core/processing/Node;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/imagecapture/z$b;,
        Landroidx/camera/core/imagecapture/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Node<",
        "Landroidx/camera/core/imagecapture/z$a;",
        "Landroidx/camera/core/imagecapture/z$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/camera/core/imagecapture/e0;

.field d:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field private e:Landroidx/camera/core/imagecapture/z$b;

.field private f:Landroidx/camera/core/imagecapture/z$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/z;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/z;->b:Ljava/util/Set;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/camera/core/imagecapture/z;->c:Landroidx/camera/core/imagecapture/e0;

    return-void
.end method

.method private synthetic b(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/camera/core/ImageProxy;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/z;->e(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method private d(Landroidx/camera/core/ImageProxy;)V
    .locals 4
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/imagecapture/z;->c:Landroidx/camera/core/imagecapture/e0;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/e0;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/camera/core/imagecapture/z;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received an unexpected stage id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Landroidx/camera/core/imagecapture/z;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->c:Landroidx/camera/core/imagecapture/e0;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/e0;->l()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/camera/core/imagecapture/z;->c:Landroidx/camera/core/imagecapture/e0;

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->e:Landroidx/camera/core/imagecapture/z$b;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/z$b;->b()Landroidx/camera/core/processing/Edge;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/camera/core/processing/Edge;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->d:Landroidx/camera/core/SafeCloseImageReaderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The ImageReader is not initialized."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->d:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getCapacity()I

    move-result v0

    return v0
.end method

.method public synthetic c(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/z;->b(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method e(Landroidx/camera/core/ImageProxy;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->c:Landroidx/camera/core/imagecapture/e0;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/z;->d(Landroidx/camera/core/ImageProxy;)V

    :goto_0
    return-void
.end method

.method f(Landroidx/camera/core/imagecapture/e0;)V
    .locals 4
    .param p1    # Landroidx/camera/core/imagecapture/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/z;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Too many acquire images. Close image to be able to process next."

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->c:Landroidx/camera/core/imagecapture/e0;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    const-string v0, "The previous request is not complete"

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 4
    iput-object p1, p0, Landroidx/camera/core/imagecapture/z;->c:Landroidx/camera/core/imagecapture/e0;

    .line 5
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->a:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/e0;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->e:Landroidx/camera/core/imagecapture/z$b;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/z$b;->c()Landroidx/camera/core/processing/Edge;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/camera/core/processing/Edge;->accept(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Landroidx/camera/core/imagecapture/z;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;

    .line 8
    invoke-direct {p0, v0}, Landroidx/camera/core/imagecapture/z;->d(Landroidx/camera/core/ImageProxy;)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object p1, p0, Landroidx/camera/core/imagecapture/z;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public g(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->d:Landroidx/camera/core/SafeCloseImageReaderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The ImageReader is not initialized."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->d:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {v0, p1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    return-void
.end method

.method public h(Landroidx/camera/core/imagecapture/z$a;)Landroidx/camera/core/imagecapture/z$b;
    .locals 5
    .param p1    # Landroidx/camera/core/imagecapture/z$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/imagecapture/z;->f:Landroidx/camera/core/imagecapture/z$a;

    .line 2
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/z$a;->e()Landroid/util/Size;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/z$a;->c()I

    move-result v1

    .line 4
    new-instance v2, Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 5
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/4 v4, 0x4

    invoke-direct {v2, v3, v0, v1, v4}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    .line 6
    new-instance v0, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v0, v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/z;->d:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 7
    invoke-virtual {v2}, Landroidx/camera/core/MetadataImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/imagecapture/z$a;->h(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 8
    invoke-virtual {v2}, Landroidx/camera/core/MetadataImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroidx/camera/core/imagecapture/z$a;->i(Landroid/view/Surface;)V

    .line 9
    new-instance v0, Landroidx/camera/core/imagecapture/b;

    invoke-direct {v0, p0}, Landroidx/camera/core/imagecapture/b;-><init>(Landroidx/camera/core/imagecapture/z;)V

    .line 10
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 11
    invoke-virtual {v2, v0, v1}, Landroidx/camera/core/MetadataImageReader;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 12
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/z$a;->d()Landroidx/camera/core/processing/Edge;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/imagecapture/p;

    invoke-direct {v1, p0}, Landroidx/camera/core/imagecapture/p;-><init>(Landroidx/camera/core/imagecapture/z;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/Edge;->setListener(Landroidx/core/util/Consumer;)V

    .line 13
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/z$a;->c()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/core/imagecapture/z$b;->d(I)Landroidx/camera/core/imagecapture/z$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/imagecapture/z;->e:Landroidx/camera/core/imagecapture/z$b;

    return-object p1
.end method

.method public release()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->d:Landroidx/camera/core/SafeCloseImageReaderProxy;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->safeClose()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/z;->f:Landroidx/camera/core/imagecapture/z$a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/z$a;->a()V

    :cond_1
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
    check-cast p1, Landroidx/camera/core/imagecapture/z$a;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/z;->h(Landroidx/camera/core/imagecapture/z$a;)Landroidx/camera/core/imagecapture/z$b;

    move-result-object p1

    return-object p1
.end method
