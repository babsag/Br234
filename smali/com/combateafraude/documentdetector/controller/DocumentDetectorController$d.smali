.class Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;
.super Ljava/lang/Object;
.source "DocumentDetectorController.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->checkOcr(Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;[Lcom/combateafraude/documentdetector/output/Capture;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentOcr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;


# direct methods
.method constructor <init>(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->a:Ljava/lang/String;

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
            "Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentOcr;",
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
    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
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
            "Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentOcr;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentOcr;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->y(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/input/DocumentDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->D(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 2
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentOcr;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentOcr;->getRetrievedOcr()Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentRetrievedOcr;

    move-result-object p1

    iget-object p1, p1, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentRetrievedOcr;->issuingCountry:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentOcr;

    invoke-virtual {p2}, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentOcr;->getRetrievedOcr()Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentRetrievedOcr;

    move-result-object p2

    iget-object p2, p2, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentRetrievedOcr;->mrz:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lcom/combateafraude/documentdetector/controller/utils/MRZUtils;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Lcom/combateafraude/documentdetector/input/CountryCodesList;->findByName(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/CountryCodesList;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/CountryCodesList;->findByName(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/CountryCodesList;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->B(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object p2

    sget v0, Lcom/combateafraude/documentdetector/R$string;->passport_issuing_country_not_allowed_message:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->x(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->B(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object p2

    sget v0, Lcom/combateafraude/documentdetector/R$string;->passport_issuing_country_not_allowed_message:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object p2

    sget v0, Lcom/combateafraude/documentdetector/R$string;->passport_issuing_country_unrecognized:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->i(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_5
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

    .line 16
    sget-object p2, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SERVER_ERROR:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v0, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    invoke-static {p2, v0}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 17
    iget-object p2, p0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$d;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-static {p2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->b(Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;)Lcom/combateafraude/documentdetector/DocumentDetectorActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :goto_0
    return-void
.end method
