.class final Lcom/ca/mas/foundation/MASUser$d;
.super Lcom/ca/mas/identity/user/User;
.source "MASUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASUser;->c()Lcom/ca/mas/foundation/MASUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private w:Lcom/ca/mas/identity/user/MASUserRepository;
    .annotation runtime Lcom/ca/mas/foundation/MASExtension;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/identity/user/User;-><init>()V

    return-void
.end method

.method static synthetic e(Lcom/ca/mas/foundation/MASUser$d;)Lcom/ca/mas/identity/user/MASUserRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ca/mas/foundation/MASUser$d;->w:Lcom/ca/mas/identity/user/MASUserRepository;

    return-object p0
.end method

.method static synthetic f(Lcom/ca/mas/foundation/MASUser$d;Ljava/util/LinkedList;Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ca/mas/foundation/MASUser$d;->g(Ljava/util/LinkedList;Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private g(Ljava/util/LinkedList;Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/ca/mas/foundation/UserRepository;",
            ">;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/foundation/UserRepository;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance p3, Lcom/ca/mas/foundation/MASUser$d$c;

    invoke-direct {p3, p0, p2, p1}, Lcom/ca/mas/foundation/MASUser$d$c;-><init>(Lcom/ca/mas/foundation/MASUser$d;Lcom/ca/mas/foundation/MASCallback;Ljava/util/LinkedList;)V

    invoke-interface {v0, p3}, Lcom/ca/mas/foundation/UserRepository;->getCurrentUser(Lcom/ca/mas/foundation/MASCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/ca/mas/foundation/MASUser$d;->g(Ljava/util/LinkedList;Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 4
    :catch_1
    invoke-static {p2, p3}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private h()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 3
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    return v0

    .line 4
    :cond_0
    new-instance v0, Lcom/ca/mas/core/security/SecureLockException;

    const-string v1, "Screen lock is not active"

    invoke-direct {v0, v1}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getOAuthTokenContainer()Lcom/ca/mas/core/store/OAuthTokenContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->getExpiry()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getOAuthTokenContainer()Lcom/ca/mas/core/store/OAuthTokenContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/store/OAuthTokenContainer;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/identity/user/User;->getPhotoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mas/identity/util/IdentityUtil;->getThumbnail(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getUserById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
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
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d;->w:Lcom/ca/mas/identity/user/MASUserRepository;

    invoke-interface {v0, p1, p2}, Lcom/ca/mas/identity/user/MASUserIdentity;->getUserById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public getUserMetaData(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/identity/user/UserAttributes;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d;->w:Lcom/ca/mas/identity/user/MASUserRepository;

    invoke-interface {v0, p1}, Lcom/ca/mas/identity/user/MASUserIdentity;->getUserMetaData(Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public getUsersByFilter(Lcom/ca/mas/identity/common/MASFilteredRequest;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
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
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d;->w:Lcom/ca/mas/identity/user/MASUserRepository;

    invoke-interface {v0, p1, p2}, Lcom/ca/mas/identity/user/MASUserIdentity;->getUsersByFilter(Lcom/ca/mas/identity/common/MASFilteredRequest;Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/MobileSso;->isLogin()Z

    move-result v0

    return v0
.end method

.method public isCurrentUser()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSessionLocked()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getSecureIdToken()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lockSession(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Failed to save encrypted ID token."

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->getCurrentUser()Lcom/ca/mas/foundation/MASUser;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Lcom/ca/mas/core/security/SecureLockException;

    const-string v1, "No currently authenticated user."

    invoke-direct {v0, v1}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASUser$d;->isSessionLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p1, v2}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/ca/mas/foundation/MASUser$d;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    new-instance v0, Lcom/ca/mas/core/security/SecureLockException;

    const-string v1, "Screen lock is not active"

    invoke-direct {v0, v1}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Lcom/ca/mas/core/store/TokenProvider;->getIdToken()Lcom/ca/mas/core/token/IdToken;

    move-result-object v1

    if-nez v1, :cond_3

    .line 11
    new-instance v0, Lcom/ca/mas/core/security/SecureLockException;

    const-string v1, "Failed to retrieve ID token."

    invoke-direct {v0, v1}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_3
    invoke-static {}, Lcom/ca/mas/core/oauth/OAuthClientUtil;->getRevokeRequest()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v3

    .line 13
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ca/mas/core/store/StorageProvider;->getOAuthTokenContainer()Lcom/ca/mas/core/store/OAuthTokenContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/ca/mas/core/store/OAuthTokenContainer;->clear()V

    .line 14
    invoke-static {v3, v2}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    .line 15
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    .line 16
    invoke-virtual {v1, v3, v4}, Lcom/ca/mas/core/token/IdToken;->writeToParcel(Landroid/os/Parcel;I)V

    .line 17
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 18
    new-instance v4, Lcom/ca/mas/core/security/LockableEncryptionProvider;

    .line 19
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.ca.mas.SESSION_LOCK"

    invoke-direct {v4, v5, v6}, Lcom/ca/mas/core/security/LockableEncryptionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Lcom/ca/mas/core/security/LockableEncryptionProvider;->clear()Z

    .line 21
    invoke-virtual {v4, v1}, Lcom/ca/mas/core/security/LockableEncryptionProvider;->encrypt([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 22
    :try_start_1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v4

    .line 24
    invoke-interface {v4, v1}, Lcom/ca/mas/core/store/TokenManager;->saveSecureIdToken([B)V
    :try_end_1
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 25
    :try_start_2
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v1

    .line 27
    invoke-interface {v1}, Lcom/ca/mas/core/store/TokenManager;->deleteIdToken()V
    :try_end_2
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 28
    :try_start_3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 29
    invoke-static {p1, v2}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 30
    new-instance v2, Lcom/ca/mas/core/security/SecureLockException;

    const-string v3, "Failed to delete encrypted ID token."

    invoke-direct {v2, v3, v1}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v2}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v1

    .line 31
    new-instance v2, Lcom/ca/mas/core/security/SecureLockException;

    invoke-direct {v2, v0, v1}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v2}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception v1

    .line 32
    new-instance v2, Lcom/ca/mas/core/security/SecureLockException;

    invoke-direct {v2, v0, v1}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v2}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 33
    :cond_4
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Device API level does not meet the target API requirements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public logout(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/ca/mas/foundation/MASUser;->b(Lcom/ca/mas/foundation/MASUser;)Lcom/ca/mas/foundation/MASUser;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/ca/mas/foundation/MASUser$d;->logout(ZLcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method

.method public logout(ZLcom/ca/mas/foundation/MASCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASUser$d;->isSessionLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/ca/mas/core/security/SecureLockException;

    const-string v0, "The session is currently locked."

    invoke-direct {p1, v0}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/ca/mas/foundation/MASUser;->b(Lcom/ca/mas/foundation/MASUser;)Lcom/ca/mas/foundation/MASUser;

    .line 6
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getIdToken()Lcom/ca/mas/core/token/IdToken;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {}, Lcom/ca/mas/core/oauth/OAuthClientUtil;->getLogoutRequest()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/ca/mas/core/oauth/OAuthClientUtil;->getRevokeRequest()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 10
    new-instance v2, Lcom/ca/mas/foundation/MASUser$d$a;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/ca/mas/foundation/MASUser$d$a;-><init>(Lcom/ca/mas/foundation/MASUser$d;Lcom/ca/mas/core/store/TokenManager;Lcom/ca/mas/foundation/MASCallback;Z)V

    invoke-static {v1, v2}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    :cond_2
    :goto_1
    return-void
.end method

.method public removeSessionLock(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASUser$d;->isSessionLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, v1}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenManager;->deleteSecureIdToken()V

    .line 6
    invoke-static {p1, v1}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lcom/ca/mas/core/security/SecureLockException;

    const-string v2, "Failed to delete encrypted ID token."

    invoke-direct {v1, v2, v0}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public requestUserInfo(Lcom/ca/mas/foundation/MASCallback;)V
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
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ca/mas/foundation/MASUser$d;->w:Lcom/ca/mas/identity/user/MASUserRepository;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/ca/mas/foundation/MASUser$d$b;

    invoke-direct {v1, p0}, Lcom/ca/mas/foundation/MASUser$d$b;-><init>(Lcom/ca/mas/foundation/MASUser$d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    new-instance v1, Lcom/ca/mas/foundation/f;

    invoke-direct {v1}, Lcom/ca/mas/foundation/f;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, p1, v1}, Lcom/ca/mas/foundation/MASUser$d;->g(Ljava/util/LinkedList;Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public unlockSession(Lcom/ca/mas/foundation/MASSessionUnlockCallback;)V
    .locals 6
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

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASUser$d;->isSessionLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getSecureIdToken()[B

    move-result-object v0

    .line 6
    new-instance v2, Lcom/ca/mas/core/security/LockableEncryptionProvider;

    .line 7
    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.ca.mas.SESSION_LOCK"

    invoke-direct {v2, v3, v4}, Lcom/ca/mas/core/security/LockableEncryptionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 9
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/ca/mas/core/security/LockableEncryptionProvider;->decrypt([B)[B

    move-result-object v0

    .line 10
    array-length v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 11
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 12
    sget-object v0, Lcom/ca/mas/core/token/IdToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/core/token/IdToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 13
    :try_start_1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v3

    .line 15
    invoke-interface {v3, v0}, Lcom/ca/mas/core/store/TokenManager;->saveIdToken(Lcom/ca/mas/core/token/IdToken;)V
    :try_end_1
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 16
    :try_start_2
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v3

    .line 18
    invoke-interface {v3}, Lcom/ca/mas/core/store/TokenManager;->deleteSecureIdToken()V
    :try_end_2
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 19
    :try_start_3
    invoke-virtual {v2}, Lcom/ca/mas/core/security/LockableEncryptionProvider;->clear()Z

    .line 20
    invoke-static {v0}, Lcom/ca/mas/core/token/JWTValidation;->isIdTokenExpired(Lcom/ca/mas/core/token/IdToken;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-static {p1, v1}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/ca/mas/foundation/MASUser$d;->logout(ZLcom/ca/mas/foundation/MASCallback;)V

    .line 23
    new-instance v0, Lcom/ca/mas/core/security/SecureLockException;

    const-string v1, "ID token is expired."

    invoke-direct {v0, v1}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Lcom/ca/mas/core/security/SecureLockException;

    const-string v2, "Failed to delete encrypted ID token."

    invoke-direct {v1, v2, v0}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 25
    new-instance v1, Lcom/ca/mas/core/security/SecureLockException;

    const-string v2, "Failed to save ID token."

    invoke-direct {v1, v2, v0}, Lcom/ca/mas/core/security/SecureLockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 27
    instance-of v2, v1, Landroid/security/keystore/UserNotAuthenticatedException;

    if-nez v2, :cond_1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASSessionUnlockCallback;->onUserAuthenticationRequired()V

    goto :goto_0

    .line 30
    :cond_2
    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 31
    :cond_3
    invoke-static {p1, v1}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    goto :goto_0

    .line 32
    :cond_4
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Device API level does not meet the target API requirements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method
