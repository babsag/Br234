.class Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;
.super Ljava/lang/Object;
.source "FaceAuthenticatorController.java"

# interfaces
.implements Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnPhotoCaptured;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->m(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;


# direct methods
.method constructor <init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    iput-boolean p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroidx/camera/core/ImageCaptureException;)V
    .locals 5
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureFailedEvent;

    invoke-virtual {p1}, Landroidx/camera/core/ImageCaptureException;->getImageCaptureError()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/CaptureFailedEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    move-result-object p1

    new-instance v0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v2, Lcom/combateafraude/faceauthenticator/output/failure/StorageReason;

    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {v3}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    move-result-object v3

    sget v4, Lcom/combateafraude/faceauthenticator/R$string;->low_storage_photo_caf:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/combateafraude/faceauthenticator/output/failure/StorageReason;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    invoke-virtual {p1, v0, v1}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->n(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->setReadyToCaptureStatus(Z)V

    .line 2
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {v0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->d(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;I)I

    .line 4
    iget-boolean p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;->a:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->s(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->p(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$a;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->v(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Landroidx/camera/core/ImageProxy;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    :goto_0
    return-void
.end method
