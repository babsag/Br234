.class public Lcom/combateafraude/faceauthenticator/controller/server/utils/UploadHelper;
.super Ljava/lang/Object;
.source "UploadHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/combateafraude/faceauthenticator/controller/server/Server;Lcom/combateafraude/faceauthenticator/controller/server/Server;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/combateafraude/faceauthenticator/controller/server/Server;->getInterface()Lcom/combateafraude/faceauthenticator/controller/server/api/Api;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/faceauthenticator/controller/server/api/CafApi;

    invoke-interface {p0}, Lcom/combateafraude/faceauthenticator/controller/server/api/CafApi;->getUploadLinks()Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->GOT_IMAGE_UPLOAD_LINKS:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/GotImageUploadLinksEvent;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUpload;

    invoke-virtual {v2}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUpload;->getBody()Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUploadBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUploadBody;->getUploadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUpload;

    invoke-virtual {v3}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUpload;->getBody()Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUploadBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUploadBody;->getGetUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/GotImageUploadLinksEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 4
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/server/Server;->getInterface()Lcom/combateafraude/faceauthenticator/controller/server/api/Api;

    move-result-object p1

    check-cast p1, Lcom/combateafraude/faceauthenticator/controller/server/api/GenericApi;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUpload;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUpload;->getBody()Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUploadBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUploadBody;->getUploadUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {v1, p2}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/combateafraude/faceauthenticator/controller/server/api/GenericApi;->uploadImage(Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUpload;

    invoke-virtual {p0}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUpload;->getBody()Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUploadBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUploadBody;->getGetUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public static synthetic b(Lcom/combateafraude/faceauthenticator/controller/server/Server;Lcom/combateafraude/faceauthenticator/controller/server/Server;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/combateafraude/faceauthenticator/controller/server/utils/UploadHelper;->a(Lcom/combateafraude/faceauthenticator/controller/server/Server;Lcom/combateafraude/faceauthenticator/controller/server/Server;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static upload(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/server/Server;

    invoke-virtual {p2}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getStage()Lcom/combateafraude/faceauthenticator/input/CafStage;

    move-result-object p2

    sget-object v1, Lcom/combateafraude/faceauthenticator/input/UrlType;->BASE_API_URL:Lcom/combateafraude/faceauthenticator/input/UrlType;

    invoke-static {p2, v1}, Lcom/combateafraude/faceauthenticator/controller/utils/Enviroment;->getBaseURL(Lcom/combateafraude/faceauthenticator/input/CafStage;Lcom/combateafraude/faceauthenticator/input/UrlType;)Ljava/lang/String;

    move-result-object p2

    const-class v1, Lcom/combateafraude/faceauthenticator/controller/server/api/CafApi;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/combateafraude/faceauthenticator/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;IZ)V

    .line 2
    new-instance p2, Lcom/combateafraude/faceauthenticator/controller/server/Server;

    const-class v1, Lcom/combateafraude/faceauthenticator/controller/server/api/GenericApi;

    const-string v2, "https://www.google.com/"

    const/4 v3, 0x0

    invoke-direct {p2, v1, v2, p1, v3}, Lcom/combateafraude/faceauthenticator/controller/server/Server;-><init>(Ljava/lang/Class;Ljava/lang/String;IZ)V

    .line 3
    new-instance p1, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/server/utils/a;

    invoke-direct {v1, v0, p2, p0}, Lcom/combateafraude/faceauthenticator/controller/server/utils/a;-><init>(Lcom/combateafraude/faceauthenticator/controller/server/Server;Lcom/combateafraude/faceauthenticator/controller/server/Server;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
