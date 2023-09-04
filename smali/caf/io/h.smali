.class public Lcaf/io/h;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Lcaf/io/j;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcaf/io/h$f;,
        Lcaf/io/h$e;
    }
.end annotation


# static fields
.field private static a:Landroidx/camera/core/ImageCapture;


# instance fields
.field private final b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

.field private final c:Landroid/app/Activity;

.field private final d:Landroidx/camera/view/PreviewView;

.field private e:Lcaf/io/i;

.field private f:I

.field private g:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/Executor;

.field private i:Landroidx/camera/core/VideoCapture;

.field private j:I

.field private k:Landroidx/camera/core/ImageProxy;

.field private final l:Landroidx/camera/core/ImageAnalysis$Analyzer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeOptInUsageError"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/camera/view/PreviewView;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/h;->h:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcaf/io/h;->j:I

    .line 4
    new-instance v1, Lcaf/io/h$d;

    invoke-direct {v1, p0}, Lcaf/io/h$d;-><init>(Lcaf/io/h;)V

    iput-object v1, p0, Lcaf/io/h;->l:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 5
    iput-object p1, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    .line 6
    iput-object p2, p0, Lcaf/io/h;->d:Landroidx/camera/view/PreviewView;

    .line 7
    iput-object p3, p0, Lcaf/io/h;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    .line 8
    invoke-virtual {p0}, Lcaf/io/h;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iput v0, p0, Lcaf/io/h;->f:I

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcaf/io/h;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcaf/io/h;->f:I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcaf/io/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcaf/io/h;->f:I

    return p0
.end method

