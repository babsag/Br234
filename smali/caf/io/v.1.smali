.class public Lcaf/io/v;
.super Ljava/lang/Object;
.source "ExpiredTokenInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

.field private final b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;


# direct methods
.method public constructor <init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcaf/io/v;->a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    .line 3
    iput-object p2, p0, Lcaf/io/v;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    return-void
.end method

.method private a()Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcaf/io/v;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c()Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;->getContentType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcaf/io/L;->u:Lcaf/io/Z;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    new-instance v4, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/UploadImageParam;

    invoke-direct {v4, v0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/UploadImageParam;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcaf/io/e;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Lcaf/io/Z;->a()Lcaf/io/O;

    move-result-object v1

    check-cast v1, Lcaf/io/E$a;

    invoke-interface {v1, v0, v4}, Lcaf/io/E$a;->a(Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/UploadImageParam;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 7
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;

    .line 8
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 9
    sget-object v0, Lcaf/io/t;->p:Lcaf/io/t;

    new-instance v3, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GotImageUploadLinksEvent;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getPutUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getBucket()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v6, v7, v8, v4}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GotImageUploadLinksEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    sget-object v4, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v4, v0, v3}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 11
    :goto_0
    iget-object v0, p0, Lcaf/io/v;->a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a()Lcaf/io/L;

    move-result-object v0

    invoke-virtual {v0}, Lcaf/io/L;->d()Lcaf/io/k;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcaf/io/k;->b()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-static {v3}, Lcaf/io/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    .line 15
    iget-object v0, p0, Lcaf/io/v;->a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v3, Lcom/combateafraude/passivefaceliveness/output/failure/SecurityReason;

    sget v4, Lcom/combateafraude/passivefaceliveness/R$string;->error_900_message:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x384

    invoke-direct {v3, v4, v5}, Lcom/combateafraude/passivefaceliveness/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    invoke-virtual {v0, v1, v2}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-object v2

    .line 16
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcaf/io/v;->a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    .line 17
    new-instance v4, Lcaf/io/b0;

    const-wide v5, -0x25563da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v3}, Lcaf/io/M;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-wide v6, -0x257d3da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcaf/io/e;->a:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v6, v7}, Lcaf/io/b0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {v2, v4}, Lcaf/io/A;->a(Ljava/io/File;Lcaf/io/b0;)Ljava/lang/String;

    move-result-object v2

    .line 20
    new-instance v3, Lcaf/io/k;

    invoke-virtual {v0}, Lcaf/io/k;->a()I

    move-result v0

    invoke-direct {v3, v2, v0}, Lcaf/io/k;-><init>(Ljava/lang/String;I)V

    .line 21
    iget-object v0, p0, Lcaf/io/v;->a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a()Lcaf/io/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcaf/io/L;->c(Lcaf/io/k;)V

    .line 22
    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getPutUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcaf/io/v;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    iget-object v4, p0, Lcaf/io/v;->a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c()Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v0, v2, v4, v5}, Lcaf/io/f0;->a(Lcaf/io/k;Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Ljava/lang/String;)Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 10
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_5

    .line 3
    sget-object v1, Lcaf/io/t;->A:Lcaf/io/t;

    .line 4
    sget-object v2, Lcaf/io/b;->e:Lcaf/io/b$a;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 5
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    const-wide v3, -0x22383da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 6
    iget-object v1, p0, Lcaf/io/v;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->j()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v3, Lcaf/io/p;

    iget-object v4, p0, Lcaf/io/v;->a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-direct {v3, v4}, Lcaf/io/p;-><init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;)V

    .line 8
    new-instance v7, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;

    invoke-direct {v7, v3}, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;-><init>(Lcaf/io/p;)V

    .line 9
    new-instance v8, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;

    invoke-direct {v8, v3}, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;-><init>(Lcaf/io/p;)V

    .line 10
    iget-object v4, p0, Lcaf/io/v;->a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-static {v4}, Lcaf/io/M;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v3}, Lcaf/io/p;->h()Ljava/lang/String;

    move-result-object v6

    .line 12
    new-instance v3, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 14
    sget-object v6, Lcaf/io/L;->u:Lcaf/io/Z;

    if-nez v6, :cond_0

    return-object v0

    .line 15
    :cond_0
    invoke-virtual {v6}, Lcaf/io/Z;->a()Lcaf/io/O;

    move-result-object v6

    check-cast v6, Lcaf/io/E$a;

    invoke-interface {v6, v1, v3}, Lcaf/io/E$a;->a(Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-float v3, v6

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v4, v3

    .line 17
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 18
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;

    .line 19
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 20
    :cond_1
    sget-object v1, Lcaf/io/t;->q:Lcaf/io/t;

    new-instance v5, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/TokenVerifiedEvent;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/TokenVerifiedEvent;-><init>(Ljava/lang/Long;)V

    .line 21
    invoke-virtual {v2, v1, v5}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 22
    sget-object v1, Lcaf/io/t;->e:Lcaf/io/t;

    iget-object v5, p0, Lcaf/io/v;->a:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-static {v5, v3}, Lcaf/io/F;->a(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;I)Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;

    move-result-object v3

    .line 23
    invoke-virtual {v2, v1, v3}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 24
    invoke-virtual {v4}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;->getAttestation()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcaf/io/e;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    const-wide v4, -0x22463da67cb6L

    .line 29
    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 30
    :try_start_0
    invoke-direct {p0}, Lcaf/io/v;->a()Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v0

    .line 31
    :cond_2
    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;

    iget-object v4, p0, Lcaf/io/v;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v4}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->l()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcaf/io/v;->b:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v5}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->m()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v4, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;

    invoke-virtual {v3}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getBucket()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcaf/io/b$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v3, v0, v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-wide v2, -0x224f3da67cb6L

    .line 34
    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcaf/io/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 35
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x225d3da67cb6L

    .line 36
    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 37
    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 38
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 39
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 40
    :goto_0
    sget-object v1, Lcaf/io/t;->B:Lcaf/io/t;

    new-instance v2, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GenericEventOtherInfo;-><init>(Ljava/lang/String;)V

    .line 41
    sget-object v3, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v3, v1, v2}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    :cond_3
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-wide v1, -0x227d3da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcaf/io/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 44
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 45
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0
.end method
