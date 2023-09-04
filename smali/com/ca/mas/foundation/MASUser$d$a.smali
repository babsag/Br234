.class Lcom/ca/mas/foundation/MASUser$d$a;
.super Lcom/ca/mas/foundation/MASCallback;
.source "MASUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASUser$d;->logout(ZLcom/ca/mas/foundation/MASCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/foundation/MASCallback<",
        "Lcom/ca/mas/foundation/MASResponse<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/store/TokenManager;

.field final synthetic b:Lcom/ca/mas/foundation/MASCallback;

.field final synthetic c:Z

.field final synthetic d:Lcom/ca/mas/foundation/MASUser$d;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASUser$d;Lcom/ca/mas/core/store/TokenManager;Lcom/ca/mas/foundation/MASCallback;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASUser$d$a;->d:Lcom/ca/mas/foundation/MASUser$d;

    iput-object p2, p0, Lcom/ca/mas/foundation/MASUser$d$a;->a:Lcom/ca/mas/core/store/TokenManager;

    iput-object p3, p0, Lcom/ca/mas/foundation/MASUser$d$a;->b:Lcom/ca/mas/foundation/MASCallback;

    iput-boolean p4, p0, Lcom/ca/mas/foundation/MASUser$d$a;->c:Z

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ca/mas/foundation/MASResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASResponse<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ca/mas/core/EventDispatcher;->LOGOUT:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {p1}, Ljava/util/Observable;->notifyObservers()V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/ca/mas/foundation/MASUser$d$a;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {p1}, Lcom/ca/mas/core/store/TokenManager;->deleteIdToken()V

    .line 3
    iget-object p1, p0, Lcom/ca/mas/foundation/MASUser$d$a;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {p1}, Lcom/ca/mas/core/store/TokenManager;->deleteSecureIdToken()V

    .line 4
    iget-object p1, p0, Lcom/ca/mas/foundation/MASUser$d$a;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {p1}, Lcom/ca/mas/core/store/TokenManager;->deleteUserProfile()V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASUser$d$a;->onError(Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/store/StorageProvider;->getOAuthTokenContainer()Lcom/ca/mas/core/store/OAuthTokenContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/ca/mas/core/store/OAuthTokenContainer;->clear()V
    :try_end_1
    .catch Lcom/ca/mas/core/datasource/DataSourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASUser$d$a;->onError(Ljava/lang/Throwable;)V

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/ca/mas/foundation/MASUser$d$a;->b:Lcom/ca/mas/foundation/MASCallback;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->getCurrentUser()Lcom/ca/mas/foundation/MASUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->getCurrentUser()Lcom/ca/mas/foundation/MASUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASUser;->isSessionLocked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/ca/mas/foundation/MASUser$d$a;->c:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/ca/mas/core/EventDispatcher;->LOGOUT:Lcom/ca/mas/core/EventDispatcher;

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d$a;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenManager;->deleteIdToken()V

    .line 5
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d$a;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenManager;->deleteSecureIdToken()V

    .line 6
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d$a;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenManager;->deleteUserProfile()V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getOAuthTokenContainer()Lcom/ca/mas/core/store/OAuthTokenContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->clear()V
    :try_end_1
    .catch Lcom/ca/mas/core/datasource/DataSourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d$a;->b:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 9
    :catch_1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d$a;->b:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d$a;->b:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ca/mas/foundation/MASResponse;

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASUser$d$a;->a(Lcom/ca/mas/foundation/MASResponse;)V

    return-void
.end method
