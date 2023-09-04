.class public Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;,
        Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;
    }
.end annotation


# instance fields
.field private final a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

.field private b:Landroid/app/Activity;

.field private c:Landroidx/camera/view/PreviewView;

.field private d:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;

.field private e:I

.field private f:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/util/concurrent/Executor;

.field private i:Landroidx/camera/core/ImageCapture;

.field private j:Landroidx/camera/core/VideoCapture;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/camera/view/PreviewView;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->g:I

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->h:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    .line 5
    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    .line 6
    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->d:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;

    .line 7
    iput-object p4, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    .line 8
    invoke-virtual {p0}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->hasFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iput v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->e:I

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->hasBackCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->e:I

    .line 12
    :cond_1
    :goto_0
    new-instance p1, Lcom/combateafraude/faceauthenticator/controller/camera/b;

    invoke-direct {p1, p0}, Lcom/combateafraude/faceauthenticator/controller/camera/b;-><init>(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->e:I

    return p0
.end method

.method private b()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v0}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    iget v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->e:I

    .line 2
    invoke-virtual {v0, v1}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/camera/a;

    invoke-direct {v2, p0, v0}, Lcom/combateafraude/faceauthenticator/controller/camera/a;-><init>(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;Landroidx/camera/core/CameraSelector;)V

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    .line 6
    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 7
    invoke-interface {v1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic c(Landroidx/camera/core/CameraSelector;)V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    new-instance v3, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v3}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 5
    invoke-virtual {v3, v1}, Landroidx/camera/core/Preview$Builder;->setTargetRotation(I)Landroidx/camera/core/Preview$Builder;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v4}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object v4

    instance-of v4, v4, Lcom/combateafraude/faceauthenticator/input/VideoCapture;

    const/16 v5, 0x300

    const/16 v6, 0x200

    const/16 v7, 0x2d0

    const/4 v8, 0x2

    if-eqz v4, :cond_1

    .line 8
    new-instance v1, Landroidx/camera/core/VideoCapture$Builder;

    invoke-direct {v1}, Landroidx/camera/core/VideoCapture$Builder;-><init>()V

    sget-object v4, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    .line 9
    invoke-virtual {v1, v4}, Landroidx/camera/core/VideoCapture$Builder;->setCameraSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v6, v5}, Landroid/util/Size;-><init>(II)V

    .line 10
    invoke-virtual {v1, v4}, Landroidx/camera/core/VideoCapture$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const/16 v4, 0x3c

    .line 11
    invoke-virtual {v1, v4}, Landroidx/camera/core/VideoCapture$Builder;->setVideoFrameRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroidx/camera/core/VideoCapture$Builder;->build()Landroidx/camera/core/VideoCapture;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->j:Landroidx/camera/core/VideoCapture;

    goto :goto_1

    .line 13
    :cond_1
    new-instance v4, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v4}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    .line 14
    invoke-virtual {v4, v2}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v4

    .line 15
    invoke-virtual {v4, v8}, Landroidx/camera/core/ImageCapture$Builder;->setFlashMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v4

    .line 16
    invoke-virtual {v4, v1}, Landroidx/camera/core/ImageCapture$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    new-instance v4, Landroid/util/Size;

    const/16 v9, 0x500

    invoke-direct {v4, v7, v9}, Landroid/util/Size;-><init>(II)V

    .line 17
    invoke-virtual {v1, v4}, Landroidx/camera/core/ImageCapture$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->i:Landroidx/camera/core/ImageCapture;

    .line 19
    :goto_1
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 20
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object v1

    instance-of v1, v1, Lcom/combateafraude/faceauthenticator/input/ImageCapture;

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 21
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    new-instance v1, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v1}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 23
    invoke-virtual {v1, v2}, Landroidx/camera/core/ImageAnalysis$Builder;->setImageQueueDepth(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v1

    new-instance v9, Landroid/util/Size;

    const/16 v10, 0x1e0

    const/16 v11, 0x280

    invoke-direct {v9, v10, v11}, Landroid/util/Size;-><init>(II)V

    .line 24
    invoke-virtual {v1, v9}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis$Builder;->build()Landroidx/camera/core/ImageAnalysis;

    move-result-object v1

    .line 26
    iget-object v9, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->h:Ljava/util/concurrent/Executor;

    iget-object v10, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->d:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/combateafraude/faceauthenticator/controller/camera/c;

    invoke-direct {v11, v10}, Lcom/combateafraude/faceauthenticator/controller/camera/c;-><init>(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;)V

    invoke-virtual {v1, v9, v11}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 27
    iget-object v9, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    check-cast v9, Landroidx/lifecycle/LifecycleOwner;

    const/4 v10, 0x3

    new-array v10, v10, [Landroidx/camera/core/UseCase;

    aput-object v3, v10, v2

    aput-object v1, v10, v4

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->i:Landroidx/camera/core/ImageCapture;

    aput-object v1, v10, v8

    invoke-virtual {v0, v9, p1, v10}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    goto :goto_2

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-array v9, v8, [Landroidx/camera/core/UseCase;

    aput-object v3, v9, v2

    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->i:Landroidx/camera/core/ImageCapture;

    aput-object v3, v9, v4

    invoke-virtual {v0, v1, p1, v9}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    goto :goto_2

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-array v9, v8, [Landroidx/camera/core/UseCase;

    aput-object v3, v9, v2

    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->j:Landroidx/camera/core/VideoCapture;

    aput-object v3, v9, v4

    invoke-virtual {v0, v1, p1, v9}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    .line 30
    :goto_2
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object v1

    instance-of v1, v1, Lcom/combateafraude/faceauthenticator/input/VideoCapture;

    if-eqz v1, :cond_5

    .line 31
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->j:Landroidx/camera/core/VideoCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->j:Landroidx/camera/core/VideoCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lt v1, v7, :cond_4

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->j:Landroidx/camera/core/VideoCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ge v1, v7, :cond_5

    :cond_4
    new-array v1, v4, [Landroidx/camera/core/UseCase;

    .line 32
    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->j:Landroidx/camera/core/VideoCapture;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbind([Landroidx/camera/core/UseCase;)V

    .line 33
    new-instance v1, Landroidx/camera/core/VideoCapture$Builder;

    invoke-direct {v1}, Landroidx/camera/core/VideoCapture$Builder;-><init>()V

    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    .line 34
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/VideoCapture$Builder;->setTargetRotation(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v6, v5}, Landroid/util/Size;-><init>(II)V

    .line 35
    invoke-virtual {v1, v3}, Landroidx/camera/core/VideoCapture$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroidx/camera/core/VideoCapture$Builder;->build()Landroidx/camera/core/VideoCapture;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->j:Landroidx/camera/core/VideoCapture;

    .line 37
    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    new-array v5, v4, [Landroidx/camera/core/UseCase;

    aput-object v1, v5, v2

    invoke-virtual {v0, v3, p1, v5}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    .line 38
    :cond_5
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object v1

    instance-of v1, v1, Lcom/combateafraude/faceauthenticator/input/ImageCapture;

    if-eqz v1, :cond_7

    .line 39
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->i:Landroidx/camera/core/ImageCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->i:Landroidx/camera/core/ImageCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lt v1, v7, :cond_6

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->i:Landroidx/camera/core/ImageCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ge v1, v7, :cond_7

    :cond_6
    new-array v1, v4, [Landroidx/camera/core/UseCase;

    .line 40
    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->i:Landroidx/camera/core/ImageCapture;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbind([Landroidx/camera/core/UseCase;)V

    .line 41
    new-instance v1, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v1}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    .line 42
    invoke-virtual {v1, v2}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v8}, Landroidx/camera/core/ImageCapture$Builder;->setFlashMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    .line 44
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/ImageCapture$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->i:Landroidx/camera/core/ImageCapture;

    .line 46
    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    new-array v4, v4, [Landroidx/camera/core/UseCase;

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, p1, v4}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    .line 47
    :cond_7
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->d:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;

    invoke-interface {p1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;->onCameraInitialized()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    .line 48
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->d:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;

    invoke-interface {v0, p1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;->onCameraError(Ljava/lang/Exception;)V

    :goto_4
    return-void
.end method

.method static synthetic d(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->g:I

    return v0
.end method

.method static synthetic e(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic f(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)Landroidx/camera/core/VideoCapture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->j:Landroidx/camera/core/VideoCapture;

    return-object p0
.end method

.method public static synthetic g(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;Landroidx/camera/core/CameraSelector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->c(Landroidx/camera/core/CameraSelector;)V

    return-void
.end method

.method public static synthetic h(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b()V

    return-void
.end method


# virtual methods
.method public addExifMetadataInFile(Ljava/io/File;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.combateafraude.faceauthenticator - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/preferences/PreferencesHelper;->getTrackingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/combateafraude/faceauthenticator/controller/utils/Session;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "5.8.13"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "UserComment"

    .line 3
    invoke-virtual {v1, p1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public hasBackCamera()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasFrontCamera()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.front"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePicture(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;->onFailure(Landroidx/camera/core/ImageCaptureException;)V

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->i:Landroidx/camera/core/ImageCapture;

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->h:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;

    invoke-direct {v3, p0, p1, p2}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$a;-><init>(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;)V

    invoke-virtual {v1, v0, v2, v3}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method

.method public saveVideo(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;->onFailure(Landroidx/camera/core/VideoCapture$VideoCaptureError;)V

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/VideoCapture$OutputFileOptions;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    const-string v2, "android.permission.CAMERA"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    const/4 p2, 0x0

    const-string v0, "Sem permiss\u00e3o"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object v1

    check-cast v1, Lcom/combateafraude/faceauthenticator/input/VideoCapture;

    .line 8
    new-instance v8, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$b;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/VideoCapture;->getTime()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long v4, v1, v3

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$b;-><init>(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;JJ)V

    .line 9
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 10
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->j:Landroidx/camera/core/VideoCapture;

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->h:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$c;

    invoke-direct {v3, p0, p2, p1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$c;-><init>(Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Landroidx/camera/core/VideoCapture;->startRecording(Landroidx/camera/core/VideoCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->j:Landroidx/camera/core/VideoCapture;

    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture;->stopRecording()V

    return-void
.end method

.method public switchCamera()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->e:I

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->shutdown()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->b()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
