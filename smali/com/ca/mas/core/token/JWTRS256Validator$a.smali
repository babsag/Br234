.class Lcom/ca/mas/core/token/JWTRS256Validator$a;
.super Landroid/os/AsyncTask;
.source "JWTRS256Validator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/token/JWTRS256Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/ca/mas/foundation/MASCallback<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jwks_store"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGateway()Lcom/ca/mas/core/conf/Server;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/Server;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/ca/mas/foundation/MASCallback;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ca/mas/foundation/MASConfiguration;->getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASConfiguration;->getGatewayUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.well-known/openid-configuration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/ca/mas/core/http/MAGHttpClient;

    invoke-direct {v1}, Lcom/ca/mas/core/http/MAGHttpClient;-><init>()V

    .line 4
    new-instance v2, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {v2, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URL;)V

    .line 5
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->setPublic()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASResponseBody;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "jwks_uri"

    .line 8
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v2, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URL;)V

    .line 10
    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->setPublic()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASResponseBody;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mas/core/token/JWTRS256Validator;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/ca/mas/core/token/JWTRS256Validator;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mas/core/token/JWTRS256Validator$a;->b(Ljava/lang/String;)V

    .line 14
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/ca/mas/core/token/JWTRS256Validator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JWT Key Set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ca/mas/core/token/JWTRS256Validator;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    invoke-static {}, Lcom/ca/mas/core/token/JWTRS256Validator;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 18
    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/ca/mas/foundation/MASCallback;

    invoke-virtual {p0, p1}, Lcom/ca/mas/core/token/JWTRS256Validator$a;->a([Lcom/ca/mas/foundation/MASCallback;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
