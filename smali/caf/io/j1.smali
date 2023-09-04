.class Lcaf/io/j1;
.super Ljava/lang/Object;
.source "PassiveFaceLivenessController.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcaf/io/L;


# direct methods
.method constructor <init>(Lcaf/io/L;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/j1;->b:Lcaf/io/L;

    iput-wide p2, p0, Lcaf/io/j1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lretrofit2/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v0, Lcom/combateafraude/passivefaceliveness/output/failure/NetworkReason;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/combateafraude/passivefaceliveness/output/failure/NetworkReason;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, v0}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    .line 2
    sget-object p2, Lcaf/io/t;->u:Lcaf/io/t;

    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v0, p1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    .line 3
    sget-object v1, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v1, p2, v0}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 4
    iget-object p2, p0, Lcaf/io/j1;->b:Lcaf/io/L;

    invoke-static {p2}, Lcaf/io/L;->b(Lcaf/io/L;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcaf/io/j1;->b:Lcaf/io/L;

    iget-wide v0, p0, Lcaf/io/j1;->a:J

    invoke-static {p2, p1, v0, v1}, Lcaf/io/L;->j(Lcaf/io/L;Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;J)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v0, Lcom/combateafraude/passivefaceliveness/output/failure/ServerReason;

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;->createFromJSON(Lokhttp3/ResponseBody;)Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/combateafraude/passivefaceliveness/output/failure/ServerReason;-><init>(Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;I)V

    invoke-direct {p1, v0}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    .line 5
    iget-object p2, p0, Lcaf/io/j1;->b:Lcaf/io/L;

    invoke-static {p2}, Lcaf/io/L;->b(Lcaf/io/L;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    move-result-object p2

    new-instance v0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/output/failure/InvalidTokenReason;

    invoke-direct {v1}, Lcom/combateafraude/passivefaceliveness/output/failure/InvalidTokenReason;-><init>()V

    invoke-direct {v0, v1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v1, p1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    invoke-virtual {p2, v0, v1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :goto_0
    return-void
.end method
