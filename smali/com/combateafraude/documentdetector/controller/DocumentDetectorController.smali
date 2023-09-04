.class public Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;
.super Ljava/lang/Object;
.source "DocumentDetectorController.java"

# interfaces
.implements Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;
    }
.end annotation


# static fields
.field static final synthetic a:Z = true


# instance fields
.field private A:Ljava/lang/String;

.field B:Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;

.field private C:I

.field D:Z

.field private E:I

.field private F:Z

.field G:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

.field private final c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

.field private d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

.field private e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

.field private f:Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;

.field private g:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

.field private h:Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;

.field private i:Lcom/combateafraude/documentdetector/controller/server/Server;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/combateafraude/documentdetector/controller/server/Server<",
            "Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;

.field private l:Landroidx/camera/core/ImageProxy;

.field private m:I

.field private n:I

.field private o:Lcom/combateafraude/documentdetector/controller/detection/Label;

.field private p:F

.field private final q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

.field private r:I

.field private final s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

.field private t:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

.field private u:Z

.field private final v:Landroid/os/Handler;

.field private w:Ljava/io/File;

.field private x:J

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/input/DocumentDetector;Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->n:I

    .line 3
    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    .line 4
    sget-object v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    iput-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->u:Z

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v:Landroid/os/Handler;

    .line 7
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->y:Z

    .line 8
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->z:Z

    .line 9
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->D:Z

    .line 10
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->F:Z

    .line 11
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/combateafraude/documentdetector/controller/j;

    invoke-direct {v3, p0}, Lcom/combateafraude/documentdetector/controller/j;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 12
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 13
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 15
    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getDocumentSteps()[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    move-result-object v2

    iput-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    .line 16
    new-instance v2, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getDocumentSteps()[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(I)V

    iput-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    .line 17
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->verifyStorage()V

    .line 18
    new-instance v2, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->B:Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;

    .line 19
    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    .line 21
    iget-object p3, p4, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->closeButtonUpload:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    new-instance p4, Lcom/combateafraude/documentdetector/controller/a;

    invoke-direct {p4, p1}, Lcom/combateafraude/documentdetector/controller/a;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {p3, p1, p4}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iget-object p3, p3, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->tryAgainUpload:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    new-instance p4, Lcom/combateafraude/documentdetector/controller/r;

    invoke-direct {p4, p1}, Lcom/combateafraude/documentdetector/controller/r;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {p3, p1, p4}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 23
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->E()V

    .line 24
    :try_start_0
    new-instance p3, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;

    invoke-direct {p3, p1}, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->k:Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 25
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 26
    :goto_0
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->n0()V

    goto/16 :goto_2

    .line 27
    :cond_0
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    .line 28
    new-instance p3, Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;

    invoke-direct {p3, p1}, Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->f:Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;

    .line 29
    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object p3, p3, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->closeButton:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    new-instance p4, Lcom/combateafraude/documentdetector/controller/p;

    invoke-direct {p4, p1}, Lcom/combateafraude/documentdetector/controller/p;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {p3, p1, p4}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 30
    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object p3, p3, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->takePhotoButton:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    new-instance p4, Lcom/combateafraude/documentdetector/controller/q;

    invoke-direct {p4, p0}, Lcom/combateafraude/documentdetector/controller/q;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    invoke-virtual {p3, p1, p4}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 31
    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object p3, p3, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->switchCamera:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    new-instance p4, Lcom/combateafraude/documentdetector/controller/g;

    invoke-direct {p4, p0}, Lcom/combateafraude/documentdetector/controller/g;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    invoke-virtual {p3, p1, p4}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 32
    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m:I

    .line 33
    new-instance p3, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getSensorLuminositySettings()Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;

    move-result-object v4

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getSensorOrientationSettings()Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;

    move-result-object v5

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getSensorStabilitySettings()Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;

    move-result-object v6

    move-object v2, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;-><init>(Landroid/content/Context;Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/input/DocumentDetector;)V

    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->h:Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;

    .line 34
    new-instance p3, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    sget p4, Lcom/combateafraude/documentdetector/R$id;->cameraImageView:I

    invoke-virtual {p1, p4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/camera/view/PreviewView;

    invoke-direct {p3, p1, p4, p0, p2}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;-><init>(Landroid/app/Activity;Landroidx/camera/view/PreviewView;Lcom/combateafraude/documentdetector/controller/camera/CameraHelperCallback;Lcom/combateafraude/documentdetector/input/DocumentDetector;)V

    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->g:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    .line 35
    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isSwitchCameraButton()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 36
    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object p4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->g:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    invoke-virtual {p4}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->hasFrontAndBackCamera()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setEnableSwitchCamera(Z)V

    goto :goto_1

    .line 37
    :cond_1
    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {p3, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setEnableSwitchCamera(Z)V

    .line 38
    :goto_1
    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isAutoDetection()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 39
    :try_start_1
    new-instance p3, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;

    invoke-direct {p3, p1}, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->k:Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p3

    .line 40
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 41
    new-instance p3, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance p4, Lcom/combateafraude/documentdetector/output/failure/LibraryReason;

    sget v0, Lcom/combateafraude/documentdetector/R$string;->image_classifier_fail_caf:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/combateafraude/documentdetector/output/failure/LibraryReason;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p4}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    .line 42
    new-instance p4, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {p4, p3}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    invoke-virtual {p1, p3, p4}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    .line 43
    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;->with(Landroid/content/Context;)Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;->setCheckTelephony(Z)Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;->setDebug(Z)Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;

    move-result-object p3

    new-instance p4, Lcom/combateafraude/documentdetector/controller/i;

    invoke-direct {p4, p0, p2, p1}, Lcom/combateafraude/documentdetector/controller/i;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Lcom/combateafraude/documentdetector/input/DocumentDetector;Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {p3, p4}, Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector;->detect(Lcom/combateafraude/documentdetector/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;)V

    return-void
.end method

.method private static synthetic A(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/Void;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method static synthetic B(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o(Ljava/lang/String;)V

    return-void
.end method

.method private C(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getAllowedPassportCountriesList()[Lcom/combateafraude/documentdetector/input/CountryCodesList;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 3
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method static synthetic D(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    return-object p0
.end method

.method private E()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isUseGoogleServicesVersion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/combateafraude/documentdetector/controller/server/Server;

    iget-object v2, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getRequestTimeout()I

    move-result v5

    iget-object v6, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v2, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getProxySettings()Lcom/combateafraude/documentdetector/input/ProxySettings;

    move-result-object v7

    const-class v3, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;

    const/4 v8, 0x1

    const-string v4, "https://api.mobile.combateafraude.com"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/combateafraude/documentdetector/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;ILandroid/content/Context;Lcom/combateafraude/documentdetector/input/ProxySettings;Z)V

    iput-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i:Lcom/combateafraude/documentdetector/controller/server/Server;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/combateafraude/documentdetector/controller/server/Server;

    iget-object v2, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getRequestTimeout()I

    move-result v12

    iget-object v2, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getProxySettings()Lcom/combateafraude/documentdetector/input/ProxySettings;

    move-result-object v13

    iget-object v14, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    new-instance v15, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$b;

    invoke-direct {v15, v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$b;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    const-class v10, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;

    const/16 v16, 0x1

    const-string v11, "https://api.mobile.combateafraude.com"

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/combateafraude/documentdetector/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;ILcom/combateafraude/documentdetector/input/ProxySettings;Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;Z)V

    iput-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i:Lcom/combateafraude/documentdetector/controller/server/Server;

    :goto_0
    return-void
.end method

.method private synthetic F(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v0, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->review(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    return-wide v0
.end method

.method private synthetic H(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i:Lcom/combateafraude/documentdetector/controller/server/Server;

    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/controller/server/Server;->getInterface()Lcom/combateafraude/documentdetector/controller/server/api/Api;

    move-result-object v3

    check-cast v3, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;

    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMobileToken()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentQualityParam;

    iget-object v6, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    invoke-virtual {v6}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentQualityParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;->verifyQuality(Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentQualityParam;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i:Lcom/combateafraude/documentdetector/controller/server/Server;

    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/controller/server/Server;->getInterface()Lcom/combateafraude/documentdetector/controller/server/api/Api;

    move-result-object v3

    check-cast v3, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;

    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMobileToken()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentQualityParam;

    invoke-direct {v5, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentQualityParam;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;->verifyQuality(Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentQualityParam;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 5
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->QUALITY_VERIFIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/QualityVerifiedEvent;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/QualityVerifiedEvent;-><init>(Ljava/lang/Long;Ljava/lang/Double;)V

    invoke-static {v1, v2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 7
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 10
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    sget-object v1, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->QUALITY_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    invoke-virtual {p1, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    .line 11
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SERVER_DOWN:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    invoke-static {p1, v0}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 12
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object p1

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p1, v1}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getLowQualityDocumentMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->N(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_2
    new-instance v1, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v2, Lcom/combateafraude/documentdetector/output/failure/ServerReason;

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-static {v3}, Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;->createFromJSON(Lokhttp3/ResponseBody;)Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;

    move-result-object v3

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    invoke-direct {v2, v3, p1}, Lcom/combateafraude/documentdetector/output/failure/ServerReason;-><init>(Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;I)V

    invoke-direct {v1, v2}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    .line 14
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SERVER_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v2, v1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    invoke-static {p1, v2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 15
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p1, v1, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    new-instance v1, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v2, Lcom/combateafraude/documentdetector/output/failure/NetworkReason;

    invoke-direct {v2, p1}, Lcom/combateafraude/documentdetector/output/failure/NetworkReason;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    .line 18
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->NETWORK_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v2, v1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    invoke-static {p1, v2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 19
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p1, v1, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    .line 20
    :goto_1
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method private I()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/utils/TamperUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isUseDebug()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1f4

    .line 2
    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->C:I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getAppSignature()I

    move-result v2

    invoke-static {v0, v2}, Lcom/combateafraude/documentdetector/controller/utils/TamperUtils;->isTampered(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isCheckAppSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x258

    .line 4
    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->C:I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic J(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->g:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    return-object p0
.end method

.method private synthetic K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getDocumentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic L(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v0, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->review(Ljava/lang/String;)V

    return-void
.end method

.method private M()V
    .locals 2

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->D:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/utils/HostileEnvironment;->isDevModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isUseDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12c

    .line 3
    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->C:I

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/utils/HostileEnvironment;->isAdbEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isUseAdb()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x190

    .line 5
    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->C:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t()V

    .line 7
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->D:Z

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

.method private N(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, p1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object p1, p1, v0

    .line 3
    sget-object v0, Lcom/combateafraude/documentdetector/controller/utils/Mask;->ERROR:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-virtual {p0, v0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setMask(Lcom/combateafraude/documentdetector/controller/utils/Mask;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 4
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 5
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v:Landroid/os/Handler;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/k;

    invoke-direct {v0, p0}, Lcom/combateafraude/documentdetector/controller/k;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v:Landroid/os/Handler;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/d;

    invoke-direct {v0, p0}, Lcom/combateafraude/documentdetector/controller/d;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private O()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->E()V

    .line 3
    iget-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isUseGoogleServicesVersion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v3, Lcom/combateafraude/documentdetector/controller/server/Server;

    iget-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getRequestTimeout()I

    move-result v6

    iget-object v7, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getProxySettings()Lcom/combateafraude/documentdetector/input/ProxySettings;

    move-result-object v8

    const-class v4, Lcom/combateafraude/documentdetector/controller/server/api/CafApi;

    const/4 v9, 0x1

    const-string v5, "https://api.combateafraude.com"

    invoke-direct/range {v3 .. v9}, Lcom/combateafraude/documentdetector/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;ILandroid/content/Context;Lcom/combateafraude/documentdetector/input/ProxySettings;Z)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v10, Lcom/combateafraude/documentdetector/controller/server/Server;

    iget-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getRequestTimeout()I

    move-result v13

    iget-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getProxySettings()Lcom/combateafraude/documentdetector/input/ProxySettings;

    move-result-object v14

    iget-object v15, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/t;

    invoke-direct {v1, v0}, Lcom/combateafraude/documentdetector/controller/t;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    const-class v11, Lcom/combateafraude/documentdetector/controller/server/api/CafApi;

    const/16 v17, 0x1

    const-string v12, "https://api.combateafraude.com"

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Lcom/combateafraude/documentdetector/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;ILcom/combateafraude/documentdetector/input/ProxySettings;Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;Z)V

    .line 6
    :goto_0
    iget-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isShowPopup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    invoke-direct {v0, v1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->h(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;)V

    .line 8
    iget-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v3, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v4, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->showStepDialog(Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 9
    iget-object v1, v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setPopUpVisibility(Z)V

    goto :goto_1

    .line 10
    :cond_1
    sget-object v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    invoke-direct {v0, v1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->h(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;)V

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m0()V

    :goto_1
    return-void
.end method

.method private synthetic P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getDocument()Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v(Ljava/lang/String;)V

    return-void
.end method

.method private Q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->l:Landroidx/camera/core/ImageProxy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->close()V

    .line 2
    :cond_0
    sget-object v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    return-void
.end method

.method private R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v0, v0, v1

    .line 2
    sget-object v1, Lcom/combateafraude/documentdetector/controller/utils/Mask;->SUCCESS:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-virtual {p0, v1, v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setMask(Lcom/combateafraude/documentdetector/controller/utils/Mask;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 5
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 6
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->l:Landroidx/camera/core/ImageProxy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->close()V

    :cond_0
    return-void
.end method

.method private S()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setBitmapToPreview(ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic T(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->g(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic U(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->O()V

    return-void
.end method

.method public static synthetic V(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->P()V

    return-void
.end method

.method public static synthetic W(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->S()V

    return-void
.end method

.method public static synthetic X(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->L(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Y(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->z()V

    return-void
.end method

.method public static synthetic Z(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->w(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic a(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->E:I

    return p1
.end method

.method public static synthetic a0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->H(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    return-object p0
.end method

.method public static synthetic b0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Lcom/combateafraude/documentdetector/input/DocumentDetector;Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m(Lcom/combateafraude/documentdetector/input/DocumentDetector;Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Z)V

    return-void
.end method

.method static synthetic c(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;)Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    return-object p1
.end method

.method public static synthetic c0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->M()V

    return-void
.end method

.method private d(Landroid/graphics/Bitmap;Z)Lcom/combateafraude/documentdetector/controller/detection/Recognition;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/utils/Utils;->cropDocument(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->k:Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;

    invoke-virtual {p2, p1}, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->recognizeImage(Landroid/graphics/Bitmap;)Lcom/combateafraude/documentdetector/controller/detection/Recognition;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic d0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->Q()V

    return-void
.end method

.method private e(Lcom/combateafraude/documentdetector/input/CaptureStage;Lcom/combateafraude/documentdetector/controller/detection/Recognition;)Lcom/combateafraude/documentdetector/input/Document;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScannedLabel(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/detection/Label;

    move-result-object v0

    invoke-static {v0}, Lcom/combateafraude/documentdetector/input/Document;->containsLabel(Lcom/combateafraude/documentdetector/controller/detection/Label;)Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->getConfidence()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getDetectionSettings()Lcom/combateafraude/documentdetector/input/DetectionSettings;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/combateafraude/documentdetector/input/DetectionSettings;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DetectionSettings;->getThreshold()D

    move-result-wide p1

    cmpl-double v3, v1, p1

    if-ltz v3, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic e0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->K()V

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->z:Z

    .line 2
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 4
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v0, v0, v1

    .line 5
    sget-object v1, Lcom/combateafraude/documentdetector/controller/utils/Mask;->SUCCESS:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-virtual {p0, v1, v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setMask(Lcom/combateafraude/documentdetector/controller/utils/Mask;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    return-void
.end method

.method public static synthetic f0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->p(Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic g(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->closeUploadSDK()V

    return-void
.end method

.method public static synthetic g0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->R()V

    return-void
.end method

.method private h(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i:Lcom/combateafraude/documentdetector/controller/server/Server;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/Server;->getInterface()Lcom/combateafraude/documentdetector/controller/server/api/Api;

    move-result-object v2

    check-cast v2, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;

    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMobileToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DocumentDetector"

    invoke-interface {v2, v3, v4}, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;->verifyToken(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    new-instance v3, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;JLcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static synthetic h0(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->A(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/Void;)V

    return-void
.end method

.method static i(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    sget-object v1, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->PASSPORT_COUNTRY_CODE_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->N(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v2, Lcom/combateafraude/documentdetector/R$string;->uploadPopupGenericError:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v2, Lcom/combateafraude/documentdetector/R$string;->uploadPopuptryAgain:I

    .line 7
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {v0, v1, p1, p0}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->setError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic i0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q(Ljava/lang/Void;)V

    return-void
.end method

.method static j(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d(Landroid/graphics/Bitmap;Z)Lcom/combateafraude/documentdetector/controller/detection/Recognition;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->getConfidence()F

    move-result v3

    iput v3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->p:F

    .line 5
    invoke-direct {p0, p2, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e(Lcom/combateafraude/documentdetector/input/CaptureStage;Lcom/combateafraude/documentdetector/controller/detection/Recognition;)Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object p2

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p2, v2}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getFitTheDocumentMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 9
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    sget-object p2, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->FRAMING_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    invoke-virtual {p1, p2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    .line 10
    sget-object p1, Lcom/combateafraude/documentdetector/controller/utils/Mask;->ERROR:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-virtual {p0, p1, v3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setMask(Lcom/combateafraude/documentdetector/controller/utils/Mask;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 11
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object p1

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p1, p2}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getFitTheDocumentMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->N(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v4, v5}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setBitmapToPreview(ZLandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getDocument()Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v6

    if-ne v2, v6, :cond_1

    .line 14
    invoke-virtual {p0, p1, p2, v5}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->startRequest(Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v2, p2}, Lcom/combateafraude/documentdetector/input/Document;->getWrongDocumentFoundMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 17
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    sget-object p2, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->TYPIFICATION_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    invoke-virtual {p1, p2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    .line 18
    sget-object p1, Lcom/combateafraude/documentdetector/controller/utils/Mask;->ERROR:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-virtual {p0, p1, v3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setMask(Lcom/combateafraude/documentdetector/controller/utils/Mask;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 19
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v2, p1}, Lcom/combateafraude/documentdetector/input/Document;->getWrongDocumentFoundMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->N(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v4, v5}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setBitmapToPreview(ZLandroid/graphics/Bitmap;)V

    .line 21
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_2

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method public static synthetic j0(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->u(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/Void;)V

    return-void
.end method

.method private k(Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;[Lcom/combateafraude/documentdetector/output/Capture;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v2, Lcom/combateafraude/documentdetector/R$string;->verifying_passport_country:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->checkOcr(Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;[Lcom/combateafraude/documentdetector/output/Capture;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic k0(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->F(Ljava/lang/String;)V

    return-void
.end method

.method private l(Lcom/combateafraude/documentdetector/input/CaptureStage;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->g:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v3, Lcom/combateafraude/documentdetector/R$string;->document_caf:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->w:Ljava/io/File;

    new-instance v3, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;

    invoke-direct {v3, p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->savePicture(Ljava/lang/String;Ljava/io/File;ZLcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;)V

    return-void
.end method

.method private l0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/b;

    invoke-direct {v1, p0}, Lcom/combateafraude/documentdetector/controller/b;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t()V

    :goto_0
    return-void
.end method

.method private m(Lcom/combateafraude/documentdetector/input/DocumentDetector;Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isUseEmulator()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance p3, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;

    sget v1, Lcom/combateafraude/documentdetector/R$string;->error_100_message:I

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {p3, v1, v2}, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, p3}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    invoke-virtual {p2, p1, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/scottyab/rootbeer/RootBeer;

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-direct {p1, p2}, Lcom/scottyab/rootbeer/RootBeer;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Lcom/scottyab/rootbeer/RootBeer;->isRooted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isUseRoot()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    new-instance p2, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance p3, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;

    sget v1, Lcom/combateafraude/documentdetector/R$string;->error_200_message:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-direct {p3, v1, v2}, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, p3}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    invoke-virtual {p1, p2, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->I()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->h(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t()V

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->l0()V

    :goto_0
    return-void
.end method

.method private m0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getCaptureStages()[Lcom/combateafraude/documentdetector/input/CaptureStage;

    move-result-object v0

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m:I

    aget-object v0, v0, v1

    .line 2
    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getDurationMillis()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v:Landroid/os/Handler;

    new-instance v2, Lcom/combateafraude/documentdetector/controller/f;

    invoke-direct {v2, p0}, Lcom/combateafraude/documentdetector/controller/f;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getDurationMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private n(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ExpiresIn"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v2, Lcom/combateafraude/documentdetector/output/failure/ServerReason;

    new-instance v3, Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;

    invoke-direct {v3, v0}, Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x190

    invoke-direct {v2, v3, v0}, Lcom/combateafraude/documentdetector/output/failure/ServerReason;-><init>(Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;I)V

    invoke-direct {v1, v2}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    .line 4
    sget-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SERVER_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v2, v1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    invoke-static {v0, v2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v0, Lcom/combateafraude/documentdetector/output/failure/NetworkReason;

    invoke-direct {v0, p1}, Lcom/combateafraude/documentdetector/output/failure/NetworkReason;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v1, v0}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    .line 6
    sget-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->NETWORK_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    invoke-direct {v2, v3}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    invoke-static {v0, v2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method private n0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v0, v0, v1

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    .line 3
    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_REQUESTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;

    sget-object v3, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->UPLOAD:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getCaptureStages()[Lcom/combateafraude/documentdetector/input/CaptureStage;

    move-result-object v4

    iget v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m:I

    aget-object v4, v4, v5

    invoke-direct {v2, v3, v0, v4}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {v1, v2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 4
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v1, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->showPopUpUpload(Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 5
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getStepLabel()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->startStep(Ljava/lang/String;)V

    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->checkPreview(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v1, Lcom/combateafraude/documentdetector/R$string;->uploadPopupSuccessMessage:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->setSuccess(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v0, Lcom/combateafraude/documentdetector/controller/detection/Label;->BLANK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getDocumentType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic p(Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    const/4 v11, 0x0

    .line 1
    :try_start_0
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "passport"

    if-nez v2, :cond_10

    .line 2
    :try_start_1
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getCompressQuality()I

    move-result v3

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getRequestTimeout()I

    move-result v4

    iget-object v5, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v6, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i:Lcom/combateafraude/documentdetector/controller/server/Server;

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMobileToken()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getGetUrlExpireTime()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getProxySettings()Lcom/combateafraude/documentdetector/input/ProxySettings;

    move-result-object v9

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/combateafraude/documentdetector/controller/server/utils/UploadHelper;->uploadCompressed(Ljava/lang/String;IILandroid/content/Context;Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/ProxySettings;)Ljava/lang/String;

    move-result-object v4

    .line 3
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getDocument()Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v2

    sget-object v3, Lcom/combateafraude/documentdetector/input/Document;->ANY:Lcom/combateafraude/documentdetector/input/Document;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_8

    .line 4
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->finishPost()V

    .line 5
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2, v9}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getQualitySettings()Lcom/combateafraude/documentdetector/input/QualitySettings;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1, v4}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->checkQuality(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getQualitySettings()Lcom/combateafraude/documentdetector/input/QualitySettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/combateafraude/documentdetector/input/QualitySettings;->getThreshold()D

    move-result-wide v7

    cmpg-double v12, v5, v7

    if-gez v12, :cond_0

    .line 9
    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v4, v3}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 10
    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    sget-object v4, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->QUALITY_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    .line 11
    sget-object v3, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v12, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    sget-object v5, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->CAPTURE:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v4

    iget-object v6, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v4, v6}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getLowQualityDocumentMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-wide v13, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    sub-long/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object v9

    move-object v4, v12

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {v3, v12}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 12
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v2

    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v2, v3}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getLowQualityDocumentMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->N(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v12, v2

    goto :goto_0

    :cond_1
    move-object v12, v11

    .line 13
    :goto_0
    new-instance v13, Lcom/combateafraude/documentdetector/output/Capture;

    const/4 v5, 0x0

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_2
    move-object v6, v11

    :goto_1
    iget v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->p:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->E:I

    move-object v2, v13

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/combateafraude/documentdetector/output/Capture;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;I)V

    .line 14
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->getCaptures()[Lcom/combateafraude/documentdetector/output/Capture;

    move-result-object v2

    iget v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aput-object v13, v2, v3

    .line 15
    sget-object v2, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v13, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;

    sget-object v4, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->CAPTURE:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v5, v3

    goto :goto_2

    :cond_3
    move-object v5, v11

    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-wide v14, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    sub-long/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_3

    :cond_4
    move-object v7, v11

    :goto_3
    move-object v3, v13

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {v2, v13}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 16
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getPreviewSettings()Lcom/combateafraude/documentdetector/input/PreviewSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/PreviewSettings;->isShow()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2, v9}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setCameraVisibility(Z)V

    .line 18
    invoke-virtual {v1, v9, v11}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setBitmapToPreview(ZLandroid/graphics/Bitmap;)V

    .line 19
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isShowDelay()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2, v11}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 21
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->finishStep()V

    .line 22
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v:Landroid/os/Handler;

    new-instance v3, Lcom/combateafraude/documentdetector/controller/e;

    invoke-direct {v3, v1, v10}, Lcom/combateafraude/documentdetector/controller/e;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12

    .line 23
    :cond_5
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v2, v10}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->review(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 24
    :cond_6
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isShowDelay()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 25
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2, v11}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 26
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->finishStep()V

    .line 27
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v:Landroid/os/Handler;

    new-instance v3, Lcom/combateafraude/documentdetector/controller/c;

    invoke-direct {v3, v1}, Lcom/combateafraude/documentdetector/controller/c;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12

    .line 28
    :cond_7
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getDocument()Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 29
    :cond_8
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->finishPost()V

    .line 30
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2, v9}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getQualitySettings()Lcom/combateafraude/documentdetector/input/QualitySettings;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 32
    invoke-virtual {v1, v4}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->checkQuality(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getQualitySettings()Lcom/combateafraude/documentdetector/input/QualitySettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/combateafraude/documentdetector/input/QualitySettings;->getThreshold()D

    move-result-wide v7

    cmpg-double v13, v5, v7

    if-gez v13, :cond_9

    .line 34
    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v4, v3}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 35
    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    sget-object v4, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->QUALITY_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    .line 36
    sget-object v3, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v12, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    sget-object v5, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->CAPTURE:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v4

    iget-object v6, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v4, v6}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getLowQualityDocumentMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-wide v13, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    sub-long/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object v9

    move-object v4, v12

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {v3, v12}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 37
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v2

    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v2, v3}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getLowQualityDocumentMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->N(Ljava/lang/String;)V

    return-void

    .line 38
    :cond_9
    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->checkDocument(Ljava/lang/String;)V

    move-object v13, v2

    goto :goto_4

    :cond_a
    move-object v13, v11

    .line 39
    :goto_4
    new-instance v14, Lcom/combateafraude/documentdetector/output/Capture;

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v3, Lcom/combateafraude/documentdetector/controller/detection/Label;->BLANK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    if-eq v2, v3, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_5

    :cond_b
    move-object v5, v11

    :goto_5
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v6, v2

    goto :goto_6

    :cond_c
    move-object v6, v11

    :goto_6
    iget v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->p:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v8, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->E:I

    move-object v2, v14

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/combateafraude/documentdetector/output/Capture;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;I)V

    .line 40
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->getCaptures()[Lcom/combateafraude/documentdetector/output/Capture;

    move-result-object v2

    iget v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aput-object v14, v2, v3

    .line 41
    sget-object v2, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v14, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;

    sget-object v4, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->CAPTURE:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v5, v3

    goto :goto_7

    :cond_d
    move-object v5, v11

    :goto_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v16, v12

    iget-wide v11, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    sub-long/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_8

    :cond_e
    const/4 v7, 0x0

    :goto_8
    move-object v3, v14

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {v2, v14}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 42
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->finishPost()V

    .line 43
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2, v9}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 44
    iget-boolean v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->F:Z

    if-eqz v2, :cond_1a

    .line 45
    invoke-virtual {v13}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, v16

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getAllowedPassportCountriesList()[Lcom/combateafraude/documentdetector/input/CountryCodesList;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 46
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->getCaptures()[Lcom/combateafraude/documentdetector/output/Capture;

    move-result-object v2

    invoke-direct {v1, v13, v2, v10}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->k(Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;[Lcom/combateafraude/documentdetector/output/Capture;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 47
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_10
    move-object v11, v12

    .line 48
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getDocument()Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v2

    sget-object v3, Lcom/combateafraude/documentdetector/input/Document;->ANY:Lcom/combateafraude/documentdetector/input/Document;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 49
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getRequestTimeout()I

    move-result v3

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v5, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i:Lcom/combateafraude/documentdetector/controller/server/Server;

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMobileToken()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getGetUrlExpireTime()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getProxySettings()Lcom/combateafraude/documentdetector/input/ProxySettings;

    move-result-object v8

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/combateafraude/documentdetector/controller/server/utils/UploadHelper;->upload(Ljava/lang/String;ILandroid/content/Context;Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/ProxySettings;)Ljava/lang/String;

    move-result-object v2

    .line 50
    new-instance v3, Lcom/combateafraude/documentdetector/output/Capture;

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v5, Lcom/combateafraude/documentdetector/controller/detection/Label;->BLANK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    if-eq v4, v5, :cond_11

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    :goto_9
    invoke-direct {v3, v10, v2, v4}, Lcom/combateafraude/documentdetector/output/Capture;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->getCaptures()[Lcom/combateafraude/documentdetector/output/Capture;

    move-result-object v2

    iget v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aput-object v3, v2, v4

    .line 52
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v4, Lcom/combateafraude/documentdetector/R$string;->uploadPopupSuccessMessage:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->setSuccess(Ljava/lang/String;)V

    .line 53
    sget-object v2, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v3, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;

    sget-object v7, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->UPLOAD:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iget-wide v12, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    sub-long/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v4, Lcom/combateafraude/documentdetector/controller/detection/Label;->GENERIC:Lcom/combateafraude/documentdetector/controller/detection/Label;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v10

    move-object v6, v3

    move-object/from16 v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {v2, v3}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    const-wide/16 v2, 0x7d0

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 55
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    if-eq v2, v5, :cond_12

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getDocumentType()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_12
    const/4 v2, 0x0

    :goto_a
    invoke-direct {v1, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 56
    :cond_13
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isCompress()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "pdf"

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_b

    .line 57
    :cond_14
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getCompressQuality()I

    move-result v3

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getRequestTimeout()I

    move-result v4

    iget-object v5, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v6, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i:Lcom/combateafraude/documentdetector/controller/server/Server;

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMobileToken()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getGetUrlExpireTime()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getProxySettings()Lcom/combateafraude/documentdetector/input/ProxySettings;

    move-result-object v9

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/combateafraude/documentdetector/controller/server/utils/UploadHelper;->uploadCompressed(Ljava/lang/String;IILandroid/content/Context;Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/ProxySettings;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 58
    :cond_15
    :goto_b
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getRequestTimeout()I

    move-result v3

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v5, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i:Lcom/combateafraude/documentdetector/controller/server/Server;

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMobileToken()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getGetUrlExpireTime()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getProxySettings()Lcom/combateafraude/documentdetector/input/ProxySettings;

    move-result-object v8

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/combateafraude/documentdetector/controller/server/utils/UploadHelper;->upload(Ljava/lang/String;ILandroid/content/Context;Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/ProxySettings;)Ljava/lang/String;

    move-result-object v2

    .line 59
    :goto_c
    new-instance v3, Lcom/combateafraude/documentdetector/output/Capture;

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v5, Lcom/combateafraude/documentdetector/controller/detection/Label;->BLANK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    if-eq v4, v5, :cond_16

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_16
    const/4 v4, 0x0

    :goto_d
    iget v5, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->p:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v10, v2, v4, v5}, Lcom/combateafraude/documentdetector/output/Capture;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 60
    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->getCaptures()[Lcom/combateafraude/documentdetector/output/Capture;

    move-result-object v4

    iget v5, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aput-object v3, v4, v5

    .line 61
    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->checkQuality(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;

    move-result-object v2

    .line 62
    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getDocument()Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v3

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r(Lcom/combateafraude/documentdetector/input/Document;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 63
    sget-object v3, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v11, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    sget-object v5, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->UPLOAD:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v6, Lcom/combateafraude/documentdetector/R$string;->uploadPopupWrongDocumentMessage:I

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-wide v12, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    sub-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object v9

    move-object v4, v11

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {v3, v11}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 64
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 65
    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v3

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getUploadedImageGenericErrorTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 66
    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v4

    iget-object v5, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v4, v5}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getUploadedImageWrongMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v6, Lcom/combateafraude/documentdetector/R$string;->uploadPopuptryAgain:I

    .line 67
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-virtual {v2, v3, v4, v5}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->setError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 69
    :cond_17
    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v3

    const-wide v5, 0x3ffccccccccccccdL    # 1.8

    cmpg-double v7, v3, v5

    if-gez v7, :cond_18

    .line 70
    sget-object v3, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v11, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    sget-object v5, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->UPLOAD:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v6, Lcom/combateafraude/documentdetector/R$string;->uploadPopupLowQualityImageMessage:I

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-wide v12, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    sub-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object v9

    move-object v4, v11

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {v3, v11}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 71
    iget-object v2, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 72
    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v3

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getUploadedImageLowQualityTitleMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 73
    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v4

    iget-object v5, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v4, v5}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getUploadedImageLowQualityMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v6, Lcom/combateafraude/documentdetector/R$string;->uploadPopuptryAgain:I

    .line 74
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {v2, v3, v4, v5}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->setError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 76
    :cond_18
    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getAllowedPassportCountriesList()[Lcom/combateafraude/documentdetector/input/CountryCodesList;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 77
    iget-object v3, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->getCaptures()[Lcom/combateafraude/documentdetector/output/Capture;

    move-result-object v3

    invoke-direct {v1, v2, v3, v10}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->k(Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;[Lcom/combateafraude/documentdetector/output/Capture;Ljava/lang/String;)V

    :goto_e
    const-wide/16 v2, 0x7d0

    goto :goto_f

    .line 78
    :cond_19
    invoke-direct/range {p0 .. p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o(Ljava/lang/String;)V

    .line 79
    sget-object v3, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v10, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;

    sget-object v5, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->UPLOAD:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getQuality()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iget-wide v11, v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    sub-long/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object v8

    move-object v4, v10

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {v3, v10}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    goto :goto_e

    .line 80
    :goto_f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    :goto_10
    move-object v2, v0

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_10

    :catch_2
    move-exception v0

    goto :goto_10

    .line 81
    :goto_11
    sget-object v3, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_FAILED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v4, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFailedEvent;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFailedEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 82
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    invoke-direct {v1, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->n(Ljava/lang/Exception;)V

    :cond_1a
    :goto_12
    return-void
.end method

.method private synthetic q(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->onClickTakePicture()V

    return-void
.end method

.method private r(Lcom/combateafraude/documentdetector/input/Document;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getLabels()[Lcom/combateafraude/documentdetector/controller/detection/Label;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic s(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    return-object p0
.end method

.method private t()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->C:I

    const/4 v1, 0x0

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_3

    const/16 v2, 0x190

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1f4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x258

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    new-instance v2, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v3, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;

    sget v4, Lcom/combateafraude/documentdetector/R$string;->error_600_message:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->C:I

    invoke-direct {v3, v4, v5}, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    invoke-virtual {v0, v2, v1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    new-instance v2, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v3, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;

    sget v4, Lcom/combateafraude/documentdetector/R$string;->error_500_message:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->C:I

    invoke-direct {v3, v4, v5}, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    invoke-virtual {v0, v2, v1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    new-instance v2, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v3, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;

    sget v4, Lcom/combateafraude/documentdetector/R$string;->error_400_message:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->C:I

    invoke-direct {v3, v4, v5}, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    invoke-virtual {v0, v2, v1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    new-instance v2, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v3, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;

    sget v4, Lcom/combateafraude/documentdetector/R$string;->error_300_message:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->C:I

    invoke-direct {v3, v4, v5}, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    invoke-virtual {v0, v2, v1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :goto_0
    return-void
.end method

.method private static synthetic u(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->tryAgainUpload()V

    return-void
.end method

.method private v(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->finishStep()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->finishStep()V

    .line 3
    :goto_0
    iget v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    invoke-virtual {v0, p1}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->setType(Ljava/lang/String;)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->isLastFlowStep()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isAutoDetection()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->k:Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->close()V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->Companion:Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;->getTrackingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->setTrackingId(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s:Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    invoke-virtual {p1, v1, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    .line 11
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->dismissPopUp()V

    goto :goto_2

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m:I

    .line 14
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->cleanPopUpMessage()V

    .line 15
    :cond_5
    iget v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    .line 16
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    iput p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->n:I

    .line 18
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isShowPopup()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setPopUpVisibility(Z)V

    .line 20
    sget-object p1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    .line 21
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->showStepDialog(Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->closedPopup()V

    .line 23
    :goto_1
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->startStep()V

    .line 24
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->l:Landroidx/camera/core/ImageProxy;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_2

    .line 25
    :cond_7
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->n0()V

    :cond_8
    :goto_2
    return-void
.end method

.method private w(Ljava/lang/Void;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->u:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->u:Z

    .line 3
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->g:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->switchCamera()V

    :cond_0
    return-void
.end method

.method static synthetic x(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->C(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic y(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/input/DocumentDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    return-object p0
.end method

.method private declared-synchronized z()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m:I

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getCaptureStages()[Lcom/combateafraude/documentdetector/input/CaptureStage;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m:I

    .line 3
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public callBack(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m:I

    .line 2
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m0()V

    .line 3
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    iput-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    .line 5
    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->n:I

    .line 6
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setCameraVisibility(Z)V

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getDocumentType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isAutoDetection()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->A:Ljava/lang/String;

    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getDocumentTypeByScanlLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->restartStep()V

    .line 13
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->l:Landroidx/camera/core/ImageProxy;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    :cond_3
    :goto_0
    return-void
.end method

.method public checkDocument(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->F:Z

    .line 2
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getDocument()Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r(Lcom/combateafraude/documentdetector/input/Document;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 5
    sget-object v1, Lcom/combateafraude/documentdetector/controller/detection/Label;->BLANK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object p1

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p1, v1}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getDocumentNotFoundMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    sget-object v2, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->FRAMING_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    goto :goto_1

    .line 8
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/Document;->getDocumentWrongMessageByStepLabel(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object p1

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p1, v1}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getUnsupportedDocumentMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    sget-object v2, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->TYPIFICATION_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1, p1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object p1, p1, v1

    .line 14
    sget-object v1, Lcom/combateafraude/documentdetector/controller/utils/Mask;->ERROR:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-virtual {p0, v1, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setMask(Lcom/combateafraude/documentdetector/controller/utils/Mask;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 15
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v:Landroid/os/Handler;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/o;

    invoke-direct {v1, p0}, Lcom/combateafraude/documentdetector/controller/o;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setBitmapToPreview(ZLandroid/graphics/Bitmap;)V

    return-void

    .line 17
    :cond_1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->A:Ljava/lang/String;

    .line 18
    iput-boolean v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->F:Z

    return-void
.end method

.method public checkOcr(Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;[Lcom/combateafraude/documentdetector/output/Capture;Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParam;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;

    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/output/Capture;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/output/Capture;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v3, p2}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParam;-><init>(Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParam;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->getType()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/output/Capture;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/output/Capture;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, v2, p2}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, v3}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParam;-><init>(Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i:Lcom/combateafraude/documentdetector/controller/server/Server;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/server/Server;->getInterface()Lcom/combateafraude/documentdetector/controller/server/api/Api;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMobileToken()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;->getOcr(Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParam;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;

    invoke-direct {p2, p0, p3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public checkPreview(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getPreviewSettings()Lcom/combateafraude/documentdetector/input/PreviewSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/PreviewSettings;->isShow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setCameraVisibility(Z)V

    .line 3
    invoke-virtual {p0, v2, v1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setBitmapToPreview(ZLandroid/graphics/Bitmap;)V

    .line 4
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isShowDelay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->finishStep()V

    .line 7
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v:Landroid/os/Handler;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/s;

    invoke-direct {v1, p0, p1}, Lcom/combateafraude/documentdetector/controller/s;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getDelay()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v0, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->review(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isShowDelay()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->finishStep()V

    .line 12
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v:Landroid/os/Handler;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/m;

    invoke-direct {v0, p0}, Lcom/combateafraude/documentdetector/controller/m;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getDelay()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    sget-object v0, Lcom/combateafraude/documentdetector/controller/detection/Label;->BLANK:Lcom/combateafraude/documentdetector/controller/detection/Label;

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getDocumentType()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-direct {p0, v1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->v(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public checkQuality(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/h;

    invoke-direct {v1, p0, p1}, Lcom/combateafraude/documentdetector/controller/h;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;

    return-object p1
.end method

.method public cleanPopUpMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->cleanView()V

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->showMessagePopUp(Z)V

    return-void
.end method

.method public closedPopup()V
    .locals 1

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    .line 2
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m0()V

    return-void
.end method

.method public imageUploaded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->showMessagePopUp()V

    .line 2
    sget-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_TAKEN:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureTakenEvent;

    sget-object v3, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->UPLOAD:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    int-to-long v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureTakenEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getUploadPopupLoadingMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->sendingImage(Ljava/lang/String;)V

    const/16 v0, 0x190

    .line 4
    invoke-static {p1, v0, v0}, Lcom/combateafraude/documentdetector/controller/utils/Utils;->decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "pdf"

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6
    invoke-direct {p0, v0, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d(Landroid/graphics/Bitmap;Z)Lcom/combateafraude/documentdetector/controller/detection/Recognition;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScannedLabel(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/detection/Label;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 8
    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->getConfidence()F

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->p:F

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getDocumentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v9, v0

    .line 10
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->getMaxFileSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p3, v0, :cond_2

    .line 11
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance p2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v0, Lcom/combateafraude/documentdetector/R$string;->uploadPopupTooLargeImageMessage:I

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    move-object v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 12
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 13
    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object p2

    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p2, p3}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getUploadedImageIsTooLargeTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 14
    invoke-virtual {p3}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object p3

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p3, v0}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getUploadedImageIsTooLargeMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v1, Lcom/combateafraude/documentdetector/R$string;->uploadPopuptryAgain:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p1, p2, p3, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->setError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_2
    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p3}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object p3

    invoke-virtual {p3}, Lcom/combateafraude/documentdetector/input/UploadSettings;->getFileFormats()[Lcom/combateafraude/documentdetector/input/FileFormat;

    move-result-object p3

    const/4 v0, 0x0

    .line 18
    :goto_1
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/UploadSettings;->getFileFormats()[Lcom/combateafraude/documentdetector/input/FileFormat;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 19
    aget-object v1, p3, v0

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 20
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance p2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    sget-object v5, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->UPLOAD:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v0, Lcom/combateafraude/documentdetector/R$string;->uploadPopupNotSupportedFormatMessage:I

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 21
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 22
    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object p2

    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p2, p3}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getUploadedImageHasInvalidFormatTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    .line 23
    invoke-virtual {p3}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object p3

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {p3, v0}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getUploadedImageNotSupportedFormatMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    sget v1, Lcom/combateafraude/documentdetector/R$string;->uploadPopuptryAgain:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1, p2, p3, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->setError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 p3, 0x0

    .line 26
    invoke-virtual {p0, p1, p3, p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->startRequest(Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method protected isLastFlowStep()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onCameraError(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAMERA_START_FAILED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CameraStartFailedEvent;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CameraStartFailedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    new-instance v0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v1, Lcom/combateafraude/documentdetector/output/failure/LibraryReason;

    sget v2, Lcom/combateafraude/documentdetector/R$string;->camera_helper_error_caf:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/combateafraude/documentdetector/output/failure/LibraryReason;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onCameraInitialized()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->u:Z

    return-void
.end method

.method public declared-synchronized onClickTakePicture()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getCaptureStages()[Lcom/combateafraude/documentdetector/input/CaptureStage;

    move-result-object v0

    iget v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m:I

    aget-object v0, v0, v2

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->l(Lcom/combateafraude/documentdetector/input/CaptureStage;Z)V

    .line 6
    sget-boolean v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getDurationMillis()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getQualitySettings()Lcom/combateafraude/documentdetector/input/QualitySettings;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onImageAvailable(Landroidx/camera/core/ImageProxy;)V
    .locals 9
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeExperimentalUsageError",
            "UnsafeOptInUsageError"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->t:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    sget-object v1, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    if-eq v0, v1, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->l:Landroidx/camera/core/ImageProxy;

    .line 3
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->B:Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/combateafraude/documentdetector/controller/utils/YuvToRgbConverter;->yuvToRgb(Landroid/media/Image;Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setReadyToCaptureStatus(Z)V

    .line 7
    iget-boolean v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->y:Z

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 8
    iput-boolean v3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->y:Z

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->j:J

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getCaptureStages()[Lcom/combateafraude/documentdetector/input/CaptureStage;

    move-result-object v1

    iget v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m:I

    aget-object v1, v1, v4

    .line 11
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getDocument()Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v4

    sget-object v5, Lcom/combateafraude/documentdetector/input/Document;->ANY:Lcom/combateafraude/documentdetector/input/Document;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 12
    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getDetectionSettings()Lcom/combateafraude/documentdetector/input/DetectionSettings;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 13
    invoke-direct {p0, v0, v3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d(Landroid/graphics/Bitmap;Z)Lcom/combateafraude/documentdetector/controller/detection/Recognition;

    move-result-object v4

    .line 14
    invoke-direct {p0, v1, v4}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e(Lcom/combateafraude/documentdetector/input/CaptureStage;Lcom/combateafraude/documentdetector/controller/detection/Recognition;)Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v5

    .line 15
    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScannedLabel(Ljava/lang/String;)Lcom/combateafraude/documentdetector/controller/detection/Label;

    move-result-object v6

    iput-object v6, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->o:Lcom/combateafraude/documentdetector/controller/detection/Label;

    .line 16
    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/detection/Recognition;->getConfidence()F

    move-result v4

    iput v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->p:F

    if-eqz v5, :cond_6

    .line 17
    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/input/Document;->getLabels()[Lcom/combateafraude/documentdetector/controller/detection/Label;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/detection/Label;->getScanLabel()Ljava/lang/String;

    move-result-object v4

    .line 18
    iget-object v6, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v7, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getDocument()Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 19
    iget v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->n:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->n:I

    .line 20
    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getDetectionSettings()Lcom/combateafraude/documentdetector/input/DetectionSettings;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, Lcom/combateafraude/documentdetector/input/DetectionSettings;

    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/input/DetectionSettings;->getConsecutiveFrames()I

    move-result v5

    if-lt v4, v5, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_3

    .line 21
    :cond_2
    sget-object v6, Lcom/combateafraude/documentdetector/input/Document;->OTHERS:Lcom/combateafraude/documentdetector/input/Document;

    if-ne v5, v6, :cond_3

    .line 22
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v5

    iget-object v6, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v5, v6}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getUnsupportedDocumentMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v6, "full"

    .line 23
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 24
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v5, v4}, Lcom/combateafraude/documentdetector/input/Document;->getWrongDocumentFoundMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    .line 25
    iget-object v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/input/MessageSettings;->isShowOpenDocumentMessage()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 26
    iget-object v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v5

    iget-object v6, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v5, v6}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getOpenDocumentWrongMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    .line 27
    iget-object v6, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_4
    iget-object v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v5, v4}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_5
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v6, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v5, v6}, Lcom/combateafraude/documentdetector/input/Document;->getWrongDocumentFoundMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 30
    :goto_0
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v4, v3}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 31
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    sget-object v5, Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;->TYPIFICATION_FAILURE:Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    invoke-virtual {v4, v5}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    .line 32
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v4, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 33
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v4, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 34
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v4, v4, v5

    .line 35
    sget-object v5, Lcom/combateafraude/documentdetector/controller/utils/Mask;->ERROR:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-virtual {p0, v5, v4}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setMask(Lcom/combateafraude/documentdetector/controller/utils/Mask;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 36
    iput v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->n:I

    goto :goto_2

    .line 37
    :cond_6
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v4, v4, v5

    .line 38
    sget-object v5, Lcom/combateafraude/documentdetector/controller/utils/Mask;->NORMAL:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-virtual {p0, v5, v4}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setMask(Lcom/combateafraude/documentdetector/controller/utils/Mask;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 39
    iget-boolean v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->z:Z

    if-eqz v4, :cond_7

    .line 40
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->f()V

    goto :goto_1

    .line 41
    :cond_7
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v5

    iget-object v6, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v5, v6}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getFitTheDocumentMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 42
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v4, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 43
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v4, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 44
    :goto_1
    iput v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->n:I

    :cond_8
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_9

    .line 45
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 46
    :cond_9
    :try_start_1
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isAutoDetection()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 47
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->G:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v4, :cond_a

    .line 48
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 49
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->g:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->setCentralFocus()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->G:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_4

    .line 50
    :cond_a
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->g:Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->setCentralFocus()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->G:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 51
    :cond_b
    :goto_4
    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/CaptureStage;->isWantSensorCheck()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 52
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->h:Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->isValid()Z

    move-result v4

    if-nez v4, :cond_c

    .line 53
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->h:Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;

    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->getInvalidMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 54
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v4, v3}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 55
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->h:Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;

    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->getValidationFailure()Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V

    .line 56
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v4, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 57
    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v4, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    const/4 v4, 0x0

    goto :goto_5

    :cond_c
    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_d

    .line 58
    iput v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->n:I

    .line 59
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 60
    :cond_d
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->j:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4b0

    cmp-long v8, v4, v6

    if-gez v8, :cond_f

    .line 61
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getHoldItMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 63
    :cond_e
    :try_start_3
    sget-object v4, Lcom/combateafraude/documentdetector/input/CaptureMode;->MANUAL:Lcom/combateafraude/documentdetector/input/CaptureMode;

    invoke-virtual {v1, v4}, Lcom/combateafraude/documentdetector/input/CaptureStage;->setCaptureMode(Lcom/combateafraude/documentdetector/input/CaptureMode;)V

    .line 64
    :cond_f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_10

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    :cond_10
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v0, v0, v4

    .line 67
    sget-object v4, Lcom/combateafraude/documentdetector/controller/utils/Mask;->SUCCESS:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-virtual {p0, v4, v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setMask(Lcom/combateafraude/documentdetector/controller/utils/Mask;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 68
    sget-boolean v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->a:Z

    if-nez v0, :cond_12

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getQualitySettings()Lcom/combateafraude/documentdetector/input/QualitySettings;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 69
    :cond_12
    :goto_6
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v4, v5}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getHoldItMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 71
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v3}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setReadyToCaptureStatus(Z)V

    .line 72
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getCaptureMode()Lcom/combateafraude/documentdetector/input/CaptureMode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setCaptureModeStatus(Lcom/combateafraude/documentdetector/input/CaptureMode;)V

    .line 73
    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getCaptureMode()Lcom/combateafraude/documentdetector/input/CaptureMode;

    move-result-object v0

    sget-object v4, Lcom/combateafraude/documentdetector/input/CaptureMode;->AUTOMATIC:Lcom/combateafraude/documentdetector/input/CaptureMode;

    if-ne v0, v4, :cond_13

    .line 74
    iput-boolean v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->y:Z

    .line 75
    invoke-direct {p0, v1, v3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->l(Lcom/combateafraude/documentdetector/input/CaptureStage;Z)V

    goto :goto_7

    .line 76
    :cond_13
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v3}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 78
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v3}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 79
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    monitor-exit p0

    return-void

    .line 80
    :cond_14
    :goto_8
    :try_start_4
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->f:Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;->onPause()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getPreviewSettings()Lcom/combateafraude/documentdetector/input/PreviewSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/PreviewSettings;->isShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->h:Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/sensors/SensorHelper;->onPause()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :cond_2
    return-void
.end method

.method public restartUploadStep()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->showPopUpUpload(Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->e:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->resetStep()V

    .line 3
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->cleanPopUpMessage()V

    return-void
.end method

.method public setBitmapToPreview(ZLandroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, p1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setPreviewVisibility(Z)V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setPreviewBitMap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMask(Lcom/combateafraude/documentdetector/controller/utils/Mask;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, p1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setMaskStatus(Lcom/combateafraude/documentdetector/controller/utils/Mask;)V

    .line 2
    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->isUsed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMask()Lcom/combateafraude/documentdetector/input/MaskType;

    move-result-object v0

    sget-object v1, Lcom/combateafraude/documentdetector/input/MaskType;->DEFAULT:Lcom/combateafraude/documentdetector/input/MaskType;

    if-ne v0, v1, :cond_2

    .line 3
    sget-object p2, Lcom/combateafraude/documentdetector/controller/utils/Mask;->ERROR:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getRedMask()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setMask(I)V

    .line 4
    :cond_0
    sget-object p2, Lcom/combateafraude/documentdetector/controller/utils/Mask;->SUCCESS:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getGreenMask()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setMask(I)V

    .line 5
    :cond_1
    sget-object p2, Lcom/combateafraude/documentdetector/controller/utils/Mask;->NORMAL:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getWhiteMask()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setMask(I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->isUsed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMask()Lcom/combateafraude/documentdetector/input/MaskType;

    move-result-object v0

    sget-object v1, Lcom/combateafraude/documentdetector/input/MaskType;->DETAILED:Lcom/combateafraude/documentdetector/input/MaskType;

    if-ne v0, v1, :cond_5

    .line 7
    sget-object v0, Lcom/combateafraude/documentdetector/controller/utils/Mask;->ERROR:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getRedMask()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setMask(I)V

    .line 8
    :cond_3
    sget-object v0, Lcom/combateafraude/documentdetector/controller/utils/Mask;->SUCCESS:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getGreenMask()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setMask(I)V

    .line 9
    :cond_4
    sget-object v0, Lcom/combateafraude/documentdetector/controller/utils/Mask;->NORMAL:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getWhiteMask()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setMask(I)V

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setMaskVisibility(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public startRequest(Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;Ljava/lang/String;)V
    .locals 3
    .param p2    # Lcom/combateafraude/documentdetector/input/CaptureStage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getVerifyingQualityMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->startPost()V

    .line 4
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/n;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/combateafraude/documentdetector/controller/n;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected startStep()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStepDoneSuccessfullyStatus(Z)V

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setBitmapToPreview(ZLandroid/graphics/Bitmap;)V

    .line 4
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v0, v0, v1

    .line 5
    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getStepAudio()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isEnableSound()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->f:Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;

    invoke-virtual {v2, v1}, Lcom/combateafraude/documentdetector/controller/audio/AudioHelper;->addAudioToQueue(I)V

    .line 8
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x:J

    .line 9
    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_REQUESTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;

    sget-object v3, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->CAPTURE:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getCaptureStages()[Lcom/combateafraude/documentdetector/input/CaptureStage;

    move-result-object v4

    iget v5, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->m:I

    aget-object v4, v4, v5

    invoke-direct {v2, v3, v0, v4}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    invoke-static {v1, v2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 10
    sget-object v1, Lcom/combateafraude/documentdetector/controller/utils/Mask;->NORMAL:Lcom/combateafraude/documentdetector/controller/utils/Mask;

    invoke-virtual {p0, v1, v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setMask(Lcom/combateafraude/documentdetector/controller/utils/Mask;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    .line 11
    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->d:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getStepLabel()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->startStep(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->q:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    iget v1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->r:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getDocument()Lcom/combateafraude/documentdetector/input/Document;

    move-result-object v0

    sget-object v1, Lcom/combateafraude/documentdetector/input/Document;->ANY:Lcom/combateafraude/documentdetector/input/Document;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->f()V

    :cond_1
    return-void
.end method

.method public stopSecurityValidationThread()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->D:Z

    return-void
.end method

.method public verifyStorage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->w:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c:Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    new-instance v1, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v2, Lcom/combateafraude/documentdetector/output/failure/StorageReason;

    sget v3, Lcom/combateafraude/documentdetector/R$string;->low_storage_photo_caf:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/combateafraude/documentdetector/output/failure/StorageReason;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :cond_0
    return-void
.end method