.method static synthetic b(Lcaf/io/h;Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;
    .locals 0

    .line 2
    iput-object p1, p0, Lcaf/io/h;->k:Landroidx/camera/core/ImageProxy;

    return-object p1
.end method

.method static c(Lcaf/io/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    .line 3
    new-instance p1, Lcaf/io/b0;

    const-wide v1, -0x25563da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p0}, Lcaf/io/M;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-wide v2, -0x257d3da67cb6L

    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcaf/io/e;->a:Ljava/lang/String;

    invoke-direct {p1, v1, p0, v2, v3}, Lcaf/io/b0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v0, p1}, Lcaf/io/A;->a(Ljava/io/File;Lcaf/io/b0;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcaf/io/t;->C:Lcaf/io/t;

    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;-><init>(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v1, p1, v0}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private d(Landroidx/camera/core/CameraSelector;)V
    .locals 10

    .line 5
    :try_start_0
    iget-object v0, p0, Lcaf/io/h;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 6
    iget-object v1, p0, Lcaf/io/h;->d:Landroidx/camera/view/PreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcaf/io/h;->d:Landroidx/camera/view/PreviewView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    new-instance v3, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v3}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 9
    invoke-virtual {v3, v1}, Landroidx/camera/core/Preview$Builder;->setTargetRotation(I)Landroidx/camera/core/Preview$Builder;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object v3

    .line 11
    iget-object v4, p0, Lcaf/io/h;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->r()Lcom/combateafraude/passivefaceliveness/input/Resolution;

    move-result-object v4

    iget-object v4, v4, Lcom/combateafraude/passivefaceliveness/input/Resolution;->size:Landroid/util/Size;

    .line 12
    iget-object v5, p0, Lcaf/io/h;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v5}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->L()Z

    move-result v5

    const/high16 v6, 0x400000

    const/4 v7, 0x2

    if-eqz v5, :cond_3

    .line 13
    new-instance v1, Landroidx/camera/core/VideoCapture$Builder;

    invoke-direct {v1}, Landroidx/camera/core/VideoCapture$Builder;-><init>()V

    sget-object v5, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    .line 14
    invoke-virtual {v1, v5}, Landroidx/camera/core/VideoCapture$Builder;->setCameraSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v4}, Landroidx/camera/core/VideoCapture$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    iget-object v4, p0, Lcaf/io/h;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    .line 16
    invoke-virtual {v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c()Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    move-result-object v4

    check-cast v4, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;

    if-eqz v4, :cond_1

    .line 17
    invoke-virtual {v4}, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->getFrameRate()I

    move-result v4

    goto :goto_1

    :cond_1
    const/16 v4, 0x3c

    .line 18
    :goto_1
    invoke-virtual {v1, v4}, Landroidx/camera/core/VideoCapture$Builder;->setVideoFrameRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    iget-object v4, p0, Lcaf/io/h;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    .line 19
    invoke-virtual {v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c()Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    move-result-object v4

    check-cast v4, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;

    if-eqz v4, :cond_2

    .line 20
    invoke-virtual {v4}, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->getBitRate()I

    move-result v4

    goto :goto_2

    :cond_2
    const/high16 v4, 0x400000

    .line 21
    :goto_2
    invoke-virtual {v1, v4}, Landroidx/camera/core/VideoCapture$Builder;->setBitRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroidx/camera/core/VideoCapture$Builder;->build()Landroidx/camera/core/VideoCapture;

    move-result-object v1

    iput-object v1, p0, Lcaf/io/h;->i:Landroidx/camera/core/VideoCapture;

    goto :goto_3

    .line 23
    :cond_3
    new-instance v5, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v5}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    .line 24
    invoke-virtual {v5, v2}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v5

    .line 25
    invoke-virtual {v5, v7}, Landroidx/camera/core/ImageCapture$Builder;->setFlashMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v5

    .line 26
    invoke-virtual {v5, v1}, Landroidx/camera/core/ImageCapture$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v4}, Landroidx/camera/core/ImageCapture$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    move-result-object v1

    sput-object v1, Lcaf/io/h;->a:Landroidx/camera/core/ImageCapture;

    .line 29
    :goto_3
    iget-object v1, p0, Lcaf/io/h;->d:Landroidx/camera/view/PreviewView;

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 30
    iget-object v1, p0, Lcaf/io/h;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->C()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 31
    iget-object v1, p0, Lcaf/io/h;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->N()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    new-instance v1, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v1}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 33
    invoke-virtual {v1, v2}, Landroidx/camera/core/ImageAnalysis$Builder;->setImageQueueDepth(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v1

    new-instance v5, Landroid/util/Size;

    const/16 v8, 0x1e0

    const/16 v9, 0x280

    invoke-direct {v5, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 34
    invoke-virtual {v1, v5}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis$Builder;->build()Landroidx/camera/core/ImageAnalysis;

    move-result-object v1

    .line 36
    iget-object v5, p0, Lcaf/io/h;->h:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Lcaf/io/h;->l:Landroidx/camera/core/ImageAnalysis$Analyzer;

    invoke-virtual {v1, v5, v8}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 37
    iget-object v5, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    check-cast v5, Landroidx/lifecycle/LifecycleOwner;

    const/4 v8, 0x3

    new-array v8, v8, [Landroidx/camera/core/UseCase;

    aput-object v3, v8, v2

    aput-object v1, v8, v4

    sget-object v1, Lcaf/io/h;->a:Landroidx/camera/core/ImageCapture;

    aput-object v1, v8, v7

    invoke-virtual {v0, v5, p1, v8}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    goto :goto_4

    .line 38
    :cond_4
    iget-object v1, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-array v5, v7, [Landroidx/camera/core/UseCase;

    aput-object v3, v5, v2

    sget-object v8, Lcaf/io/h;->a:Landroidx/camera/core/ImageCapture;

    aput-object v8, v5, v4

    invoke-virtual {v0, v1, p1, v5}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    goto :goto_4

    .line 39
    :cond_5
    iget-object v1, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-array v5, v7, [Landroidx/camera/core/UseCase;

    aput-object v3, v5, v2

    iget-object v8, p0, Lcaf/io/h;->i:Landroidx/camera/core/VideoCapture;

    aput-object v8, v5, v4

    invoke-virtual {v0, v1, p1, v5}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    .line 40
    :goto_4
    iget-object v1, p0, Lcaf/io/h;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->L()Z

    move-result v1

    const/16 v5, 0x2d0

    if-eqz v1, :cond_8

    .line 41
    iget-object v1, p0, Lcaf/io/h;->i:Landroidx/camera/core/VideoCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcaf/io/h;->i:Landroidx/camera/core/VideoCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lt v1, v5, :cond_6

    iget-object v1, p0, Lcaf/io/h;->i:Landroidx/camera/core/VideoCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ge v1, v5, :cond_8

    .line 42
    :cond_6
    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 43
    new-instance v1, Landroidx/camera/core/VideoCapture$Builder;

    invoke-direct {v1}, Landroidx/camera/core/VideoCapture$Builder;-><init>()V

    iget-object v8, p0, Lcaf/io/h;->d:Landroidx/camera/view/PreviewView;

    .line 44
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {v1, v8}, Landroidx/camera/core/VideoCapture$Builder;->setTargetRotation(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    iget-object v8, p0, Lcaf/io/h;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    .line 45
    invoke-virtual {v8}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c()Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    move-result-object v8

    check-cast v8, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;

    if-eqz v8, :cond_7

    .line 46
    invoke-virtual {v8}, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->getBitRate()I

    move-result v6

    .line 47
    :cond_7
    invoke-virtual {v1, v6}, Landroidx/camera/core/VideoCapture$Builder;->setBitRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroidx/camera/core/VideoCapture$Builder;->build()Landroidx/camera/core/VideoCapture;

    move-result-object v1

    iput-object v1, p0, Lcaf/io/h;->i:Landroidx/camera/core/VideoCapture;

    .line 49
    iget-object v6, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    check-cast v6, Landroidx/lifecycle/LifecycleOwner;

    new-array v8, v7, [Landroidx/camera/core/UseCase;

    aput-object v3, v8, v2

    aput-object v1, v8, v4

    invoke-virtual {v0, v6, p1, v8}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    .line 50
    :cond_8
    iget-object v1, p0, Lcaf/io/h;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->C()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 51
    sget-object v1, Lcaf/io/h;->a:Landroidx/camera/core/ImageCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_a

    sget-object v1, Lcaf/io/h;->a:Landroidx/camera/core/ImageCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lt v1, v5, :cond_9

    sget-object v1, Lcaf/io/h;->a:Landroidx/camera/core/ImageCapture;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ge v1, v5, :cond_a

    .line 52
    :cond_9
    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 53
    new-instance v1, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v1}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    .line 54
    invoke-virtual {v1, v2}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v7}, Landroidx/camera/core/ImageCapture$Builder;->setFlashMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    iget-object v5, p0, Lcaf/io/h;->d:Landroidx/camera/view/PreviewView;

    .line 56
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/ImageCapture$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    move-result-object v1

    sput-object v1, Lcaf/io/h;->a:Landroidx/camera/core/ImageCapture;

    .line 58
    iget-object v5, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    check-cast v5, Landroidx/lifecycle/LifecycleOwner;

    new-array v6, v7, [Landroidx/camera/core/UseCase;

    aput-object v3, v6, v2

    aput-object v1, v6, v4

    invoke-virtual {v0, v5, p1, v6}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    .line 59
    :cond_a
    iget-object p1, p0, Lcaf/io/h;->e:Lcaf/io/i;

    check-cast p1, Lcaf/io/L;

    invoke-virtual {p1}, Lcaf/io/L;->p()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 60
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    iget-object v0, p0, Lcaf/io/h;->e:Lcaf/io/i;

    check-cast v0, Lcaf/io/L;

    invoke-virtual {v0, p1}, Lcaf/io/L;->b(Ljava/lang/Exception;)V

    :goto_6
    return-void
.end method

.method static synthetic e(Lcaf/io/h;)I
    .locals 2

    .line 1
    iget v0, p0, Lcaf/io/h;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcaf/io/h;->j:I

    return v0
.end method

.method static synthetic f(Lcaf/io/h;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcaf/io/h;)Landroidx/camera/core/VideoCapture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/h;->i:Landroidx/camera/core/VideoCapture;

    return-object p0
.end method

.method static synthetic h(Lcaf/io/h;)Lcaf/io/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/h;->e:Lcaf/io/i;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v0}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    iget v1, p0, Lcaf/io/h;->f:I

    .line 2
    invoke-virtual {v0, v1}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lcaf/io/h;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    new-instance v2, Lcaf/io/g1;

    invoke-direct {v2, p0, v0}, Lcaf/io/g1;-><init>(Lcaf/io/h;Landroidx/camera/core/CameraSelector;)V

    iget-object v0, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    .line 6
    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 7
    invoke-interface {v1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic j(Lcaf/io/h;Landroidx/camera/core/CameraSelector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcaf/io/h;->d(Landroidx/camera/core/CameraSelector;)V

    return-void
.end method

.method public static synthetic k(Lcaf/io/h;)V
    .locals 0

    invoke-direct {p0}, Lcaf/io/h;->i()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcaf/io/h;->k:Landroidx/camera/core/ImageProxy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->close()V

    :cond_0
    return-void
.end method

.method public a(Lcaf/io/i;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcaf/io/h;->e:Lcaf/io/i;

    .line 3
    iget-object p1, p0, Lcaf/io/h;->d:Landroidx/camera/view/PreviewView;

    new-instance v0, Lcaf/io/h1;

    invoke-direct {v0, p0}, Lcaf/io/h1;-><init>(Lcaf/io/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;ILcaf/io/h$f;)V
    .locals 8

    .line 8
    iget-object v0, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    const-wide v1, -0x8d03da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9
    iget-object p1, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    sget p2, Lcom/combateafraude/passivefaceliveness/R$string;->no_camera_permission:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1, v1}, Lcaf/io/h$f;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-wide v2, -0x8ea3da67cb6L

    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcaf/io/x;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    sget p2, Lcom/combateafraude/passivefaceliveness/R$string;->error_700:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1, v1}, Lcaf/io/h$f;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/VideoCapture$OutputFileOptions;

    move-result-object v0

    .line 13
    new-instance v7, Lcaf/io/h$b;

    int-to-long v1, p2

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcaf/io/h$b;-><init>(Lcaf/io/h;JJ)V

    .line 14
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 15
    iget-object p2, p0, Lcaf/io/h;->i:Landroidx/camera/core/VideoCapture;

    iget-object v1, p0, Lcaf/io/h;->h:Ljava/util/concurrent/Executor;

    new-instance v2, Lcaf/io/h$c;

    invoke-direct {v2, p0, p3, p1}, Lcaf/io/h$c;-><init>(Lcaf/io/h;Lcaf/io/h$f;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, v2}, Landroidx/camera/core/VideoCapture;->startRecording(Landroidx/camera/core/VideoCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcaf/io/h$e;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-wide v1, -0x8cc3da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcaf/io/x;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-interface {p2, p1}, Lcaf/io/h$e;->a(Landroidx/camera/core/ImageCaptureException;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v0

    .line 7
    sget-object v1, Lcaf/io/h;->a:Landroidx/camera/core/ImageCapture;

    iget-object v2, p0, Lcaf/io/h;->h:Ljava/util/concurrent/Executor;

    new-instance v3, Lcaf/io/h$a;

    invoke-direct {v3, p0, p1, p2}, Lcaf/io/h$a;-><init>(Lcaf/io/h;Ljava/lang/String;Lcaf/io/h$e;)V

    invoke-virtual {v1, v0, v2, v3}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/h;->d:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 9
    iget-object v0, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide v1, -0x90c3da67cb6L

    .line 10
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide v1, -0x90c3da67cb6L

    .line 2
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide v1, -0x8ee3da67cb6L

    .line 4
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcaf/io/h;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide v1, -0x8ee3da67cb6L

    .line 3
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 4

    .line 2
    iget v0, p0, Lcaf/io/h;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput v0, p0, Lcaf/io/h;->f:I

    .line 4
    :try_start_0
    iget-object v0, p0, Lcaf/io/h;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 5
    iget-object v0, p0, Lcaf/io/h;->g:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->shutdown()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    invoke-direct {p0}, Lcaf/io/h;->i()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 7
    :goto_1
    sget-object v1, Lcaf/io/t;->F:Lcaf/io/t;

    new-instance v2, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v3, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v3, v1, v2}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
