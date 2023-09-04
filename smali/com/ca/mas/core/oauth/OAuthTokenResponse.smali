.class public Lcom/ca/mas/core/oauth/OAuthTokenResponse;
.super Lcom/ca/mas/core/client/ServerResponse;
.source "OAuthTokenResponse.java"


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/ca/mas/core/client/ServerResponse;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/client/ServerResponse;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/core/client/ServerResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/client/ServerResponse;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/ca/mas/core/client/ServerResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ca/mas/core/client/ServerResponse;->getJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/ca/mas/core/client/ServerResponse;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/client/ServerResponse;->parsed:Lorg/json/JSONObject;

    const-string v1, "access_token"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/client/ServerResponse;->parsed:Lorg/json/JSONObject;

    const-string v1, "expires_in"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGrantedScope()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/client/ServerResponse;->parsed:Lorg/json/JSONObject;

    const-string v1, "scope"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdToken()Lcom/ca/mas/core/token/IdToken;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/client/ServerResponse;->parsed:Lorg/json/JSONObject;

    const-string v1, "id_token"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/ca/mas/core/token/IdToken;

    iget-object v3, p0, Lcom/ca/mas/core/client/ServerResponse;->parsed:Lorg/json/JSONObject;

    const-string v4, "id_token_type"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/ca/mas/core/token/IdToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/client/ServerResponse;->parsed:Lorg/json/JSONObject;

    const-string v1, "refresh_token"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBearer()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/client/ServerResponse;->parsed:Lorg/json/JSONObject;

    const-string v1, "token_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bearer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
