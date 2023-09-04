.class Lcom/ca/mas/core/policy/c;
.super Ljava/lang/Object;
.source "DeviceRegistrationAssertion.java"

# interfaces
.implements Lcom/ca/mas/core/policy/MssoAssertion;


# instance fields
.field private a:Lcom/ca/mas/core/store/TokenManager;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ca/mas/core/policy/c;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGException;,
            Lcom/ca/mas/core/error/MAGServerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/ca/mas/core/policy/RequestInfo;->getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mas/core/request/internal/MAGRequestProxy;->getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ca/mas/foundation/MASGrantProvider;->getCredentials(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASAuthCredentials;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2
    invoke-interface {v2}, Lcom/ca/mas/foundation/MASAuthCredentials;->isValid()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3
    sget-boolean v3, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MAS"

    const-string v4, "Device registration process start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    :try_start_0
    iget-object v3, v1, Lcom/ca/mas/core/policy/c;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v3}, Lcom/ca/mas/core/store/TokenManager;->clear()V
    :try_end_0
    .catch Lcom/ca/mas/core/store/TokenStoreException; {:try_start_0 .. :try_end_0} :catch_4

    .line 5
    iget-object v3, v1, Lcom/ca/mas/core/policy/c;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v3}, Lcom/ca/mas/core/store/TokenProvider;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    const v4, 0x1d4c4

    if-nez v3, :cond_2

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v3

    const-string v5, "msso.cert.rsa.keybits"

    invoke-interface {v3, v5}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    const/16 v3, 0x800

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    :cond_1
    :try_start_1
    iget-object v5, v1, Lcom/ca/mas/core/policy/c;->a:Lcom/ca/mas/core/store/TokenManager;

    iget-object v6, v1, Lcom/ca/mas/core/policy/c;->b:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5, v6, v3}, Lcom/ca/mas/core/store/TokenProvider;->createPrivateKey(Landroid/content/Context;I)Ljava/security/PrivateKey;

    move-result-object v3
    :try_end_1
    .catch Lcom/ca/mas/core/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    new-instance v2, Lcom/ca/mas/core/registration/RegistrationException;

    const-string v3, "Failed to generate private key."

    invoke-direct {v2, v4, v3, v0}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    :goto_0
    move-object v10, v3

    .line 10
    iget-object v3, v1, Lcom/ca/mas/core/policy/c;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v3}, Lcom/ca/mas/core/store/TokenProvider;->getClientPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/ca/mas/core/context/MssoContext;->getDeviceName()Ljava/lang/String;

    move-result-object v18

    .line 12
    :try_start_2
    new-instance v3, Lcom/ca/mas/core/context/DeviceIdentifier;

    invoke-direct {v3}, Lcom/ca/mas/core/context/DeviceIdentifier;-><init>()V

    invoke-virtual {v3}, Lcom/ca/mas/core/context/UniqueIdentifier;->toString()Ljava/lang/String;

    move-result-object v17

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v3

    const-string v5, "msso.organization"

    invoke-interface {v3, v5}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/ca/mas/core/security/KeyStoreRepository;->getKeyStoreRepository()Lcom/ca/mas/core/security/KeyStoreRepository;

    move-result-object v5

    invoke-interface {v2}, Lcom/ca/mas/foundation/MASAuthCredentials;->getUsername()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    invoke-virtual/range {v5 .. v11}, Lcom/ca/mas/core/security/KeyStoreRepository;->generateCertificateSigningRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v13
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/ca/mas/core/context/MssoContext;->resetHttpClient()V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v2

    const-string v3, "msso.sso.enabled"

    invoke-interface {v2, v3}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    const/16 v19, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/16 v19, 0x0

    .line 18
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/ca/mas/core/context/MssoContext;->getClientId()Ljava/lang/String;

    move-result-object v15

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/ca/mas/core/context/MssoContext;->getClientSecret()Ljava/lang/String;

    move-result-object v16

    .line 20
    new-instance v12, Lcom/ca/mas/core/registration/RegistrationClient;

    invoke-direct {v12, v0}, Lcom/ca/mas/core/registration/RegistrationClient;-><init>(Lcom/ca/mas/core/context/MssoContext;)V

    invoke-virtual/range {p2 .. p2}, Lcom/ca/mas/core/policy/RequestInfo;->getRequest()Lcom/ca/mas/core/request/MAGInternalRequest;

    move-result-object v14

    invoke-virtual/range {v12 .. v19}, Lcom/ca/mas/core/registration/RegistrationClient;->registerDevice([BLcom/ca/mas/foundation/MASRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ca/mas/core/registration/RegistrationClient$DeviceRegistrationResult;

    move-result-object v2

    .line 21
    invoke-interface {v2}, Lcom/ca/mas/core/registration/RegistrationClient$DeviceRegistrationResult;->getIdToken()Lcom/ca/mas/core/token/IdToken;

    move-result-object v3

    .line 22
    :try_start_3
    iget-object v4, v1, Lcom/ca/mas/core/policy/c;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v2}, Lcom/ca/mas/core/registration/RegistrationClient$DeviceRegistrationResult;->getClientCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/ca/mas/core/store/TokenManager;->saveClientCertificateChain([Ljava/security/cert/X509Certificate;)V

    .line 23
    iget-object v4, v1, Lcom/ca/mas/core/policy/c;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v2}, Lcom/ca/mas/core/registration/RegistrationClient$DeviceRegistrationResult;->getMagIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/ca/mas/core/store/TokenManager;->saveMagIdentifier(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/ca/mas/core/context/MssoContext;->onDeviceRegistrationCompleted()V

    if-eqz v3, :cond_4

    .line 25
    invoke-virtual {v0, v3}, Lcom/ca/mas/core/context/MssoContext;->onIdTokenAvailable(Lcom/ca/mas/core/token/IdToken;)V

    .line 26
    :cond_4
    sget-object v0, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;->REGISTERED:Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    invoke-interface {v2}, Lcom/ca/mas/core/registration/RegistrationClient$DeviceRegistrationResult;->getDeviceStatus()Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 27
    :cond_5
    new-instance v0, Lcom/ca/mas/core/registration/DeviceRegistrationAwaitingActivationException;

    invoke-direct {v0}, Lcom/ca/mas/core/registration/DeviceRegistrationAwaitingActivationException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    .line 28
    new-instance v2, Lcom/ca/mas/core/policy/exceptions/TokenStoreUnavailableException;

    invoke-direct {v2, v0}, Lcom/ca/mas/core/policy/exceptions/TokenStoreUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 29
    new-instance v2, Lcom/ca/mas/core/context/MssoException;

    invoke-direct {v2, v0}, Lcom/ca/mas/core/context/MssoException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    .line 30
    new-instance v2, Lcom/ca/mas/core/registration/RegistrationException;

    invoke-direct {v2, v4, v0}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    .line 31
    new-instance v2, Lcom/ca/mas/core/policy/exceptions/TokenStoreUnavailableException;

    invoke-direct {v2, v0}, Lcom/ca/mas/core/policy/exceptions/TokenStoreUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 32
    :cond_6
    new-instance v0, Lcom/ca/mas/core/policy/exceptions/CredentialRequiredException;

    invoke-direct {v0}, Lcom/ca/mas/core/policy/exceptions/CredentialRequiredException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public init(Lcom/ca/mas/core/context/MssoContext;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/ca/mas/core/context/MssoContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/policy/c;->a:Lcom/ca/mas/core/store/TokenManager;

    .line 2
    iput-object p2, p0, Lcom/ca/mas/core/policy/c;->b:Landroid/content/Context;

    const-string p2, "mssoContext.tokenManager"

    .line 3
    invoke-static {v0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object p1

    const-string p2, "mssoContext.configurationProvider"

    .line 5
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized processRequest(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGException;,
            Lcom/ca/mas/core/error/MAGServerException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/policy/c;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getClientCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    .line 5
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ca/mas/core/conf/ConfigurationManager;->getCertificateAdvancedRenewTimeframe()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 6
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/ca/mas/core/policy/c;->a:Lcom/ca/mas/core/store/TokenManager;

    invoke-interface {v0}, Lcom/ca/mas/core/store/TokenProvider;->getMagIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "MAS"

    const-string p2, "Device is registered with identifier: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ca/mas/core/policy/c;->a:Lcom/ca/mas/core/store/TokenManager;

    .line 10
    invoke-interface {v2}, Lcom/ca/mas/core/store/TokenProvider;->getMagIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    .line 13
    :try_start_3
    new-instance p2, Lcom/ca/mas/core/policy/exceptions/CertificateExpiredException;

    invoke-direct {p2, p1}, Lcom/ca/mas/core/policy/exceptions/CertificateExpiredException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/policy/c;->a(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public processResponse(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/error/MAGStateException;
        }
    .end annotation

    return-void
.end method
