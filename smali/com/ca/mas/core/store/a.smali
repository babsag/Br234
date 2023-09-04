.class Lcom/ca/mas/core/store/a;
.super Ljava/lang/Object;
.source "DefaultTokenManager.java"

# interfaces
.implements Lcom/ca/mas/core/store/TokenManager;


# instance fields
.field protected a:Lcom/ca/mas/core/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ca/mas/core/datasource/DataSource<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ca/mas/core/datasource/DataSource;)V
    .locals 0
    .param p1    # Lcom/ca/mas/core/datasource/DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/core/store/a;->a:Lcom/ca/mas/core/datasource/DataSource;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/store/a;->a:Lcom/ca/mas/core/datasource/DataSource;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ca/mas/core/datasource/DataSource;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/ca/mas/core/store/TokenStoreException;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/store/TokenStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
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

.method private c(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/store/a;->a:Lcom/ca/mas/core/datasource/DataSource;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ca/mas/core/datasource/DataSource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/ca/mas/core/store/TokenStoreException;

    invoke-direct {v0, p1}, Lcom/ca/mas/core/store/TokenStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private d(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/store/a;->a:Lcom/ca/mas/core/datasource/DataSource;

    invoke-direct {p0, p1}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/ca/mas/core/datasource/DataSource;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/ca/mas/core/store/TokenStoreException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/store/TokenStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/store/a;->deleteIdToken()V

    .line 2
    invoke-virtual {p0}, Lcom/ca/mas/core/store/a;->deleteUserProfile()V

    .line 3
    invoke-virtual {p0}, Lcom/ca/mas/core/store/a;->deleteSecureIdToken()V

    const-string v0, "msso.clientCertPrivateKey"

    .line 4
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->deletePrivateKey(Ljava/lang/String;)V

    const-string v0, "msso.clientCertChain_"

    .line 5
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->clearCertificateChain(Ljava/lang/String;)V

    const-string v0, "msso.magIdentifier"

    .line 6
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->a(Ljava/lang/String;)V

    const-string v0, "com.ca.mas.foundation.msso.DEVICE_IDENTIFIER"

    .line 7
    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->deletePrivateKey(Ljava/lang/String;)V

    return-void
.end method

.method public clearAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/a;->a:Lcom/ca/mas/core/datasource/DataSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ca/mas/core/datasource/DataSource;->removeAll(Ljava/lang/Object;)V

    const-string v0, "msso.clientCertPrivateKey"

    .line 2
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->deletePrivateKey(Ljava/lang/String;)V

    const-string v0, "msso.clientCertChain_"

    .line 3
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->clearCertificateChain(Ljava/lang/String;)V

    const-string v0, "com.ca.mas.foundation.msso.DEVICE_IDENTIFIER"

    .line 4
    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->deletePrivateKey(Ljava/lang/String;)V

    return-void
.end method

.method public createPrivateKey(Landroid/content/Context;I)Ljava/security/PrivateKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/security/KeyStoreException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/store/a;->a:Lcom/ca/mas/core/datasource/DataSource;

    instance-of v0, p1, Lcom/ca/mas/core/datasource/AccountManagerStoreDataSource;

    const-string v1, "msso.clientCertPrivateKey"

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/ca/mas/core/datasource/MASSecureStorageDataSource;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v4, "cn=msso"

    move v2, p2

    invoke-static/range {v2 .. v8}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->generateRsaPrivateKey(ILjava/lang/String;Ljava/lang/String;ZZIZ)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v2, "cn=msso"

    move v0, p2

    invoke-static/range {v0 .. v6}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->generateRsaPrivateKey(ILjava/lang/String;Ljava/lang/String;ZZIZ)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public deleteIdToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    const-string v0, "msso.idToken"

    .line 1
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->a(Ljava/lang/String;)V

    const-string v0, "msso.idTokenType"

    .line 2
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public deleteSecureIdToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    const-string v0, "msso.secureIdToken"

    .line 1
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public deleteUserProfile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    const-string v0, "msso.userProfile"

    .line 1
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getClientCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 3

    :try_start_0
    const-string v0, "msso.clientCertChain_"

    .line 1
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to access client cert chain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAS"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientPrivateKey()Ljava/security/PrivateKey;
    .locals 3

    :try_start_0
    const-string v0, "msso.clientCertPrivateKey"

    .line 1
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getRsaPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get client private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAS"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientPublicKey()Ljava/security/PublicKey;
    .locals 3

    :try_start_0
    const-string v0, "msso.clientCertPrivateKey"

    .line 1
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getRsaPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get client public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAS"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdToken()Lcom/ca/mas/core/token/IdToken;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "msso.idToken"

    .line 1
    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/ca/mas/core/io/Charsets;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "msso.idTokenType"

    .line 3
    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 5
    :goto_0
    new-instance v1, Lcom/ca/mas/core/token/IdToken;

    invoke-direct {v1, v2, v4}, Lcom/ca/mas/core/token/IdToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 6
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to access ID token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MAS"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method public getMagIdentifier()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "msso.magIdentifier"

    .line 1
    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/ca/mas/core/io/Charsets;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 3
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to access client device identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MAS"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v0
.end method

.method public getSecureIdToken()[B
    .locals 3

    :try_start_0
    const-string v0, "msso.secureIdToken"

    .line 1
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->c(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to retrieve encrypted ID token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAS"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTokenStore()Lcom/ca/mas/core/datasource/DataSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/a;->a:Lcom/ca/mas/core/datasource/DataSource;

    return-object v0
.end method

.method public getUserProfile()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "msso.userProfile"

    .line 1
    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/ca/mas/core/io/Charsets;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 3
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to access client username: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MAS"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v0
.end method

.method public isClientCertificateChainAvailable()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "msso.clientCertChain_"

    .line 1
    invoke-direct {p0, v1}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 2
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to access client cert chain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MAS"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v0
.end method

.method public isTokenStoreReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/store/a;->a:Lcom/ca/mas/core/datasource/DataSource;

    invoke-interface {v0}, Lcom/ca/mas/core/datasource/DataSource;->isReady()Z

    move-result v0

    return v0
.end method

.method public saveClientCertificateChain([Ljava/security/cert/X509Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    :try_start_0
    const-string v0, "msso.clientCertChain_"

    .line 1
    invoke-direct {p0, v0}, Lcom/ca/mas/core/store/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ca/mas/core/util/KeyUtilsAsymmetric;->setCertificateChain(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const-string v1, "Unable to save client certificate chain: "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MAS"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    :cond_0
    new-instance v0, Lcom/ca/mas/core/store/TokenStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ca/mas/core/store/TokenStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveIdToken(Lcom/ca/mas/core/token/IdToken;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/token/IdToken;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ca/mas/core/io/Charsets;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "msso.idToken"

    invoke-direct {p0, v2, v0}, Lcom/ca/mas/core/store/a;->d(Ljava/lang/String;[B)V

    .line 2
    invoke-virtual {p1}, Lcom/ca/mas/core/token/IdToken;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "msso.idTokenType"

    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/store/a;->d(Ljava/lang/String;[B)V

    return-void
.end method

.method public saveMagIdentifier(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/core/io/Charsets;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "msso.magIdentifier"

    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/store/a;->d(Ljava/lang/String;[B)V

    return-void
.end method

.method public saveSecureIdToken([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    const-string v0, "msso.secureIdToken"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/store/a;->d(Ljava/lang/String;[B)V

    return-void
.end method

.method public saveUserProfile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/core/io/Charsets;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "msso.userProfile"

    invoke-direct {p0, v0, p1}, Lcom/ca/mas/core/store/a;->d(Ljava/lang/String;[B)V

    return-void
.end method
