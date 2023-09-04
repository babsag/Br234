.class Lcom/combateafraude/faceauthenticator/controller/n;
.super Ljava/lang/Object;
.source "FaceAuthenticatorController.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/combateafraude/faceauthenticator/controller/server/model/response/TokenVerification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;


# direct methods
.method constructor <init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/n;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/faceauthenticator/controller/server/model/response/TokenVerification;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v0, Lcom/combateafraude/faceauthenticator/output/failure/NetworkReason;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/combateafraude/faceauthenticator/output/failure/NetworkReason;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    .line 2
    sget-object p2, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->NETWORK_ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v0, p1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;)V

    invoke-static {p2, v0}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 3
    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/n;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {p2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/faceauthenticator/controller/server/model/response/TokenVerification;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/combateafraude/faceauthenticator/controller/server/model/response/TokenVerification;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/faceauthenticator/controller/server/model/response/TokenVerification;

    .line 3
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/TokenVerification;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/n;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    sget-object p2, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    invoke-static {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->c(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;)Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    .line 5
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/n;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->startStep()V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance p2, Lcom/combateafraude/faceauthenticator/output/failure/InvalidTokenReason;

    invoke-direct {p2}, Lcom/combateafraude/faceauthenticator/output/failure/InvalidTokenReason;-><init>()V

    invoke-direct {p1, p2}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    .line 7
    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/n;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {p2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :goto_0
    return-void

    .line 8
    :cond_2
    :goto_1
    new-instance p1, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance p2, Lcom/combateafraude/faceauthenticator/output/failure/InvalidTokenReason;

    invoke-direct {p2}, Lcom/combateafraude/faceauthenticator/output/failure/InvalidTokenReason;-><init>()V

    invoke-direct {p1, p2}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    .line 9
    iget-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/n;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {p2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->b(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method
