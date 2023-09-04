.class Lcom/ca/mas/foundation/MASTokenRequest$a$a;
.super Lcom/ca/mas/foundation/MASResponseBody;
.source "MASTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASTokenRequest$a;->getBody()Lcom/ca/mas/foundation/MASResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/foundation/MASResponseBody<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/ca/mas/foundation/MASTokenRequest$a;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASTokenRequest$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASTokenRequest$a$a;->c:Lcom/ca/mas/foundation/MASTokenRequest$a;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "access_token"

    .line 2
    iget-object v2, p0, Lcom/ca/mas/foundation/MASTokenRequest$a$a;->c:Lcom/ca/mas/foundation/MASTokenRequest$a;

    iget-object v2, v2, Lcom/ca/mas/foundation/MASTokenRequest$a;->a:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v2}, Lcom/ca/mas/core/context/MssoContext;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "refresh_token"

    .line 3
    iget-object v2, p0, Lcom/ca/mas/foundation/MASTokenRequest$a$a;->c:Lcom/ca/mas/foundation/MASTokenRequest$a;

    iget-object v2, v2, Lcom/ca/mas/foundation/MASTokenRequest$a;->a:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v2}, Lcom/ca/mas/core/context/MssoContext;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expires_in"

    .line 4
    iget-object v2, p0, Lcom/ca/mas/foundation/MASTokenRequest$a$a;->c:Lcom/ca/mas/foundation/MASTokenRequest$a;

    iget-object v2, v2, Lcom/ca/mas/foundation/MASTokenRequest$a;->a:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v2}, Lcom/ca/mas/core/context/MssoContext;->getAccessTokenExpiry()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getContent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASTokenRequest$a$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
