.class public Lcom/ca/mas/core/policy/exceptions/CertificateExpiredException;
.super Lcom/ca/mas/core/policy/exceptions/RetryRequestException;
.source "CertificateExpiredException.java"


# static fields
.field public static final CERTIFICATE_EXPIRED_SUFFIX:Ljava/lang/String; = "206"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/policy/exceptions/RetryRequestException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ca/mas/core/policy/exceptions/RetryRequestException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ca/mas/core/policy/exceptions/RetryRequestException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/ca/mas/core/context/MssoContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/registration/RegistrationException;,
            Lcom/ca/mas/core/store/TokenStoreException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "msso.url.renew_device"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {v1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    const-string v0, "cert-format"

    const-string v2, "pem"

    .line 3
    invoke-virtual {v1, v0, v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->put(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    .line 5
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getMAGHttpClient()Lcom/ca/mas/core/http/MAGHttpClient;

    move-result-object v0

    .line 6
    :try_start_0
    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->destroyPersistentTokens()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASResponseBody;->getRawContent()[B

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/ca/mas/core/cert/CertUtils;->decodeCertificateChain([B)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ca/mas/core/store/TokenManager;->saveClientCertificateChain([Ljava/security/cert/X509Certificate;)V

    .line 12
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->resetHttpClient()V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to renew device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/ca/mas/core/registration/RegistrationException;

    const v2, 0x1d4c9

    invoke-direct {v1, v2, v0, p1}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public recover(Lcom/ca/mas/core/context/MssoContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/policy/exceptions/CertificateExpiredException;->a(Lcom/ca/mas/core/context/MssoContext;)V

    return-void
.end method
