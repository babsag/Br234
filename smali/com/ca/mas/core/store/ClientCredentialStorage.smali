.class public Lcom/ca/mas/core/store/ClientCredentialStorage;
.super Ljava/lang/Object;
.source "ClientCredentialStorage.java"

# interfaces
.implements Lcom/ca/mas/core/store/ClientCredentialContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/store/ClientCredentialStorage$a;
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
    iput-object p1, p0, Lcom/ca/mas/core/store/ClientCredentialStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

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
    invoke-static {}, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->values()[Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    iget-object v4, p0, Lcom/ca/mas/core/store/ClientCredentialStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ca/mas/core/store/ClientCredentialStorage;->a(Ljava/lang/String;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/ca/mas/core/store/ClientCredentialStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSource;->removeAll(Ljava/lang/Object;)V

    return-void
.end method

.method public getClientExpiration()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/ClientCredentialStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v1, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_CLIENT_EXPIRE_TIME:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/ClientCredentialStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/ClientCredentialStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v1, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_CLIENT_ID:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/ClientCredentialStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/ClientCredentialStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v1, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_CLIENT_SECRET:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/ClientCredentialStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMasterClientId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/ClientCredentialStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v1, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_MASTER_CLIENT_ID:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/ClientCredentialStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public saveClientCredentials(Lcom/ca/mas/core/token/ClientCredentials;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/ClientCredentialStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v1, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_MASTER_CLIENT_ID:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/ClientCredentialStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ca/mas/core/token/ClientCredentials;->getMasterClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ca/mas/core/datasource/DataSource;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/core/store/ClientCredentialStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v1, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_CLIENT_ID:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/ClientCredentialStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ca/mas/core/token/ClientCredentials;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ca/mas/core/datasource/DataSource;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/store/ClientCredentialStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v1, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_CLIENT_SECRET:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/ClientCredentialStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ca/mas/core/token/ClientCredentials;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ca/mas/core/datasource/DataSource;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/store/ClientCredentialStorage;->a:Lcom/ca/mas/core/datasource/DataSource;

    sget-object v1, Lcom/ca/mas/core/store/ClientCredentialStorage$a;->PREF_CLIENT_EXPIRE_TIME:Lcom/ca/mas/core/store/ClientCredentialStorage$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/ClientCredentialStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ca/mas/core/token/ClientCredentials;->getClientExpiration()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ca/mas/core/datasource/DataSource;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
