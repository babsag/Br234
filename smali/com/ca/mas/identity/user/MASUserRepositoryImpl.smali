.class public Lcom/ca/mas/identity/user/MASUserRepositoryImpl;
.super Ljava/lang/Object;
.source "MASUserRepositoryImpl.java"

# interfaces
.implements Lcom/ca/mas/identity/user/MASUserRepository;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ca/mas/identity/user/MASUserRepositoryImpl;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/identity/user/MASUserRepositoryImpl;->parse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ca/mas/identity/user/MASUserRepositoryImpl;Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASUser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/identity/user/MASUserRepositoryImpl;->processUserById(Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASUser;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ca/mas/identity/user/MASUserRepositoryImpl;Lorg/json/JSONObject;)Lcom/ca/mas/identity/user/UserAttributes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/identity/user/MASUserRepositoryImpl;->getAttributes(Lorg/json/JSONObject;)Lcom/ca/mas/identity/user/UserAttributes;

    move-result-object p0

    return-object p0
.end method

.method private getAttributes(Lorg/json/JSONObject;)Lcom/ca/mas/identity/user/UserAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "urn:ietf:params:scim:schemas:core:2.0:User"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/ca/mas/identity/user/UserAttributes;

    invoke-direct {v0}, Lcom/ca/mas/identity/user/UserAttributes;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/ca/mas/identity/user/UserAttributes;->populate(Lorg/json/JSONObject;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The ID cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Resources"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    new-instance v2, Lcom/ca/mas/identity/user/User;

    invoke-direct {v2}, Lcom/ca/mas/identity/user/User;-><init>()V

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Lcom/ca/mas/identity/user/User;->populate(Lorg/json/JSONObject;)V

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private processUserById(Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASUser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/identity/user/User;

    invoke-direct {v0}, Lcom/ca/mas/identity/user/User;-><init>()V

    const-string v1, "Resources"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "totalResults"

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/ca/mas/identity/user/User;->populate(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Should not return more than 1 user"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/ca/mas/identity/user/User;->populate(Lorg/json/JSONObject;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getUserById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/ca/mas/identity/util/IdentityUtil;->getUserPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5
    new-instance p1, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Landroid/net/Uri;)V

    const-string v0, "Accept"

    const-string v1, "application/scim+json"

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    const-string v0, "Content-Type"

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->get()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$b;

    invoke-direct {v0, p0, p2}, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$b;-><init>(Lcom/ca/mas/identity/user/MASUserRepositoryImpl;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method public getUserMetaData(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/identity/user/UserAttributes;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ca/mas/identity/util/IdentityUtil;->getSchemasPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "urn:ietf:params:scim:schemas:core:2.0:User"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Landroid/net/Uri;)V

    .line 3
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->get()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$d;

    invoke-direct {v1, p0, p1}, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$d;-><init>(Lcom/ca/mas/identity/user/MASUserRepositoryImpl;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method public getUsersByFilter(Lcom/ca/mas/identity/common/MASFilteredRequest;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/identity/common/MASFilteredRequest;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ca/mas/identity/common/MASFilteredRequest;->createUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {v0, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Landroid/net/Uri;)V

    const-string p1, "Accept"

    const-string v1, "application/scim+json"

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    const-string v0, "Content-Type"

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->get()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$a;

    invoke-direct {v0, p0, p2}, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$a;-><init>(Lcom/ca/mas/identity/user/MASUserRepositoryImpl;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method public me(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getUserInfoUri()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    .line 2
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->password()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;

    invoke-direct {v1, p0, p1}, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;-><init>(Lcom/ca/mas/identity/user/MASUserRepositoryImpl;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method
