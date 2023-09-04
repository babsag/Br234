.class public Lcom/ca/mas/core/store/StorageProvider;
.super Ljava/lang/Object;
.source "StorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/store/StorageProvider$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ca/mas/core/store/StorageProvider;


# instance fields
.field private b:Lcom/ca/mas/core/store/StorageProvider$a;

.field private c:Lcom/ca/mas/core/store/TokenManager;

.field private d:Lcom/ca/mas/core/store/OAuthTokenContainer;

.field private e:Lcom/ca/mas/core/store/ClientCredentialContainer;


# direct methods
.method private constructor <init>(Lcom/ca/mas/core/conf/ConfigurationProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ca/mas/core/store/StorageProvider$a;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/store/StorageProvider$a;-><init>(Lcom/ca/mas/core/conf/ConfigurationProvider;)V

    iput-object v0, p0, Lcom/ca/mas/core/store/StorageProvider;->b:Lcom/ca/mas/core/store/StorageProvider$a;

    .line 3
    invoke-direct {p0}, Lcom/ca/mas/core/store/StorageProvider;->c()Lcom/ca/mas/core/store/TokenManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/store/StorageProvider;->c:Lcom/ca/mas/core/store/TokenManager;

    .line 4
    invoke-direct {p0}, Lcom/ca/mas/core/store/StorageProvider;->b()Lcom/ca/mas/core/store/OAuthTokenContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/store/StorageProvider;->d:Lcom/ca/mas/core/store/OAuthTokenContainer;

    .line 5
    invoke-direct {p0}, Lcom/ca/mas/core/store/StorageProvider;->a()Lcom/ca/mas/core/store/ClientCredentialContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/store/StorageProvider;->e:Lcom/ca/mas/core/store/ClientCredentialContainer;

    return-void
.end method

.method private a()Lcom/ca/mas/core/store/ClientCredentialContainer;
    .locals 4

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/core/store/StorageProvider;->b:Lcom/ca/mas/core/store/StorageProvider$a;

    .line 2
    invoke-virtual {v1}, Lcom/ca/mas/core/store/StorageProvider$a;->b()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mas/core/store/StorageProvider;->b:Lcom/ca/mas/core/store/StorageProvider$a;

    invoke-virtual {v2}, Lcom/ca/mas/core/store/StorageProvider$a;->a()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/ca/mas/core/datasource/StringDataConverter;

    invoke-direct {v3}, Lcom/ca/mas/core/datasource/StringDataConverter;-><init>()V

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/ca/mas/core/datasource/DataSourceFactory;->getStorage(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Lcom/ca/mas/core/datasource/DataConverter;)Lcom/ca/mas/core/datasource/DataSource;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/ca/mas/core/store/ClientCredentialStorage;

    invoke-direct {v1, v0}, Lcom/ca/mas/core/store/ClientCredentialStorage;-><init>(Lcom/ca/mas/core/datasource/DataSource;)V

    return-object v1
.end method

.method private b()Lcom/ca/mas/core/store/OAuthTokenContainer;
    .locals 4

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/core/store/StorageProvider;->b:Lcom/ca/mas/core/store/StorageProvider$a;

    .line 2
    invoke-virtual {v1}, Lcom/ca/mas/core/store/StorageProvider$a;->b()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mas/core/store/StorageProvider;->b:Lcom/ca/mas/core/store/StorageProvider$a;

    invoke-virtual {v2}, Lcom/ca/mas/core/store/StorageProvider$a;->a()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/ca/mas/core/datasource/StringDataConverter;

    invoke-direct {v3}, Lcom/ca/mas/core/datasource/StringDataConverter;-><init>()V

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/ca/mas/core/datasource/DataSourceFactory;->getStorage(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Lcom/ca/mas/core/datasource/DataConverter;)Lcom/ca/mas/core/datasource/DataSource;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/ca/mas/core/store/PrivateTokenStorage;

    invoke-direct {v1, v0}, Lcom/ca/mas/core/store/PrivateTokenStorage;-><init>(Lcom/ca/mas/core/datasource/DataSource;)V

    return-object v1
.end method

.method private c()Lcom/ca/mas/core/store/TokenManager;
    .locals 4

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ca/mas/core/store/StorageProvider;->b:Lcom/ca/mas/core/store/StorageProvider$a;

    invoke-virtual {v3}, Lcom/ca/mas/core/store/StorageProvider$a;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "share"

    const-string v3, "msso.sso.enabled"

    .line 4
    invoke-interface {v0, v3}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    :goto_0
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set sharing property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MAS"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, v1

    .line 7
    :goto_1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/core/store/StorageProvider;->b:Lcom/ca/mas/core/store/StorageProvider$a;

    .line 8
    invoke-virtual {v1}, Lcom/ca/mas/core/store/StorageProvider$a;->b()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/ca/mas/core/datasource/DataSourceFactory;->getStorage(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Lcom/ca/mas/core/datasource/DataConverter;)Lcom/ca/mas/core/datasource/DataSource;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/ca/mas/core/store/a;

    invoke-direct {v1, v0}, Lcom/ca/mas/core/store/a;-><init>(Lcom/ca/mas/core/datasource/DataSource;)V

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/ca/mas/core/store/StorageProvider;
    .locals 3

    const-class v0, Lcom/ca/mas/core/store/StorageProvider;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ca/mas/core/store/StorageProvider;->a:Lcom/ca/mas/core/store/StorageProvider;

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/ca/mas/core/store/StorageProvider;

    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ca/mas/core/store/StorageProvider;-><init>(Lcom/ca/mas/core/conf/ConfigurationProvider;)V

    sput-object v1, Lcom/ca/mas/core/store/StorageProvider;->a:Lcom/ca/mas/core/store/StorageProvider;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ConfigurationManager not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    sget-object v1, Lcom/ca/mas/core/store/StorageProvider;->a:Lcom/ca/mas/core/store/StorageProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getClientCredentialContainer()Lcom/ca/mas/core/store/ClientCredentialContainer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/StorageProvider;->e:Lcom/ca/mas/core/store/ClientCredentialContainer;

    return-object v0
.end method

.method public getOAuthTokenContainer()Lcom/ca/mas/core/store/OAuthTokenContainer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/StorageProvider;->d:Lcom/ca/mas/core/store/OAuthTokenContainer;

    return-object v0
.end method

.method public getTokenManager()Lcom/ca/mas/core/store/TokenManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/StorageProvider;->c:Lcom/ca/mas/core/store/TokenManager;

    return-object v0
.end method

.method public hasValidStore()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/core/store/StorageProvider;->b:Lcom/ca/mas/core/store/StorageProvider$a;

    .line 2
    invoke-virtual {v1}, Lcom/ca/mas/core/store/StorageProvider$a;->b()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mas/core/store/StorageProvider;->b:Lcom/ca/mas/core/store/StorageProvider$a;

    .line 3
    invoke-virtual {v2}, Lcom/ca/mas/core/store/StorageProvider$a;->a()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/ca/mas/core/datasource/StringDataConverter;

    invoke-direct {v3}, Lcom/ca/mas/core/datasource/StringDataConverter;-><init>()V

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/ca/mas/core/datasource/DataSourceFactory;->getStorage(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Lcom/ca/mas/core/datasource/DataConverter;)Lcom/ca/mas/core/datasource/DataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/ca/mas/core/datasource/DataSource;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/ca/mas/core/store/StorageProvider;->a:Lcom/ca/mas/core/store/StorageProvider;

    return-void
.end method
