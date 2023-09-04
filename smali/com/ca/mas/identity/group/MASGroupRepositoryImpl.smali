.class public Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;
.super Ljava/lang/Object;
.source "MASGroupRepositoryImpl.java"

# interfaces
.implements Lcom/ca/mas/identity/group/MASGroupRepository;


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

.method static synthetic access$000(Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASGroup;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;->processGroupById(Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;->parse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;Lorg/json/JSONObject;)Lcom/ca/mas/identity/group/GroupAttributes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;->doPopulateAttributes(Lorg/json/JSONObject;)Lcom/ca/mas/identity/group/GroupAttributes;

    move-result-object p0

    return-object p0
.end method

.method private createAdHocGroup(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASGroup;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;)V"
        }
    .end annotation

    const-string v0, "application/scim+json"

    .line 1
    :try_start_0
    new-instance v1, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {}, Lcom/ca/mas/identity/util/IdentityUtil;->getGroupPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Landroid/net/Uri;)V

    const-string v2, "Accept"

    .line 2
    invoke-virtual {v1, v2, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v1

    const-string v2, "Content-Type"

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASTransformable;->getAsJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/ca/mas/foundation/MASRequestBody;->jsonBody(Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->post(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$c;

    invoke-direct {v0, p0, p2}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$c;-><init>(Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p2, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private doPopulateAttributes(Lorg/json/JSONObject;)Lcom/ca/mas/identity/group/GroupAttributes;
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

    const-string v1, "urn:ietf:params:scim:schemas:core:2.0:Group"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/ca/mas/identity/group/GroupAttributes;

    invoke-direct {v0}, Lcom/ca/mas/identity/group/GroupAttributes;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/ca/mas/identity/group/GroupAttributes;->populate(Lorg/json/JSONObject;)V

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

.method private groupUpdate(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASGroup;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;)V"
        }
    .end annotation

    const-string v0, "application/scim+json"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ca/mas/identity/util/IdentityUtil;->getGroupPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Landroid/net/Uri;)V

    const-string v1, "Accept"

    .line 3
    invoke-virtual {v2, v1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v1

    const-string v2, "Content-Type"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 6
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASTransformable;->getAsJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/ca/mas/foundation/MASRequestBody;->jsonBody(Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->put(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$f;

    invoke-direct {v0, p0, p2}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$f;-><init>(Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p2, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private parse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/MASGroup;",
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
    invoke-static {}, Lcom/ca/mas/foundation/MASGroup;->newInstance()Lcom/ca/mas/foundation/MASGroup;

    move-result-object v2

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 8
    invoke-interface {v2, v3}, Lcom/ca/mas/foundation/MASTransformable;->populate(Lorg/json/JSONObject;)V

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private processGroupById(Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASGroup;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    .line 2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "Group raw JSON data: %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MAS"

    .line 3
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-static {}, Lcom/ca/mas/foundation/MASGroup;->newInstance()Lcom/ca/mas/foundation/MASGroup;

    move-result-object v0

    const-string v3, "Resources"

    .line 5
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "totalResults"

    .line 7
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 8
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lcom/ca/mas/foundation/MASTransformable;->populate(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Should not return more than 1 group"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    invoke-interface {v0, p1}, Lcom/ca/mas/foundation/MASTransformable;->populate(Lorg/json/JSONObject;)V

    :goto_0
    return-object v0
.end method

.method private updateAdHocGroup(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASGroup;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;->groupUpdate(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method


# virtual methods
.method public delete(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASGroup;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ca/mas/identity/util/IdentityUtil;->getGroupPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASGroup;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

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

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->delete(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$d;

    invoke-direct {v0, p0, p2}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$d;-><init>(Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method public getGroupById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ca/mas/identity/util/IdentityUtil;->getGroupPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Landroid/net/Uri;)V

    const-string p1, "Accept"

    const-string v1, "application/scim+json"

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    const-string v0, "Content-Type"

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->get()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$a;

    invoke-direct {v0, p0, p2}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$a;-><init>(Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method public getGroupMetaData(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/identity/group/GroupAttributes;",
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

    const-string v0, "urn:ietf:params:scim:schemas:core:2.0:Group"

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
    new-instance v1, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$e;

    invoke-direct {v1, p0, p1}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$e;-><init>(Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method public getGroupsByFilter(Lcom/ca/mas/identity/common/MASFilteredRequest;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/identity/common/MASFilteredRequest;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/MASGroup;",
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
    new-instance v0, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$b;

    invoke-direct {v0, p0, p2}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl$b;-><init>(Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method public save(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASGroup;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASGroup;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;->createAdHocGroup(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/identity/group/MASGroupRepositoryImpl;->updateAdHocGroup(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V

    :goto_0
    return-void
.end method
