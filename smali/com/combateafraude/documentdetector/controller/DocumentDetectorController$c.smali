.class Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;
.super Ljava/lang/Object;
.source "DocumentDetectorController.java"

# interfaces
.implements Lcom/combateafraude/documentdetector/controller/camera/CameraHelper$OnPhotoCaptured;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->l(Lcom/combateafraude/documentdetector/input/CaptureStage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z = true


# instance fields
.field final synthetic b:Lcom/combateafraude/documentdetector/input/CaptureStage;

.field final synthetic c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Lcom/combateafraude/documentdetector/input/CaptureStage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->b:Lcom/combateafraude/documentdetector/input/CaptureStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->J(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/controller/camera/CameraHelper;->getBitmapToPreview()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->setBitmapToPreview(ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->a()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroidx/camera/core/ImageCaptureException;)V
    .locals 6
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_FAILED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFailedEvent;

    sget-object v3, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->CAPTURE:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    invoke-virtual {p1}, Landroidx/camera/core/ImageCaptureException;->getImageCaptureError()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureFailedEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object p1

    new-instance v0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v2, Lcom/combateafraude/documentdetector/output/failure/StorageReason;

    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object v3

    sget v4, Lcom/combateafraude/documentdetector/R$string;->low_storage_photo_caf:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/combateafraude/documentdetector/output/failure/StorageReason;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    invoke-virtual {p1, v0, v1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;JI)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->D(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setReadyToCaptureStatus(Z)V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->G(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object v2

    new-instance v3, Lcom/combateafraude/documentdetector/controller/l;

    invoke-direct {v3, p0}, Lcom/combateafraude/documentdetector/controller/l;-><init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4
    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->D(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    move-result-object v2

    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->y(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/input/DocumentDetector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v4}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getWaitMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 5
    sget-boolean v2, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->a:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->b:Lcom/combateafraude/documentdetector/input/CaptureStage;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getQualitySettings()Lcom/combateafraude/documentdetector/input/QualitySettings;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v2, p4}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->a(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;I)I

    .line 7
    sget-object p4, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->CAPTURE_TAKEN:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureTakenEvent;

    sget-object v3, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->CAPTURE:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v2, v3, v0, p2}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/CaptureTakenEvent;-><init>(Lcom/combateafraude/documentdetector/controller/utils/SDKMode;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {p4, v2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 8
    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->b:Lcom/combateafraude/documentdetector/input/CaptureStage;

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/input/CaptureStage;->getCaptureMode()Lcom/combateafraude/documentdetector/input/CaptureMode;

    move-result-object p2

    sget-object p3, Lcom/combateafraude/documentdetector/input/CaptureMode;->MANUAL:Lcom/combateafraude/documentdetector/input/CaptureMode;

    if-ne p2, p3, :cond_2

    .line 9
    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->b:Lcom/combateafraude/documentdetector/input/CaptureStage;

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p3, p4}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->startRequest(Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iget-object p3, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$c;->b:Lcom/combateafraude/documentdetector/input/CaptureStage;

    invoke-static {p2, p1, p3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->j(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    :goto_1
    return-void
.end method
