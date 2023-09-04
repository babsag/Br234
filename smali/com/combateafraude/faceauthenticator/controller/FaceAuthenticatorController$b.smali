.class Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$b;
.super Ljava/lang/Object;
.source "FaceAuthenticatorController.java"

# interfaces
.implements Lcom/combateafraude/faceauthenticator/controller/camera/CameraHelper$OnVideoCaptured;


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
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$b;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    iput-boolean p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroidx/camera/core/VideoCapture$VideoCaptureError;)V
    .locals 4
    .param p1    # Landroidx/camera/core/VideoCapture$VideoCaptureError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$b;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    move-result-object p1

    new-instance v0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v1, Lcom/combateafraude/faceauthenticator/output/failure/StorageReason;

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$b;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {v2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    move-result-object v2

    sget v3, Lcom/combateafraude/faceauthenticator/R$string;->low_storage_photo_caf:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/combateafraude/faceauthenticator/output/failure/StorageReason;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$b;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {v0, p2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->a(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;I)I

    .line 2
    iget-boolean p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$b;->a:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$b;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {p2, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->p(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
