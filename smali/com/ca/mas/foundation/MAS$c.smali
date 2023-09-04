.class final Lcom/ca/mas/foundation/MAS$c;
.super Landroid/os/AsyncTask;
.source "MAS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MAS;->start(Landroid/content/Context;Ljava/net/URL;Lcom/ca/mas/foundation/MASCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ljava/net/URL;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/ca/mas/foundation/MASCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/net/URL;Landroid/content/Context;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MAS$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ca/mas/foundation/MAS$c;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/ca/mas/foundation/MAS$c;->c:Ljava/net/URL;

    iput-object p4, p0, Lcom/ca/mas/foundation/MAS$c;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/ca/mas/foundation/MAS$c;->e:Lcom/ca/mas/foundation/MASCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/foundation/MAS$c;->a:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    invoke-direct {v1}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->add(Ljava/lang/String;)Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/foundation/MAS$c;->b:Landroid/net/Uri;

    .line 4
    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->host(Landroid/net/Uri;)Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;->build()Lcom/ca/mas/foundation/MASSecurityConfiguration;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/ca/mas/core/http/MAGHttpClient;

    invoke-direct {v1}, Lcom/ca/mas/core/http/MAGHttpClient;-><init>()V

    .line 7
    new-instance v2, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    iget-object v3, p0, Lcom/ca/mas/foundation/MAS$c;->c:Ljava/net/URL;

    invoke-direct {v2, v3}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URL;)V

    .line 8
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->setPublic()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2, v0}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASSecurityConfiguration;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 11
    iget-object v1, p0, Lcom/ca/mas/foundation/MAS$c;->d:Landroid/content/Context;

    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASResponseBody;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/ca/mas/foundation/MAS;->start(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 12
    iget-object v0, p0, Lcom/ca/mas/foundation/MAS$c;->e:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    const-class v1, Lcom/ca/mas/foundation/MASServerException;

    invoke-static {v0, v1}, Lcom/ca/mas/core/client/ServerClient;->createServerException(Lcom/ca/mas/foundation/MASResponse;Ljava/lang/Class;)Lcom/ca/mas/core/error/MAGServerException;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/foundation/MASServerException;

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/ca/mas/foundation/MAS$c;->e:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MAS$c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
