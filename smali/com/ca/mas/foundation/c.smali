.class Lcom/ca/mas/foundation/c;
.super Ljava/lang/Object;
.source "DeviceMetadata.java"


# direct methods
.method static synthetic a(Ljava/lang/Throwable;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ca/mas/foundation/c;->h(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attribute name cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/ca/mas/foundation/c;->b(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/c;->g()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {v1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Landroid/net/Uri;)V

    .line 4
    invoke-static {p0}, Lcom/ca/mas/foundation/MASRequestBody;->stringBody(Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->delete(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->notifyOnCancel()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p0

    .line 7
    new-instance v0, Lcom/ca/mas/foundation/c$d;

    invoke-direct {v0, p1}, Lcom/ca/mas/foundation/c$d;-><init>(Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {p0, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method public static d(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {}, Lcom/ca/mas/foundation/c;->g()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    const-string v1, ""

    .line 2
    invoke-static {v1}, Lcom/ca/mas/foundation/MASRequestBody;->stringBody(Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->delete(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->notifyOnCancel()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/ca/mas/foundation/c$e;

    invoke-direct {v1, p0}, Lcom/ca/mas/foundation/c$e;-><init>(Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method public static e(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/ca/mas/foundation/c;->b(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/c;->g()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Landroid/net/Uri;)V

    .line 4
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->get()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->notifyOnCancel()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p0

    .line 8
    new-instance v0, Lcom/ca/mas/foundation/c$b;

    invoke-direct {v0, p1}, Lcom/ca/mas/foundation/c$b;-><init>(Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {p0, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method public static f(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {}, Lcom/ca/mas/foundation/c;->g()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    .line 2
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->get()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->notifyOnCancel()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/ca/mas/foundation/c$c;

    invoke-direct {v1, p0}, Lcom/ca/mas/foundation/c$c;-><init>(Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method private static g()Ljava/net/URI;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "msso_device_metadata"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/Throwable;)I
    .locals 2

    const/4 v0, -0x1

    .line 1
    :try_start_0
    move-object v1, p0

    check-cast v1, Lcom/ca/mas/foundation/MASException;

    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/ca/mas/core/error/TargetApiException;

    if-eqz v1, :cond_0

    .line 2
    check-cast p0, Lcom/ca/mas/foundation/MASException;

    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASException;->getRootCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/core/error/TargetApiException;

    .line 3
    invoke-virtual {p0}, Lcom/ca/mas/core/error/TargetApiException;->getResponse()Lcom/ca/mas/foundation/MASResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/ca/mas/core/client/ServerClient;->findErrorCode(Lcom/ca/mas/foundation/MASResponse;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/ca/mas/foundation/c;->b(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    .line 3
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "value"

    .line 4
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    new-instance p0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {}, Lcom/ca/mas/foundation/c;->g()Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    .line 6
    invoke-static {v0}, Lcom/ca/mas/foundation/MASRequestBody;->jsonBody(Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->put(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->notifyOnCancel()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    new-instance p1, Lcom/ca/mas/foundation/c$a;

    invoke-direct {p1, p2}, Lcom/ca/mas/foundation/c$a;-><init>(Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {p0, p1}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void

    :catch_0
    move-exception p0

    .line 10
    invoke-static {p2, p0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method
