.class public abstract Lcom/ca/mas/foundation/MASUser;
.super Ljava/lang/Object;
.source "MASUser.java"

# interfaces
.implements Lcom/ca/mas/identity/user/MASUserIdentity;
.implements Lcom/ca/mas/identity/user/ScimUser;


# static fields
.field private static a:Lcom/ca/mas/foundation/MASUser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ca/mas/core/EventDispatcher;->STOP:Lcom/ca/mas/core/EventDispatcher;

    new-instance v1, Lcom/ca/mas/foundation/MASUser$a;

    invoke-direct {v1}, Lcom/ca/mas/foundation/MASUser$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/ca/mas/foundation/MASUser;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASUser;->a:Lcom/ca/mas/foundation/MASUser;

    return-object v0
.end method

.method static synthetic b(Lcom/ca/mas/foundation/MASUser;)Lcom/ca/mas/foundation/MASUser;
    .locals 0

    .line 1
    sput-object p0, Lcom/ca/mas/foundation/MASUser;->a:Lcom/ca/mas/foundation/MASUser;

    return-object p0
.end method

.method private static c()Lcom/ca/mas/foundation/MASUser;
    .locals 4

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASUser$d;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASUser$d;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->d()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/ca/mas/foundation/MASTransformable;->populate(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MAS"

    const-string v3, "Failed to populate MASUser from local storage."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/ca/mas/foundation/Extension;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static d()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getUserProfile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getCurrentUser()Lcom/ca/mas/foundation/MASUser;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASUser;->a:Lcom/ca/mas/foundation/MASUser;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getUserProfile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->c()Lcom/ca/mas/foundation/MASUser;

    move-result-object v0

    sput-object v0, Lcom/ca/mas/foundation/MASUser;->a:Lcom/ca/mas/foundation/MASUser;

    .line 5
    :cond_0
    sget-object v0, Lcom/ca/mas/foundation/MASUser;->a:Lcom/ca/mas/foundation/MASUser;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ca/mas/foundation/MASUser;->a:Lcom/ca/mas/foundation/MASUser;

    .line 7
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASUser;->isSessionLocked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/ca/mas/foundation/MASUser;->a:Lcom/ca/mas/foundation/MASUser;

    .line 9
    :cond_1
    sget-object v0, Lcom/ca/mas/foundation/MASUser;->a:Lcom/ca/mas/foundation/MASUser;

    return-object v0
.end method

.method public static login(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASAuthCredentials;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getSecureIdToken()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    new-instance p0, Lcom/ca/mas/core/security/SecureLockException;

    const-string v0, "The session is currently locked."

    invoke-direct {p0, v0}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/ca/mas/foundation/MASUser$b;

    invoke-direct {v1, p1}, Lcom/ca/mas/foundation/MASUser$b;-><init>(Lcom/ca/mas/foundation/MASCallback;)V

    invoke-interface {v0, p0, v1}, Lcom/ca/mas/core/MobileSso;->authenticate(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/core/MAGResultReceiver;)V

    :goto_0
    return-void
.end method

.method public static login(Lcom/ca/mas/foundation/MASAuthorizationRequest;Lcom/ca/mas/foundation/MASAuthorizationRequestHandler;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/ca/mas/foundation/MASAuthorizationRequestHandler;->authorize(Lcom/ca/mas/foundation/MASAuthorizationRequest;)V

    return-void
.end method

.method public static login(Lcom/ca/mas/foundation/MASAuthorizationResponse;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .param p0    # Lcom/ca/mas/foundation/MASAuthorizationResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASAuthorizationResponse;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;)V"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/ca/mas/foundation/MASAuthCredentialsAuthorizationCode;

    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASAuthorizationResponse;->getAuthorizationCode()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASAuthorizationResponse;->getState()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/ca/mas/foundation/MASAuthCredentialsAuthorizationCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v0, p1}, Lcom/ca/mas/foundation/MASUser;->login(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public static login(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->c()Lcom/ca/mas/foundation/MASUser;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/ca/mas/foundation/MASUser$c;

    invoke-direct {v1, v0, p0}, Lcom/ca/mas/foundation/MASUser$c;-><init>(Lcom/ca/mas/foundation/MASUser;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASUser;->requestUserInfo(Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public static login(Lcom/ca/mas/foundation/MASIdToken;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASIdToken;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;

    invoke-direct {v0, p0}, Lcom/ca/mas/foundation/MASAuthCredentialsJWT;-><init>(Lcom/ca/mas/core/token/IdToken;)V

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/MASUser;->login(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public static login(Ljava/lang/String;[CLcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [C
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[C",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/ca/mas/foundation/MASAuthCredentialsPassword;

    invoke-direct {v0, p0, p1}, Lcom/ca/mas/foundation/MASAuthCredentialsPassword;-><init>(Ljava/lang/String;[C)V

    invoke-static {v0, p2}, Lcom/ca/mas/foundation/MASUser;->login(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getThumbnailImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getUserById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserMetaData(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/identity/user/UserAttributes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUsersByFilter(Lcom/ca/mas/identity/common/MASFilteredRequest;Lcom/ca/mas/foundation/MASCallback;)V
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
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isCurrentUser()Z
.end method

.method public abstract isSessionLocked()Z
.end method

.method public abstract lockSession(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logout(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract logout(ZLcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeSessionLock(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestUserInfo(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unlockSession(Lcom/ca/mas/foundation/MASSessionUnlockCallback;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASSessionUnlockCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
