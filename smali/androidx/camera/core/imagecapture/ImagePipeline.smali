.class public Landroidx/camera/core/imagecapture/ImagePipeline;
.super Ljava/lang/Object;
.source "ImagePipeline.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# static fields
.field static final a:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;


# instance fields
.field private final b:Landroidx/camera/core/impl/ImageCaptureConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroidx/camera/core/impl/CaptureConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroidx/camera/core/imagecapture/z;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Landroidx/camera/core/imagecapture/g0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Landroidx/camera/core/imagecapture/ProcessingNode;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Landroidx/camera/core/imagecapture/z$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-direct {v0}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;-><init>()V

    sput-object v0, Landroidx/camera/core/imagecapture/ImagePipeline;->a:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)V
    .locals 4
    .param p1    # Landroidx/camera/core/impl/ImageCaptureConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 3
    iput-object p1, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->b:Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 4
    invoke-static {p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/CaptureConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->c:Landroidx/camera/core/impl/CaptureConfig;

    .line 5
    new-instance v0, Landroidx/camera/core/imagecapture/z;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/z;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->d:Landroidx/camera/core/imagecapture/z;

    .line 6
    new-instance v1, Landroidx/camera/core/imagecapture/g0;

    invoke-direct {v1}, Landroidx/camera/core/imagecapture/g0;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->e:Landroidx/camera/core/imagecapture/g0;

    .line 7
    new-instance v2, Landroidx/camera/core/imagecapture/ProcessingNode;

    .line 8
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/camera/core/impl/ImageCaptureConfig;->getIoExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-direct {v2, v3}, Landroidx/camera/core/imagecapture/ProcessingNode;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->f:Landroidx/camera/core/imagecapture/ProcessingNode;

    .line 9
    invoke-virtual {p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getInputFormat()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/camera/core/imagecapture/z$a;->g(Landroid/util/Size;I)Landroidx/camera/core/imagecapture/z$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->g:Landroidx/camera/core/imagecapture/z$a;

    .line 10
    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/z;->h(Landroidx/camera/core/imagecapture/z$a;)Landroidx/camera/core/imagecapture/z$b;

    move-result-object p1

    .line 11
    invoke-virtual {v1, p1}, Landroidx/camera/core/imagecapture/g0;->e(Landroidx/camera/core/imagecapture/z$b;)Landroidx/camera/core/imagecapture/ProcessingNode$a;

    move-result-object p1

    .line 12
    invoke-virtual {v2, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->transform(Landroidx/camera/core/imagecapture/ProcessingNode$a;)Ljava/lang/Void;

    return-void
.end method

.method private a(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/h0;)Landroidx/camera/core/imagecapture/CameraRequest;
    .locals 6
    .param p1    # Landroidx/camera/core/impl/CaptureBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/imagecapture/TakePictureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/imagecapture/h0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CaptureStage;

    .line 4
    new-instance v3, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 5
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->c:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 6
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->c:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 7
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->j()Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)V

    .line 9
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->g:Landroidx/camera/core/imagecapture/z$a;

    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/z$a;->f()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 10
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->g:Landroidx/camera/core/imagecapture/z$a;

    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/z$a;->c()I

    move-result v4

    const/16 v5, 0x100

    if-ne v4, v5, :cond_1

    .line 11
    sget-object v4, Landroidx/camera/core/imagecapture/ImagePipeline;->a:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-virtual {v4}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->isRotationOptionSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    sget-object v4, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    .line 13
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 14
    invoke-virtual {v3, v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 15
    :cond_0
    sget-object v4, Landroidx/camera/core/impl/CaptureConfig;->OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;

    .line 16
    invoke-virtual {p0, p2}, Landroidx/camera/core/imagecapture/ImagePipeline;->e(Landroidx/camera/core/imagecapture/TakePictureRequest;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 17
    invoke-virtual {v3, v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 18
    :cond_1
    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureStage;->getCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 20
    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addTag(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget-object v2, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->g:Landroidx/camera/core/imagecapture/z$a;

    invoke-virtual {v2}, Landroidx/camera/core/imagecapture/z$a;->b()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 22
    invoke-virtual {v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 23
    :cond_2
    new-instance p1, Landroidx/camera/core/imagecapture/CameraRequest;

    invoke-direct {p1, v0, p3}, Landroidx/camera/core/imagecapture/CameraRequest;-><init>(Ljava/util/List;Landroidx/camera/core/imagecapture/h0;)V

    return-object p1
.end method

.method private b()Landroidx/camera/core/impl/CaptureBundle;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->b:Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/CaptureBundle;

    return-object v0
.end method

.method private c(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/h0;)Landroidx/camera/core/imagecapture/e0;
    .locals 9
    .param p1    # Landroidx/camera/core/impl/CaptureBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/imagecapture/TakePictureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/imagecapture/h0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v8, Landroidx/camera/core/imagecapture/e0;

    .line 2
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->g()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v2

    .line 3
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->c()Landroid/graphics/Rect;

    move-result-object v3

    .line 4
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->h()I

    move-result v4

    .line 5
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->e()I

    move-result v5

    .line 6
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->i()Landroid/graphics/Matrix;

    move-result-object v6

    move-object v0, v8

    move-object v1, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Landroidx/camera/core/imagecapture/e0;-><init>(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/ImageCapture$OutputFileOptions;Landroid/graphics/Rect;IILandroid/graphics/Matrix;Landroidx/camera/core/imagecapture/h0;)V

    return-object v8
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->d:Landroidx/camera/core/imagecapture/z;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/z;->release()V

    .line 3
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->e:Landroidx/camera/core/imagecapture/g0;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/g0;->release()V

    .line 4
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->f:Landroidx/camera/core/imagecapture/ProcessingNode;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingNode;->release()V

    return-void
.end method

.method public createSessionConfigBuilder()Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->b:Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-static {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->g:Landroidx/camera/core/imagecapture/z$a;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/z$a;->f()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-object v0
.end method

.method d(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/h0;)Landroidx/core/util/Pair;
    .locals 3
    .param p1    # Landroidx/camera/core/imagecapture/TakePictureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/imagecapture/h0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/imagecapture/TakePictureRequest;",
            "Landroidx/camera/core/imagecapture/h0;",
            ")",
            "Landroidx/core/util/Pair<",
            "Landroidx/camera/core/imagecapture/CameraRequest;",
            "Landroidx/camera/core/imagecapture/e0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/ImagePipeline;->b()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v0

    .line 3
    new-instance v1, Landroidx/core/util/Pair;

    .line 4
    invoke-direct {p0, v0, p1, p2}, Landroidx/camera/core/imagecapture/ImagePipeline;->a(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/h0;)Landroidx/camera/core/imagecapture/CameraRequest;

    move-result-object v2

    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroidx/camera/core/imagecapture/ImagePipeline;->c(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/h0;)Landroidx/camera/core/imagecapture/e0;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method e(Landroidx/camera/core/imagecapture/TakePictureRequest;)I
    .locals 3
    .param p1    # Landroidx/camera/core/imagecapture/TakePictureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->f()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->c()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->g:Landroidx/camera/core/imagecapture/z$a;

    invoke-virtual {v2}, Landroidx/camera/core/imagecapture/z$a;->e()Landroid/util/Size;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/camera/core/impl/utils/TransformUtils;->hasCropping(Landroid/graphics/Rect;Landroid/util/Size;)Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->b()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x64

    return p1

    :cond_1
    const/16 p1, 0x5f

    return p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->e()I

    move-result p1

    return p1
.end method

.method f(Landroidx/camera/core/imagecapture/e0;)V
    .locals 1
    .param p1    # Landroidx/camera/core/imagecapture/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->g:Landroidx/camera/core/imagecapture/z$a;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/z$a;->d()Landroidx/camera/core/processing/Edge;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/camera/core/processing/Edge;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public getCapacity()I
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->d:Landroidx/camera/core/imagecapture/z;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/z;->a()I

    move-result v0

    return v0
.end method

.method public setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->d:Landroidx/camera/core/imagecapture/z;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/z;->g(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    return-void
.end method
