.class Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;
.super Ljava/lang/Object;
.source "DocumentDetectorController.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->h(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/combateafraude/documentdetector/controller/server/model/response/TokenVerification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

.field final synthetic c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;


# direct methods
.method constructor <init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;JLcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iput-wide p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->a:J

    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

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
            "Lcom/combateafraude/documentdetector/controller/server/model/response/TokenVerification;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v0, Lcom/combateafraude/documentdetector/output/failure/NetworkReason;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/combateafraude/documentdetector/output/failure/NetworkReason;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    .line 2
    sget-object p2, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->NETWORK_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v0, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    invoke-static {p2, v0}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 3
    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
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
            "Lcom/combateafraude/documentdetector/controller/server/model/response/TokenVerification;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/combateafraude/documentdetector/controller/server/model/response/TokenVerification;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->a:J

    sub-long/2addr v0, v2

    long-to-float p1, v0

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v2, p1

    .line 3
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 4
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget-object v2, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->TOKEN_VERIFIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v3, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/TokenVerifiedEvent;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/TokenVerifiedEvent;-><init>(Ljava/lang/Long;)V

    invoke-static {v2, v3}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 6
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/combateafraude/documentdetector/controller/server/model/response/TokenVerification;

    .line 7
    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/controller/server/model/response/TokenVerification;->isValid()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    sget-object p2, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->NETWORK_INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/combateafraude/documentdetector/controller/utils/NetworkInfoHelper;->getNetworkInfo(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;I)Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/NetworkInfoEvent;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 9
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->s(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    move-result-object p1

    sget-object p2, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->c(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;)Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->y(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/input/DocumentDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->startStep()V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance p2, Lcom/combateafraude/documentdetector/output/failure/InvalidTokenReason;

    invoke-direct {p2}, Lcom/combateafraude/documentdetector/output/failure/InvalidTokenReason;-><init>()V

    invoke-direct {p1, p2}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    .line 12
    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object p2

    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v0, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    invoke-virtual {p2, p1, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :cond_3
    :goto_0
    return-void

    .line 13
    :cond_4
    :goto_1
    new-instance p1, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v0, Lcom/combateafraude/documentdetector/output/failure/ServerReason;

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;->createFromJSON(Lokhttp3/ResponseBody;)Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/combateafraude/documentdetector/output/failure/ServerReason;-><init>(Lcom/combateafraude/documentdetector/controller/server/model/response/ServerUnsuccessful;I)V

    invoke-direct {p1, v0}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    .line 14
    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$a;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object p2

    new-instance v0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v1, Lcom/combateafraude/documentdetector/output/failure/InvalidTokenReason;

    invoke-direct {v1}, Lcom/combateafraude/documentdetector/output/failure/InvalidTokenReason;-><init>()V

    invoke-direct {v0, v1}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    new-instance v1, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v1, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    invoke-virtual {p2, v0, v1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method
