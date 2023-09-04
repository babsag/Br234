.class public Lcom/ca/mas/core/security/AccountManagerKeyStorageProvider;
.super Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;
.source "AccountManagerKeyStorageProvider.java"


# instance fields
.field private b:Lcom/ca/mas/core/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ca/mas/core/datasource/DataSource<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "share"

    .line 3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set sharing property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAS"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    :goto_0
    const-class v1, Lcom/ca/mas/core/datasource/AccountManagerStoreDataSource;

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/ca/mas/core/datasource/DataSourceFactory;->getStorage(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Lcom/ca/mas/core/datasource/DataConverter;)Lcom/ca/mas/core/datasource/DataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/security/AccountManagerKeyStorageProvider;->b:Lcom/ca/mas/core/datasource/DataSource;

    return-void
.end method


# virtual methods
.method protected deleteSecretKeyLocally(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/security/AccountManagerKeyStorageProvider;->b:Lcom/ca/mas/core/datasource/DataSource;

    invoke-interface {v0, p1}, Lcom/ca/mas/core/datasource/DataSource;->remove(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getEncryptedSecretKey(Ljava/lang/String;)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/security/AccountManagerKeyStorageProvider;->b:Lcom/ca/mas/core/datasource/DataSource;

    invoke-interface {v0, p1}, Lcom/ca/mas/core/datasource/DataSource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method protected storeSecretKeyLocally(Ljava/lang/String;[B)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/security/AccountManagerKeyStorageProvider;->b:Lcom/ca/mas/core/datasource/DataSource;

    invoke-interface {v0, p1, p2}, Lcom/ca/mas/core/datasource/DataSource;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
