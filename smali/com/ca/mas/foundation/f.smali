.class Lcom/ca/mas/foundation/f;
.super Ljava/lang/Object;
.source "UserInfoRepository.java"

# interfaces
.implements Lcom/ca/mas/foundation/UserRepository;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ca/mas/foundation/f;Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASUser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/foundation/f;->b(Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASUser;

    move-result-object p0

    return-object p0
.end method

.method private b(Lorg/json/JSONObject;)Lcom/ca/mas/foundation/MASUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/identity/user/User;

    invoke-direct {v0}, Lcom/ca/mas/identity/user/User;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/ca/mas/identity/user/User;->populate(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public getCurrentUser(Lcom/ca/mas/foundation/MASCallback;)V
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
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->notifyOnCancel()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/ca/mas/foundation/f$a;

    invoke-direct {v1, p0, p1}, Lcom/ca/mas/foundation/f$a;-><init>(Lcom/ca/mas/foundation/f;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method
