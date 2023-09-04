.class public Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;
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
        Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;
    }
.end annotation


# static fields
.field public static final CAMERA_ANALYSIS_HEIGHT:I = 0x280

.field public static final CAMERA_ANALYSIS_WIDTH:I = 0x1e0


# instance fields
.field private a:Lcom/combateafraude/documentdetector/input/DocumentDetector;

.field private b:Landroid/app/Activity;

.field private c:Landroidx/camera/view/PreviewView;

.field private d:Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;

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

.field private g:Landroidx/camera/core/Camera;

.field h:Landroidx/camera/core/FocusMeteringAction;

.field private i:Ljava/util/concurrent/Executor;

.field private j:Landroidx/camera/core/ImageCapture;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/camera/view/PreviewView;Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;Lcom/combateafraude/documentdetector/input/DocumentDetector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->i:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    .line 5
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->d:Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->c(Landroid/util/DisplayMetrics;)Landroidx/camera/core/FocusMeteringAction;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->h:Landroidx/camera/core/FocusMeteringAction;

    .line 7
    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->a:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 8
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->hasBackCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->e:I

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->hasFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->e:I

    .line 12
    :cond_1
    :goto_0
    new-instance p1, Lcom/combateafraude/documentdetector/controller/camera/c;

    invoke-direct {p1, p0}, Lcom/combateafraude/documentdetector/controller/camera/c;-><init>(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->e:I

    return p0
.end method

.method private b(Lcom/combateafraude/documentdetector/input/Resolution;)Landroid/util/Size;
    .locals 3

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    const/16 v1, 0xf00

    const/16 v2, 0x870

    if-eq p1, v0, :cond_0

    .line 2
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v2, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v2, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x5a0

    const/16 v1, 0xa00

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x438

    const/16 v1, 0x780

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    :goto_0
    return-object p1
.end method

.method private c(Landroid/util/DisplayMetrics;)Landroidx/camera/core/FocusMeteringAction;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;-><init>(FF)V

    .line 2
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/MeteringPointFactory;->createPoint(FF)Landroidx/camera/core/MeteringPoint;

    move-result-object p1

    .line 3
    new-instance v0, Landroidx/camera/core/FocusMeteringAction$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/camera/core/FocusMeteringAction$Builder;-><init>(Landroidx/camera/core/MeteringPoint;I)V

    invoke-virtual {v0}, Landroidx/camera/core/FocusMeteringAction$Builder;->build()Landroidx/camera/core/FocusMeteringAction;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v0}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->e:I

    .line 2
    invoke-virtual {v0, v1}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    new-instance v2, Lcom/combateafraude/documentdetector/controller/camera/a;

    invoke-direct {v2, p0, v0}, Lcom/combateafraude/documentdetector/controller/camera/a;-><init>(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;Landroidx/camera/core/CameraSelector;)V

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    .line 6
    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 7
    invoke-interface {v1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic e(Landroidx/camera/core/CameraSelector;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

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
    new-instance v4, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v4}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    const/4 v5, 0x1

    .line 8
    invoke-virtual {v4, v5}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->a:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 9
    invoke-virtual {v6}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getResolution()Lcom/combateafraude/documentdetector/input/Resolution;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->b(Lcom/combateafraude/documentdetector/input/Resolution;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/camera/core/ImageCapture$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v4

    const/4 v6, 0x2

    .line 10
    invoke-virtual {v4, v6}, Landroidx/camera/core/ImageCapture$Builder;->setFlashMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v4

    .line 11
    invoke-virtual {v4, v1}, Landroidx/camera/core/ImageCapture$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->j:Landroidx/camera/core/ImageCapture;

    .line 13
    new-instance v1, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v1}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 14
    invoke-virtual {v1, v2}, Landroidx/camera/core/ImageAnalysis$Builder;->setImageQueueDepth(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v1

    new-instance v4, Landroid/util/Size;

    const/16 v7, 0x1e0

    const/16 v8, 0x280

    invoke-direct {v4, v7, v8}, Landroid/util/Size;-><init>(II)V

    .line 15
    invoke-virtual {v1, v4}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis$Builder;->build()Landroidx/camera/core/ImageAnalysis;

    move-result-object v1

    .line 17
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->i:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->d:Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/combateafraude/documentdetector/controller/camera/d;

    invoke-direct {v8, v7}, Lcom/combateafraude/documentdetector/controller/camera/d;-><init>(Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;)V

    invoke-virtual {v1, v4, v8}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 18
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    invoke-virtual {v4}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 19
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    const/4 v7, 0x3

    new-array v7, v7, [Landroidx/camera/core/UseCase;

    aput-object v3, v7, v2

    aput-object v1, v7, v5

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->j:Landroidx/camera/core/ImageCapture;

    aput-object v1, v7, v6

    invoke-virtual {v0, v4, p1, v7}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->g:Landroidx/camera/core/Camera;

    .line 20
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/camera/b;

    invoke-direct {v0, p0}, Lcom/combateafraude/documentdetector/controller/camera/b;-><init>(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->d:Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;

    invoke-interface {p1}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;->onCameraInitialized()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 22
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->d:Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;

    invoke-interface {v0, p1}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;->onCameraError(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method private synthetic f(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->g:Landroidx/camera/core/Camera;

    invoke-interface {p1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewView;->getMeteringPointFactory()Landroidx/camera/core/MeteringPointFactory;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroidx/camera/core/MeteringPointFactory;->createPoint(FF)Landroidx/camera/core/MeteringPoint;

    move-result-object p2

    .line 4
    new-instance v0, Landroidx/camera/core/FocusMeteringAction$Builder;

    invoke-direct {v0, p2}, Landroidx/camera/core/FocusMeteringAction$Builder;-><init>(Landroidx/camera/core/MeteringPoint;)V

    invoke-virtual {v0}, Landroidx/camera/core/FocusMeteringAction$Builder;->build()Landroidx/camera/core/FocusMeteringAction;

    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Landroidx/camera/core/CameraControl;->startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic g(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;Landroidx/camera/core/CameraSelector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->e(Landroidx/camera/core/CameraSelector;)V

    return-void
.end method

.method public static synthetic h(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->f(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->d()V

    return-void
.end method


# virtual methods
.method public addExifMetadataInFile(Ljava/io/File;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.combateafraude.documentdetector - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/combateafraude/documentdetector/controller/preferences/PreferencesHelper;->getTrackingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/combateafraude/documentdetector/controller/utils/Session;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "6.39.6"

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

.method public getBitmapToPreview()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->c:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public hasBackCamera()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasFrontAndBackCamera()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->hasBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->hasFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFrontCamera()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.front"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePicture(Ljava/lang/String;Ljava/io/File;ZLcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 v0, 0x400

    div-long v5, p1, v0

    .line 3
    new-instance p1, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->setCentralFocus()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p3

    if-nez p3, :cond_0

    .line 6
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 7
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    :goto_1
    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->j:Landroidx/camera/core/ImageCapture;

    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->i:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$a;-><init>(Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;J)V

    invoke-virtual {p2, p1, p3, v0}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method

.method public setCentralFocus()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->g:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->h:Landroidx/camera/core/FocusMeteringAction;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->h:Landroidx/camera/core/FocusMeteringAction;

    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public switchCamera()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->e:I

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->shutdown()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->d()V
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
