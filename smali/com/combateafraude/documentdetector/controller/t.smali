.class Lcom/combateafraude/documentdetector/controller/t;
.super Ljava/lang/Object;
.source "DocumentDetectorController.java"

# interfaces
.implements Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;


# instance fields
.field final synthetic a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;


# direct methods
.method constructor <init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/t;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderInstallFailed(ILandroid/content/Intent;)V
    .locals 3
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PROVIDER_INSTALL_FAILURE:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/ProviderInstallerFailedEvent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/ProviderInstallerFailedEvent;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/t;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object p1

    new-instance p2, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v0, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/t;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object v1

    sget v2, Lcom/combateafraude/documentdetector/R$string;->google_security_provider_error_caf:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/documentdetector/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, v0}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onProviderInstalled()V
    .locals 0

    return-void
.end method
