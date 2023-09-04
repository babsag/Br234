.class public Lcom/ca/mas/core/store/PrivateTokenStorage;
.super Ljava/lang/Object;
.source "PrivateTokenStorage.java"

# interfaces
.implements Lcom/ca/mas/core/store/OAuthTokenContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;
    }
.end annotation


# instance fields
.field private a:Lcom/ca/mas/core/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ca/mas/core/datasource/DataSource<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/datasource/DataSource;)V
    .locals 0
    .param p1    # Lcom/ca/mas/core/datasource/DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGateway()Lcom/ca/mas/core/conf/Server;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/Server;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->values()[Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    iget-object v4, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ca/mas/core/store/PrivateTokenStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/ca/mas/core/datasource/DataSource;->remove(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSource;->removeAll(Ljava/lang/Object;)V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v1, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_ACCESS_TOKEN:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/PrivateTokenStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/ca/mas/core/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpiry()J
    .locals 4

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v3, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_EXPIRY_UNIXTIME:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ca/mas/core/store/PrivateTokenStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ca/mas/core/datasource/DataSource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/ca/mas/core/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public getGrantedScope()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v1, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_GRANTED_SCOPE:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/PrivateTokenStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/ca/mas/core/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v1, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_REFRESH_TOKEN:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/PrivateTokenStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/ca/mas/core/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveAccessToken(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p3, p3, v2

    add-long/2addr v0, p3

    .line 2
    iget-object p3, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object p4, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_ACCESS_TOKEN:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/ca/mas/core/store/PrivateTokenStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4, p1}, Lcom/ca/mas/core/datasource/DataSource;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object p3, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_REFRESH_TOKEN:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ca/mas/core/store/PrivateTokenStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/ca/mas/core/datasource/DataSource;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object p2, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_EXPIRY_UNIXTIME:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ca/mas/core/store/PrivateTokenStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/ca/mas/core/datasource/DataSource;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object p2, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_GRANTED_SCOPE:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ca/mas/core/store/PrivateTokenStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p5}, Lcom/ca/mas/core/datasource/DataSource;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized takeRefreshToken()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mas/core/store/PrivateTokenStorage;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ca/mas/core/store/PrivateTokenStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v2, Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;->PREF_REFRESH_TOKEN:Lcom/ca/mas/core/store/PrivateTokenStorage$KEY;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ca/mas/core/store/PrivateTokenStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ca/mas/core/datasource/DataSource;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
