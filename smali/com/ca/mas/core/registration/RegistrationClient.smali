.class public Lcom/ca/mas/core/registration/RegistrationClient;
.super Lcom/ca/mas/core/client/ServerClient;
.source "RegistrationClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/registration/RegistrationClient$DeviceRegistrationResult;,
        Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/context/MssoContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/client/ServerClient;-><init>(Lcom/ca/mas/core/context/MssoContext;)V

    return-void
.end method

.method private static b(Lcom/ca/mas/foundation/MASResponse;)Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/registration/RegistrationException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/ca/mas/foundation/MASResponse;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "device-status"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const v0, 0x1d4c6

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "activated"

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object p0, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;->ACTIVATED:Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    goto :goto_0

    :cond_0
    const-string v1, "registered"

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget-object p0, Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;->REGISTERED:Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    :goto_0
    return-object p0

    .line 8
    :cond_1
    new-instance v1, Lcom/ca/mas/core/registration/RegistrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register_device response did not include a recognized device status.  Status was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    new-instance p0, Lcom/ca/mas/core/registration/RegistrationException;

    const-string v1, "register_device response did not include exactly one device status header."

    invoke-direct {p0, v0, v1}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private c(Lcom/ca/mas/foundation/MASResponse;Z)Lcom/ca/mas/core/token/IdToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/registration/RegistrationException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "id-token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "id-token-type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const v1, 0x1d4c6

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_2

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p2, v3, :cond_1

    .line 8
    new-instance p2, Lcom/ca/mas/core/token/IdToken;

    invoke-direct {p2, v0, p1}, Lcom/ca/mas/core/token/IdToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 9
    :cond_1
    new-instance p1, Lcom/ca/mas/core/registration/RegistrationException;

    const-string p2, "register_device response did not include a valid ID token type."

    invoke-direct {p1, v1, p2}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Lcom/ca/mas/core/registration/RegistrationException;

    const-string p2, "register_device response did not include a valid ID token."

    invoke-direct {p1, v1, p2}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_4
    new-instance p1, Lcom/ca/mas/core/registration/RegistrationException;

    const-string p2, "register_device response did not include exactly one ID token and ID Token type header."

    invoke-direct {p1, v1, p2}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private d(Lcom/ca/mas/foundation/MASResponse;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/registration/RegistrationException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "mag-identifier"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const v0, 0x1d4c8

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    array-length v1, v1

    if-lt v1, v2, :cond_0

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lcom/ca/mas/core/registration/RegistrationException;

    const-string v1, "register_device response did not include a valid mag identifier."

    invoke-direct {p1, v0, v1}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Lcom/ca/mas/core/registration/RegistrationException;

    const-string v1, "register_device response did not include exactly one mag identifier header."

    invoke-direct {p1, v0, v1}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public registerDevice([BLcom/ca/mas/foundation/MASRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ca/mas/core/registration/RegistrationClient$DeviceRegistrationResult;
    .locals 7
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ca/mas/foundation/MASRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/registration/RegistrationException;,
            Lcom/ca/mas/core/registration/RegistrationServerException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/ca/mas/foundation/MASRequest;->getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASGrantProvider;->getCredentials(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASAuthCredentials;

    move-result-object v0

    const-string v1, "credentials"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p2}, Lcom/ca/mas/foundation/MASRequest;->getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASGrantProvider;->getRegistrationPath(Lcom/ca/mas/core/context/MssoContext;)Ljava/net/URI;

    move-result-object v0

    const v1, 0x1d4c4

    if-eqz v0, :cond_9

    .line 4
    new-instance v2, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {v2, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    .line 5
    invoke-interface {p2}, Lcom/ca/mas/foundation/MASRequest;->getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object v0

    iget-object v3, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v0, v3}, Lcom/ca/mas/foundation/MASGrantProvider;->getCredentials(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASAuthCredentials;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASAuthCredentials;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 9
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v4, v6}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/ca/mas/core/io/Charsets;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {p3, p4}, Lcom/ca/mas/core/io/IoUtils;->base64(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "client-authorization"

    invoke-virtual {v2, v0, p3}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    .line 12
    invoke-static {p5, p4}, Lcom/ca/mas/core/io/IoUtils;->base64(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "device-id"

    invoke-virtual {v2, p5, p3}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    .line 13
    invoke-static {p6, p4}, Lcom/ca/mas/core/io/IoUtils;->base64(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "device-name"

    invoke-virtual {v2, p4, p3}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    .line 14
    invoke-interface {p2}, Lcom/ca/mas/foundation/MASRequest;->getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ca/mas/foundation/MASGrantProvider;->isSessionSupported()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 15
    invoke-static {p7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    const-string p4, "create-session"

    invoke-virtual {v2, p4, p3}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    :cond_2
    const-string p3, "cert-format"

    const-string p4, "pem"

    .line 16
    invoke-virtual {v2, p3, p4}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    const/16 p3, 0xb

    .line 17
    invoke-static {p1, p3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-static {p1}, Lcom/ca/mas/foundation/MASRequestBody;->byteArrayBody([B)Lcom/ca/mas/foundation/MASRequestBody;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->post(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    .line 18
    iget-object p1, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getMAGHttpClient()Lcom/ca/mas/core/http/MAGHttpClient;

    move-result-object p1

    .line 19
    :try_start_0
    invoke-virtual {v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    sget-boolean p3, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-eqz p3, :cond_3

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 21
    invoke-interface {p2}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object p6

    aput-object p6, p3, p4

    .line 22
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p3, p5

    const-string p6, "%s response with status: %d"

    .line 23
    invoke-static {p6, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p6, "MAS"

    .line 24
    invoke-static {p6, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_3
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result p3

    const/16 p6, 0xc8

    if-ne p3, p6, :cond_8

    .line 26
    invoke-static {p1}, Lcom/ca/mas/core/registration/RegistrationClient;->b(Lcom/ca/mas/foundation/MASResponse;)Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;

    move-result-object v2

    .line 27
    invoke-direct {p0, p1}, Lcom/ca/mas/core/registration/RegistrationClient;->d(Lcom/ca/mas/foundation/MASResponse;)Ljava/lang/String;

    move-result-object v3

    if-eqz p7, :cond_4

    .line 28
    invoke-interface {p2}, Lcom/ca/mas/foundation/MASRequest;->getGrantProvider()Lcom/ca/mas/foundation/MASGrantProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ca/mas/foundation/MASGrantProvider;->isSessionSupported()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p4, 0x1

    :cond_4
    invoke-direct {p0, p1, p4}, Lcom/ca/mas/core/registration/RegistrationClient;->c(Lcom/ca/mas/foundation/MASResponse;Z)Lcom/ca/mas/core/token/IdToken;

    move-result-object v4

    .line 29
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object p1

    const p2, 0x1d4c6

    if-eqz p1, :cond_7

    .line 30
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASResponseBody;->getRawContent()[B

    move-result-object p1

    .line 31
    array-length p3, p1

    if-lt p3, p5, :cond_6

    .line 32
    invoke-static {p1}, Lcom/ca/mas/core/cert/CertUtils;->decodeCertificateChain([B)[Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 33
    array-length p1, v5

    if-lt p1, p5, :cond_5

    .line 34
    new-instance p1, Lcom/ca/mas/core/registration/RegistrationClient$a;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ca/mas/core/registration/RegistrationClient$a;-><init>(Lcom/ca/mas/core/registration/RegistrationClient;Lcom/ca/mas/core/registration/RegistrationClient$DeviceStatus;Ljava/lang/String;Lcom/ca/mas/core/token/IdToken;[Ljava/security/cert/X509Certificate;)V

    return-object p1

    .line 35
    :cond_5
    new-instance p1, Lcom/ca/mas/core/registration/RegistrationException;

    const-string p3, "register_device response did not include a certificate chain"

    invoke-direct {p1, p2, p3}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 36
    :cond_6
    new-instance p1, Lcom/ca/mas/core/registration/RegistrationException;

    const-string p3, "register_device response was empty"

    invoke-direct {p1, p2, p3}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 37
    :cond_7
    new-instance p1, Lcom/ca/mas/core/registration/RegistrationException;

    const-string p3, "register_device response did not contain an entity"

    invoke-direct {p1, p2, p3}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 38
    :cond_8
    const-class p2, Lcom/ca/mas/core/registration/RegistrationServerException;

    invoke-static {p1, p2}, Lcom/ca/mas/core/client/ServerClient;->createServerException(Lcom/ca/mas/foundation/MASResponse;Ljava/lang/Class;)Lcom/ca/mas/core/error/MAGServerException;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/registration/RegistrationServerException;

    throw p1

    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Lcom/ca/mas/core/registration/RegistrationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to post to register_device: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v1, p3, p1}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 40
    :cond_9
    new-instance p1, Lcom/ca/mas/core/registration/RegistrationException;

    const-string p2, "No device registration URL is configured"

    invoke-direct {p1, v1, p2}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public removeDeviceRegistration()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/registration/RegistrationException;,
            Lcom/ca/mas/core/registration/RegistrationServerException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    iget-object v1, p0, Lcom/ca/mas/core/client/ServerClient;->conf:Lcom/ca/mas/core/conf/ConfigurationProvider;

    const-string v2, "msso.url.remove_device_x509"

    .line 2
    invoke-interface {v1, v2}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->delete(Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/ca/mas/core/client/ServerClient;->mssoContext:Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {v1}, Lcom/ca/mas/core/context/MssoContext;->getMAGHttpClient()Lcom/ca/mas/core/http/MAGHttpClient;

    move-result-object v1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xc8

    .line 6
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getResponseCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    .line 7
    :cond_0
    const-class v1, Lcom/ca/mas/core/registration/RegistrationServerException;

    invoke-static {v0, v1}, Lcom/ca/mas/core/client/ServerClient;->createServerException(Lcom/ca/mas/foundation/MASResponse;Ljava/lang/Class;)Lcom/ca/mas/core/error/MAGServerException;

    move-result-object v0

    check-cast v0, Lcom/ca/mas/core/registration/RegistrationServerException;

    throw v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Lcom/ca/mas/core/registration/RegistrationException;

    const v2, 0x1d4c3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to de-register device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/ca/mas/core/registration/RegistrationException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
