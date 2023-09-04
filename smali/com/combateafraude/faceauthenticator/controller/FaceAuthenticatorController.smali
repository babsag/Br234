.class public Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;
.super Ljava/lang/Object;
.source "FaceAuthenticatorController.java"

# interfaces
.implements Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

.field private final b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

.field private final c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

.field private final d:Lcom/combateafraude/faceauthenticator/controller/audio/AudioHelper;

.field private final e:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

.field private final f:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

.field private g:Lcom/combateafraude/faceauthenticator/controller/server/Server;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/combateafraude/faceauthenticator/controller/server/Server<",
            "Lcom/combateafraude/faceauthenticator/controller/server/api/MobileApi;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:I

.field private final j:Landroid/os/Handler;

.field private k:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

.field private l:Landroidx/camera/core/ImageProxy;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

.field private p:J

.field private q:I

.field r:Z

.field s:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->h:Z

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    .line 5
    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 6
    iput-wide v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J

    .line 7
    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->o:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    .line 8
    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->r:Z

    .line 9
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/d;

    invoke-direct {v2, p0}, Lcom/combateafraude/faceauthenticator/controller/d;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->s:Ljava/lang/Thread;

    .line 10
    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    .line 11
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    .line 12
    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 14
    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/audio/AudioHelper;

    invoke-direct {v1, p1}, Lcom/combateafraude/faceauthenticator/controller/audio/AudioHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->d:Lcom/combateafraude/faceauthenticator/controller/audio/AudioHelper;

    .line 15
    iget-object v1, p3, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->closeButton:Lcom/combateafraude/faceauthenticator/controller/utils/SingleLiveEvent;

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/b;

    invoke-direct {v2, p1}, Lcom/combateafraude/faceauthenticator/controller/b;-><init>(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;)V

    invoke-virtual {v1, p1, v2}, Lcom/combateafraude/faceauthenticator/controller/utils/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 16
    iget-object v1, p3, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->takePhotoButton:Lcom/combateafraude/faceauthenticator/controller/utils/SingleLiveEvent;

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/a;

    invoke-direct {v2, p0}, Lcom/combateafraude/faceauthenticator/controller/a;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    invoke-virtual {v1, p1, v2}, Lcom/combateafraude/faceauthenticator/controller/utils/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 17
    iget-object v1, p3, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->switchCamera:Lcom/combateafraude/faceauthenticator/controller/utils/SingleLiveEvent;

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/k;

    invoke-direct {v2, p0}, Lcom/combateafraude/faceauthenticator/controller/k;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    invoke-virtual {v1, p1, v2}, Lcom/combateafraude/faceauthenticator/controller/utils/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 18
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->with(Landroid/content/Context;)Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->setDebug(Z)Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->setCheckTelephony(Z)Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;

    move-result-object v1

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/e;

    invoke-direct {v2, p0, p2, p1}, Lcom/combateafraude/faceauthenticator/controller/e;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;)V

    invoke-virtual {v1, v2}, Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector;->detect(Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;)V

    .line 19
    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    new-instance v1, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    invoke-direct {v1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;-><init>()V

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setPerformanceMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setClassificationMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->enableTracking()Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->build()Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->k:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    .line 25
    :cond_0
    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    sget v2, Lcom/combateafraude/faceauthenticator/R$id;->cameraImageView:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/camera/view/PreviewView;

    invoke-direct {v1, p1, v2, p0, p2}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;-><init>(Landroid/app/Activity;Landroidx/camera/view/PreviewView;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelperCallback;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)V

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->e:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    .line 26
    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getSensorStabilitySettings()Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1, p2}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;-><init>(Landroid/content/Context;Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)V

    iput-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->f:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    .line 27
    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isSwitchCameraButton()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->hasFrontCamera()Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setEnableSwitchCamera(Z)V

    .line 29
    invoke-virtual {p3, v0}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setSwitchCameraButtonVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p3, p1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setEnableSwitchCamera(Z)V

    .line 31
    invoke-virtual {p3, p1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setSwitchCameraButtonVisibility(Z)V

    :goto_0
    return-void
.end method

.method private A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/utils/TamperUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isUseDebug()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1f4

    .line 2
    iput v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v3}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getAppSignature()I

    move-result v3

    invoke-static {v0, v3}, Lcom/combateafraude/faceauthenticator/controller/utils/TamperUtils;->isTampered(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isCheckAppSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x258

    .line 4
    iput v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 6
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/l;

    invoke-direct {v1, p0}, Lcom/combateafraude/faceauthenticator/controller/l;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->o()V

    :goto_1
    return-void
.end method

.method public static synthetic B(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->k(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic C(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->f(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic D(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->y()V

    return-void
.end method

.method public static synthetic E(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->t()V

    return-void
.end method

.method public static synthetic F(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->g(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Z)V

    return-void
.end method

.method public static synthetic G(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic H(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Lcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->h(Lcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic I(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->i(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic J(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->w()V

    return-void
.end method

.method public static synthetic K(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->z()V

    return-void
.end method

.method public static synthetic L(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->r(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic M(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->x()V

    return-void
.end method

.method static synthetic a(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->i:I

    return p1
.end method

.method static synthetic b(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    return-object p0
.end method

.method static synthetic c(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;)Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->o:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    return-object p1
.end method

.method static synthetic d(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m:Ljava/lang/String;

    return-object p1
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    sget-object v2, Lcom/combateafraude/faceauthenticator/controller/utils/CaptureMode;->MANUAL:Lcom/combateafraude/faceauthenticator/controller/utils/CaptureMode;

    invoke-virtual {v0, v2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setCaptureModeStatus(Lcom/combateafraude/faceauthenticator/controller/utils/CaptureMode;)V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 5
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->SUCCESS:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    return-void
.end method

.method private static synthetic f(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Ljava/lang/Void;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method private g(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isUseEmulator()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance p3, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;

    sget v1, Lcom/combateafraude/faceauthenticator/R$string;->error_100_message:I

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {p3, v1, v2}, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, p3}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    invoke-virtual {p2, p1, v0}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/scottyab/rootbeer/RootBeer;

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-direct {p1, p2}, Lcom/scottyab/rootbeer/RootBeer;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Lcom/scottyab/rootbeer/RootBeer;->isRooted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isUseRoot()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    new-instance p2, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance p3, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;

    sget v1, Lcom/combateafraude/faceauthenticator/R$string;->error_200_message:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-direct {p3, v1, v2}, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, p3}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    invoke-virtual {p1, p2, v0}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->A()V

    :goto_0
    return-void
.end method

.method private synthetic h(Lcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l(Ljava/util/List;Lcom/google/mlkit/vision/common/InputImage;)V

    return-void
.end method

.method private synthetic i(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->processFailure()V

    return-void
.end method

.method private synthetic j(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getRequestTimeout()I

    move-result v1

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-static {p1, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/server/utils/UploadHelper;->upload(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->UPLOAD_IMAGE:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/UploadImageEvent;

    invoke-direct {v2}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/UploadImageEvent;-><init>()V

    invoke-static {v1, v2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 3
    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceAuthParam;

    sget-object v2, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->Companion:Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;

    invoke-virtual {v2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;->getTrackingId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v4}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getPeopleId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/Device;

    iget-object v6, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-direct {v5, v6}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/Device;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v3, v4, v5}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceAuthParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/Device;)V

    .line 4
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getStage()Lcom/combateafraude/faceauthenticator/input/CafStage;

    move-result-object p1

    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/controller/utils/Enviroment;->getAuthenticationPath(Lcom/combateafraude/faceauthenticator/input/CafStage;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->g:Lcom/combateafraude/faceauthenticator/controller/server/Server;

    invoke-virtual {v3}, Lcom/combateafraude/faceauthenticator/controller/server/Server;->getInterface()Lcom/combateafraude/faceauthenticator/controller/server/api/Api;

    move-result-object v3

    check-cast v3, Lcom/combateafraude/faceauthenticator/controller/server/api/MobileApi;

    const/4 v4, 0x0

    aget-object v5, p1, v4

    const/4 v6, 0x1

    aget-object p1, p1, v6

    iget-object v7, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v7}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMobileToken()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, p1, v7, v1}, Lcom/combateafraude/faceauthenticator/controller/server/api/MobileApi;->faceAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceAuthParam;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1, v4}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 8
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->finishPost()V

    .line 9
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;

    .line 10
    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->getOpenEyesProbability()D

    move-result-wide v3

    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getOpenEyesThreshold()D

    move-result-wide v7

    cmpg-double p1, v3, v7

    if-gez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v6}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 13
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;->EYES_CLOSED_FAILURE:Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;

    invoke-virtual {p1, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;)V

    .line 14
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object p1

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {p1, v1}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getEyesClosedMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q(Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v2, v3}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getEyesClosedMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    return-void

    .line 16
    :cond_0
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_FINISHED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v3, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-wide v7, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->p:J

    sub-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;-><init>(Ljava/lang/Long;)V

    invoke-static {p1, v3}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 17
    new-instance p1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->isMatch()Z

    move-result v3

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->getSignedResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->i:I

    invoke-direct {p1, v3, v4, v2, v5}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 18
    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->isMatch()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->AUTHENTICATION_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    invoke-static {v1, v0}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v1, p1, v0}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Exceeded attempts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x2bc

    .line 21
    iput p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q:I

    .line 22
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->o()V

    goto :goto_0

    .line 23
    :cond_3
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 24
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 25
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->ERROR:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 26
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result p1

    const-wide/16 v1, 0x7d0

    if-eqz p1, :cond_4

    .line 28
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 29
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->j:Landroid/os/Handler;

    new-instance v3, Lcom/combateafraude/faceauthenticator/controller/c;

    invoke-direct {v3, p0}, Lcom/combateafraude/faceauthenticator/controller/c;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 30
    :cond_4
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->j:Landroid/os/Handler;

    new-instance v3, Lcom/combateafraude/faceauthenticator/controller/j;

    invoke-direct {v3, p0}, Lcom/combateafraude/faceauthenticator/controller/j;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    :goto_0
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v6}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStepDoneSuccessfullyStatus(Z)V

    goto/16 :goto_4

    .line 32
    :cond_5
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_6

    .line 33
    new-instance p1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v1, Lcom/combateafraude/faceauthenticator/output/failure/InvalidFaceReason;

    const-string v2, "N\u00e3o foi encontrado registro facial para este peopleId"

    invoke-direct {v1, v2}, Lcom/combateafraude/faceauthenticator/output/failure/InvalidFaceReason;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    .line 34
    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->FACE_NOT_FOUND:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/FaceNotFoundEvent;

    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v3}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getPeopleId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/FaceNotFoundEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    goto :goto_2

    .line 35
    :cond_6
    new-instance v1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v2, Lcom/combateafraude/faceauthenticator/output/failure/ServerReason;

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-static {v3}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ServerUnsuccessful;->createFromJSON(Lokhttp3/ResponseBody;)Lcom/combateafraude/faceauthenticator/controller/server/model/response/ServerUnsuccessful;

    move-result-object v3

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/combateafraude/faceauthenticator/output/failure/ServerReason;-><init>(Lcom/combateafraude/faceauthenticator/controller/server/model/response/ServerUnsuccessful;I)V

    invoke-direct {v1, v2}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    .line 36
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_7

    .line 37
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SERVER_DOWN:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    invoke-static {p1, v0}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    goto :goto_1

    .line 38
    :cond_7
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SERVER_ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v2, v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;)V

    invoke-static {p1, v2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    :goto_1
    move-object p1, v1

    .line 39
    :goto_2
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v1, p1, v0}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 40
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    new-instance v1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v2, Lcom/combateafraude/faceauthenticator/output/failure/NetworkReason;

    invoke-direct {v2, p1}, Lcom/combateafraude/faceauthenticator/output/failure/NetworkReason;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    .line 42
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->NETWORK_ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v2, v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;)V

    invoke-static {p1, v2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 43
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {p1, v1, v0}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :goto_4
    return-void
.end method

.method private synthetic k(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->onClickTakePicture()V

    return-void
.end method

.method private declared-synchronized l(Ljava/util/List;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/face/Face;",
            ">;",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result v0

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/utils/Utils;->isRotated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result v0

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result v1

    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/utils/Utils;->isRotated(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result p2

    .line 3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_10

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/face/Face;

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v5

    .line 6
    invoke-static {v0, p2}, Lcom/combateafraude/faceauthenticator/controller/utils/Utils;->getMaskRect(II)Landroid/graphics/Rect;

    move-result-object p2

    .line 7
    invoke-virtual {p2, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    const-wide/16 v7, 0x3e8

    if-eqz v6, :cond_e

    .line 8
    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-double v5, p2

    const-wide v9, 0x3fd999999999999aL    # 0.4

    cmpg-double p2, v5, v9

    if-gez p2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object p2

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {p2, v0}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getFaceTooFarMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->NORMAL:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 11
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v4}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 12
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    sget-object p2, Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;->FRAMING_FAILURE:Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;)V

    .line 13
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->j:Landroid/os/Handler;

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/m;

    invoke-direct {v0, p2}, Lcom/combateafraude/faceauthenticator/controller/m;-><init>(Landroidx/camera/core/ImageProxy;)V

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    :cond_2
    iput-wide v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 15
    :cond_3
    :try_start_1
    sget-object p2, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->SUCCESS:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, p2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 16
    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->f:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->isValid()Z

    move-result p2

    if-nez p2, :cond_5

    .line 17
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->f:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->getInvalidMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 18
    iput-wide v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J

    .line 19
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v4}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 20
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    sget-object p2, Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;->SENSOR_STABILITY_FAILURE:Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;)V

    .line 21
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    .line 22
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getRightEyeOpenProbability()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 23
    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getLeftEyeOpenProbability()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v5, p2

    cmpg-double p2, v5, v9

    if-gez p2, :cond_6

    float-to-double p1, p1

    cmpg-double v0, p1, v9

    if-gez v0, :cond_6

    .line 24
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object p2

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {p2, v0}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getEyesClosedMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 25
    iput-wide v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J

    .line 26
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v4}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 27
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    sget-object p2, Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;->EYES_CLOSED_FAILURE:Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;)V

    .line 28
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->j:Landroid/os/Handler;

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/m;

    invoke-direct {v0, p2}, Lcom/combateafraude/faceauthenticator/controller/m;-><init>(Landroidx/camera/core/ImageProxy;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 29
    :cond_6
    :try_start_3
    iget-wide p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_7

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J

    .line 31
    :cond_7
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object p2

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {p2, v0}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getHoldItMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/faceauthenticator/input/ImageCapture;

    .line 33
    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m:Ljava/lang/String;

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-wide v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/ImageCapture;->getBeforePictureMillis()J

    move-result-wide v5

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v2, v5

    cmp-long p2, v7, v2

    if-ltz p2, :cond_8

    const/4 p2, 0x1

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_a

    .line 35
    :cond_9
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 36
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v4}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setReadyToCaptureStatus(Z)V

    .line 37
    invoke-direct {p0, v1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 38
    :cond_a
    :try_start_4
    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m:Ljava/lang/String;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-wide v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/ImageCapture;->getBeforePictureMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/ImageCapture;->getAfterPictureMillis()J

    move-result-wide p1

    add-long/2addr v5, p1

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    add-long/2addr v2, v5

    cmp-long v0, p1, v2

    if-ltz v0, :cond_b

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_d

    .line 40
    :cond_c
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->u(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 41
    :cond_d
    :try_start_5
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    goto/16 :goto_4

    .line 42
    :cond_e
    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 43
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object p2

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {p2, v0}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getFaceTooCloseMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v4}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 45
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    sget-object p2, Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;->FRAMING_FAILURE:Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;)V

    .line 46
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->NORMAL:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 47
    iput-wide v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J

    .line 48
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->j:Landroid/os/Handler;

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/m;

    invoke-direct {v0, p2}, Lcom/combateafraude/faceauthenticator/controller/m;-><init>(Landroidx/camera/core/ImageProxy;)V

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 49
    :cond_f
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object p2

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {p2, v0}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getFaceNotFittedMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 50
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->NORMAL:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 51
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v4}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 52
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    sget-object p2, Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;->FRAMING_FAILURE:Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;)V

    .line 53
    iput-wide v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J

    .line 54
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_4

    .line 55
    :cond_10
    iput-wide v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J

    .line 56
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object p2

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {p2, v0}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getFaceNotFittedMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 57
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->NORMAL:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 58
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v4}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 59
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    sget-object p2, Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;->FRAMING_FAILURE:Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;

    invoke-virtual {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_11
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private m(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object v0

    instance-of v0, v0, Lcom/combateafraude/faceauthenticator/input/ImageCapture;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->e:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    sget v2, Lcom/combateafraude/faceauthenticator/R$string;->face_authenticator_file_caf:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;

    invoke-direct {v2, p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->savePicture(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getHoldItMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->SUCCESS:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 5
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->e:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    sget v2, Lcom/combateafraude/faceauthenticator/R$string;->face_authenticator_file_caf:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$b;

    invoke-direct {v2, p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$b;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->saveVideo(Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;)V

    :goto_0
    return-void
.end method

.method static synthetic n(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    return-object p0
.end method

.method private o()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q:I

    const/16 v1, 0x12c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x190

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x258

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2bc

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    new-instance v1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v3, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;

    sget v4, Lcom/combateafraude/faceauthenticator/R$string;->error_700_message:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q:I

    invoke-direct {v3, v4, v5}, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    invoke-virtual {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    new-instance v1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v3, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;

    sget v4, Lcom/combateafraude/faceauthenticator/R$string;->error_600_message:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q:I

    invoke-direct {v3, v4, v5}, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    invoke-virtual {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    new-instance v1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v3, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;

    sget v4, Lcom/combateafraude/faceauthenticator/R$string;->error_500_message:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q:I

    invoke-direct {v3, v4, v5}, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    invoke-virtual {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    new-instance v1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v3, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;

    sget v4, Lcom/combateafraude/faceauthenticator/R$string;->error_400_message:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q:I

    invoke-direct {v3, v4, v5}, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    invoke-virtual {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    new-instance v1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v3, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;

    sget v4, Lcom/combateafraude/faceauthenticator/R$string;->error_300_message:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q:I

    invoke-direct {v3, v4, v5}, Lcom/combateafraude/faceauthenticator/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    invoke-virtual {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :goto_0
    return-void
.end method

.method static synthetic p(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->u(Ljava/lang/String;)V

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object v0

    instance-of v0, v0, Lcom/combateafraude/faceauthenticator/input/ImageCapture;

    const/4 v1, 0x0

    const-wide/16 v2, 0x9c4

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, p1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->ERROR:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 4
    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 7
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->j:Landroid/os/Handler;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/i;

    invoke-direct {v0, p0}, Lcom/combateafraude/faceauthenticator/controller/i;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->j:Landroid/os/Handler;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/j;

    invoke-direct {v0, p0}, Lcom/combateafraude/faceauthenticator/controller/j;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, p1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->ERROR:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 11
    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->j:Landroid/os/Handler;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/j;

    invoke-direct {v0, p0}, Lcom/combateafraude/faceauthenticator/controller/j;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private r(Ljava/lang/Void;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->h:Z

    .line 3
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->e:Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper;->switchCamera()V

    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m:Ljava/lang/String;

    return-object p0
.end method

.method private t()V
    .locals 2

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->r:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/utils/HostileEnvironment;->isDevModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isUseDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12c

    .line 3
    iput v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q:I

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/utils/HostileEnvironment;->isAdbEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isUseAdb()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x190

    .line 5
    iput v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->q:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->o()V

    .line 7
    iput-boolean v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->r:Z

    :cond_2
    const-wide/16 v0, 0x3e8

    .line 8
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private u(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->c:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->o:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->startPost()V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 4
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getDoingFacematchMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/f;

    invoke-direct {v1, p0, p1}, Lcom/combateafraude/faceauthenticator/controller/f;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic v(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Landroidx/camera/core/ImageProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    return-object p0
.end method

.method private synthetic w()V
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->o:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    return-void
.end method

.method private x()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/server/Server;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getStage()Lcom/combateafraude/faceauthenticator/input/CafStage;

    move-result-object v1

    sget-object v2, Lcom/combateafraude/faceauthenticator/input/UrlType;->MOBILE_URL:Lcom/combateafraude/faceauthenticator/input/UrlType;

    invoke-static {v1, v2}, Lcom/combateafraude/faceauthenticator/controller/utils/Enviroment;->getBaseURL(Lcom/combateafraude/faceauthenticator/input/CafStage;Lcom/combateafraude/faceauthenticator/input/UrlType;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getRequestTimeout()I

    move-result v2

    const-class v3, Lcom/combateafraude/faceauthenticator/controller/server/api/MobileApi;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/combateafraude/faceauthenticator/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->g:Lcom/combateafraude/faceauthenticator/controller/server/Server;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/server/Server;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getStage()Lcom/combateafraude/faceauthenticator/input/CafStage;

    move-result-object v1

    sget-object v2, Lcom/combateafraude/faceauthenticator/input/UrlType;->MOBILE_URL:Lcom/combateafraude/faceauthenticator/input/UrlType;

    invoke-static {v1, v2}, Lcom/combateafraude/faceauthenticator/controller/utils/Enviroment;->getBaseURL(Lcom/combateafraude/faceauthenticator/input/CafStage;Lcom/combateafraude/faceauthenticator/input/UrlType;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getRequestTimeout()I

    move-result v8

    iget-object v9, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    new-instance v10, Lcom/combateafraude/faceauthenticator/controller/o;

    invoke-direct {v10, p0}, Lcom/combateafraude/faceauthenticator/controller/o;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    const-class v6, Lcom/combateafraude/faceauthenticator/controller/server/api/MobileApi;

    const/4 v11, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/combateafraude/faceauthenticator/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;Z)V

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->g:Lcom/combateafraude/faceauthenticator/controller/server/Server;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->g:Lcom/combateafraude/faceauthenticator/controller/server/Server;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/server/Server;->getInterface()Lcom/combateafraude/faceauthenticator/controller/server/api/Api;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/faceauthenticator/controller/server/api/MobileApi;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getStage()Lcom/combateafraude/faceauthenticator/input/CafStage;

    move-result-object v1

    invoke-static {v1}, Lcom/combateafraude/faceauthenticator/controller/utils/Enviroment;->getTokenPath(Lcom/combateafraude/faceauthenticator/input/CafStage;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMobileToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceAuthenticator"

    invoke-interface {v0, v1, v2, v3}, Lcom/combateafraude/faceauthenticator/controller/server/api/MobileApi;->verifyToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/n;

    invoke-direct {v1, p0}, Lcom/combateafraude/faceauthenticator/controller/n;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private synthetic y()V
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->o:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    return-void
.end method

.method private z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/utils/CaptureMode;->AUTO:Lcom/combateafraude/faceauthenticator/controller/utils/CaptureMode;

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setCaptureModeStatus(Lcom/combateafraude/faceauthenticator/controller/utils/CaptureMode;)V

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object v0

    instance-of v0, v0, Lcom/combateafraude/faceauthenticator/input/ImageCapture;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->p:J

    .line 4
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getStepName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->startStep(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->e()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->NORMAL:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->p:J

    .line 8
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getStepName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->startStep(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->e()V

    :goto_0
    return-void
.end method


# virtual methods
.method public increaseBrightness()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onCameraError(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAMERA_START_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CameraErrorEvent;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CameraErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    new-instance v0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v1, Lcom/combateafraude/faceauthenticator/output/failure/LibraryReason;

    sget v2, Lcom/combateafraude/faceauthenticator/R$string;->camera_helper_error_caf:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/combateafraude/faceauthenticator/output/failure/LibraryReason;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onCameraInitialized()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->h:Z

    return-void
.end method

.method public declared-synchronized onClickTakePicture()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->c:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->o:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setButton(Z)V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onImageAvailable(Landroidx/camera/core/ImageProxy;)V
    .locals 2
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeExperimentalUsageError, UnsafeOptInUsageError"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->o:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    .line 4
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/mlkit/vision/common/InputImage;->fromMediaImage(Landroid/media/Image;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->k:Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    invoke-static {v0}, Lcom/google/mlkit/vision/face/FaceDetection;->getClient(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/mlkit/vision/face/FaceDetector;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/face/FaceDetector;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/g;

    invoke-direct {v1, p0, p1}, Lcom/combateafraude/faceauthenticator/controller/g;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Lcom/google/mlkit/vision/common/InputImage;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/h;

    invoke-direct {v0, p0}, Lcom/combateafraude/faceauthenticator/controller/h;-><init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->f:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->onPause()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->d:Lcom/combateafraude/faceauthenticator/controller/audio/AudioHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/audio/AudioHelper;->onPause()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method protected declared-synchronized processFailure()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->o:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->f:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->f:Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;

    invoke-virtual {v2}, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorHelper;->getInvalidMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 5
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 6
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 7
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;->SENSOR_STABILITY_FAILURE:Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/faceauthenticator/controller/viewmodel/ValidationFailure;)V

    .line 8
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->NORMAL:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n:J

    .line 10
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .line 11
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 13
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 14
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->SUCCESS:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 15
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->l:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, p1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setMaskStatus(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 2
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->ERROR:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getRedMask()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setMask(I)V

    .line 3
    :cond_0
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->SUCCESS:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getGreenMask()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setMask(I)V

    .line 4
    :cond_1
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->NORMAL:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getWhiteMask()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setMask(I)V

    :cond_2
    return-void
.end method

.method protected startStep()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getAudioResId()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isEnableSound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->d:Lcom/combateafraude/faceauthenticator/controller/audio/AudioHelper;

    invoke-virtual {v1, v0}, Lcom/combateafraude/faceauthenticator/controller/audio/AudioHelper;->addAudioToQueue(I)V

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->p:J

    .line 6
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_REQUESTED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;

    invoke-direct {v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 7
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getStepName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->startStep(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/utils/Mask;->NORMAL:Lcom/combateafraude/faceauthenticator/controller/utils/Mask;

    invoke-virtual {p0, v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->setMask(Lcom/combateafraude/faceauthenticator/controller/utils/Mask;)V

    .line 9
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isGoogleServicesVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object v0

    instance-of v0, v0, Lcom/combateafraude/faceauthenticator/input/VideoCapture;

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->e()V

    :cond_2
    return-void
.end method

.method public stopSecurityValidationThread()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->r:Z

    return-void
.end method
